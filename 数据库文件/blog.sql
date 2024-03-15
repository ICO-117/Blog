/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 14/11/2023 21:58:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '博客表主键id',
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '博客标题',
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '文章描述',
  `content` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '博文内容',
  `first_picture` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '博文封面',
  `views` int NULL DEFAULT 0 COMMENT '文章阅读量',
  `flag` bit(1) NULL DEFAULT NULL COMMENT '文章状态位，1：原创，0：转载',
  `appreciation` bit(1) NULL DEFAULT NULL COMMENT '文章状态位，1：开启，0：关闭',
  `share_statement` bit(1) NULL DEFAULT NULL COMMENT '分享状态位，1：开启，0：关闭',
  `commentable` bit(1) NULL DEFAULT NULL COMMENT '评论状态位，1：开启，0：关闭',
  `published` bit(1) NULL DEFAULT NULL COMMENT '发布状态位，1：开启，0：关闭',
  `recommend` bit(1) NULL DEFAULT NULL COMMENT '推荐状态位，1：开启，0：关闭',
  `create_time` datetime NULL DEFAULT NULL COMMENT '文章创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '文章修改时间',
  `type_id` int NULL DEFAULT NULL COMMENT '关联的分类id',
  `user_id` int NULL DEFAULT NULL COMMENT '关联的用户id',
  `tag_ids` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '关联标签',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `KEY1`(`type_id` ASC, `user_id` ASC, `tag_ids` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES (6, '探索区块链技术：从FISCO BCOS到去中心化应用', '区块链技术作为当今互联网领域备受关注的前沿技术，正在逐渐渗透到各个行业和领域。', '<p>区块链技术作为当今互联网领域备受关注的前沿技术，正在逐渐渗透到各个行业和领域。最近，我有幸学习了FISCO BCOS（基于联盟链的区块链开放平台），想要在这篇博客中分享一下我的学习经历和对区块链技术的理解。</p>\r\n<h3 id=\"什么是区块链\">什么是区块链？</h3>\r\n<p>首先，让我们简单了解一下区块链技术。区块链是一种去中心化的分布式账本技术，通过密码学和共识机制确保数据的安全和可信任性。它的特点包括不可篡改、去中心化、透明等，因此被广泛应用于数字货币、供应链管理、智能合约等领域。</p>\r\n<h3 id=\"fisco-bcos简介\">FISCO BCOS简介</h3>\r\n<p>FISCO BCOS是由中国金融科技公司发起的联盟链项目，旨在为企业级用户提供高性能、可定制、易扩展的区块链底层平台。它具有高吞吐量、隐私保护、智能合约等特点，适用于金融、物联网、政务等多个领域。</p>\r\n<h3 id=\"学习fisco-bcos的感想\">学习FISCO BCOS的感想</h3>\r\n<p>通过学习FISCO BCOS，我深刻认识到区块链技术的潜力和重要性。其高性能和可定制性为企业级应用提供了强大支持，而隐私保护和智能合约等特性也使得FISCO BCOS在实际应用中具备了更广阔的可能性。</p>\r\n<h3 id=\"区块链的未来展望\">区块链的未来展望</h3>\r\n<p>随着区块链技术的不断发展和完善，我们相信它将在金融、物联网、医疗健康等诸多领域展现出更广阔的应用前景。去中心化、可信任的特性将为传统行业带来革命性的改变，同时也会孕育出更多创新的商业模式和产品。</p>\r\n<h3 id=\"总结\">总结</h3>\r\n<p>区块链技术是一项极具前瞻性和创新性的技术，学习FISCO BCOS让我对其有了更深入的理解和认识。我期待着未来区块链技术的发展，以及它在不同领域带来的变革和创新。</p>\r\n', 'https://yangge-gulimall.oss-cn-shenzhen.aliyuncs.com/boke/blog1.jpg', 30, NULL, b'1', b'1', b'1', b'1', b'0', '2023-11-12 11:36:14', '2023-11-12 23:57:34', 5, 1, '7');
INSERT INTO `t_blog` VALUES (7, '深入探索Spring Boot：构建高效的Java应用', 'Spring Boot作为一种快速开发、便捷部署的Java框架，正在成为许多Java开发者的首选。本篇博客将带领读者一起深入探索Spring Boot，探讨其特点、优势以及实际应用。', '<p>Spring Boot作为一种快速开发、便捷部署的Java框架，正在成为许多Java开发者的首选。本篇博客将带领读者一起深入探索Spring Boot，探讨其特点、优势以及实际应用。</p>\r\n<h3 id=\"什么是spring-boot\">什么是Spring Boot？</h3>\r\n<p>首先，让我们简单了解一下Spring Boot。Spring Boot是由Pivotal团队提供的基于Spring框架的快速应用开发工具，通过简化配置和提供各种约定俗成的方式帮助开发者快速构建Spring应用。它提供了自动化配置、嵌入式Web服务器等功能，使得开发者能够更专注于业务逻辑的开发。</p>\r\n<h3 id=\"spring-boot的特点与优势\">Spring Boot的特点与优势</h3>\r\n<p>Spring Boot具有诸多特点和优势，包括：</p>\r\n<ol>\r\n<li>简化配置：Spring Boot通过约定大于配置的原则，大幅减少了开发者需要编写的配置代码，简化了项目的配置过程。</li>\r\n<li>内嵌式容器：Spring Boot支持内嵌式的Tomcat、Jetty等Web服务器，无需额外部署，方便快捷。</li>\r\n<li>自动化管理：Spring Boot提供了丰富的Starter依赖和自动化配置，简化了项目依赖管理和环境配置。</li>\r\n<li>生态丰富：Spring Boot生态系统庞大，拥有大量的第三方库和插件，支持各种功能扩展和集成。</li>\r\n</ol>\r\n<h3 id=\"实际应用场景\">实际应用场景</h3>\r\n<p>Spring Boot在实际应用中广泛被用于构建各类Java应用，包括Web应用、微服务架构、批处理等。其高度集成的特性使得开发者能够更加高效地进行开发和部署，同时也为企业级应用提供了稳定可靠的支持。</p>\r\n<h3 id=\"spring-boot的未来展望\">Spring Boot的未来展望</h3>\r\n<p>随着Spring Boot不断发展，我们相信其在Java应用开发领域将会继续发挥重要作用。其易用性和高效性将进一步推动Java应用的发展，并与新技术如云计算、大数据等深度融合，为开发者和企业带来更多便利和机遇。</p>\r\n<h3 id=\"示例代码\">示例代码</h3>\r\n<p>下面是一个简单的Spring Boot RESTful API示例，演示了如何创建一个简单的问候服务：</p>\r\n<pre><code class=\"language-java\">import org.springframework.boot.SpringApplication;\r\nimport org.springframework.boot.autoconfigure.SpringBootApplication;\r\nimport org.springframework.web.bind.annotation.GetMapping;\r\nimport org.springframework.web.bind.annotation.PathVariable;\r\nimport org.springframework.web.bind.annotation.RestController;\r\n<p>@SpringBootApplication\r\npublic class SpringBootDemoApplication {</p>\r\n<pre><code>public static void main(String[] args) {\r\n    SpringApplication.run(SpringBootDemoApplication.class, args);\r\n}\r\n</code></pre>\r\n<p>}</p>\r\n<p>@RestController\r\nclass GreetingController {</p>\r\n<pre><code>@GetMapping(&amp;quot;/hello/{name}&amp;quot;)\r\npublic String hello(@PathVariable String name) {\r\n    return &amp;quot;Hello, &amp;quot; + name + &amp;quot;!&amp;quot;;\r\n}\r\n</code></pre>\r\n<p>}\r\n</code></pre></p>\r\n<p>在这个示例中，我们创建了一个简单的Spring Boot应用，并且定义了一个RESTful API服务。通过访问<code>/hello/{name}</code>接口，可以向服务发送一个名字，并得到一个简单的问候语作为响应。</p>\r\n<p>希望这个简单的代码示例和博客内容能够帮助你更好地理解Spring Boot框架的使用方式和特点。</p>\r\n<hr />\r\n', 'https://yangge-gulimall.oss-cn-shenzhen.aliyuncs.com/boke/blog2.jpg', 28, NULL, b'1', NULL, NULL, b'1', b'1', '2023-11-12 14:59:48', '2023-11-13 09:30:47', 6, 1, '7,8');

-- ----------------------------
-- Table structure for t_blog_tags
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_tags`;
CREATE TABLE `t_blog_tags`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '关联表主键',
  `tag_id` int NULL DEFAULT NULL COMMENT '标签id',
  `blog_id` bigint NULL DEFAULT NULL COMMENT '博文id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_blog_tags
-- ----------------------------
INSERT INTO `t_blog_tags` VALUES (1, 2, 1);
INSERT INTO `t_blog_tags` VALUES (2, 1, 1);
INSERT INTO `t_blog_tags` VALUES (3, 1, 1);
INSERT INTO `t_blog_tags` VALUES (4, 1, 2);
INSERT INTO `t_blog_tags` VALUES (5, 5, 2);
INSERT INTO `t_blog_tags` VALUES (6, 4, 2);
INSERT INTO `t_blog_tags` VALUES (7, 1, 3);
INSERT INTO `t_blog_tags` VALUES (8, 3, 3);
INSERT INTO `t_blog_tags` VALUES (9, 4, 3);
INSERT INTO `t_blog_tags` VALUES (10, 5, 3);
INSERT INTO `t_blog_tags` VALUES (11, 6, 4);
INSERT INTO `t_blog_tags` VALUES (12, 5, 4);
INSERT INTO `t_blog_tags` VALUES (13, 6, 5);
INSERT INTO `t_blog_tags` VALUES (14, 5, 5);
INSERT INTO `t_blog_tags` VALUES (15, 1, 2);
INSERT INTO `t_blog_tags` VALUES (16, 5, 2);
INSERT INTO `t_blog_tags` VALUES (17, 4, 2);
INSERT INTO `t_blog_tags` VALUES (18, 1, 2);
INSERT INTO `t_blog_tags` VALUES (19, 5, 2);
INSERT INTO `t_blog_tags` VALUES (20, 4, 2);
INSERT INTO `t_blog_tags` VALUES (21, 1, 2);
INSERT INTO `t_blog_tags` VALUES (22, 5, 2);
INSERT INTO `t_blog_tags` VALUES (23, 4, 2);
INSERT INTO `t_blog_tags` VALUES (24, 7, 6);
INSERT INTO `t_blog_tags` VALUES (25, 7, 6);
INSERT INTO `t_blog_tags` VALUES (26, 7, 6);
INSERT INTO `t_blog_tags` VALUES (27, 7, 6);
INSERT INTO `t_blog_tags` VALUES (28, 7, 6);
INSERT INTO `t_blog_tags` VALUES (29, 8, 7);
INSERT INTO `t_blog_tags` VALUES (30, 7, 7);
INSERT INTO `t_blog_tags` VALUES (31, 8, 7);
INSERT INTO `t_blog_tags` VALUES (32, 7, 7);
INSERT INTO `t_blog_tags` VALUES (33, 8, 7);
INSERT INTO `t_blog_tags` VALUES (34, 7, 7);
INSERT INTO `t_blog_tags` VALUES (35, 8, 7);
INSERT INTO `t_blog_tags` VALUES (36, 7, 7);
INSERT INTO `t_blog_tags` VALUES (37, 7, 6);
INSERT INTO `t_blog_tags` VALUES (38, 8, 7);
INSERT INTO `t_blog_tags` VALUES (39, 7, 7);
INSERT INTO `t_blog_tags` VALUES (40, 8, 7);
INSERT INTO `t_blog_tags` VALUES (41, 7, 7);
INSERT INTO `t_blog_tags` VALUES (42, 7, 6);
INSERT INTO `t_blog_tags` VALUES (43, 7, 7);
INSERT INTO `t_blog_tags` VALUES (44, 8, 7);
INSERT INTO `t_blog_tags` VALUES (45, 7, 7);
INSERT INTO `t_blog_tags` VALUES (46, 8, 7);
INSERT INTO `t_blog_tags` VALUES (47, 7, 7);
INSERT INTO `t_blog_tags` VALUES (48, 8, 7);
INSERT INTO `t_blog_tags` VALUES (49, 7, 7);
INSERT INTO `t_blog_tags` VALUES (50, 8, 7);
INSERT INTO `t_blog_tags` VALUES (51, 7, 7);
INSERT INTO `t_blog_tags` VALUES (52, 8, 7);
INSERT INTO `t_blog_tags` VALUES (53, 7, 7);
INSERT INTO `t_blog_tags` VALUES (54, 8, 7);
INSERT INTO `t_blog_tags` VALUES (55, 7, 7);
INSERT INTO `t_blog_tags` VALUES (56, 8, 7);
INSERT INTO `t_blog_tags` VALUES (57, 7, 7);
INSERT INTO `t_blog_tags` VALUES (58, 8, 7);
INSERT INTO `t_blog_tags` VALUES (59, 7, 7);
INSERT INTO `t_blog_tags` VALUES (60, 8, 7);

-- ----------------------------
-- Table structure for t_friend
-- ----------------------------
DROP TABLE IF EXISTS `t_friend`;
CREATE TABLE `t_friend`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '友链表主键',
  `blog_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '友链地址',
  `blog_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '友链名字',
  `picture_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '友链图标',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_friend
-- ----------------------------
INSERT INTO `t_friend` VALUES (3, 'https://www.cocos.com/creator', 'cocos操作使用', 'https://download.cocos.com/CocosPortal/image/453864fc0b9d45bcae385fd28551295d/453864fc0b9d45bcae385fd28551295d.png', '2023-04-13 20:31:32');
INSERT INTO `t_friend` VALUES (4, 'https://www.baidu.com/', '百度地址', 'https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png', '2023-10-31 08:20:53');

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '留言表主键id',
  `nickname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '内容',
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '头像',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `parent_message_id` bigint NULL DEFAULT NULL COMMENT '父留言id',
  `admin_message` bit(1) NOT NULL COMMENT '是否为管理员评论',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES (3, 'YG', '123456789@qq.com', '挺好', 'https://cdn.pixabay.com/photo/2014/11/30/14/11/cat-551554_960_720.jpg', '2023-04-13 20:29:27', -1, b'1');

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '标签表主键',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标签名字',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES (7, 'fiscobcos');
INSERT INTO `t_tag` VALUES (8, 'Springboot');

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '分类主键id',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '分类名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES (5, '区块链');
INSERT INTO `t_type` VALUES (6, '后端');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户表主键id',
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '用户密码',
  `nickname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'YG', '123456789@qq.com', 'https://cdn.pixabay.com/photo/2014/11/30/14/11/cat-551554_960_720.jpg');
INSERT INTO `t_user` VALUES (5, 'yang', 'e10adc3949ba59abbe56e057f20f883e', 'yang', '12778393@qq.com', 'https://cdn.pixabay.com/photo/2023/04/15/17/19/cat-7928232__340.png');

SET FOREIGN_KEY_CHECKS = 1;
