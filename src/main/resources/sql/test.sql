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

 Date: 12/05/2019 21:35:44
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
  PRIMARY KEY (`id`) USING BTREE,
  FULLTEXT INDEX `fulltext_index`(`tags`, `title`, `content`)
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (18, '迈向更加美好的未来', 2, 'admin', 0, '&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8660594517/1000\" /&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8660594518/1000\" /&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;阿斯塔纳国际金融中心。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8660594520/1000\" /&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;操作横机编织衣片的员工。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8660594521/1000\" /&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;该集团种植基地。&lt;/p&gt;', '2019-04-23 22:52:06', '2019-04-23 22:52:06', NULL, NULL, NULL, NULL);
INSERT INTO `article` VALUES (19, 'ssss', 1, 'admin', 0, '&lt;p&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8660594517/1000\" /&gt;&lt;/p&gt;', '2019-04-22 21:32:47', '2019-04-22 21:32:47', NULL, NULL, NULL, NULL);
INSERT INTO `article` VALUES (20, '泽连斯基以其在2015年开播的政治喜剧', 2, 'admin', 0, '&lt;div class=\"introduction\" style=\"color: #555555; line-height: 2.2; margin-bottom: 2em; word-break: break-all; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;泽连斯基以其在2015年开播的政治喜剧《人民公仆》中扮演的&ldquo;总统&rdquo;角色而出名，在剧中，泽连斯基作为一名历史老师因批评时政走红后被选举为总统。&lt;/div&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8659647802/1000\" /&gt;&lt;em class=\"desc\" style=\"color: #9b9ea3; line-height: 20px; text-align: center; display: block; font-size: 14px;\"&gt;波罗申科与泽连斯基（图：美联社）&lt;/em&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;span style=\"font-weight: bolder;\"&gt;海外网4月22日电&lt;/span&gt;2019乌克兰大选第二轮投票于当地时间21日晚20点结束。出口民调显示，喜剧演员泽连斯基得票率大幅领先于现任总统波罗申科，支持率为73.3%，而波罗申科支持率为26.3%。民调结果出来后，波罗申科承认落败，并向对手表达祝贺。同时泽连斯基宣布胜选，并感谢所有支持者。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8659647803/1000\" /&gt;&lt;em class=\"desc\" style=\"color: #9b9ea3; line-height: 20px; text-align: center; display: block; font-size: 14px;\"&gt;波罗申科承认败选。（图截于波罗申科社交媒体）&lt;/em&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;据乌通社（ukrinform）消息，波罗申科说，投票结果是&ldquo;明确的&rdquo;，&ldquo;我将离任，但我想坚定地强调&mdash;&mdash;我不会退出政治舞台。&rdquo;泽连斯基在出口民调结果后宣布胜选，他感谢乌克兰人及其家人的支持；并感谢乌执法人员的诚实服务，安全部门警惕值守，以及军队和志愿者对乌克兰的保卫。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;早前，乌克兰第一轮选举在4月1日举行，没有候选人赢得过半选民支持，但泽连斯基以约30%的得票率领先，而波罗申科则以16%的支持率遥居第二，两人进入第二轮决战。根据乌克兰社会调查机构&ldquo;评级&rdquo;（Rating Group）的最新民调结果，泽连斯基的支持率超过70%，现任总统波罗申科的支持率仅25%左右。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8659647804/1000\" /&gt;&lt;em class=\"desc\" style=\"color: #9b9ea3; line-height: 20px; text-align: center; display: block; font-size: 14px;\"&gt;泽连斯基。（图：乌通社）&lt;/em&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;泽连斯基以其在2015年开播的政治喜剧《人民公仆》中扮演的&ldquo;总统&rdquo;角色而出名，在剧中，泽连斯基作为一名历史老师因批评时政走红后被选举为总统。分析认为，如今，基于广大民众对于2014年当选的现任总统波罗申科的失望情绪，泽连斯基很有可能将剧情中的命运带进现实。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;据了解，乌克兰总统是乌克兰的国家元首，对内负起最高的政治责任，对外代表乌克兰。乌克兰宪法规定，任何一个年满35周岁、在乌境内连续居住超过10年的乌克兰公民都可以竞选总统。总统任期5年，最多可以竞选连任一次。参加投票的选民人数超过登记选民的50%则选举有效。（编译/海外网 侯兴川）&lt;/p&gt;', '2019-04-22 22:08:00', '2019-05-12 11:47:36', '2019-05-12 11:47:36', NULL, NULL, NULL);
INSERT INTO `article` VALUES (21, '中国发表《共建“一带一路”倡议：进展、贡献与展望》报告', 1, 'admin', 0, '&lt;p&gt;新华社北京4月22日电（记者安蓓）第二届&ldquo;一带一路&rdquo;国际合作高峰论坛召开在即，经推进&ldquo;一带一路&rdquo;建设工作领导小组批准，领导小组办公室22日发表《共建&ldquo;一带一路&rdquo;倡议：进展、贡献与展望》报告。&lt;/p&gt;\n&lt;p&gt;&lt;img src=\"https://inews.gtimg.com/newsapp_bt/0/8666668333/1000\" /&gt;&lt;/p&gt;\n&lt;p&gt;报告全文约1.8万字，除前言外，共包括进展、贡献和展望三个部分。&lt;/p&gt;\n&lt;p&gt;2013年9月和10月，中国国家主席习近平在出访哈萨克斯坦和印度尼西亚时先后提出共建&ldquo;丝绸之路经济带&rdquo;和&ldquo;21世纪海上丝绸之路&rdquo;的重大倡议。5年多来，共建&ldquo;一带一路&rdquo;倡议得到了越来越多国家和国际组织的积极响应，受到国际社会广泛关注，影响力日益扩大。&lt;/p&gt;\n&lt;p&gt;报告指出，2013年以来，共建&ldquo;一带一路&rdquo;倡议以政策沟通、设施联通、贸易畅通、资金融通和民心相通为主要内容扎实推进，取得明显成效，一批具有标志性的早期成果开始显现，参与各国得到了实实在在的好处，对共建&ldquo;一带一路&rdquo;的认同感和参与度不断增强。2013年至2018年，中国与沿线国家货物贸易进出口总额超过6万亿美元，年均增长率高于同期中国对外贸易增速，占中国货物贸易总额的比重达到27.4%；中国企业对沿线国家直接投资超过900亿美元，在沿线国家完成对外承包工程营业额超过4000亿美元。&lt;/p&gt;\n&lt;p&gt;报告指出，共建&ldquo;一带一路&rdquo;倡议着眼于构建人类命运共同体，坚持共商共建共享原则，为推动全球治理体系变革和经济全球化作出了中国贡献。2017年5月，首届&ldquo;一带一路&rdquo;国际合作高峰论坛在北京成功召开，论坛形成了5大类、76大项、279项具体成果，这些成果已全部得到落实。&lt;/p&gt;\n&lt;p&gt;报告说，当今世界正处于大发展大变革大调整时期，和平、发展、合作仍是时代潮流。展望未来，共建&ldquo;一带一路&rdquo;既面临诸多问题和挑战，更充满前所未有的机遇和发展前景。随着时间的推移和各方共同努力，相信共建&ldquo;一带一路&rdquo;一定会走深走实，行稳致远，成为和平之路、繁荣之路、开放之路、绿色之路、创新之路、文明之路、廉洁之路，推动经济全球化朝着更加开放、包容、普惠、平衡、共赢的方向发展。dddd&lt;/p&gt;\n&lt;p&gt;dsdsds&lt;/p&gt;\n&lt;p&gt;dsdsd&lt;/p&gt;\n&lt;p&gt;dsdsds&lt;/p&gt;\n&lt;p&gt;dsdsd&lt;/p&gt;\n&lt;p&gt;dsds&lt;/p&gt;\n&lt;p&gt;dsds&lt;/p&gt;\n&lt;p&gt;&nbsp;&lt;/p&gt;', '2019-05-12 00:13:12', '2019-05-12 00:13:12', NULL, NULL, NULL, NULL);
INSERT INTO `article` VALUES (22, '浅谈CSS和JQuery实现鼠标悬浮图片放大效果﻿', 1, 'admin', 2, '&lt;h1 class=\"postTitle\" style=\"margin: 0px; padding: 0px 0px 0px 5px; float: left; line-height: 1.5; width: 1125.56px; clear: both; font-size: 14px; font-family: Verdana, Arial, Helvetica, sans-serif; background-color: #fefef2;\"&gt;&lt;a id=\"cb_post_title_url\" class=\"postTitle2\" style=\"margin: 0px; padding: 0px; color: #075db3; text-decoration-line: none;\" href=\"https://www.cnblogs.com/xuyuntao/p/4965818.html\"&gt;浅谈CSS和JQuery实现鼠标悬浮图片放大效果&lt;/a&gt;&lt;/h1&gt;\n&lt;div class=\"clear\" style=\"margin: 0px; padding: 0px; clear: both; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: #fefef2;\"&gt;&nbsp;&lt;/div&gt;\n&lt;div class=\"postBody\" style=\"margin: 5px 0px 0px; padding: 5px 2px 5px 5px; line-height: 1.5; font-size: 13px; font-family: Verdana, Arial, Helvetica, sans-serif; background-color: #fefef2;\"&gt;\n&lt;div id=\"cnblogs_post_body\" class=\"blogpost-body\" style=\"margin: 0px 0px 20px; padding: 0px; word-break: break-word;\"&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;对于刚刚学习网页前台设计的同学一定对图片的处理非常苦恼，那么这里简单的讲解一下几个图片处理的实例。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;以.net为平台，微软的Visual Studio 2013为开发工具，当然前台技术还是采用CSS3和HTML，Java的小伙伴不要绕道~~~&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;言归正传，那么我们首先要完成什么样的图片处理呢？&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 18px;\"&gt;一、CSS3图片的放大&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-size: 14px;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;;\"&gt;css3中，有一个属性transform，官方的解释是：允许向元素应用2D或3D的转换。这些转换当然就包含旋转、缩放、移动或倾斜了。有兴趣的同学可以继续了解&lt;a style=\"margin: 0px; padding: 0px; color: #075db3;\" title=\"css3（transform）\" href=\"http://www.w3school.com.cn/cssref/pr_transform.asp\" target=\"_blank\" rel=\"noopener\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;http://www.w3school.com.cn/cssref/pr_transform.asp&lt;/span&gt;&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-size: 14px;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;;\"&gt;transform属性中的方法有很多，那么用于图片缩放的是：&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;scale&lt;/strong&gt;。多说无益，直接上代码：&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;div class=\"cnblogs_code\" style=\"margin: 5px 0px; padding: 5px; background-color: #f5f5f5; border: 1px solid #cccccc; overflow: auto; font-family: &#39;Courier New&#39; !important; font-size: 12px !important;\"&gt;\n&lt;div class=\"cnblogs_code_toolbar\" style=\"margin: 5px 0px 0px; padding: 0px;\"&gt;&lt;span class=\"cnblogs_code_copy\" style=\"margin: 0px; padding: 0px 5px 0px 0px; line-height: 1.5;\"&gt;&lt;a style=\"margin: 0px; padding: 0px; color: #075db3; text-decoration-line: underline; border: none !important;\" title=\"复制代码\" target=\"_blank\"&gt;&lt;img style=\"margin: 0px; padding: 0px; max-width: 900px; height: auto; border: none !important;\" src=\"https://common.cnblogs.com/images/copycode.gif\" alt=\"复制代码\" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;\n&lt;pre style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &#39;Courier New&#39; !important;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 1&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;!&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff00ff;\"&gt;DOCTYPE html&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 2&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;html &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;xmlns&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"http://www.w3.org/1999/xhtml\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 3&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;head&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 4&lt;/span&gt;     &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;meta &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;http-equiv&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"Content-Type\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt; content&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"text/html; charset=utf-8\"&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;/&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 5&lt;/span&gt;     &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;title&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;title&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 6&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;head&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 7&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;body&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 8&lt;/span&gt;     &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;div &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;class&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"content\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 9&lt;/span&gt;         &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;img &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;src&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"img/5.jpg\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt; class&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"pic\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;/&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;10&lt;/span&gt;     &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;div&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;11&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;body&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;12&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;html&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;&lt;/pre&gt;\n&lt;div class=\"cnblogs_code_toolbar\" style=\"margin: 5px 0px 0px; padding: 0px;\"&gt;&lt;span class=\"cnblogs_code_copy\" style=\"margin: 0px; padding: 0px 5px 0px 0px; line-height: 1.5;\"&gt;&lt;a style=\"margin: 0px; padding: 0px; color: #075db3; text-decoration-line: underline; border: none !important;\" title=\"复制代码\" target=\"_blank\"&gt;&lt;img style=\"margin: 0px; padding: 0px; max-width: 900px; height: auto; border: none !important;\" src=\"https://common.cnblogs.com/images/copycode.gif\" alt=\"复制代码\" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&nbsp;上面这段代码是基本的页面结构，body下div，内部放入图片&#40;5.jpg是我测试用的图片，并且放在了img路径下&#41;。之后我们给它添加基本的css样式：&lt;/p&gt;\n&lt;div class=\"cnblogs_code\" style=\"margin: 5px 0px; padding: 5px; background-color: #f5f5f5; border: 1px solid #cccccc; overflow: auto; font-family: &#39;Courier New&#39; !important; font-size: 12px !important;\"&gt;\n&lt;div class=\"cnblogs_code_toolbar\" style=\"margin: 5px 0px 0px; padding: 0px;\"&gt;&lt;span class=\"cnblogs_code_copy\" style=\"margin: 0px; padding: 0px 5px 0px 0px; line-height: 1.5;\"&gt;&lt;a style=\"margin: 0px; padding: 0px; color: #075db3; text-decoration-line: underline; border: none !important;\" title=\"复制代码\" target=\"_blank\"&gt;&lt;img style=\"margin: 0px; padding: 0px; max-width: 900px; height: auto; border: none !important;\" src=\"https://common.cnblogs.com/images/copycode.gif\" alt=\"复制代码\" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;\n&lt;pre style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &#39;Courier New&#39; !important;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 1&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;&lt;style type=\"text/css\"&gt;\n&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 2&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;        *&lt;/span&gt;{\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 3&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            padding&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;0&lt;/span&gt;;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 4&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            margin&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;0&lt;/span&gt;;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;去内外边界&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 5&lt;/span&gt;         }\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 6&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;        .content &lt;/span&gt;{\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 7&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            margin&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 40px auto&lt;/span&gt;;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;居中显示&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 8&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            width&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 450px&lt;/span&gt;;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 9&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            height&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 301px&lt;/span&gt;;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;10&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            border&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;10px solid #808080&lt;/span&gt;;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;给外部加一个边框&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;11&lt;/span&gt;         }\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;12&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;        .content img &lt;/span&gt;{\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;13&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            width&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 450px&lt;/span&gt;;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;14&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            height&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 301px&lt;/span&gt;;     \n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;15&lt;/span&gt;         }\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;16&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;&lt;/style&gt;&lt;/span&gt;&lt;/pre&gt;\n&lt;div class=\"cnblogs_code_toolbar\" style=\"margin: 5px 0px 0px; padding: 0px;\"&gt;&lt;span class=\"cnblogs_code_copy\" style=\"margin: 0px; padding: 0px 5px 0px 0px; line-height: 1.5;\"&gt;&lt;a style=\"margin: 0px; padding: 0px; color: #075db3; text-decoration-line: underline; border: none !important;\" title=\"复制代码\" target=\"_blank\"&gt;&lt;img style=\"margin: 0px; padding: 0px; max-width: 900px; height: auto; border: none !important;\" src=\"https://common.cnblogs.com/images/copycode.gif\" alt=\"复制代码\" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&nbsp;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;添加完样式之后，界面看起来比较顺眼了，那么现在就开始利用上面提到的属性来完成我们标题提到的功能。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&nbsp;我们先用css来完成。既然提到鼠标悬浮，那么首先想到的应该是伪类：hover。&#40;css中有很多伪类，有兴趣的伙伴可以之后查看&#41;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&nbsp;添加如下的css代码：&lt;/p&gt;\n&lt;div class=\"cnblogs_code\" style=\"margin: 5px 0px; padding: 5px; background-color: #f5f5f5; border: 1px solid #cccccc; overflow: auto; font-family: &#39;Courier New&#39; !important; font-size: 12px !important;\"&gt;\n&lt;pre style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &#39;Courier New&#39; !important;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;1&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;        .content img:hover&lt;/span&gt;{\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;2&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            transform&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;scale&#40;1.2&#41;&lt;/span&gt;;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;3&lt;/span&gt;         }&lt;/pre&gt;\n&lt;/div&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;现在在页面浏览时，将鼠标放到图片上，就会出现图片放大的效果，当然这里是放大了原图片的1.2倍。等等，有的小伙伴会问，为什么我的图片没有放大呢？天呐，你用的浏览器是不是IE8啊？哈哈，柯南还没有说完。现在市面上主流的浏览器有很多，如：IE，Chrome，Safari，Opera和Firefox，CSS3为了分别适应他们，分别添加了前缀，那么上面的一段代码就要替换成：&lt;/span&gt;&lt;/p&gt;\n&lt;div class=\"cnblogs_code\" style=\"margin: 5px 0px; padding: 5px; background-color: #f5f5f5; border: 1px solid #cccccc; overflow: auto; font-family: &#39;Courier New&#39; !important; font-size: 12px !important;\"&gt;\n&lt;div class=\"cnblogs_code_toolbar\" style=\"margin: 5px 0px 0px; padding: 0px;\"&gt;&lt;span class=\"cnblogs_code_copy\" style=\"margin: 0px; padding: 0px 5px 0px 0px; line-height: 1.5;\"&gt;&lt;a style=\"margin: 0px; padding: 0px; color: #075db3; text-decoration-line: underline; border: none !important;\" title=\"复制代码\" target=\"_blank\"&gt;&lt;img style=\"margin: 0px; padding: 0px; max-width: 900px; height: auto; border: none !important;\" src=\"https://common.cnblogs.com/images/copycode.gif\" alt=\"复制代码\" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;\n&lt;pre style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &#39;Courier New&#39; !important;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;1&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;        .content img:hover &lt;/span&gt;{\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;2&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            transform&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; scale&#40;1.2&#41;&lt;/span&gt;;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;3&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            -webkit-transform&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; scale&#40;1.2&#41;&lt;/span&gt;; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;Safari 和 Chrome&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;4&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            -moz-transform&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; scale&#40;1.2&#41;&lt;/span&gt;; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;Firefox&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;5&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            -ms-transform&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; scale&#40;1.2&#41;&lt;/span&gt;; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;IE9&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;6&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            -o-transform&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; scale&#40;1.2&#41;&lt;/span&gt;; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;Opera&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;7&lt;/span&gt;         }&lt;/pre&gt;\n&lt;div class=\"cnblogs_code_toolbar\" style=\"margin: 5px 0px 0px; padding: 0px;\"&gt;&lt;span class=\"cnblogs_code_copy\" style=\"margin: 0px; padding: 0px 5px 0px 0px; line-height: 1.5;\"&gt;&lt;a style=\"margin: 0px; padding: 0px; color: #075db3; text-decoration-line: underline; border: none !important;\" title=\"复制代码\" target=\"_blank\"&gt;&lt;img style=\"margin: 0px; padding: 0px; max-width: 900px; height: auto; border: none !important;\" src=\"https://common.cnblogs.com/images/copycode.gif\" alt=\"复制代码\" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;这里在说说scale的其他用法，单单只有scale默认是2D转换的，想要3D转换呢，换成scale3d即可，用法一样。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;官方的定义是scale&#40;X,Y&#41;，意思是X轴和Y轴分别缩放的倍数，上面的例子是缩写的形式。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;代码写到这里基本已经完成了标题所表示的功能，但是细心的同学会觉得，这样的效果显得过于突然，图片弹出的比较突兀，那么怎么让变化不那么突然呢？CSS3为我们提供了另外一个函数：transition-duration，默认的单位是秒并且允许小数。它的定义是过度效果需要花费的时间。喜欢专研的小伙伴可以参考&lt;a style=\"margin: 0px; padding: 0px; color: #075db3;\" href=\"http://www.w3school.com.cn/css3/css3_transition.asp\" target=\"_blank\" rel=\"noopener\"&gt;http://www.w3school.com.cn/css3/css3_transition.asp&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;那么添加上之后，代码如下：&lt;/span&gt;&lt;/p&gt;\n&lt;div class=\"cnblogs_code\" style=\"margin: 5px 0px; padding: 5px; background-color: #f5f5f5; border: 1px solid #cccccc; overflow: auto; font-family: &#39;Courier New&#39; !important; font-size: 12px !important;\"&gt;\n&lt;pre style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &#39;Courier New&#39; !important;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;1&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;         .content img &lt;/span&gt;{\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;2&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;             width&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 450px&lt;/span&gt;;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;3&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;             height&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 301px&lt;/span&gt;;    \n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;4&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;             transition-duration&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;0.5s&lt;/span&gt;; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;过度的时间为0，5秒&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;5&lt;/span&gt;          }    &lt;/pre&gt;\n&lt;/div&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;在页面浏览的时候，图片变大就不显得那么突兀和突然，并且动画效果更人性化。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;最后我们再考虑一种情况，如果一个页面很复杂，要表达的信息非常多，按照上面的代码显示就会无意的遮挡住其他的图片或者文字，所以这个地方，需要继续优化一下，让图片放大，但是图片的边界不放大，防止页面中不必要的遮挡。这里用到一个重要的属性：overflow。最后将完整的外码列出如下：&lt;/span&gt;&lt;/p&gt;\n&lt;div class=\"cnblogs_code\" style=\"margin: 5px 0px; padding: 5px; background-color: #f5f5f5; border: 1px solid #cccccc; overflow: auto; font-family: &#39;Courier New&#39; !important; font-size: 12px !important;\"&gt;\n&lt;div class=\"cnblogs_code_toolbar\" style=\"margin: 5px 0px 0px; padding: 0px;\"&gt;&lt;span class=\"cnblogs_code_copy\" style=\"margin: 0px; padding: 0px 5px 0px 0px; line-height: 1.5;\"&gt;&lt;a style=\"margin: 0px; padding: 0px; color: #075db3; text-decoration-line: underline; border: none !important;\" title=\"复制代码\" target=\"_blank\"&gt;&lt;img style=\"margin: 0px; padding: 0px; max-width: 900px; height: auto; border: none !important;\" src=\"https://common.cnblogs.com/images/copycode.gif\" alt=\"复制代码\" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;\n&lt;pre style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &#39;Courier New&#39; !important;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 1&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;!&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff00ff;\"&gt;DOCTYPE html&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 2&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;html &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;xmlns&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"http://www.w3.org/1999/xhtml\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 3&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;head&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 4&lt;/span&gt;     &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;meta &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;http-equiv&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"Content-Type\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt; content&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"text/html; charset=utf-8\"&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;/&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 5&lt;/span&gt;     &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;title&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;中心点逐渐放大效果&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;title&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 6&lt;/span&gt;     &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;style &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;type&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"text/css\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 7&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;        *&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;{&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 8&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            padding&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;0&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 9&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            margin&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;0&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;10&lt;/span&gt;         &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;}&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;11&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;        .content &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;{&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;12&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            margin&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 40px auto&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;13&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            width&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 450px&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;14&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            height&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 301px&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;15&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            border&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;10px solid #808080&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;16&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            overflow&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;hidden&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;17&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            z-index&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;2&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;18&lt;/span&gt;         &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;}&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;19&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;        .content img &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;{&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;20&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            width&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 450px&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;21&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            height&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 301px&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;22&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            transition-duration&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;0.5s&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;23&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            z-index&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;1&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;24&lt;/span&gt;         &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;}&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;25&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;        .content img:hover &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;{&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;26&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            transform&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; scale&#40;1.2&#41;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;27&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            -webkit-transform&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; scale&#40;1.2&#41;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;Safari 和 Chrome&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;28&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            -moz-transform&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; scale&#40;1.2&#41;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;Firefox&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;29&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            -ms-transform&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; scale&#40;1.2&#41;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;IE9&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;30&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            -o-transform&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; scale&#40;1.2&#41;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;Opera&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;31&lt;/span&gt;         &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;}&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;32&lt;/span&gt;     &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;style&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;33&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;head&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;34&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;body&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;35&lt;/span&gt;     &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;div &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;class&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"content\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;36&lt;/span&gt;         &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;img &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;src&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"img/5.jpg\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt; class&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"pic\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;/&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;37&lt;/span&gt;     &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;div&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;38&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;body&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;39&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;html&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;&lt;/pre&gt;\n&lt;div class=\"cnblogs_code_toolbar\" style=\"margin: 5px 0px 0px; padding: 0px;\"&gt;&lt;span class=\"cnblogs_code_copy\" style=\"margin: 0px; padding: 0px 5px 0px 0px; line-height: 1.5;\"&gt;&lt;a style=\"margin: 0px; padding: 0px; color: #075db3; text-decoration-line: underline; border: none !important;\" title=\"复制代码\" target=\"_blank\"&gt;&lt;img style=\"margin: 0px; padding: 0px; max-width: 900px; height: auto; border: none !important;\" src=\"https://common.cnblogs.com/images/copycode.gif\" alt=\"复制代码\" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;到这里就将CSS实现鼠标悬浮图片放大的效果了。&lt;/span&gt;&lt;/p&gt;\n&lt;/div&gt;\n&lt;/div&gt;', '2019-04-22 23:32:42', '2019-04-24 21:32:03', '2019-04-24 21:32:03', NULL, NULL, NULL);
INSERT INTO `article` VALUES (23, 'ssss', 1, 'admin', -1, '&lt;p class=\"one-p\"&gt;核心阅读&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;瞄准建设全国先进制造研发基地，着力深化供给侧结构性改革。一季度，天津经济取得来之不易的&ldquo;开门红&rdquo;：GDP增速从去年同期的1.9%跃升为4.5%，其中高技术制造业、战略性新兴产业的增加值分别增长6.4%和5%。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;人称&ldquo;泰达&rdquo;的天津经济技术开发区，35年心无旁骛做实业，连续19年在国家级开发区评比中名列前茅，盐碱荒滩崛起高质量发展的天津地标。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;&ldquo;还做实业吗？&rdquo;曾几何时，这道题难倒不少企业。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;&ldquo;我们35年算出一笔账，还是实体经济最划算!&rdquo;走进泰达，听到肯定回答。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;泰达，天津经济技术开发区英文简称TEDA的音译。&ldquo;诞生于1984年的泰达是中国最早一批开发区。泰达35年发展史浓缩成一句话，就是心无旁骛做实业。&rdquo;天津经济技术开发区工委书记、管委会主任郑伟铭说。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;实实在在做实业&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;实实在在做实业，是因为实体经济最划算。在泰达，这是企业家和管理者的共识&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;实体经济最划算，在泰达不是空泛口号，而是实践逻辑。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;算企业小账：&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;2018年，泰达实现增长的工业企业产值占工业总产值比重超过3/4。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;&ldquo;愁啊，订单太多，产能一直在追。&rdquo;诺思&#40;天津&#41;微系统创始人庞慰遭遇着幸福的烦恼：公司自主研发的射频滤波芯片，客户全是响当当的手机大牌，&ldquo;目前我们的研发占比已达欧美同行水平，希望未来两三年内，能够实现100亿元以上产值。&rdquo;&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;也有反过来的&mdash;&mdash;&ldquo;不卖!&rdquo;提起一段往事，天津飞旋科技有限公司总经理洪申平连连摇头。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;咋回事？高端磁悬浮轴承多应用于重要工业领域，国外公司始终不对国内市场出售。洪申平不信邪，领着清华一帮师兄弟落户泰达，耗时8年，研发成功。国际老牌厂商闻风找上门来，想高价收购企业。&ldquo;当然不能同意!&rdquo;去年，飞旋的磁悬浮鼓风机首次进入欧美市场。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;算产业和社会大账：&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;汽车、电子、石油化工、医药健康、装备制造，是天津开发区的五大支柱产业。前三个产业总产值均超过1000亿元，后两个产业总产值均超过500亿元。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;&ldquo;每一项主导产业的背后，都是一条从原材料、零部件生产到整装研发生产的完整链条。&rdquo;开发区经济运行局副局长侯晓路说。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;亚普2016年追着一汽大众来到天津。&ldquo;汽车产业链太长了，零部件供应商比飞机还多!&rdquo;说起经营思路，亚普汽车部件天津分厂副总经理杨茂昌如数家珍，&ldquo;我们30年来只做汽车燃油箱加油管，跟随大众、丰田的全国布局，降低物流成本。&rdquo;&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;&ldquo;一个整车厂的工人，可以带动20人就业，我们厂万余名工人，带动上下游近30万人就业，还不包括配套服务业。围绕一汽丰田形成的产业链，拉动天津全市90多家上下游企业，仅开发区内就有30多家。&rdquo;天津一汽丰田公司经营企划部副部长历伟颇为自豪。&lt;/p&gt;', '2019-05-12 00:25:53', '2019-05-12 14:57:44', NULL, NULL, NULL, NULL);
INSERT INTO `article` VALUES (24, '北京冬奥会倒计时', 1, 'admin', 1, '&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;新华社北京5月11日电 题：&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;span style=\"font-weight: bolder;\"&gt;千日太久，只争朝夕&lt;/span&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;span style=\"font-weight: bolder;\"&gt;&mdash;&mdash;写在北京冬奥会倒计时一千天之际&lt;/span&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;新华社记者丁文娴 姬烨&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;五月，日丽风和，杨柳飘飞。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;10日晚，北京城北的奥林匹克公园光芒璀璨，&ldquo;鸟巢&rdquo;&ldquo;水立方&rdquo;灯火绚烂，公园里的玲珑塔面貌一新。2008年奥运会时作为电视转播设施的玲珑塔，此番搭载倒计时装置，在接下来的一千个日夜中，将与全世界共同屏息倒数。只听全场齐呼&mdash;&mdash;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;五，四，三，二，一！&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;11名代表推动拉杆，&ldquo;1000&rdquo;字样跃然于塔身屏幕之上。2022年北京冬奥会迎来倒计时一千天！冬奥会的脚步近了，更近了！&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8921636730/1000\" /&gt;&lt;em class=\"desc\" style=\"color: #9b9ea3; line-height: 20px; text-align: center; display: block; font-size: 14px;\"&gt;5月10日，嘉宾启动倒计时牌。新华社记者 陈益宸 摄&lt;/em&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;span style=\"font-weight: bolder;\"&gt;场馆基建整装迎&ldquo;大考&rdquo;&lt;/span&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&ldquo;一千天后，我们将把一个极具科技含量的、可持续发展的国家速滑馆交给奥运、交给北京！&rdquo;国家速滑馆设计总负责人、北京建院副总建筑师郑方言语铿锵。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8914975270/1000\" /&gt;&lt;em class=\"desc\" style=\"color: #9b9ea3; line-height: 20px; text-align: center; display: block; font-size: 14px;\"&gt;这是国家速滑馆施工现场（5月9日摄）。 新华社发（任超摄）&lt;/em&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;这是郑方作为场馆设计师经历的第二个奥运倒计时一千天。此前，他主持设计了国家游泳中心等5座奥运场馆。在国家速滑馆&ldquo;冰丝带&rdquo;拔地而起的这片土地上，他曾亲眼看着作为2008年奥运会临时场馆的曲棍球场和射箭场建造完成。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&ldquo;冰丝带&rdquo;是北京冬奥会唯一新建冰上场馆。这座郑方口中&ldquo;当今最具科技含量的场馆&rdquo;，目前已完成主体环梁钢结构和屋顶索网结构工程。这是一座智慧场馆，数字冰场技术将为运动员比赛和训练提供实时数据，为观众和客户群提供室内外一体化导航服务。绿色节能理念贯彻始终，场馆的轮廓和体积被控制在最紧凑的程度，制冰过程中产生的80%的热量都将被循环利用于场馆采暖和生活用水。&lt;/p&gt;', '2019-05-12 11:52:11', '2019-05-12 11:52:11', NULL, NULL, NULL, NULL);

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
-- Table structure for article_cover
-- ----------------------------
DROP TABLE IF EXISTS `article_cover`;
CREATE TABLE `article_cover`  (
  `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_id` bigint(10) NOT NULL COMMENT '文章id',
  `img_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `article_id_index`(`article_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_cover
-- ----------------------------
INSERT INTO `article_cover` VALUES (16, 19, 'https://inews.gtimg.com/newsapp_bt/0/8660594517/1000');
INSERT INTO `article_cover` VALUES (22, 22, 'https://common.cnblogs.com/images/copycode.gif');
INSERT INTO `article_cover` VALUES (23, 18, 'https://inews.gtimg.com/newsapp_bt/0/8660594517/1000');
INSERT INTO `article_cover` VALUES (24, 18, 'https://inews.gtimg.com/newsapp_bt/0/8660594518/1000');
INSERT INTO `article_cover` VALUES (25, 18, 'https://inews.gtimg.com/newsapp_bt/0/8660594520/1000');
INSERT INTO `article_cover` VALUES (33, 21, 'https://inews.gtimg.com/newsapp_bt/0/8666668333/1000');
INSERT INTO `article_cover` VALUES (34, 20, 'https://inews.gtimg.com/newsapp_bt/0/8659647802/1000');
INSERT INTO `article_cover` VALUES (35, 20, 'https://inews.gtimg.com/newsapp_bt/0/8659647803/1000');
INSERT INTO `article_cover` VALUES (36, 20, 'https://inews.gtimg.com/newsapp_bt/0/8659647804/1000');
INSERT INTO `article_cover` VALUES (37, 24, 'https://inews.gtimg.com/newsapp_bt/0/8921636730/1000');

-- ----------------------------
-- Table structure for article_log
-- ----------------------------
DROP TABLE IF EXISTS `article_log`;
CREATE TABLE `article_log`  (
  `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_id` bigint(10) NULL DEFAULT NULL COMMENT '文章id',
  `article_status` tinyint(2) NULL DEFAULT NULL COMMENT '文章状态',
  `article_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章标题',
  `operator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `operate_time` timestamp(0) NULL DEFAULT NULL COMMENT '操作时间',
  `comment` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '意见',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_log
-- ----------------------------
INSERT INTO `article_log` VALUES (16, 18, 0, '迈向更加美好的未来', 'admin', '2019-04-22 21:24:52', NULL);
INSERT INTO `article_log` VALUES (17, 19, 0, 'ssss', 'admin', '2019-04-22 21:32:47', NULL);
INSERT INTO `article_log` VALUES (18, 20, 0, '泽连斯基以其在2015年开播的政治喜剧', 'admin', '2019-04-22 22:08:00', NULL);
INSERT INTO `article_log` VALUES (19, 21, 1, '中国发表《共建“一带一路”倡议：进展、贡献与展望》报告', 'admin', '2019-04-22 22:10:31', NULL);
INSERT INTO `article_log` VALUES (20, 22, 0, '浅谈CSS和JQuery实现鼠标悬浮图片放大效果﻿', 'admin', '2019-04-22 23:32:42', NULL);
INSERT INTO `article_log` VALUES (21, 22, 1, '浅谈CSS和JQuery实现鼠标悬浮图片放大效果﻿', 'admin', '2019-04-23 22:30:53', NULL);
INSERT INTO `article_log` VALUES (22, 18, 0, '迈向更加美好的未来', 'admin', '2019-04-23 22:52:06', NULL);
INSERT INTO `article_log` VALUES (23, 22, 2, '浅谈CSS和JQuery实现鼠标悬浮图片放大效果﻿', 'admin', '2019-04-24 21:32:03', NULL);
INSERT INTO `article_log` VALUES (24, 21, 0, '中国发表《共建“一带一路”倡议：进展、贡献与展望》报告', 'admin', '2019-04-24 21:35:21', NULL);
INSERT INTO `article_log` VALUES (25, 21, 0, '中国发表《共建“一带一路”倡议：进展、贡献与展望》报告', 'admin', '2019-04-24 21:35:48', NULL);
INSERT INTO `article_log` VALUES (26, 21, 1, '中国发表《共建“一带一路”倡议：进展、贡献与展望》报告', 'admin', '2019-04-24 21:37:03', NULL);
INSERT INTO `article_log` VALUES (27, 21, 0, '中国发表《共建“一带一路”倡议：进展、贡献与展望》报告', 'admin', '2019-04-24 21:38:38', NULL);
INSERT INTO `article_log` VALUES (28, 21, 1, '中国发表《共建“一带一路”倡议：进展、贡献与展望》报告', 'admin', '2019-04-24 21:41:23', NULL);
INSERT INTO `article_log` VALUES (29, 21, 0, '中国发表《共建“一带一路”倡议：进展、贡献与展望》报告', 'admin', '2019-04-24 21:41:58', '{\"comment\":\"dddddddddddddddddddd\"}');
INSERT INTO `article_log` VALUES (30, 21, 1, '中国发表《共建“一带一路”倡议：进展、贡献与展望》报告', 'admin', '2019-04-24 21:43:38', NULL);
INSERT INTO `article_log` VALUES (31, 21, 0, '中国发表《共建“一带一路”倡议：进展、贡献与展望》报告', 'admin', '2019-04-24 21:44:22', 'cccccccccccccccccccccccc');
INSERT INTO `article_log` VALUES (32, 20, 1, '泽连斯基以其在2015年开播的政治喜剧', 'admin', '2019-04-24 22:02:47', NULL);
INSERT INTO `article_log` VALUES (33, 21, 0, '中国发表《共建“一带一路”倡议：进展、贡献与展望》报告', 'admin', '2019-05-12 00:13:12', NULL);
INSERT INTO `article_log` VALUES (34, 23, 0, 'ssss', 'admin', '2019-05-12 00:25:53', NULL);
INSERT INTO `article_log` VALUES (35, 20, 3, '泽连斯基以其在2015年开播的政治喜剧', 'admin', '2019-05-12 11:14:59', '文章格式不正确');
INSERT INTO `article_log` VALUES (36, 20, 1, '泽连斯基以其在2015年开播的政治喜剧', 'admin', '2019-05-12 11:39:53', NULL);
INSERT INTO `article_log` VALUES (37, 20, 2, '泽连斯基以其在2015年开播的政治喜剧', 'admin', '2019-05-12 11:40:25', '撒大声地角色打啥电话静安寺的撒回到家萨科技活动开始爱豆世纪安徽的看哈撒客户贷款集合撒回到家后撒静待花开撒号地块哈萨克还得靠啥武器欧恩刹那间都萨达dklajdljakldjklajdw8qeojsadsaldlksa登记啥接电话金沙江大厦电话就爱上大理SD卡新年拿很多撒');
INSERT INTO `article_log` VALUES (38, 20, 0, '泽连斯基以其在2015年开播的政治喜剧', 'admin', '2019-05-12 11:47:36', NULL);
INSERT INTO `article_log` VALUES (39, 24, 1, '北京冬奥会倒计时', 'admin', '2019-05-12 11:52:11', NULL);
INSERT INTO `article_log` VALUES (40, 23, -1, 'ssss', 'admin', '2019-05-12 14:57:44', NULL);

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
-- Table structure for image_group
-- ----------------------------
DROP TABLE IF EXISTS `image_group`;
CREATE TABLE `image_group`  (
  `id` bigint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image_group
-- ----------------------------
INSERT INTO `image_group` VALUES (1, '测试分组');

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
INSERT INTO `menu` VALUES (26, '我的文章', '/article/myList', 25, 3001, 1, 'el-icon-third-idcard');
INSERT INTO `menu` VALUES (27, '文章审核', '/article/approveList', 25, 3002, 2, 'el-icon-third-filter');
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
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `group_id` bigint(8) UNSIGNED NULL DEFAULT 0 COMMENT '组',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `group_id_index`(`group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resource_image
-- ----------------------------
INSERT INTO `resource_image` VALUES ('13d5c585-9aa8-4527-b4ad-bea7d01d4222', '0.gif', 'http://localhost:9000/img/2019/05/11/13d5c585-9aa8-4527-b4ad-bea7d01d4222.gif', 1679955, '2019-05-11 16:25:53', '环境圣诞节啊独山大道sdsdsdsds', 0);
INSERT INTO `resource_image` VALUES ('1e4b9c0a-5e28-4430-9d74-3a0384ef4bb9', '0.gif', 'http://localhost:9000/img/2019/05/11/1e4b9c0a-5e28-4430-9d74-3a0384ef4bb9.gif', 1679955, '2019-05-11 16:25:53', '硕大的撒多撒多撒多多撒多dfsfdsfds撒大声地', 0);
INSERT INTO `resource_image` VALUES ('277f2f4c-db89-4296-97b3-ed3a40cccfd0', '0.gif', 'http://localhost:9000/img/2019/05/11/277f2f4c-db89-4296-97b3-ed3a40cccfd0.gif', 1679955, '2019-05-11 17:33:49', '大萨达萨达信息啊啊啊', 0);
INSERT INTO `resource_image` VALUES ('2e4ff40d-9840-4eac-a08d-08ae3fb44263', 'zbios_efde696.png', 'http://localhost:9000/img/2019/05/11/2e4ff40d-9840-4eac-a08d-08ae3fb44263.png', 3363, '2019-05-11 16:24:39', 'file', 0);
INSERT INTO `resource_image` VALUES ('55a3ad06-efce-4ad5-bdcf-549016767b18', 'zbios_efde696.png', 'http://localhost:9000/img/2019/05/11/55a3ad06-efce-4ad5-bdcf-549016767b18.png', 3363, '2019-05-11 18:28:43', 'zbios_efde696', 0);
INSERT INTO `resource_image` VALUES ('573f4ef2-9b23-49a3-8b2f-727a88bb3b87', '0.gif', 'http://localhost:9000/img/2019/05/11/573f4ef2-9b23-49a3-8b2f-727a88bb3b87.gif', 1679955, '2019-05-11 17:42:08', '0', 0);
INSERT INTO `resource_image` VALUES ('579ae43a-738e-40a4-a60d-c6145457af63', 'zbios_efde696.png', 'http://localhost:9000/img/2019/05/11/579ae43a-738e-40a4-a60d-c6145457af63.png', 3363, '2019-05-11 22:02:38', 'zbios_efde696', 1);
INSERT INTO `resource_image` VALUES ('5b97e8c9-9854-404b-9988-758444cb80ad', '0.gif', 'http://localhost:9000/img/2019/05/11/5b97e8c9-9854-404b-9988-758444cb80ad.gif', 1679955, '2019-05-11 17:40:49', '0', 0);
INSERT INTO `resource_image` VALUES ('8af6ee94-4669-488b-8fd2-be258162296b', 'zbios_efde696.png', 'http://localhost:9000/img/2019/05/11/8af6ee94-4669-488b-8fd2-be258162296b.png', 3363, '2019-05-11 16:18:44', 'file', 0);
INSERT INTO `resource_image` VALUES ('bf7cf5f7-270c-4194-a02b-bf8ae76fc0ca', '0.gif', 'http://localhost:9000/img/2019/05/11/bf7cf5f7-270c-4194-a02b-bf8ae76fc0ca.gif', 1679955, '2019-05-11 16:18:44', 'file', 0);
INSERT INTO `resource_image` VALUES ('c79c9e94-576f-41f3-b80a-edaf530ddb4b', '0.gif', 'http://localhost:9000/img/2019/05/11/c79c9e94-576f-41f3-b80a-edaf530ddb4b.gif', 1679955, '2019-05-11 22:02:38', '0', 1);
INSERT INTO `resource_image` VALUES ('de9d55a9-21f5-47f4-92f4-ab8fcca9ce15', '0.gif', 'http://localhost:9000/img/2019/05/11/de9d55a9-21f5-47f4-92f4-ab8fcca9ce15.gif', 1679955, '2019-05-11 17:40:38', '0', 0);
INSERT INTO `resource_image` VALUES ('e36bb1db-e03d-48ee-88c9-f17216ddf9c1', '0.gif', 'http://localhost:9000/img/2019/05/11/e36bb1db-e03d-48ee-88c9-f17216ddf9c1.gif', 1679955, '2019-05-11 16:26:14', 'file', 0);

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
