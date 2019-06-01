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

 Date: 02/06/2019 00:46:43
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
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (18, '迈向更加美好的未来', 2, 'admin', 0, '&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8660594517/1000\" /&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8660594518/1000\" /&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;阿斯塔纳国际金融中心。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8660594520/1000\" /&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;操作横机编织衣片的员工。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8660594521/1000\" /&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;该集团种植基地。&lt;/p&gt;', '2019-04-23 22:52:06', '2019-04-23 22:52:06', NULL, NULL, NULL, NULL);
INSERT INTO `article` VALUES (19, 'ssss', 1, 'admin', 0, '&lt;p&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8660594517/1000\" /&gt;&lt;/p&gt;', '2019-04-22 21:32:47', '2019-04-22 21:32:47', NULL, NULL, NULL, NULL);
INSERT INTO `article` VALUES (20, '泽连斯基以其在2015年开播的政治喜剧', 2, 'admin', 1, '&lt;div class=\"introduction\" style=\"color: #555555; line-height: 2.2; margin-bottom: 2em; word-break: break-all; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;泽连斯基以其在2015年开播的政治喜剧《人民公仆》中扮演的&ldquo;总统&rdquo;角色而出名，在剧中，泽连斯基作为一名历史老师因批评时政走红后被选举为总统。&lt;/div&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8659647802/1000\" /&gt;&lt;em class=\"desc\" style=\"color: #9b9ea3; line-height: 20px; text-align: center; display: block; font-size: 14px;\"&gt;波罗申科与泽连斯基（图：美联社）&lt;/em&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;span style=\"font-weight: bolder;\"&gt;海外网4月22日电&lt;/span&gt;2019乌克兰大选第二轮投票于当地时间21日晚20点结束。出口民调显示，喜剧演员泽连斯基得票率大幅领先于现任总统波罗申科，支持率为73.3%，而波罗申科支持率为26.3%。民调结果出来后，波罗申科承认落败，并向对手表达祝贺。同时泽连斯基宣布胜选，并感谢所有支持者。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8659647803/1000\" /&gt;&lt;em class=\"desc\" style=\"color: #9b9ea3; line-height: 20px; text-align: center; display: block; font-size: 14px;\"&gt;波罗申科承认败选。（图截于波罗申科社交媒体）&lt;/em&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;据乌通社（ukrinform）消息，波罗申科说，投票结果是&ldquo;明确的&rdquo;，&ldquo;我将离任，但我想坚定地强调&mdash;&mdash;我不会退出政治舞台。&rdquo;泽连斯基在出口民调结果后宣布胜选，他感谢乌克兰人及其家人的支持；并感谢乌执法人员的诚实服务，安全部门警惕值守，以及军队和志愿者对乌克兰的保卫。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;早前，乌克兰第一轮选举在4月1日举行，没有候选人赢得过半选民支持，但泽连斯基以约30%的得票率领先，而波罗申科则以16%的支持率遥居第二，两人进入第二轮决战。根据乌克兰社会调查机构&ldquo;评级&rdquo;（Rating Group）的最新民调结果，泽连斯基的支持率超过70%，现任总统波罗申科的支持率仅25%左右。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8659647804/1000\" /&gt;&lt;em class=\"desc\" style=\"color: #9b9ea3; line-height: 20px; text-align: center; display: block; font-size: 14px;\"&gt;泽连斯基。（图：乌通社）&lt;/em&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;泽连斯基以其在2015年开播的政治喜剧《人民公仆》中扮演的&ldquo;总统&rdquo;角色而出名，在剧中，泽连斯基作为一名历史老师因批评时政走红后被选举为总统。分析认为，如今，基于广大民众对于2014年当选的现任总统波罗申科的失望情绪，泽连斯基很有可能将剧情中的命运带进现实。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;据了解，乌克兰总统是乌克兰的国家元首，对内负起最高的政治责任，对外代表乌克兰。乌克兰宪法规定，任何一个年满35周岁、在乌境内连续居住超过10年的乌克兰公民都可以竞选总统。总统任期5年，最多可以竞选连任一次。参加投票的选民人数超过登记选民的50%则选举有效。（编译/海外网 侯兴川）&lt;/p&gt;', '2019-06-01 22:53:13', '2019-06-01 22:59:06', '2019-05-12 11:47:36', 1, 1, NULL);
INSERT INTO `article` VALUES (21, '中国发表《共建“一带一路”倡议：进展、贡献与展望》报告', 1, 'admin', 0, '&lt;p&gt;新华社北京4月22日电（记者安蓓）第二届&ldquo;一带一路&rdquo;国际合作高峰论坛召开在即，经推进&ldquo;一带一路&rdquo;建设工作领导小组批准，领导小组办公室22日发表《共建&ldquo;一带一路&rdquo;倡议：进展、贡献与展望》报告。&lt;/p&gt;\n&lt;p&gt;&lt;img src=\"https://inews.gtimg.com/newsapp_bt/0/8666668333/1000\" /&gt;&lt;/p&gt;\n&lt;p&gt;报告全文约1.8万字，除前言外，共包括进展、贡献和展望三个部分。&lt;/p&gt;\n&lt;p&gt;2013年9月和10月，中国国家主席习近平在出访哈萨克斯坦和印度尼西亚时先后提出共建&ldquo;丝绸之路经济带&rdquo;和&ldquo;21世纪海上丝绸之路&rdquo;的重大倡议。5年多来，共建&ldquo;一带一路&rdquo;倡议得到了越来越多国家和国际组织的积极响应，受到国际社会广泛关注，影响力日益扩大。&lt;/p&gt;\n&lt;p&gt;报告指出，2013年以来，共建&ldquo;一带一路&rdquo;倡议以政策沟通、设施联通、贸易畅通、资金融通和民心相通为主要内容扎实推进，取得明显成效，一批具有标志性的早期成果开始显现，参与各国得到了实实在在的好处，对共建&ldquo;一带一路&rdquo;的认同感和参与度不断增强。2013年至2018年，中国与沿线国家货物贸易进出口总额超过6万亿美元，年均增长率高于同期中国对外贸易增速，占中国货物贸易总额的比重达到27.4%；中国企业对沿线国家直接投资超过900亿美元，在沿线国家完成对外承包工程营业额超过4000亿美元。&lt;/p&gt;\n&lt;p&gt;报告指出，共建&ldquo;一带一路&rdquo;倡议着眼于构建人类命运共同体，坚持共商共建共享原则，为推动全球治理体系变革和经济全球化作出了中国贡献。2017年5月，首届&ldquo;一带一路&rdquo;国际合作高峰论坛在北京成功召开，论坛形成了5大类、76大项、279项具体成果，这些成果已全部得到落实。&lt;/p&gt;\n&lt;p&gt;报告说，当今世界正处于大发展大变革大调整时期，和平、发展、合作仍是时代潮流。展望未来，共建&ldquo;一带一路&rdquo;既面临诸多问题和挑战，更充满前所未有的机遇和发展前景。随着时间的推移和各方共同努力，相信共建&ldquo;一带一路&rdquo;一定会走深走实，行稳致远，成为和平之路、繁荣之路、开放之路、绿色之路、创新之路、文明之路、廉洁之路，推动经济全球化朝着更加开放、包容、普惠、平衡、共赢的方向发展。dddd&lt;/p&gt;\n&lt;p&gt;dsdsds&lt;/p&gt;\n&lt;p&gt;dsdsd&lt;/p&gt;\n&lt;p&gt;dsdsds&lt;/p&gt;\n&lt;p&gt;dsdsd&lt;/p&gt;\n&lt;p&gt;dsds&lt;/p&gt;\n&lt;p&gt;dsds&lt;/p&gt;\n&lt;p&gt;&nbsp;&lt;/p&gt;', '2019-05-12 00:13:12', '2019-05-12 00:13:12', NULL, NULL, NULL, NULL);
INSERT INTO `article` VALUES (22, '浅谈CSS和JQuery实现鼠标悬浮图片放大效果﻿', 1, 'admin', 2, '&lt;h1 class=\"postTitle\" style=\"margin: 0px; padding: 0px 0px 0px 5px; float: left; line-height: 1.5; width: 1125.56px; clear: both; font-size: 14px; font-family: Verdana, Arial, Helvetica, sans-serif; background-color: #fefef2;\"&gt;&lt;a id=\"cb_post_title_url\" class=\"postTitle2\" style=\"margin: 0px; padding: 0px; color: #075db3; text-decoration-line: none;\" href=\"https://www.cnblogs.com/xuyuntao/p/4965818.html\"&gt;浅谈CSS和JQuery实现鼠标悬浮图片放大效果&lt;/a&gt;&lt;/h1&gt;\n&lt;div class=\"clear\" style=\"margin: 0px; padding: 0px; clear: both; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: #fefef2;\"&gt;&nbsp;&lt;/div&gt;\n&lt;div class=\"postBody\" style=\"margin: 5px 0px 0px; padding: 5px 2px 5px 5px; line-height: 1.5; font-size: 13px; font-family: Verdana, Arial, Helvetica, sans-serif; background-color: #fefef2;\"&gt;\n&lt;div id=\"cnblogs_post_body\" class=\"blogpost-body\" style=\"margin: 0px 0px 20px; padding: 0px; word-break: break-word;\"&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;对于刚刚学习网页前台设计的同学一定对图片的处理非常苦恼，那么这里简单的讲解一下几个图片处理的实例。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;以.net为平台，微软的Visual Studio 2013为开发工具，当然前台技术还是采用CSS3和HTML，Java的小伙伴不要绕道~~~&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;言归正传，那么我们首先要完成什么样的图片处理呢？&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 18px;\"&gt;一、CSS3图片的放大&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-size: 14px;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;;\"&gt;css3中，有一个属性transform，官方的解释是：允许向元素应用2D或3D的转换。这些转换当然就包含旋转、缩放、移动或倾斜了。有兴趣的同学可以继续了解&lt;a style=\"margin: 0px; padding: 0px; color: #075db3;\" title=\"css3（transform）\" href=\"http://www.w3school.com.cn/cssref/pr_transform.asp\" target=\"_blank\" rel=\"noopener\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;http://www.w3school.com.cn/cssref/pr_transform.asp&lt;/span&gt;&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-size: 14px;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;;\"&gt;transform属性中的方法有很多，那么用于图片缩放的是：&lt;strong style=\"margin: 0px; padding: 0px;\"&gt;scale&lt;/strong&gt;。多说无益，直接上代码：&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;div class=\"cnblogs_code\" style=\"margin: 5px 0px; padding: 5px; background-color: #f5f5f5; border: 1px solid #cccccc; overflow: auto; font-family: &#39;Courier New&#39; !important; font-size: 12px !important;\"&gt;\n&lt;div class=\"cnblogs_code_toolbar\" style=\"margin: 5px 0px 0px; padding: 0px;\"&gt;&lt;span class=\"cnblogs_code_copy\" style=\"margin: 0px; padding: 0px 5px 0px 0px; line-height: 1.5;\"&gt;&lt;a style=\"margin: 0px; padding: 0px; color: #075db3; text-decoration-line: underline; border: none !important;\" title=\"复制代码\" target=\"_blank\"&gt;&lt;img style=\"margin: 0px; padding: 0px; max-width: 900px; height: auto; border: none !important;\" src=\"https://common.cnblogs.com/images/copycode.gif\" alt=\"复制代码\" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;\n&lt;pre style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &#39;Courier New&#39; !important;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 1&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;!&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff00ff;\"&gt;DOCTYPE html&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 2&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;html &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;xmlns&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"http://www.w3.org/1999/xhtml\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 3&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;head&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 4&lt;/span&gt;     &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;meta &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;http-equiv&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"Content-Type\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt; content&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"text/html; charset=utf-8\"&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;/&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 5&lt;/span&gt;     &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;title&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;title&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 6&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;head&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 7&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;body&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 8&lt;/span&gt;     &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;div &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;class&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"content\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 9&lt;/span&gt;         &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;img &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;src&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"img/5.jpg\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt; class&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"pic\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;/&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;10&lt;/span&gt;     &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;div&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;11&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;body&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;12&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;html&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;&lt;/pre&gt;\n&lt;div class=\"cnblogs_code_toolbar\" style=\"margin: 5px 0px 0px; padding: 0px;\"&gt;&lt;span class=\"cnblogs_code_copy\" style=\"margin: 0px; padding: 0px 5px 0px 0px; line-height: 1.5;\"&gt;&lt;a style=\"margin: 0px; padding: 0px; color: #075db3; text-decoration-line: underline; border: none !important;\" title=\"复制代码\" target=\"_blank\"&gt;&lt;img style=\"margin: 0px; padding: 0px; max-width: 900px; height: auto; border: none !important;\" src=\"https://common.cnblogs.com/images/copycode.gif\" alt=\"复制代码\" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&nbsp;上面这段代码是基本的页面结构，body下div，内部放入图片&#40;5.jpg是我测试用的图片，并且放在了img路径下&#41;。之后我们给它添加基本的css样式：&lt;/p&gt;\n&lt;div class=\"cnblogs_code\" style=\"margin: 5px 0px; padding: 5px; background-color: #f5f5f5; border: 1px solid #cccccc; overflow: auto; font-family: &#39;Courier New&#39; !important; font-size: 12px !important;\"&gt;\n&lt;div class=\"cnblogs_code_toolbar\" style=\"margin: 5px 0px 0px; padding: 0px;\"&gt;&lt;span class=\"cnblogs_code_copy\" style=\"margin: 0px; padding: 0px 5px 0px 0px; line-height: 1.5;\"&gt;&lt;a style=\"margin: 0px; padding: 0px; color: #075db3; text-decoration-line: underline; border: none !important;\" title=\"复制代码\" target=\"_blank\"&gt;&lt;img style=\"margin: 0px; padding: 0px; max-width: 900px; height: auto; border: none !important;\" src=\"https://common.cnblogs.com/images/copycode.gif\" alt=\"复制代码\" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;\n&lt;pre style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &#39;Courier New&#39; !important;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 1&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;&lt;style type=\"text/css\"&gt;\n&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 2&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;        *&lt;/span&gt;{\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 3&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            padding&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;0&lt;/span&gt;;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 4&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            margin&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;0&lt;/span&gt;;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;去内外边界&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 5&lt;/span&gt;         }\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 6&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;        .content &lt;/span&gt;{\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 7&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            margin&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 40px auto&lt;/span&gt;;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;居中显示&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 8&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            width&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 450px&lt;/span&gt;;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 9&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            height&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 301px&lt;/span&gt;;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;10&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            border&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;10px solid #808080&lt;/span&gt;;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;给外部加一个边框&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;11&lt;/span&gt;         }\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;12&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;        .content img &lt;/span&gt;{\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;13&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            width&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 450px&lt;/span&gt;;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;14&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            height&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 301px&lt;/span&gt;;     \n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;15&lt;/span&gt;         }\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;16&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;&lt;/style&gt;&lt;/span&gt;&lt;/pre&gt;\n&lt;div class=\"cnblogs_code_toolbar\" style=\"margin: 5px 0px 0px; padding: 0px;\"&gt;&lt;span class=\"cnblogs_code_copy\" style=\"margin: 0px; padding: 0px 5px 0px 0px; line-height: 1.5;\"&gt;&lt;a style=\"margin: 0px; padding: 0px; color: #075db3; text-decoration-line: underline; border: none !important;\" title=\"复制代码\" target=\"_blank\"&gt;&lt;img style=\"margin: 0px; padding: 0px; max-width: 900px; height: auto; border: none !important;\" src=\"https://common.cnblogs.com/images/copycode.gif\" alt=\"复制代码\" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&nbsp;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;添加完样式之后，界面看起来比较顺眼了，那么现在就开始利用上面提到的属性来完成我们标题提到的功能。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&nbsp;我们先用css来完成。既然提到鼠标悬浮，那么首先想到的应该是伪类：hover。&#40;css中有很多伪类，有兴趣的伙伴可以之后查看&#41;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&nbsp;添加如下的css代码：&lt;/p&gt;\n&lt;div class=\"cnblogs_code\" style=\"margin: 5px 0px; padding: 5px; background-color: #f5f5f5; border: 1px solid #cccccc; overflow: auto; font-family: &#39;Courier New&#39; !important; font-size: 12px !important;\"&gt;\n&lt;pre style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &#39;Courier New&#39; !important;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;1&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;        .content img:hover&lt;/span&gt;{\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;2&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            transform&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;scale&#40;1.2&#41;&lt;/span&gt;;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;3&lt;/span&gt;         }&lt;/pre&gt;\n&lt;/div&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;现在在页面浏览时，将鼠标放到图片上，就会出现图片放大的效果，当然这里是放大了原图片的1.2倍。等等，有的小伙伴会问，为什么我的图片没有放大呢？天呐，你用的浏览器是不是IE8啊？哈哈，柯南还没有说完。现在市面上主流的浏览器有很多，如：IE，Chrome，Safari，Opera和Firefox，CSS3为了分别适应他们，分别添加了前缀，那么上面的一段代码就要替换成：&lt;/span&gt;&lt;/p&gt;\n&lt;div class=\"cnblogs_code\" style=\"margin: 5px 0px; padding: 5px; background-color: #f5f5f5; border: 1px solid #cccccc; overflow: auto; font-family: &#39;Courier New&#39; !important; font-size: 12px !important;\"&gt;\n&lt;div class=\"cnblogs_code_toolbar\" style=\"margin: 5px 0px 0px; padding: 0px;\"&gt;&lt;span class=\"cnblogs_code_copy\" style=\"margin: 0px; padding: 0px 5px 0px 0px; line-height: 1.5;\"&gt;&lt;a style=\"margin: 0px; padding: 0px; color: #075db3; text-decoration-line: underline; border: none !important;\" title=\"复制代码\" target=\"_blank\"&gt;&lt;img style=\"margin: 0px; padding: 0px; max-width: 900px; height: auto; border: none !important;\" src=\"https://common.cnblogs.com/images/copycode.gif\" alt=\"复制代码\" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;\n&lt;pre style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &#39;Courier New&#39; !important;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;1&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;        .content img:hover &lt;/span&gt;{\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;2&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            transform&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; scale&#40;1.2&#41;&lt;/span&gt;;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;3&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            -webkit-transform&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; scale&#40;1.2&#41;&lt;/span&gt;; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;Safari 和 Chrome&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;4&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            -moz-transform&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; scale&#40;1.2&#41;&lt;/span&gt;; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;Firefox&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;5&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            -ms-transform&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; scale&#40;1.2&#41;&lt;/span&gt;; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;IE9&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;6&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            -o-transform&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; scale&#40;1.2&#41;&lt;/span&gt;; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;Opera&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;7&lt;/span&gt;         }&lt;/pre&gt;\n&lt;div class=\"cnblogs_code_toolbar\" style=\"margin: 5px 0px 0px; padding: 0px;\"&gt;&lt;span class=\"cnblogs_code_copy\" style=\"margin: 0px; padding: 0px 5px 0px 0px; line-height: 1.5;\"&gt;&lt;a style=\"margin: 0px; padding: 0px; color: #075db3; text-decoration-line: underline; border: none !important;\" title=\"复制代码\" target=\"_blank\"&gt;&lt;img style=\"margin: 0px; padding: 0px; max-width: 900px; height: auto; border: none !important;\" src=\"https://common.cnblogs.com/images/copycode.gif\" alt=\"复制代码\" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;这里在说说scale的其他用法，单单只有scale默认是2D转换的，想要3D转换呢，换成scale3d即可，用法一样。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;官方的定义是scale&#40;X,Y&#41;，意思是X轴和Y轴分别缩放的倍数，上面的例子是缩写的形式。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;代码写到这里基本已经完成了标题所表示的功能，但是细心的同学会觉得，这样的效果显得过于突然，图片弹出的比较突兀，那么怎么让变化不那么突然呢？CSS3为我们提供了另外一个函数：transition-duration，默认的单位是秒并且允许小数。它的定义是过度效果需要花费的时间。喜欢专研的小伙伴可以参考&lt;a style=\"margin: 0px; padding: 0px; color: #075db3;\" href=\"http://www.w3school.com.cn/css3/css3_transition.asp\" target=\"_blank\" rel=\"noopener\"&gt;http://www.w3school.com.cn/css3/css3_transition.asp&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;那么添加上之后，代码如下：&lt;/span&gt;&lt;/p&gt;\n&lt;div class=\"cnblogs_code\" style=\"margin: 5px 0px; padding: 5px; background-color: #f5f5f5; border: 1px solid #cccccc; overflow: auto; font-family: &#39;Courier New&#39; !important; font-size: 12px !important;\"&gt;\n&lt;pre style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &#39;Courier New&#39; !important;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;1&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;         .content img &lt;/span&gt;{\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;2&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;             width&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 450px&lt;/span&gt;;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;3&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;             height&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 301px&lt;/span&gt;;    \n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;4&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;             transition-duration&lt;/span&gt;:&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;0.5s&lt;/span&gt;; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;过度的时间为0，5秒&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;5&lt;/span&gt;          }    &lt;/pre&gt;\n&lt;/div&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;在页面浏览的时候，图片变大就不显得那么突兀和突然，并且动画效果更人性化。&lt;/span&gt;&lt;/p&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;最后我们再考虑一种情况，如果一个页面很复杂，要表达的信息非常多，按照上面的代码显示就会无意的遮挡住其他的图片或者文字，所以这个地方，需要继续优化一下，让图片放大，但是图片的边界不放大，防止页面中不必要的遮挡。这里用到一个重要的属性：overflow。最后将完整的外码列出如下：&lt;/span&gt;&lt;/p&gt;\n&lt;div class=\"cnblogs_code\" style=\"margin: 5px 0px; padding: 5px; background-color: #f5f5f5; border: 1px solid #cccccc; overflow: auto; font-family: &#39;Courier New&#39; !important; font-size: 12px !important;\"&gt;\n&lt;div class=\"cnblogs_code_toolbar\" style=\"margin: 5px 0px 0px; padding: 0px;\"&gt;&lt;span class=\"cnblogs_code_copy\" style=\"margin: 0px; padding: 0px 5px 0px 0px; line-height: 1.5;\"&gt;&lt;a style=\"margin: 0px; padding: 0px; color: #075db3; text-decoration-line: underline; border: none !important;\" title=\"复制代码\" target=\"_blank\"&gt;&lt;img style=\"margin: 0px; padding: 0px; max-width: 900px; height: auto; border: none !important;\" src=\"https://common.cnblogs.com/images/copycode.gif\" alt=\"复制代码\" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;\n&lt;pre style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &#39;Courier New&#39; !important;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 1&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;!&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff00ff;\"&gt;DOCTYPE html&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 2&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;html &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;xmlns&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"http://www.w3.org/1999/xhtml\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 3&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;head&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 4&lt;/span&gt;     &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;meta &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;http-equiv&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"Content-Type\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt; content&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"text/html; charset=utf-8\"&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;/&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 5&lt;/span&gt;     &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;title&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;中心点逐渐放大效果&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;title&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 6&lt;/span&gt;     &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;style &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;type&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"text/css\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 7&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;        *&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;{&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 8&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            padding&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;0&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt; 9&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            margin&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;0&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;10&lt;/span&gt;         &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;}&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;11&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;        .content &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;{&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;12&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            margin&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 40px auto&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;13&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            width&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 450px&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;14&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            height&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 301px&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;15&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            border&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;10px solid #808080&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;16&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            overflow&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;hidden&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;17&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            z-index&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;2&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;18&lt;/span&gt;         &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;}&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;19&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;        .content img &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;{&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;20&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            width&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 450px&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;21&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            height&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; 301px&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;22&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            transition-duration&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;0.5s&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;23&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            z-index&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;1&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;24&lt;/span&gt;         &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;}&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;25&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;        .content img:hover &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;{&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;26&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            transform&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; scale&#40;1.2&#41;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;27&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            -webkit-transform&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; scale&#40;1.2&#41;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;Safari 和 Chrome&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;28&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            -moz-transform&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; scale&#40;1.2&#41;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;Firefox&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;29&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            -ms-transform&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; scale&#40;1.2&#41;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;IE9&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;30&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;            -o-transform&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;:&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt; scale&#40;1.2&#41;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;;&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;/*&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;Opera&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008000;\"&gt;*/&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;31&lt;/span&gt;         &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5;\"&gt;}&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;32&lt;/span&gt;     &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;style&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;33&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;head&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;34&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;body&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;35&lt;/span&gt;     &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;div &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;class&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"content\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;36&lt;/span&gt;         &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;img &lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt;src&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"img/5.jpg\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #ff0000;\"&gt; class&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;=\"pic\"&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;/&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;37&lt;/span&gt;     &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;div&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;38&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;body&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;\n&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #008080;\"&gt;39&lt;/span&gt; &lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&lt;/&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #800000;\"&gt;html&lt;/span&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; color: #0000ff;\"&gt;&gt;&lt;/span&gt;&lt;/pre&gt;\n&lt;div class=\"cnblogs_code_toolbar\" style=\"margin: 5px 0px 0px; padding: 0px;\"&gt;&lt;span class=\"cnblogs_code_copy\" style=\"margin: 0px; padding: 0px 5px 0px 0px; line-height: 1.5;\"&gt;&lt;a style=\"margin: 0px; padding: 0px; color: #075db3; text-decoration-line: underline; border: none !important;\" title=\"复制代码\" target=\"_blank\"&gt;&lt;img style=\"margin: 0px; padding: 0px; max-width: 900px; height: auto; border: none !important;\" src=\"https://common.cnblogs.com/images/copycode.gif\" alt=\"复制代码\" /&gt;&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;p style=\"margin: 10px auto 10px 30px; padding: 0px; line-height: 1.5;\"&gt;&lt;span style=\"margin: 0px; padding: 0px; line-height: 1.5; font-family: &#39;Microsoft YaHei&#39;; font-size: 14px;\"&gt;到这里就将CSS实现鼠标悬浮图片放大的效果了。&lt;/span&gt;&lt;/p&gt;\n&lt;/div&gt;\n&lt;/div&gt;', '2019-04-22 23:32:42', '2019-04-24 21:32:03', '2019-04-24 21:32:03', NULL, NULL, NULL);
INSERT INTO `article` VALUES (23, 'ssss', 1, 'admin', -1, '&lt;p class=\"one-p\"&gt;核心阅读&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;瞄准建设全国先进制造研发基地，着力深化供给侧结构性改革。一季度，天津经济取得来之不易的&ldquo;开门红&rdquo;：GDP增速从去年同期的1.9%跃升为4.5%，其中高技术制造业、战略性新兴产业的增加值分别增长6.4%和5%。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;人称&ldquo;泰达&rdquo;的天津经济技术开发区，35年心无旁骛做实业，连续19年在国家级开发区评比中名列前茅，盐碱荒滩崛起高质量发展的天津地标。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;&ldquo;还做实业吗？&rdquo;曾几何时，这道题难倒不少企业。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;&ldquo;我们35年算出一笔账，还是实体经济最划算!&rdquo;走进泰达，听到肯定回答。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;泰达，天津经济技术开发区英文简称TEDA的音译。&ldquo;诞生于1984年的泰达是中国最早一批开发区。泰达35年发展史浓缩成一句话，就是心无旁骛做实业。&rdquo;天津经济技术开发区工委书记、管委会主任郑伟铭说。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;实实在在做实业&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;实实在在做实业，是因为实体经济最划算。在泰达，这是企业家和管理者的共识&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;实体经济最划算，在泰达不是空泛口号，而是实践逻辑。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;算企业小账：&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;2018年，泰达实现增长的工业企业产值占工业总产值比重超过3/4。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;&ldquo;愁啊，订单太多，产能一直在追。&rdquo;诺思&#40;天津&#41;微系统创始人庞慰遭遇着幸福的烦恼：公司自主研发的射频滤波芯片，客户全是响当当的手机大牌，&ldquo;目前我们的研发占比已达欧美同行水平，希望未来两三年内，能够实现100亿元以上产值。&rdquo;&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;也有反过来的&mdash;&mdash;&ldquo;不卖!&rdquo;提起一段往事，天津飞旋科技有限公司总经理洪申平连连摇头。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;咋回事？高端磁悬浮轴承多应用于重要工业领域，国外公司始终不对国内市场出售。洪申平不信邪，领着清华一帮师兄弟落户泰达，耗时8年，研发成功。国际老牌厂商闻风找上门来，想高价收购企业。&ldquo;当然不能同意!&rdquo;去年，飞旋的磁悬浮鼓风机首次进入欧美市场。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;算产业和社会大账：&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;汽车、电子、石油化工、医药健康、装备制造，是天津开发区的五大支柱产业。前三个产业总产值均超过1000亿元，后两个产业总产值均超过500亿元。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;&ldquo;每一项主导产业的背后，都是一条从原材料、零部件生产到整装研发生产的完整链条。&rdquo;开发区经济运行局副局长侯晓路说。&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;亚普2016年追着一汽大众来到天津。&ldquo;汽车产业链太长了，零部件供应商比飞机还多!&rdquo;说起经营思路，亚普汽车部件天津分厂副总经理杨茂昌如数家珍，&ldquo;我们30年来只做汽车燃油箱加油管，跟随大众、丰田的全国布局，降低物流成本。&rdquo;&lt;/p&gt;\n&lt;p class=\"one-p\"&gt;&ldquo;一个整车厂的工人，可以带动20人就业，我们厂万余名工人，带动上下游近30万人就业，还不包括配套服务业。围绕一汽丰田形成的产业链，拉动天津全市90多家上下游企业，仅开发区内就有30多家。&rdquo;天津一汽丰田公司经营企划部副部长历伟颇为自豪。&lt;/p&gt;', '2019-05-12 00:25:53', '2019-05-12 14:57:44', NULL, NULL, NULL, NULL);
INSERT INTO `article` VALUES (24, '北京冬奥会倒计时', 1, 'admin', 0, '&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;新华社北京5月11日电 题：&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;span style=\"font-weight: bolder;\"&gt;千日太久，只争朝夕&lt;/span&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;span style=\"font-weight: bolder;\"&gt;&mdash;&mdash;写在北京冬奥会倒计时一千天之际&lt;/span&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;新华社记者丁文娴 姬烨&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;五月，日丽风和，杨柳飘飞。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;10日晚，北京城北的奥林匹克公园光芒璀璨，&ldquo;鸟巢&rdquo;&ldquo;水立方&rdquo;灯火绚烂，公园里的玲珑塔面貌一新。2008年奥运会时作为电视转播设施的玲珑塔，此番搭载倒计时装置，在接下来的一千个日夜中，将与全世界共同屏息倒数。只听全场齐呼&mdash;&mdash;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;五，四，三，二，一！&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;11名代表推动拉杆，&ldquo;1000&rdquo;字样跃然于塔身屏幕之上。2022年北京冬奥会迎来倒计时一千天！冬奥会的脚步近了，更近了！&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8921636730/1000\" /&gt;&lt;em class=\"desc\" style=\"color: #9b9ea3; line-height: 20px; text-align: center; display: block; font-size: 14px;\"&gt;5月10日，嘉宾启动倒计时牌。新华社记者 陈益宸 摄&lt;/em&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;span style=\"font-weight: bolder;\"&gt;场馆基建整装迎&ldquo;大考&rdquo;&lt;/span&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&ldquo;一千天后，我们将把一个极具科技含量的、可持续发展的国家速滑馆交给奥运、交给北京！&rdquo;国家速滑馆设计总负责人、北京建院副总建筑师郑方言语铿锵。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8914975270/1000\" /&gt;&lt;em class=\"desc\" style=\"color: #9b9ea3; line-height: 20px; text-align: center; display: block; font-size: 14px;\"&gt;这是国家速滑馆施工现场（5月9日摄）。 新华社发（任超摄）&lt;/em&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;这是郑方作为场馆设计师经历的第二个奥运倒计时一千天。此前，他主持设计了国家游泳中心等5座奥运场馆。在国家速滑馆&ldquo;冰丝带&rdquo;拔地而起的这片土地上，他曾亲眼看着作为2008年奥运会临时场馆的曲棍球场和射箭场建造完成。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&ldquo;冰丝带&rdquo;是北京冬奥会唯一新建冰上场馆。这座郑方口中&ldquo;当今最具科技含量的场馆&rdquo;，目前已完成主体环梁钢结构和屋顶索网结构工程。这是一座智慧场馆，数字冰场技术将为运动员比赛和训练提供实时数据，为观众和客户群提供室内外一体化导航服务。绿色节能理念贯彻始终，场馆的轮廓和体积被控制在最紧凑的程度，制冰过程中产生的80%的热量都将被循环利用于场馆采暖和生活用水。&lt;/p&gt;', '2019-06-01 22:35:23', '2019-06-01 22:35:23', NULL, 5, 1, NULL);
INSERT INTO `article` VALUES (25, 'dsdsa', 1, 'admin', -1, '&lt;p&gt;dsadsa&lt;/p&gt;', '2019-06-01 22:23:03', '2019-06-01 22:58:32', NULL, 3, 4, NULL);
INSERT INTO `article` VALUES (26, 'xxsadsa', 1, 'admin', 0, '&lt;p&gt;sdddddddddddddddd&lt;/p&gt;\n&lt;p&gt;sdsd&lt;/p&gt;\n&lt;p&gt;sdadsa&lt;/p&gt;', '2019-06-01 23:55:54', '2019-06-01 23:55:54', NULL, 3, 1, NULL);
INSERT INTO `article` VALUES (27, 'dsadsadsadsadsa', 1, 'admin', 0, '&lt;p&gt;dfdfsdfdsfdsfd&lt;/p&gt;', '2019-06-01 23:56:32', '2019-06-01 23:56:32', NULL, 4, 4, NULL);
INSERT INTO `article` VALUES (28, 'ddfdfdsfdsfdsfdsfdsf', 1, 'admin', 0, '&lt;p&gt;dfsfdsfdsfdsfdsfds&lt;/p&gt;', '2019-06-01 23:57:00', '2019-06-01 23:57:00', NULL, 7, 3, NULL);
INSERT INTO `article` VALUES (29, '习近平和孩子们在一起的温情瞬间', 2, 'admin', 0, '&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;今天是六一儿童节。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　前不久，习近平总书记来到江西省赣州市于都县梓山镇潭头村看望慰问老区人民，在离开潭头村时许多村民前来道别，看到有儿童也来到现场，总书记亲切抚摸孩子额头，这温情的一幕，超暖心。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　少年儿童是祖国的未来，是中华民族的希望。习近平总书记时刻心系少年儿童的成长和未来。2013年5月29日，在北京市少年宫习近平以一个&ldquo;大朋友&rdquo;的名义，向全国少年儿童祝贺节日。从北京市少年宫到人民大会堂，习近平和小朋友们共度&ldquo;六一&rdquo;儿童节、寄语全国少年儿童。六年来，这位孩子们眼中可爱可敬的&ldquo;大朋友&rdquo;时常来到孩子们的中间，留下了许多温情的瞬间&mdash;&mdash;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　他是和蔼可亲的&ldquo;习爷爷&rdquo;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　多年来，习近平一直心系少年儿童工作，他陪孩子们过&ldquo;六一&rdquo;儿童节，还在不同场合与孩子们亲密互动，与孩子们结下了深厚的情缘，孩子们亲切地称他为&ldquo;习爷爷&rdquo;。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　2013年5月21日，习近平到四川芦山地震灾区慰问受灾群众。&ldquo;爷爷。&rdquo;1岁半的骆俊成奶声奶气地喊了一声，嘟起嘴巴想亲亲习近平，这时，习近平笑着摸摸骆俊成的脸，亲了亲他。温情的一吻，让帐篷里原本很紧张的人，一下子放松了。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　2013年8月30日下午，习近平来到沈阳沈河区多福社区下岗再就业工人丛龙江家看望，关切询问一家人的生活工作情况。看到丛龙江7个月大的孙女，他高兴地把孩子抱起来。孩子十分乖巧，一双眼睛充满童真。习近平笑着说：&ldquo;很可爱，很安静。&rdquo;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_match/0/9176615187/0\" /&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　2013年11月3日，习近平在湘西土家族苗族自治州花垣县排碧乡十八洞村与村干部、村民座谈时亲切地给小朋友递花生。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_match/0/9176615188/0\" /&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　2013年12月28日，习近平在北京市月坛北路庆丰包子铺吃午餐，与家人一起吃饭的袁宝小朋友跑到了习近平面前。小袁宝对习近平说：&ldquo;习爷爷好！&rdquo;习近平笑了，问小袁宝：&ldquo;你几岁了？&rdquo;&ldquo;五岁零八个月！&rdquo;小袁宝说。&ldquo;个子这么高，挺壮实嘛，来，照个相吧！&rdquo;随后，习近平笑着把小袁宝拉到身边，小袁宝的父母赶紧拿出手机，拍了几张照片。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_match/0/9176615189/0\" /&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　他是知心友爱的&ldquo;大朋友&rdquo;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　童年是人的一生中最宝贵的时期，习近平曾寄语全国各族少年儿童，从小学习做人、从小学习立志、从小学习创造。他也曾在多个场合作为&ldquo;大朋友&rdquo;与小朋友们交心交谈，分享自己的成长经历。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　2014年5月30日，习近平在北京市海淀区民族小学重温入队仪式时，对围拢过来的孩子们说：&ldquo;我是1959年上学，1960年入队，因为年龄稍小，不是第一批，当时还哭了鼻子。&rdquo;听到这，孩子们笑了起来。总书记笑着问：&ldquo;是不是没出息啊？&rdquo;一些孩子说：&ldquo;是。&rdquo;听到童真的回答，大家都笑了。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_match/0/9176615191/0\" /&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　看到孩子们写的&ldquo;精忠报国&rdquo;，习近平总书记有感而发。他表示，我从小就受这4个字影响。四五岁时妈妈买了小人书，给我讲精忠报国、岳母刺字的故事，我说刺字不疼啊？妈妈说，虽然疼，但岳飞会始终铭记在心。我记到现在。精忠报国，是我一生的目标。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_match/0/9176615192/0\" /&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　2016年9月，习近平回到母校北京市八一中学。在操场上，他对正在训练的小球员说：&ldquo;50多年前我就在这个地方踢过球。那时候还是土场子。&rdquo;&ldquo;看我现在身体这么好，都是小时候体育运动打下的基础。德智体美要全面发展，其中体育对陶冶性情、历练意志有重要作用。&rdquo;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_match/0/9176615193/0\" /&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　2017年2月24日，习近平在北京五棵松体育中心观摩了青少年冰球和花样滑冰训练，他拉着一位小冰球队员的手，俯下身，与他肩碰肩，做了一个&ldquo;对抗&rdquo;的姿势，笑着说，小伙子块头要再长大一点。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_match/0/3780762142/0\" /&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　此外，习近平还向小队员们回忆起自己年少时的&ldquo;冰雪&rdquo;时光：那时候冬天只能在什刹海的冰面上滑，如果能买一双50元的冰鞋，就算是奢侈品了。他的弟弟喜欢打冰球，所以想买球刀鞋，喜欢滑冰的他则想买速滑鞋。但家里只能买一双冰鞋，他就把买冰鞋的&ldquo;指标&rdquo;让给了弟弟。习近平还殷切叮嘱孩子们珍惜现在的条件，通过参与运动，锻炼和培养坚强的性格。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_match/0/9176615196/0\" /&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　他是儿童成长的&ldquo;领路人&rdquo;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　党的十八大以来，习近平还亲切关怀青少年和儿童的健康成长。在考察调研中每到一处，&ldquo;孩子在哪里上学、孩子在学校吃得好不好&rdquo;都是他必关心的话题。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　2015年，习近平到陕西杨家岭福州希望小学考察时强调，革命老区、贫困地区要脱贫致富，从根儿上还是要把教育抓好，不能让孩子输在起跑线上。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　&ldquo;再苦不能苦孩子，再穷不能穷教育。要保证贫困山区的孩子上学受教育，有一个幸福快乐的童年。&rdquo;4月15日，习近平在重庆石柱土家族自治县中益乡小学如是说。习近平走进师生食堂，仔细察看餐厅、后厨，了解贫困学生餐费补贴和食品安全卫生情况。习近平嘱咐学校和老师既要当好老师，又要当好临时家长，把学生教好、管好。要把安全放在第一位，确保学生在学校学、住、吃都安全，让家长们放心。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_match/0/8604067132/0\" /&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　在政策的制定和落实中，保障儿童权益、关爱儿童成长，也是习近平时常考虑的。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　2016年3月，习近平主持召开中央全面深化改革领导小组第二十二次会议。会议指出，儿童健康事关家庭幸福和民族未来。加强儿童医疗卫生服务改革与发展，要紧紧围绕加强儿科医务人员培养和队伍建设、完善儿童医疗卫生服务体系、推进儿童医疗卫生服务领域改革、防治结合提高服务质量等关键问题，系统设计改革路径，切实缓解儿童医疗服务资源短缺问题。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　2018年8月，习近平作出重要指示指出，我国学生近视呈现高发、低龄化趋势，严重影响孩子们的身心健康，这是一个关系国家和民族未来的大问题，必须高度重视，不能任其发展。习近平强调，全社会都要行动起来，共同呵护好孩子的眼睛，让他们拥有一个光明的未来。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_match/0/9176615198/0\" /&gt;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;　　一个民族的文明进步，一个国家的发展壮大，需要一代又一代人接力努力。在习近平的关爱下，新一代少年儿童定能&ldquo;立志向、有梦想，爱学习、爱劳动、爱祖国&rdquo;，&ldquo;为实现中华民族伟大复兴的中国梦时刻准备着。&rdquo;&lt;/p&gt;', '2019-06-01 23:59:31', '2019-06-01 23:59:31', NULL, 1, 4, NULL);
INSERT INTO `article` VALUES (30, '“法治新时代”主题动漫作品征集公告', 1, 'admin', 0, '&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;为增强法治宣传教育工作的吸引力、感染力,适应新时代信息传播规律和传播方式,扩大宣传教育覆盖面,中宣部、中央网信办、司法部、全国普法办联合组织开展以&ldquo;法治新时代&rdquo;为主题的动漫作品征集展示活动。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;一、总体要求&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;深入贯彻落实习近平总书记全面依法治国新理念新思想新战略,坚决维护宪法法律权威,大力弘扬社会主义法治精神,充分发挥动漫作品在法治宣传教育中的重要载体作用,宣传中国法治建设成就,宣传人民群众生产生活密切相关的法律法规,营造广大干部群众尊法、学法、守法、用法的良好社会氛围,使干部群众在参与中受到社会主义法治理念的熏陶,不断提升社会主义法治意识,引导广大干部群众坚定不移走中国特色社会主义法治道路,成为社会主义法治的忠实崇尚者、自觉遵守者、坚定捍卫者。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;二、作品征集&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;动漫作品要注重政治性、思想性、法治性、艺术性相统一,大力弘扬社会主义核心价值观,传播正能量,内容健康、积极向上。注重以案释法,注重阐释法律知识,把镜头对准普通群众,用小切口反映大主题、小故事反映大时代。作品内容切忌与宪法法律无关,不得出现违背社会公德、侵犯他人隐私及其他违反国家相关法律或规定的内容。作品题材可以采取剧情类动漫、公益广告类动漫等多种题材。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&#40;一&#41; 作品内容&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;1.深入学习宣传习近平新时代中国特色社会主义思想,深入学习宣传习近平总书记全面依法治国新理念新思想新战略。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;2.结合庆祝中华人民共和国成立70周年,大力宣传新中国法治建设取得的巨大成就。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;3.围绕党和国家工作大局,大力宣传宪法,宣传与群众日常生产生活密切相关的法律法规,宣传新颁布实施的法律法规,深入学习宣传党内重要法规。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;&#40;二&#41; 格式要求&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;动漫作品时长分为1分钟、5分钟、10分钟三种类别。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;画面比例:16:9,画面像素尺寸:1920&times;1080,帧速率:24帧/秒。文件提交格式为mp4。制作软件不限,但须为设计制作的动漫作品,不是实景拍摄,同时输出标准符合以上要求。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;如有字幕,须为中文简体字,位置不得超出画面之外,音画字幕准确同步;需制作完整的片头和片尾,片头为作品标题,片尾为出品方和制作方;无穿帮,无跳闪卡顿等情况;不可添加任何水印标识;不插入任何商业广告。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;三、征集时间&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;2019年6月1日至10月20日&#40;以作品网上提交日期为准&#41;&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;四、报送方式&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;活动报名者可登陆中国动漫集团&#40;www.acgnet.cn&#41;、咪咕动漫有限公司&#40;咪咕圈圈APP&#41;、腾讯&#40;http://news.qq.com/zt_http/fzdm.htm&#41;任意一家官方网站,进入&ldquo;法治新时代&rdquo;主题动漫作品报名专区,填写报名登记表,按要求在线报送作品。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;五、组织评选&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;对报送的动漫作品,主办单位组织相关方面专家从法律知识阐释、法治理念传播、普法效果、艺术表现力和传播力等方面进行评审选优,按照类别分别评出一等、二等、三等优秀作品各10名,分别给予10000、8000、5000元资助,提名作品若干名,颁发证书,在法制网进行公示。每个创作者提交的作品不超过3部,每个单位提交作品不超过5部。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;六、宣传展示&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;活动过程中,对征集到的优秀动漫作品经审核后在中国动漫集团、咪咕动漫有限公司、腾讯官网上进行展示推介,并同步在人民网、新华网、中国文明网、央视网、法制网、中国普法网、中国普法两微一端、全国普法新媒体矩阵及全国法治宣传网站进行展示。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;评选结束后,主办单位组织优秀作品发布仪式,通过网络媒体、电视媒体、户外媒体、大型普法活动等多种方式,集中推荐优秀作品。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;七、注意事项&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;1.中国动漫集团、咪咕动漫有限公司、腾讯官网为征集活动报名受理平台。各平台在推荐评选时不向活动报名者收取报名费、参评费和任何形式的赞助。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;2.活动报名者可以选择上述任意一家平台报送作品,也可按照《中宣部 中央网信办 司法部 全国普法办关于开展第十六届全国法治动漫微视频作品征集展示活动的通知》要求,向所在地区的司法厅或所在单位的宣传部门报送动漫作品,但不能一稿多投,若有一稿多投,一经发现取消参评资格。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;3.创作者对报送作品必须享有完整版权,主办单位不承担包括因肖像权、名誉权、隐私权、著作权、商标权等纠纷而产生的法律责任。如出现上述纠纷,主办方保留取消其参评资格及追回所获权利,涉及法律责任由创作者承担。所提交的作品著作权归创作者所有,主办单位享有使用权和传播权。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;4.活动报名者须提供真实准确的个人信息及联系方式,主办单位依此评选、颁发证书。提供信息不完整或不真实的,取消参评资格。&lt;/p&gt;\n&lt;p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &#39;Microsoft Yahei&#39;, Avenir, &#39;Segoe UI&#39;, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Sans Serif&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif; font-size: 18px;\"&gt;5.本方案由活动主办单位负责解释。&lt;/p&gt;', '2019-06-01 23:58:50', '2019-06-01 23:58:50', NULL, 5, 1, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_category
-- ----------------------------
INSERT INTO `article_category` VALUES (1, '资讯', 1, '10', 1, NULL);
INSERT INTO `article_category` VALUES (3, '科技', 1, '20', 2, NULL);
INSERT INTO `article_category` VALUES (4, '栏目A', 1, '30', 3, NULL);
INSERT INTO `article_category` VALUES (5, '栏目B', 1, '40', 4, NULL);
INSERT INTO `article_category` VALUES (6, '栏目C', 1, '50', 5, NULL);
INSERT INTO `article_category` VALUES (7, '栏目C1', 2, '5001', 1, 6);

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
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_cover
-- ----------------------------
INSERT INTO `article_cover` VALUES (16, 19, 'https://inews.gtimg.com/newsapp_bt/0/8660594517/1000');
INSERT INTO `article_cover` VALUES (22, 22, 'https://common.cnblogs.com/images/copycode.gif');
INSERT INTO `article_cover` VALUES (23, 18, 'https://inews.gtimg.com/newsapp_bt/0/8660594517/1000');
INSERT INTO `article_cover` VALUES (24, 18, 'https://inews.gtimg.com/newsapp_bt/0/8660594518/1000');
INSERT INTO `article_cover` VALUES (25, 18, 'https://inews.gtimg.com/newsapp_bt/0/8660594520/1000');
INSERT INTO `article_cover` VALUES (33, 21, 'https://inews.gtimg.com/newsapp_bt/0/8666668333/1000');
INSERT INTO `article_cover` VALUES (39, 24, 'https://inews.gtimg.com/newsapp_bt/0/8921636730/1000');
INSERT INTO `article_cover` VALUES (43, 20, 'https://inews.gtimg.com/newsapp_bt/0/8659647802/1000');
INSERT INTO `article_cover` VALUES (44, 20, 'https://inews.gtimg.com/newsapp_bt/0/8659647803/1000');
INSERT INTO `article_cover` VALUES (45, 20, 'https://inews.gtimg.com/newsapp_bt/0/8659647804/1000');
INSERT INTO `article_cover` VALUES (47, 29, 'https://inews.gtimg.com/newsapp_match/0/9176615187/0');
INSERT INTO `article_cover` VALUES (48, 29, 'https://inews.gtimg.com/newsapp_match/0/9176615188/0');
INSERT INTO `article_cover` VALUES (49, 29, 'https://inews.gtimg.com/newsapp_match/0/9176615189/0');

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
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `article_log` VALUES (41, 24, 3, '北京冬奥会倒计时', 'admin', '2019-05-20 22:43:33', '发生的方式');
INSERT INTO `article_log` VALUES (42, 25, 0, 'dsdsa', 'admin', '2019-06-01 21:51:16', NULL);
INSERT INTO `article_log` VALUES (43, 25, 0, 'dsdsa', 'admin', '2019-06-01 22:03:36', NULL);
INSERT INTO `article_log` VALUES (44, 25, 0, 'dsdsa', 'admin', '2019-06-01 22:04:12', NULL);
INSERT INTO `article_log` VALUES (45, 25, 0, 'dsdsa', 'admin', '2019-06-01 22:04:58', NULL);
INSERT INTO `article_log` VALUES (46, 25, 0, 'dsdsa', 'admin', '2019-06-01 22:05:06', NULL);
INSERT INTO `article_log` VALUES (47, 25, 0, 'dsdsa', 'admin', '2019-06-01 22:06:14', NULL);
INSERT INTO `article_log` VALUES (48, 25, 0, 'dsdsa', 'admin', '2019-06-01 22:23:03', NULL);
INSERT INTO `article_log` VALUES (49, 24, 0, '北京冬奥会倒计时', 'admin', '2019-06-01 22:24:03', NULL);
INSERT INTO `article_log` VALUES (50, 24, 0, '北京冬奥会倒计时', 'admin', '2019-06-01 22:35:23', NULL);
INSERT INTO `article_log` VALUES (51, 20, 0, '泽连斯基以其在2015年开播的政治喜剧', 'admin', '2019-06-01 22:53:13', NULL);
INSERT INTO `article_log` VALUES (52, 25, -1, 'dsdsa', 'admin', '2019-06-01 22:58:32', NULL);
INSERT INTO `article_log` VALUES (53, 20, 1, '泽连斯基以其在2015年开播的政治喜剧', 'admin', '2019-06-01 22:59:06', NULL);
INSERT INTO `article_log` VALUES (54, 26, 0, 'xxsadsa', 'admin', '2019-06-01 23:55:54', NULL);
INSERT INTO `article_log` VALUES (55, 27, 0, 'dsadsadsadsadsa', 'admin', '2019-06-01 23:56:32', NULL);
INSERT INTO `article_log` VALUES (56, 28, 0, 'ddfdfdsfdsfdsfdsfdsf', 'admin', '2019-06-01 23:57:00', NULL);
INSERT INTO `article_log` VALUES (57, 29, 0, '习近平和孩子们在一起的温情瞬间', 'admin', '2019-06-01 23:57:58', NULL);
INSERT INTO `article_log` VALUES (58, 30, 0, '“法治新时代”主题动漫作品征集公告', 'admin', '2019-06-01 23:58:50', NULL);
INSERT INTO `article_log` VALUES (59, 29, 0, '习近平和孩子们在一起的温情瞬间', 'admin', '2019-06-01 23:59:31', NULL);

-- ----------------------------
-- Table structure for car_brand
-- ----------------------------
DROP TABLE IF EXISTS `car_brand`;
CREATE TABLE `car_brand`  (
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '品牌',
  `letter` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字母',
  PRIMARY KEY (`brand`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '汽车品牌' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car_brand
-- ----------------------------
INSERT INTO `car_brand` VALUES ('ABT', 'A');
INSERT INTO `car_brand` VALUES ('AC Schnitzer', 'A');
INSERT INTO `car_brand` VALUES ('AEV ROBOTICS', 'A');
INSERT INTO `car_brand` VALUES ('Agile Automotive', 'A');
INSERT INTO `car_brand` VALUES ('ALPINA', 'A');
INSERT INTO `car_brand` VALUES ('Apollo', 'A');
INSERT INTO `car_brand` VALUES ('Arash', 'A');
INSERT INTO `car_brand` VALUES ('ARCFOX', 'A');
INSERT INTO `car_brand` VALUES ('Aria', 'A');
INSERT INTO `car_brand` VALUES ('ATS', 'A');
INSERT INTO `car_brand` VALUES ('Aurus', 'A');
INSERT INTO `car_brand` VALUES ('BAC', 'B');
INSERT INTO `car_brand` VALUES ('Caterham', 'C');
INSERT INTO `car_brand` VALUES ('Conquest', 'C');
INSERT INTO `car_brand` VALUES ('Corbellati', 'C');
INSERT INTO `car_brand` VALUES ('Cupra', 'C');
INSERT INTO `car_brand` VALUES ('Dacia', 'D');
INSERT INTO `car_brand` VALUES ('Datsun', 'D');
INSERT INTO `car_brand` VALUES ('Dianchè', 'D');
INSERT INTO `car_brand` VALUES ('DMC', 'D');
INSERT INTO `car_brand` VALUES ('Donkervoort', 'D');
INSERT INTO `car_brand` VALUES ('DS', 'D');
INSERT INTO `car_brand` VALUES ('Elemental', 'E');
INSERT INTO `car_brand` VALUES ('Faraday Future', 'F');
INSERT INTO `car_brand` VALUES ('Fisker', 'F');
INSERT INTO `car_brand` VALUES ('FM Auto', 'F');
INSERT INTO `car_brand` VALUES ('GAZ', 'G');
INSERT INTO `car_brand` VALUES ('Genesis', 'G');
INSERT INTO `car_brand` VALUES ('GFG Style', 'G');
INSERT INTO `car_brand` VALUES ('Ginetta', 'G');
INSERT INTO `car_brand` VALUES ('GLM', 'G');
INSERT INTO `car_brand` VALUES ('GMC', 'G');
INSERT INTO `car_brand` VALUES ('GTA', 'G');
INSERT INTO `car_brand` VALUES ('Gumpert', 'G');
INSERT INTO `car_brand` VALUES ('GYON', 'G');
INSERT INTO `car_brand` VALUES ('Hennessey', 'H');
INSERT INTO `car_brand` VALUES ('Hispano Suiza', 'H');
INSERT INTO `car_brand` VALUES ('Icona', 'I');
INSERT INTO `car_brand` VALUES ('Inferno', 'I');
INSERT INTO `car_brand` VALUES ('Italdesign', 'I');
INSERT INTO `car_brand` VALUES ('Jannarelly', 'J');
INSERT INTO `car_brand` VALUES ('Jeep', 'J');
INSERT INTO `car_brand` VALUES ('Karma', 'K');
INSERT INTO `car_brand` VALUES ('KTM', 'K');
INSERT INTO `car_brand` VALUES ('LeSEE', 'L');
INSERT INTO `car_brand` VALUES ('LEVC', 'L');
INSERT INTO `car_brand` VALUES ('LITE', 'L');
INSERT INTO `car_brand` VALUES ('LOCAL MOTORS', 'L');
INSERT INTO `car_brand` VALUES ('Lorinser', 'L');
INSERT INTO `car_brand` VALUES ('Lucid', 'L');
INSERT INTO `car_brand` VALUES ('MAGNA', 'M');
INSERT INTO `car_brand` VALUES ('Mahindra', 'M');
INSERT INTO `car_brand` VALUES ('Mazzanti', 'M');
INSERT INTO `car_brand` VALUES ('MELKUS', 'M');
INSERT INTO `car_brand` VALUES ('Micro', 'M');
INSERT INTO `car_brand` VALUES ('MINI', 'M');
INSERT INTO `car_brand` VALUES ('Mole', 'M');
INSERT INTO `car_brand` VALUES ('nanoFLOWCELL', 'N');
INSERT INTO `car_brand` VALUES ('NEVS国能汽车', 'N');
INSERT INTO `car_brand` VALUES ('Noble', 'N');
INSERT INTO `car_brand` VALUES ('Pi&#235;ch Automotive', 'P');
INSERT INTO `car_brand` VALUES ('Polestar极星', 'P');
INSERT INTO `car_brand` VALUES ('Puritalia', 'P');
INSERT INTO `car_brand` VALUES ('Radical', 'R');
INSERT INTO `car_brand` VALUES ('RENOVO', 'R');
INSERT INTO `car_brand` VALUES ('Rezvani', 'R');
INSERT INTO `car_brand` VALUES ('Rimac', 'R');
INSERT INTO `car_brand` VALUES ('Rinspeed', 'R');
INSERT INTO `car_brand` VALUES ('RIVIAN', 'R');
INSERT INTO `car_brand` VALUES ('Scion', 'S');
INSERT INTO `car_brand` VALUES ('SERES', 'S');
INSERT INTO `car_brand` VALUES ('Share2Drive', 'S');
INSERT INTO `car_brand` VALUES ('SIN CARS', 'S');
INSERT INTO `car_brand` VALUES ('smart', 'S');
INSERT INTO `car_brand` VALUES ('Sono Motors', 'S');
INSERT INTO `car_brand` VALUES ('Speed Auto', 'S');
INSERT INTO `car_brand` VALUES ('SPIRRA', 'S');
INSERT INTO `car_brand` VALUES ('SRM鑫源', 'S');
INSERT INTO `car_brand` VALUES ('SSC', 'S');
INSERT INTO `car_brand` VALUES ('SWM斯威汽车', 'S');
INSERT INTO `car_brand` VALUES ('TOROIDION', 'T');
INSERT INTO `car_brand` VALUES ('Tramontana', 'T');
INSERT INTO `car_brand` VALUES ('TVR', 'T');
INSERT INTO `car_brand` VALUES ('Vanda Electric', 'V');
INSERT INTO `car_brand` VALUES ('Venturi', 'V');
INSERT INTO `car_brand` VALUES ('Vinfast', 'V');
INSERT INTO `car_brand` VALUES ('VLF Automotive', 'V');
INSERT INTO `car_brand` VALUES ('W Motors', 'W');
INSERT INTO `car_brand` VALUES ('WEY', 'W');
INSERT INTO `car_brand` VALUES ('YAMAHA', 'Y');
INSERT INTO `car_brand` VALUES ('Zenvo', 'Z');
INSERT INTO `car_brand` VALUES ('一汽', 'Y');
INSERT INTO `car_brand` VALUES ('三菱', 'S');
INSERT INTO `car_brand` VALUES ('上汽大通MAXUS', 'S');
INSERT INTO `car_brand` VALUES ('上海', 'S');
INSERT INTO `car_brand` VALUES ('世爵', 'S');
INSERT INTO `car_brand` VALUES ('东南', 'D');
INSERT INTO `car_brand` VALUES ('东风', 'D');
INSERT INTO `car_brand` VALUES ('东风·瑞泰特', 'D');
INSERT INTO `car_brand` VALUES ('东风小康', 'D');
INSERT INTO `car_brand` VALUES ('东风风光', 'D');
INSERT INTO `car_brand` VALUES ('东风风度', 'D');
INSERT INTO `car_brand` VALUES ('东风风神', 'D');
INSERT INTO `car_brand` VALUES ('东风风行', 'D');
INSERT INTO `car_brand` VALUES ('中兴', 'Z');
INSERT INTO `car_brand` VALUES ('中华', 'Z');
INSERT INTO `car_brand` VALUES ('丰田', 'F');
INSERT INTO `car_brand` VALUES ('之诺', 'Z');
INSERT INTO `car_brand` VALUES ('乔治·巴顿', 'Q');
INSERT INTO `car_brand` VALUES ('九龙', 'J');
INSERT INTO `car_brand` VALUES ('云度', 'Y');
INSERT INTO `car_brand` VALUES ('云雀汽车', 'Y');
INSERT INTO `car_brand` VALUES ('五十铃', 'W');
INSERT INTO `car_brand` VALUES ('五菱汽车', 'W');
INSERT INTO `car_brand` VALUES ('众泰', 'Z');
INSERT INTO `car_brand` VALUES ('佩奇奥', 'P');
INSERT INTO `car_brand` VALUES ('佳跃', 'J');
INSERT INTO `car_brand` VALUES ('依维柯', 'Y');
INSERT INTO `car_brand` VALUES ('保斐利', 'B');
INSERT INTO `car_brand` VALUES ('保时捷', 'B');
INSERT INTO `car_brand` VALUES ('光冈', 'G');
INSERT INTO `car_brand` VALUES ('克莱斯勒', 'K');
INSERT INTO `car_brand` VALUES ('全球鹰', 'Q');
INSERT INTO `car_brand` VALUES ('兰博基尼', 'L');
INSERT INTO `car_brand` VALUES ('几何汽车', 'J');
INSERT INTO `car_brand` VALUES ('凯佰赫', 'K');
INSERT INTO `car_brand` VALUES ('凯翼', 'K');
INSERT INTO `car_brand` VALUES ('凯迪拉克', 'K');
INSERT INTO `car_brand` VALUES ('别克', 'B');
INSERT INTO `car_brand` VALUES ('刺猬汽车', 'C');
INSERT INTO `car_brand` VALUES ('前途', 'Q');
INSERT INTO `car_brand` VALUES ('力帆汽车', 'L');
INSERT INTO `car_brand` VALUES ('劳斯莱斯', 'L');
INSERT INTO `car_brand` VALUES ('北京', 'B');
INSERT INTO `car_brand` VALUES ('北京汽车', 'B');
INSERT INTO `car_brand` VALUES ('北京清行', 'B');
INSERT INTO `car_brand` VALUES ('北汽制造', 'B');
INSERT INTO `car_brand` VALUES ('北汽威旺', 'B');
INSERT INTO `car_brand` VALUES ('北汽幻速', 'B');
INSERT INTO `car_brand` VALUES ('北汽新能源', 'B');
INSERT INTO `car_brand` VALUES ('北汽昌河', 'B');
INSERT INTO `car_brand` VALUES ('北汽道达', 'B');
INSERT INTO `car_brand` VALUES ('华人运通', 'H');
INSERT INTO `car_brand` VALUES ('华凯', 'H');
INSERT INTO `car_brand` VALUES ('华利', 'H');
INSERT INTO `car_brand` VALUES ('华普', 'H');
INSERT INTO `car_brand` VALUES ('华泰', 'H');
INSERT INTO `car_brand` VALUES ('华泰新能源', 'H');
INSERT INTO `car_brand` VALUES ('华颂', 'H');
INSERT INTO `car_brand` VALUES ('华骐', 'H');
INSERT INTO `car_brand` VALUES ('博郡汽车', 'B');
INSERT INTO `car_brand` VALUES ('卡升', 'K');
INSERT INTO `car_brand` VALUES ('卡威', 'K');
INSERT INTO `car_brand` VALUES ('卡尔森', 'K');
INSERT INTO `car_brand` VALUES ('双环', 'S');
INSERT INTO `car_brand` VALUES ('双龙', 'S');
INSERT INTO `car_brand` VALUES ('合众汽车', 'H');
INSERT INTO `car_brand` VALUES ('吉利汽车', 'J');
INSERT INTO `car_brand` VALUES ('名爵', 'M');
INSERT INTO `car_brand` VALUES ('君马汽车', 'J');
INSERT INTO `car_brand` VALUES ('启辰', 'Q');
INSERT INTO `car_brand` VALUES ('哈弗', 'H');
INSERT INTO `car_brand` VALUES ('哈飞', 'H');
INSERT INTO `car_brand` VALUES ('国机智骏', 'G');
INSERT INTO `car_brand` VALUES ('国金汽车', 'G');
INSERT INTO `car_brand` VALUES ('塔塔', 'T');
INSERT INTO `car_brand` VALUES ('大乘汽车', 'D');
INSERT INTO `car_brand` VALUES ('大众', 'D');
INSERT INTO `car_brand` VALUES ('大发', 'D');
INSERT INTO `car_brand` VALUES ('大迪', 'D');
INSERT INTO `car_brand` VALUES ('天际汽车', 'T');
INSERT INTO `car_brand` VALUES ('奇点汽车', 'J');
INSERT INTO `car_brand` VALUES ('奇瑞', 'Q');
INSERT INTO `car_brand` VALUES ('奔腾', 'B');
INSERT INTO `car_brand` VALUES ('奔驰', 'B');
INSERT INTO `car_brand` VALUES ('奥迪', 'A');
INSERT INTO `car_brand` VALUES ('如虎', 'R');
INSERT INTO `car_brand` VALUES ('威兹曼', 'W');
INSERT INTO `car_brand` VALUES ('威马汽车', 'W');
INSERT INTO `car_brand` VALUES ('威麟', 'W');
INSERT INTO `car_brand` VALUES ('宇通客车', 'Y');
INSERT INTO `car_brand` VALUES ('安凯客车', 'A');
INSERT INTO `car_brand` VALUES ('宝沃', 'B');
INSERT INTO `car_brand` VALUES ('宝腾', 'B');
INSERT INTO `car_brand` VALUES ('宝马', 'B');
INSERT INTO `car_brand` VALUES ('宝骏', 'B');
INSERT INTO `car_brand` VALUES ('宝骐汽车', 'B');
INSERT INTO `car_brand` VALUES ('容大智造', 'R');
INSERT INTO `car_brand` VALUES ('宾利', 'B');
INSERT INTO `car_brand` VALUES ('宾尼法利纳', 'B');
INSERT INTO `car_brand` VALUES ('小鹏汽车', 'X');
INSERT INTO `car_brand` VALUES ('巴博斯', 'B');
INSERT INTO `car_brand` VALUES ('布加迪', 'B');
INSERT INTO `car_brand` VALUES ('帕加尼', 'P');
INSERT INTO `car_brand` VALUES ('广汽传祺', 'G');
INSERT INTO `car_brand` VALUES ('广汽吉奥', 'G');
INSERT INTO `car_brand` VALUES ('广汽新能源', 'G');
INSERT INTO `car_brand` VALUES ('广汽集团', 'G');
INSERT INTO `car_brand` VALUES ('广通客车', 'G');
INSERT INTO `car_brand` VALUES ('庆铃汽车', 'Q');
INSERT INTO `car_brand` VALUES ('开利', 'K');
INSERT INTO `car_brand` VALUES ('开沃汽车', 'K');
INSERT INTO `car_brand` VALUES ('开瑞', 'K');
INSERT INTO `car_brand` VALUES ('弗那萨利', 'F');
INSERT INTO `car_brand` VALUES ('御捷', 'Y');
INSERT INTO `car_brand` VALUES ('思皓SOL', 'S');
INSERT INTO `car_brand` VALUES ('思铭', 'S');
INSERT INTO `car_brand` VALUES ('恒天', 'H');
INSERT INTO `car_brand` VALUES ('悍马', 'H');
INSERT INTO `car_brand` VALUES ('成功汽车', 'C');
INSERT INTO `car_brand` VALUES ('拉共达', 'L');
INSERT INTO `car_brand` VALUES ('拉达', 'L');
INSERT INTO `car_brand` VALUES ('拜腾', 'B');
INSERT INTO `car_brand` VALUES ('捷豹', 'J');
INSERT INTO `car_brand` VALUES ('捷达', 'J');
INSERT INTO `car_brand` VALUES ('捷途', 'J');
INSERT INTO `car_brand` VALUES ('摩根', 'M');
INSERT INTO `car_brand` VALUES ('斯太尔', 'S');
INSERT INTO `car_brand` VALUES ('斯巴鲁', 'S');
INSERT INTO `car_brand` VALUES ('斯柯达', 'S');
INSERT INTO `car_brand` VALUES ('斯达泰克', 'S');
INSERT INTO `car_brand` VALUES ('新凯', 'X');
INSERT INTO `car_brand` VALUES ('新特汽车', 'X');
INSERT INTO `car_brand` VALUES ('日产', 'R');
INSERT INTO `car_brand` VALUES ('星途', 'X');
INSERT INTO `car_brand` VALUES ('昶洧', 'C');
INSERT INTO `car_brand` VALUES ('朗世', 'L');
INSERT INTO `car_brand` VALUES ('本田', 'B');
INSERT INTO `car_brand` VALUES ('林肯', 'L');
INSERT INTO `car_brand` VALUES ('标致', 'B');
INSERT INTO `car_brand` VALUES ('格罗夫', 'G');
INSERT INTO `car_brand` VALUES ('欧宝', 'O');
INSERT INTO `car_brand` VALUES ('欧拉', 'O');
INSERT INTO `car_brand` VALUES ('欧朗', 'O');
INSERT INTO `car_brand` VALUES ('欧联', 'O');
INSERT INTO `car_brand` VALUES ('正道汽车', 'Z');
INSERT INTO `car_brand` VALUES ('比亚迪', 'B');
INSERT INTO `car_brand` VALUES ('比速汽车', 'B');
INSERT INTO `car_brand` VALUES ('永源', 'Y');
INSERT INTO `car_brand` VALUES ('汉腾汽车', 'H');
INSERT INTO `car_brand` VALUES ('江淮', 'J');
INSERT INTO `car_brand` VALUES ('江铃', 'J');
INSERT INTO `car_brand` VALUES ('江铃集团新能源', 'J');
INSERT INTO `car_brand` VALUES ('江铃集团轻汽', 'J');
INSERT INTO `car_brand` VALUES ('沃克斯豪尔', 'W');
INSERT INTO `car_brand` VALUES ('沃尔沃', 'W');
INSERT INTO `car_brand` VALUES ('法拉利', 'F');
INSERT INTO `car_brand` VALUES ('泰克鲁斯·腾风', 'T');
INSERT INTO `car_brand` VALUES ('泰卡特', 'T');
INSERT INTO `car_brand` VALUES ('海格', 'H');
INSERT INTO `car_brand` VALUES ('海马', 'H');
INSERT INTO `car_brand` VALUES ('清源汽车', 'Q');
INSERT INTO `car_brand` VALUES ('游侠', 'Y');
INSERT INTO `car_brand` VALUES ('潍柴英致', 'W');
INSERT INTO `car_brand` VALUES ('爱驰', 'A');
INSERT INTO `car_brand` VALUES ('特斯拉', 'T');
INSERT INTO `car_brand` VALUES ('猎豹汽车', 'L');
INSERT INTO `car_brand` VALUES ('玛莎拉蒂', 'M');
INSERT INTO `car_brand` VALUES ('现代', 'X');
INSERT INTO `car_brand` VALUES ('理念', 'L');
INSERT INTO `car_brand` VALUES ('理想', 'L');
INSERT INTO `car_brand` VALUES ('瑞驰新能源', 'R');
INSERT INTO `car_brand` VALUES ('瑞麒', 'R');
INSERT INTO `car_brand` VALUES ('电咖', 'D');
INSERT INTO `car_brand` VALUES ('知豆', 'Z');
INSERT INTO `car_brand` VALUES ('福汽启腾', 'F');
INSERT INTO `car_brand` VALUES ('福特', 'F');
INSERT INTO `car_brand` VALUES ('福田', 'F');
INSERT INTO `car_brand` VALUES ('福迪', 'F');
INSERT INTO `car_brand` VALUES ('科尼赛克', 'K');
INSERT INTO `car_brand` VALUES ('红旗', 'H');
INSERT INTO `car_brand` VALUES ('红星汽车', 'H');
INSERT INTO `car_brand` VALUES ('纳智捷', 'N');
INSERT INTO `car_brand` VALUES ('绿驰', 'L');
INSERT INTO `car_brand` VALUES ('罗夫哈特', 'L');
INSERT INTO `car_brand` VALUES ('腾势', 'T');
INSERT INTO `car_brand` VALUES ('艾康尼克', 'A');
INSERT INTO `car_brand` VALUES ('英菲尼迪', 'Y');
INSERT INTO `car_brand` VALUES ('荣威', 'R');
INSERT INTO `car_brand` VALUES ('莲花汽车', 'L');
INSERT INTO `car_brand` VALUES ('菲亚特', 'F');
INSERT INTO `car_brand` VALUES ('萨博', 'S');
INSERT INTO `car_brand` VALUES ('蓝旗亚', 'L');
INSERT INTO `car_brand` VALUES ('蔚来', 'W');
INSERT INTO `car_brand` VALUES ('裕路', 'Y');
INSERT INTO `car_brand` VALUES ('西雅特', 'X');
INSERT INTO `car_brand` VALUES ('观致', 'G');
INSERT INTO `car_brand` VALUES ('讴歌', 'O');
INSERT INTO `car_brand` VALUES ('谷歌', 'G');
INSERT INTO `car_brand` VALUES ('赛麟', 'S');
INSERT INTO `car_brand` VALUES ('起亚', 'Q');
INSERT INTO `car_brand` VALUES ('路特斯', 'L');
INSERT INTO `car_brand` VALUES ('路虎', 'L');
INSERT INTO `car_brand` VALUES ('车和家', 'C');
INSERT INTO `car_brand` VALUES ('迈凯伦', 'M');
INSERT INTO `car_brand` VALUES ('迈巴赫', 'M');
INSERT INTO `car_brand` VALUES ('迈莎锐', 'M');
INSERT INTO `car_brand` VALUES ('道奇', 'D');
INSERT INTO `car_brand` VALUES ('野马汽车', 'Y');
INSERT INTO `car_brand` VALUES ('金旅', 'J');
INSERT INTO `car_brand` VALUES ('金杯', 'J');
INSERT INTO `car_brand` VALUES ('金龙', 'J');
INSERT INTO `car_brand` VALUES ('钧天', 'J');
INSERT INTO `car_brand` VALUES ('铃木', 'L');
INSERT INTO `car_brand` VALUES ('银隆新能源', 'Y');
INSERT INTO `car_brand` VALUES ('长城', 'C');
INSERT INTO `car_brand` VALUES ('长安', 'C');
INSERT INTO `car_brand` VALUES ('长安欧尚', 'C');
INSERT INTO `car_brand` VALUES ('长安跨越', 'C');
INSERT INTO `car_brand` VALUES ('长安轻型车', 'C');
INSERT INTO `car_brand` VALUES ('长江EV', 'C');
INSERT INTO `car_brand` VALUES ('阿尔法·罗密欧', 'A');
INSERT INTO `car_brand` VALUES ('阿斯顿·马丁', 'A');
INSERT INTO `car_brand` VALUES ('陆地方舟', 'L');
INSERT INTO `car_brand` VALUES ('陆风', 'L');
INSERT INTO `car_brand` VALUES ('陕汽通家', 'S');
INSERT INTO `car_brand` VALUES ('雪佛兰', 'X');
INSERT INTO `car_brand` VALUES ('雪铁龙', 'X');
INSERT INTO `car_brand` VALUES ('零跑汽车', 'L');
INSERT INTO `car_brand` VALUES ('雷丁', 'L');
INSERT INTO `car_brand` VALUES ('雷克萨斯', 'L');
INSERT INTO `car_brand` VALUES ('雷诺', 'L');
INSERT INTO `car_brand` VALUES ('雷诺三星', 'L');
INSERT INTO `car_brand` VALUES ('霍顿', 'H');
INSERT INTO `car_brand` VALUES ('领克', 'L');
INSERT INTO `car_brand` VALUES ('领志', 'L');
INSERT INTO `car_brand` VALUES ('领途汽车', 'L');
INSERT INTO `car_brand` VALUES ('首望', 'S');
INSERT INTO `car_brand` VALUES ('马自达', 'M');
INSERT INTO `car_brand` VALUES ('驭胜', 'Y');
INSERT INTO `car_brand` VALUES ('黄海', 'H');

-- ----------------------------
-- Table structure for car_class
-- ----------------------------
DROP TABLE IF EXISTS `car_class`;
CREATE TABLE `car_class`  (
  `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌',
  `letter` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字母列表',
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '型号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '制造商',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name_idx`(`name`) USING BTREE,
  INDEX `model_idx`(`model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '汽车款式' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car_class
-- ----------------------------
INSERT INTO `car_class` VALUES (1, '奥迪', 'A', '奥迪AL', '山东黄金时代', 12.00, '一汽奥迪');
INSERT INTO `car_class` VALUES (3, '本田', 'B', '奥德赛', '奥赛德', 12.00, '广汽本田');
INSERT INTO `car_class` VALUES (4, '本田', 'B', '思域', '思域300', 16.00, '东风本田');

-- ----------------------------
-- Table structure for car_model
-- ----------------------------
DROP TABLE IF EXISTS `car_model`;
CREATE TABLE `car_model`  (
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '制造商',
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '型号',
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌',
  `letter` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字母',
  PRIMARY KEY (`model`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '汽车型号' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car_model
-- ----------------------------
INSERT INTO `car_model` VALUES ('广汽本田', '奥德赛', '本田', 'B');
INSERT INTO `car_model` VALUES ('一汽奥迪', '奥迪AL', '奥迪', 'A');
INSERT INTO `car_model` VALUES ('东风本田', '思域', '本田', 'B');

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
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

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
INSERT INTO `menu` VALUES (30, '系统设置', '', 0, 40, 1, 'el-icon-third-setting-fill');
INSERT INTO `menu` VALUES (31, '栏目管理', '/category/list', 30, 4001, 1, 'el-icon-third-unorderedlist');
INSERT INTO `menu` VALUES (32, '车系管理', '/carCategory/list', 30, 4002, 1, 'el-icon-third-car-fill');

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
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `permission` VALUES (44, '1');
INSERT INTO `permission` VALUES (45, '1');
INSERT INTO `permission` VALUES (46, '1');
INSERT INTO `permission` VALUES (47, '1');

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
INSERT INTO `permission_menu_re` VALUES (45, 30);
INSERT INTO `permission_menu_re` VALUES (46, 31);
INSERT INTO `permission_menu_re` VALUES (47, 32);

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
