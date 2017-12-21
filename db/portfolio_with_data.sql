-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: portfolio
-- ------------------------------------------------------
-- Server version	5.7.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `bid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '文章标题',
  `content` text COMMENT '文章正文',
  `type` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '文章类型:',
  `uname` varchar(255) DEFAULT '' COMMENT '用户名',
  `uavatar` varchar(255) DEFAULT '' COMMENT '用户头像',
  `uid` int(11) DEFAULT NULL COMMENT '创建者用户编码',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `label` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '用户标签，可固定可随意打，预留字段',
  `img` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '文章主题图片，1,2,3，逗号分隔，最多三个',
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COMMENT='动态文章表，用于查询编辑动态文章信息。';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'Angular2 Fundamentals - System.js','<p>SystemJS is a common dynamic module loader.</p>\n\n<p>It is configured by system.config.js or system.config function.</p>\n\n<pre>\n<em><code>     <span style=\"color:#7f8c8d\">System.config({\n        configA: {},\n        configB: &#39;value&#39;\n     });</span></code></em></pre>\n\n<ul>\n	<li>SystemJS could be configured using a few options&nbsp;\n	<ul>\n		<li>babelOptions</li>\n		<li>bundle</li>\n		<li>defaultJSExtensions</li>\n		<li>depCache</li>\n		<li>map</li>\n		<li>meta</li>\n		<li>packages</li>\n		<li>paths</li>\n		<li>traceurOptions</li>\n		<li>transpiler</li>\n		<li>typescriptOptions</li>\n	</ul>\n	</li>\n	<li>&nbsp;</li>\n	<li>In angular2 &quot;hero demo&quot; project , it uses map and package options\n	<ul>\n		<li>map -&nbsp;map tells the System loader where to look for things</li>\n		<li>packages - packages tells the System loader how to load when no filename and/or no extension</li>\n	</ul>\n	</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><br />\n&nbsp;</p>\n\n<p>&nbsp;</p>\n','tech','lucy','',1,'2017-12-06 21:48:50','2017-12-06 21:48:50','Angular',''),(2,'About Myself','<p><span style=\"font-size:16px\"><strong>Introduction&nbsp;</strong></span></p>\n\n<p>I am a full-stack software engineer with more than 7 years experience analysing, implementing and deploying software solutions spanning across web, mobile and desktop environments.&nbsp;</p>\n\n<p>I have previously worked remotely with an Indian and an US development team for two years . I contributed software engineering expertise in the development of products through the software lifecycle, from requirements definition through successful deployment.</p>\n\n<p>I always introduced methodologies and best practices that enhanced product definition, release processes and customisation of applications to user needs.</p>\n\n<p><span style=\"font-size:14px\"><strong>Technology&nbsp;</strong></span></p>\n\n<p>Javascript , Angular, NodeJS , MongoDB, MySQL</p>\n\n<p>Java Selenium Automation</p>\n\n<p>C#/.NET, SQLServer</p>\n\n<p>&nbsp;</p>\n','blog','lucy','',1,'2017-12-06 22:12:39','2017-12-06 22:12:39','IT',''),(3,'Open source portfolio website','<h3><strong>Introduction&nbsp;</strong></h3>\n\n<p>This portfolio website includes below features :</p>\n\n<ul>\n	<li>Home Page&nbsp;</li>\n	<li>Product Page - Display product card list and product detail page</li>\n	<li>Blog Page - Display Blog list , pagination and blog destail page</li>\n	<li>About Page</li>\n	<li>Contact Page - Send Email with form note data</li>\n</ul>\n\n<h4><strong>Admin Module</strong>&nbsp;</h4>\n\n<ul>\n	<li>Login Page&nbsp;</li>\n	<li>Manage Product Page - Product list table , pagination and edit product&nbsp;</li>\n	<li>Write Product Page - Publish product content using CKEditor</li>\n	<li>Manage Blog Page -&nbsp;Blog list table , pagination and edit blog</li>\n	<li>Write Blog Page -&nbsp;Publish blog content using CKEditor</li>\n</ul>\n\n<p><strong>Technology </strong></p>\n\n<p>Angular +<strong>&nbsp;</strong>NodeJS (ThinkJS) + MySQL</p>\n\n<p>Front end :</p>\n\n<p>Angular4 , Typescript , Rxjs ,&nbsp;Primeng, CKEditor4&nbsp;</p>\n\n<p>Back end :&nbsp;</p>\n\n<p>Restful API ( ThinkJS)</p>\n','tech','lucy','',1,'2017-12-10 13:51:31','2017-12-10 13:51:31','Angular, NodeJS, MySQL','');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `pid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT 'user code 用户编码',
  `name` varchar(255) DEFAULT '' COMMENT 'service product name 服务产品名称',
  `role` varchar(255) DEFAULT '' COMMENT 'user role (e.g. full stack, front-end, back-end and so on ) 角色标签：工程师，前端，后端，UI，文案',
  `skill` varchar(255) DEFAULT NULL COMMENT 'technology tag 技能标签：java,php,react,h5',
  `time` int(11) DEFAULT NULL COMMENT 'spent time 工作时间',
  `intro` longtext COMMENT 'company/project introduction 公司或个人简介',
  `solution` longtext COMMENT 'technical solution 技术解决方案',
  `type` int(255) DEFAULT NULL COMMENT 'position type (e.g. full time, part time or other) 职位类型：0,兼职,1全职，3其他',
  `logo` varchar(255) DEFAULT NULL COMMENT 'company / product logo',
  `com` varchar(255) DEFAULT NULL COMMENT 'company name',
  `website` varchar(255) DEFAULT '' COMMENT 'company/product website',
  `state` int(11) DEFAULT NULL COMMENT 'project status ( e.g. 0-complete, 1 - in progress and so on) 项目状态：0，完成，1，建设中, 2,不公开',
  `qq` varchar(255) DEFAULT NULL,
  `wechat` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `salary` int(255) DEFAULT NULL COMMENT '薪资：月薪，无为保密',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='服务列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'West Ireland Adventure','Full Stack Engineer','AngularJS + NodeJS + MongoDB',1,'<h2><strong>Introduction</strong></h2>\n\n<p>The client would like to set up an online travel agency platform for&nbsp;creating adventure/activity package deals for people coming on holidays to west Ireland (Westport/Lousburgh/Mayo). Users&nbsp;could&nbsp;create their&nbsp;own travel packages by clicking&nbsp;activities and adding shopping cart.&nbsp;</p>\n\n<h3><strong>Solution&nbsp;</strong></h3>\n\n<p>AngularJS + NodeJS(Express) + MongoDB</p>\n\n<p>After I had an initial meeting with client for requirements, I have&nbsp;developd a prototype since Oct, 2017.</p>\n\n<p>This prototype includes below features :&nbsp;</p>\n\n<ul>\n	<li>Home Page -&nbsp; displays surfing video, suring maps , activity slide show and activity introductions.</li>\n	<li>Activity Page - Users could select activities to create their own travel package .</li>\n	<li>Payment Page - Users could pay for their travel package in paypal or stripe&nbsp;</li>\n</ul>\n\n<h3><strong>Product</strong></h3>\n\n<p>Currently this project is still in progress.</p>\n\n<p>The client has reviewed initial prototype and prepared for finalizing website logo, content and relevant pictures and video.</p>\n\n<p>I am working on other features based on client feedback.</p>\n\n<p><strong><a href=\"https://west-ireland.herokuapp.com/#/\">Demo website</a></strong></p>\n',NULL,1,'./assets/img/portfolio1.jpg','未来科技有限公司','https://west-ireland.herokuapp.com/#/',1,'85212','weilai','136548952',NULL,120000,'2017-12-06 13:35:31','2017-12-06 13:35:31'),(2,1,'Entertainment Platforms','Backend Engineer','NodeJS (Hapi) + AWS + MySQL',2,'<h3><strong>Introduction&nbsp;</strong></h3>\n\n<p><br />\n<em><a href=\"http://www.cinemaloop.co\">www.cinemaloop.co</a></em></p>\n\n<p><br />\n<em>&quot; Cinealoop - &quot;Where movie fans meet!&quot;.</em></p>\n\n<p>Cinemaloop platform enhances the moviegoing experience through web &amp; smartphone connectivity; connecting brands, games, films and people before, during and after the cinema experiences, making it easier and more enticing to go to the movies!</p>\n\n<p>Cinemaloop platform helps solve the problem of 37% decline in moviegoing attendance - by bringing together millions of movie fans that otherwise would neglect the theater- who are having a hard time finding cinema companionship. Also helping studios and cinemas get traffic back into theaters. &quot;</p>\n\n<p>Cinemaloop is a remote team startup.<br />\nIt is&nbsp;composed of over 45 years of combined experience in entertainment, marketing and software development. There are over 30 independent contractors from all over the world working in this team.</p>\n\n<h3><strong>Solution</strong></h3>\n\n<p>React + NodeJS(Hapi) + AWS + MySQL</p>\n\n<p>I have joined this team as a backend engineer in September , 2017 .</p>\n\n<p>During this period , I have successfully delivered below API modules :</p>\n\n<ul>\n	<li>Social Connect API such as authentication using Facebook, Twitter, Google and Instagram.</li>\n	<li>Node AWS Notifications API such as GPN ( Android Push Notification) , APN ( Apple Push Notification ) , Email and SMS Notifications.</li>\n</ul>\n\n<h3><strong>Product</strong></h3>\n\n<p>This project is still in progress .</p>\n\n<p>We are planning to release the whole platform by May , 2018</p>\n\n<p>&nbsp;</p>\n',NULL,0,'./assets/img/product-cinemaloop.png','cinemaloop Inc','http://www.cinemaloop.co/',1,'85212','weilai','136548952',NULL,120000,'2017-12-06 13:53:54','2017-12-06 13:53:54'),(3,1,'Test Automation Suite','Lead Engineer','JAVA + Selenium',3,'<h3><strong>Introduction</strong></h3>\n\n<p>This product is an online survey platform which uses manual testing strategy&nbsp;before.</p>\n\n<p>The&nbsp;UAT test cases include creating&nbsp;a survey, filling in a survey and checking survey report&nbsp;modules.</p>\n\n<p>&nbsp;There are totally 800 test cases across google chrome, firefox and IE8 browsers.</p>\n\n<h3><strong>Solution</strong></h3>\n\n<p>JAVA + Selenium + Jenkins</p>\n\n<p>I have lead a small team and spent 3 months developing the whole Test Automation Suite and Deployment Pipeline.</p>\n\n<p>The pipeline includes below features :</p>\n\n<ul>\n	<li>Scripts automatically deployed to Jenkins server after project passes all unit test cases.</li>\n	<li>Seleinum hub starts to run&nbsp;all UAT test cases&nbsp;on different machines against different browsers in parallel</li>\n	<li>After that, pipeline automatically generates testNG report , sends back to Jenkins server and notifications to relevant QA testers.</li>\n</ul>\n',NULL,0,'./assets/img/product-se.jpeg','','www.weilai.com',0,'85212','weilai','136548952',NULL,120000,'2017-12-06 17:44:33','2017-12-06 17:44:33'),(4,1,'Fund Management Web','Lead Engineer','Javascript(JQuery) + C#/.NET + SQLServer',3,'<h3><strong>Introduction&nbsp;</strong></h3>\n\n<p>Client would like to have a&nbsp;browser-based application that provides Advisors with instant access to key fund and account information.</p>\n\n<p>The applicaton applies a couple of fund algorithms for Advisors saving time on administrative tasks and&nbsp; helping focus on supporting&nbsp;clients to grow&nbsp;their business.</p>\n\n<h3><strong>Solution&nbsp;</strong></h3>\n\n<p>Javascript(JQuery)&nbsp;+ C#/.NET + SQLServer</p>\n\n<p>I have individually analyzed client business requirement , developed and deployed this&nbsp;application based on client existing fund management platform.</p>\n\n<p>This application includes below features :</p>\n\n<ul>\n	<li>Multi-thread window service downloads, normalizes and validates client email attachment data. If it failes validation, advisors will receive auto emails about details. Otherwise, it&nbsp;&nbsp;loads into application database.</li>\n	<li>This application applies fund algorithms and&nbsp;displays on web</li>\n	<li>Advisors could add/modify/sort fund information or adjust algorithm.</li>\n</ul>\n',NULL,0,'./assets/img/portfolio4.jpg','','www.weilai.com',0,'85212','weilai','136548952',NULL,120000,'2017-12-06 18:37:50','2017-12-06 18:37:50');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户编码',
  `role` int(11) DEFAULT NULL COMMENT '角色：100，管理员；0，工作者；1，项目方；',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `name` varchar(255) DEFAULT NULL COMMENT '用户姓名',
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机',
  `qq` varchar(255) DEFAULT NULL,
  `wechat` varchar(255) DEFAULT NULL,
  `intro` longtext COMMENT '用户简介',
  `resume` varchar(255) DEFAULT NULL COMMENT '简历链接',
  `case` varchar(255) DEFAULT '' COMMENT '案例链接，逗号分隔，最多4个',
  `case_img` varchar(255) DEFAULT '' COMMENT '案例截图,逗号分隔，最多4个',
  `year` int(11) DEFAULT NULL COMMENT '工作年限',
  `skill` varchar(255) DEFAULT '' COMMENT '技能标签',
  `rate` int(11) DEFAULT NULL COMMENT '用户评价：1,2,3,4,5',
  `homepage` varchar(255) DEFAULT NULL COMMENT '个人主页',
  `Repo` varchar(255) DEFAULT '' COMMENT 'github,码云等代码库地址',
  `state` varchar(255) DEFAULT NULL COMMENT '用户状态：0，暂不接单；1，开放接单',
  `grade` int(11) DEFAULT NULL COMMENT '用户等级：0，普通用户；1，核心用户；2，推荐用户；3，官方成员',
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户查询用户概要和详细信息，用户管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,0,'./assets/img/avatar.jpg','lucyli','d6989f0d85e3ac9fbecf9c3ed10ce6b0','304492016@qq.com','13631673021','9425815','lixiaolong','<p>I am a full-stack software engineer with more than 7 years experience analysing, implementing and deploying software solutions spanning across web, mobile and desktop environments.&nbsp;</p>  <p>I have previously worked remotely with an Indian and an US development team for two years . I contributed software engineering expertise in the development of products through the software lifecycle, from requirements definition through successful deployment.</p>  <p>I always introduced methodologies and best practices that enhanced product definition, release processes and customisation of applications to user needs.</p>  <p><span style=\"font-size:14px\"><strong>Technology&nbsp;</strong></span></p>  <p>Javascript , Angular, NodeJS , MongoDB, MySQL</p>  <p>Java Selenium Automation</p>  <p>C#/.NET, SQLServer</p>  <p>&nbsp;</p> ','http://www.lagou.com/lixiaolong','http://case.com/case1.com,case2.com,case3.com','./assets/img/portfolio1.jpg',7,'javascript,nodejs,angularjs, c#/.net,java',3,'www.lixiaolong.com','http://github.com/lixiaolong','1',1,'2017-11-28');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-11 20:35:42
