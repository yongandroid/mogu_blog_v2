/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.35-MariaDB : Database - mogu_blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mogu_blog` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mogu_blog`;

/*Table structure for table `t_admin` */

DROP TABLE IF EXISTS `t_admin`;

CREATE TABLE `t_admin` (
  `uid` varchar(32) NOT NULL COMMENT '唯一uid',
  `user_name` varchar(255) NOT NULL COMMENT '用户名',
  `pass_word` varchar(255) NOT NULL COMMENT '密码',
  `gender` varchar(1) DEFAULT NULL COMMENT '性别(1:男2:女)',
  `avatar` varchar(100) DEFAULT NULL COMMENT '个人头像',
  `email` varchar(60) DEFAULT NULL COMMENT '邮箱',
  `birthday` date DEFAULT NULL COMMENT '出生年月日',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机',
  `valid_code` varchar(50) DEFAULT NULL COMMENT '邮箱验证码',
  `summary` varchar(200) DEFAULT NULL COMMENT '自我简介最多150字',
  `login_count` int(11) unsigned DEFAULT '0' COMMENT '登录次数',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(50) DEFAULT '127.0.0.1' COMMENT '最后登录IP',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `qq_number` varchar(255) DEFAULT NULL COMMENT 'QQ号',
  `we_chat` varchar(255) DEFAULT NULL COMMENT '微信号',
  `occupation` varchar(255) DEFAULT NULL COMMENT '职业',
  `github` varchar(255) DEFAULT NULL COMMENT 'github地址',
  `gitee` varchar(255) DEFAULT NULL COMMENT 'gitee地址',
  `role_uid` varchar(32) DEFAULT NULL COMMENT '拥有的角色uid',
  `person_resume` text COMMENT '履历',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员表';

/*Data for the table `t_admin` */

insert  into `t_admin`(`uid`,`user_name`,`pass_word`,`gender`,`avatar`,`email`,`birthday`,`mobile`,`valid_code`,`summary`,`login_count`,`last_login_time`,`last_login_ip`,`status`,`create_time`,`update_time`,`nick_name`,`qq_number`,`we_chat`,`occupation`,`github`,`gitee`,`role_uid`,`person_resume`) values ('1723ad77a1ca06b29a011471036a2dd6','test1','$2a$10$eus6faJ6/X2hNo5Cm.7bK.Z0oP9UQADthoqRaGTwHEdwehnaMj4Lu','1',',70f5b89fe70a28d95e10c19c96bf2e85','xzx19950624@qq.com',NULL,NULL,NULL,NULL,11,'2020-03-23 09:18:34','192.168.80.1',1,'2020-03-22 10:23:12','2020-03-22 10:23:12','test1',NULL,NULL,NULL,NULL,NULL,'ad92f1639508ca405728f4981770793b',NULL),('1f01cd1d2f474743b241d74008b12333','admin','$2a$10$hMxXWDrxPkrqmtPwziYP7.2cPewb9IcwpojeB9r.1N8aHe8v9BvEC','1',',63da0632ccf7f1fde167bdf92ff25b6b','1595833114@qq.com',NULL,NULL,NULL,NULL,17,'2020-03-23 08:08:34','192.168.80.1',1,'2020-03-22 08:38:04','2020-03-22 08:38:04','admin',NULL,NULL,NULL,NULL,NULL,'434994947c5a4ee3a710cd277357c7c3','<h2>前言</h2>\r\n\r\n<p>目前博客源码已经开源至码云和Github中，感兴趣的小伙伴可以star关注一下下~</p>\r\n\r\n<p>Gitee地址：<a href=\"https://gitee.com/moxi159753/mogu_blog_v2\">https://gitee.com/moxi159753/mogu_blog_v2</a></p>\r\n\r\n<p>Github地址：<a href=\"https://github.com/moxi624/mogu_blog_v2\">https://github.com/moxi624/mogu_blog_v2</a></p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<h2>关于我</h2>\r\n\r\n<p>许志翔，目前就读于桂林电子科技大学，是一名研二的学生，所属计算机信息与安全学院，研究方向是教育大数据，是一名&quot;不顾正业&quot;的研究僧，沉迷于Java和Vue技术开发，梦想着进入BATJ，也将一直为此不断努力了~</p>\r\n\r\n<p>正宗95后，爱编程，爱旅游，爱生活，爱锻炼，从刚研究生入学后，就坚持着两件事，一个是写代码，一个就是每天5公里慢跑</p>\r\n\r\n<pre>\r\n<code>意志力和天生才华，都是人们在事实发生了之后再去赋予某个人的优点：杰森是位不可思议的网球选手，因此，他一定生下来就具有这种才华；杰尼年复一年地练习拉小提琴，每天坚持几个小时，因此，他一定有着令人难以置信的意志力。\r\n\r\n——《刻意练习：从新手到大师》</code></pre>\r\n\r\n<p>最近可能随着研究生生涯过半，已经要着手开始写小论文的事情了，博客项目的更新估计会变的比较缓慢，应该不会存在大版本的更新迭代了</p>\r\n\r\n<p>不过目前博客项目的技术功能也编写的差不多，可能还要做的就是SEO优化，后面一段时间应该注重于网站的稳定性和BUG的解决，要是小伙伴在使用的时候，发现了什么问题，欢迎私聊我，或者在QQ群里提出~</p>\r\n\r\n<p>在今年的8、9月份，也该着手于校招了，后面应该更多的时间沉淀在Java的基础学习了，当然如果有老哥有内推名额的话，欢迎推荐我一下下....&nbsp; &nbsp;卑微.jpg&nbsp;</p>\r\n\r\n<p><img src=\"http://image.moguit.cn/52552ed0efb245a9a67d5c9928d72e14\" /></p>\r\n\r\n<p>回顾2019年，每天也会在项目中，花费一些时间去提交代码，可能有的时候是增加了新功能，有的时候是解决一个BUG，到现在已经成为了一个习惯了，因此博客项目中也添加了比较多的有趣的功能，比如这个文章贡献度</p>\r\n\r\n<p><img src=\"http://image.moguit.cn/aaff67a315c547c5964f0aebb4e8ce23\" /></p>\r\n\r\n<p>哈哈哈，其实它和码云上的代码贡献度是一样的，每次发表一篇博客，就会标记出个点，点越大说明该天发表博客越多，可能是因为自己有些强迫症的原因，不过我也希望能够借此来激励自己养成每天写博客的习惯，通过分享自己学习到的东西，来和各位IT的前辈们共同进步。</p>\r\n\r\n<p>当然闲暇之余也会玩玩游戏，有空的时候会在酒馆搓搓炉石~，玩玩农药，有喜欢的小伙伴也可以一起，虽然我贼菜</p>\r\n\r\n<hr />\r\n<h2>项目起因</h2>\r\n\r\n<p>本博客项目由我和几个小伙伴参与开发的，最开始的搭建蘑菇博客的初心是为了巩固和学习Java开发的一些知识，因此项目的技术选型都是比较新颖的技术，可能这些技术并不一定适用于博客系统，但是我也想着能尽可能把更多的技术融合进来，毕竟通过自己手把手的操作一遍，也能够算是入门了。我也很庆幸我成功将自己的项目开源出来了，并且坚持下来，蘑菇博客起源是2018年9月，到想在也已经度过了1年半的岁月。我也从最开始只会一点点Jsp和Servlet就出去找工作的傻小子慢慢成长了，在读研之前，我也在公司里呆过，算上来好像将近快一年，很感谢之前在公司里的同事和领导，是他们带我入门企业级的项目开发，让我养成了很多Java项目开发的规范。</p>\r\n\r\n<p>起初项目开源在码云上，没有多少人关注，所以自己也是坚持做自己的喜欢的事，有的时候是看看论文，有的时候敲敲代码，在2019年12月14日，蘑菇博客被码云推荐了，上了首页</p>\r\n\r\n<p><img src=\"http://image.moguit.cn/49865d11fd4c4b289d87bf305b2dde0a\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>然后项目的关注度就开始上升了，有些小伙伴就开始关注项目的运行和部署了，所以我也花费了一些时间，整理了博客的开发、运行、部署的文档，希望每个小伙伴都能够通过本项目一起学习</p>\r\n\r\n<p>目前蘑菇博客已经有300star了，很高兴大家对蘑菇博客项目的认可</p>\r\n\r\n<p><img src=\"http://image.moguit.cn/f55b31b7e00b42eda71e88105c4e147a\" /></p>\r\n\r\n<p>同时因为更新比较勤快，项目也在码云&nbsp; 博客&nbsp; &nbsp;关键字搜索的第一个，不过未来要走得路还很长，我也希望能够认识更多志同道合的小伙伴，然后一起学习和交流</p>\r\n\r\n<p><img src=\"http://image.moguit.cn/36588a0c8bf04e9bb103eac0f432bfa7\" /></p>\r\n');

/*Table structure for table `t_blog` */

DROP TABLE IF EXISTS `t_blog`;

CREATE TABLE `t_blog` (
  `uid` varchar(32) NOT NULL COMMENT '唯一uid',
  `title` varchar(200) DEFAULT NULL COMMENT '博客标题',
  `summary` varchar(200) DEFAULT NULL COMMENT '博客简介',
  `content` longtext COMMENT '博客内容',
  `tag_uid` varchar(255) DEFAULT NULL COMMENT '标签uid',
  `click_count` int(11) DEFAULT '0' COMMENT '博客点击数',
  `collect_count` int(11) DEFAULT '0' COMMENT '博客收藏数',
  `file_uid` varchar(255) DEFAULT NULL COMMENT '标题图片uid',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `admin_uid` varchar(32) DEFAULT NULL COMMENT '管理员uid',
  `is_original` varchar(1) DEFAULT '1' COMMENT '是否原创（0:不是 1：是）',
  `author` varchar(255) DEFAULT NULL COMMENT '作者',
  `articles_part` varchar(255) DEFAULT NULL COMMENT '文章出处',
  `blog_sort_uid` varchar(32) DEFAULT NULL COMMENT '博客分类UID',
  `level` tinyint(1) DEFAULT '0' COMMENT '推荐等级(0:正常)',
  `is_publish` varchar(1) DEFAULT '1' COMMENT '是否发布：0：否，1：是',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博客表';

/*Data for the table `t_blog` */

insert  into `t_blog`(`uid`,`title`,`summary`,`content`,`tag_uid`,`click_count`,`collect_count`,`file_uid`,`status`,`create_time`,`update_time`,`admin_uid`,`is_original`,`author`,`articles_part`,`blog_sort_uid`,`level`,`is_publish`,`sort`) values ('05c1900ac832d47e6bb6e8918853e5f7','123','123','<p>123456789</p>\n','6b0ba63beabccc91c4f8fb938984f8a3',0,0,'3e6d4c73afeb338ad5e9c2d5be0bea14',1,'2020-03-20 10:00:53','2020-03-20 10:00:53','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',0,'1',0),('0c3665bfbe334dc122f024e9dc405387','测试博客3','测试博客3','<p>测试博客3</p>\n','5c4c541e600ff422ccb371ee788f59d6',2,0,'adeaf35fdcd2d36ed143d95bc02b1cc2',1,'2020-01-30 22:09:26','2020-01-30 22:09:26','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',2,'1',1),('18515dc97b6b62f0f6bda2b56f133082','发大水','发送方','<p>法第三方</p>\n','5c4c541e600ff422ccb371ee788f59d6',0,0,'d134bdfe255b9aa8c2ce44da8297f6a6',0,'2020-02-07 10:50:15','2020-02-07 10:50:15','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',0,'1',0),('231e684d95295d1a06a78abd46f4b75a','测试诶哦仍','测试呢绒','<p>试试水</p>\n','6b0ba63beabccc91c4f8fb938984f8a3',3,1,'ef7e96df0cee789dc1b945e9c67f8992',1,'2020-03-11 15:59:59','2020-03-11 15:59:59','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',0,'1',0),('31c73ad7116f55187a4a683d759cde82','123','123','<p>123</p>\n','6b0ba63beabccc91c4f8fb938984f8a3',0,0,NULL,0,'2020-03-20 10:32:49','2020-03-20 10:32:49','1f01cd1d2f474743b241d74008b12333','1','admin','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',0,'1',0),('41862e8f8c091652364a4a6ebaff7d5e','测试博客10','测试博客10','<p>测试博客10</p>\n','6b0ba63beabccc91c4f8fb938984f8a3',8,1,'d134bdfe255b9aa8c2ce44da8297f6a6',1,'2020-01-30 22:11:21','2020-01-30 22:11:21','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',1,'1',4),('4537a83843ae95bfc453d86f3e2360d0','啦啦啦','啦啦啦','<p>啦啦啦啦啦啦啦啦啦啦啦啦</p>\n','5c4c541e600ff422ccb371ee788f59d6',0,0,'70f5b89fe70a28d95e10c19c96bf2e85',0,'2020-02-07 10:59:41','2020-02-07 10:59:41','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',0,'1',0),('4a80e77576c2972543b8d4d7ddbfb61a','测试博客1','测试博客1','<p>测试博客1</p>\n','5c4c541e600ff422ccb371ee788f59d6',1,0,'7a08d34301b572a54b758f3f57809548',1,'2020-01-30 22:08:56','2020-01-30 22:08:56','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',1,'1',5),('4f0c05e15cca1f8ce2a41273b3db09ad','测试啦啦啦','测试啦啦啦','<p>测试啦啦啦测试啦啦啦</p>\n','5c4c541e600ff422ccb371ee788f59d6',0,0,'4e871894c11e04edbf2c4e22b4644730',0,'2020-02-07 10:57:49','2020-02-07 10:57:49','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',0,'1',0),('5177f5f90e8a62a185dbe9c3e9c275f8','测试博客9','测试博客9','<p>测试博客9</p>\n','6b0ba63beabccc91c4f8fb938984f8a3',6,2,'adeaf35fdcd2d36ed143d95bc02b1cc2',1,'2020-01-30 22:11:08','2020-01-30 22:11:08','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',1,'1',3),('53181ddc4d560c2de1c591d0e2764c91','Nginx指南，学习nginx','Nginx指南，学习nginx','<p>Nginx指南，学习nginx</p>\n','5c4c541e600ff422ccb371ee788f59d6',7,1,'7a08d34301b572a54b758f3f57809548',1,'2020-02-04 16:37:38','2020-02-04 16:37:38','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',0,'1',0),('5925d6ca9a93f2b332e6bd3202c16bbf','测试拉拉','测试拉拉','<p>测试</p>\n','5c4c541e600ff422ccb371ee788f59d6',1,0,'d134bdfe255b9aa8c2ce44da8297f6a6',1,'2020-02-19 15:42:52','2020-02-19 15:42:52','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',1,'1',2),('65035323d083f98f821a2508cb1e6e8e','测试博客20200207','测试博客20200207','<h3 style=\"color:#aaaaaa;font-style:italic;\">测试博客20200207</h3>\n\n<blockquote>\n<p>我要去哈哈哈哈</p>\n</blockquote>\n\n<p><ins><u>嘎达<sub>2</sub></u><br />\n<s>&nbsp;发大水发斯蒂芬</s></ins></p>\n\n<h3 style=\"color:#aaaaaa;font-style:italic;\"><span dir=\"rtl\"><tt><big><del><cite><q>1234564</q></cite></del></big></tt></span></h3>\n','6b0ba63beabccc91c4f8fb938984f8a3',5,1,'adeaf35fdcd2d36ed143d95bc02b1cc2',1,'2020-02-07 10:43:07','2020-02-07 10:43:07','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',0,'1',0),('6621ad0f6edea49138277028650c1c41','测试博客55','测试博客55','<blockquote>\n<p>快引用不一致的问题</p>\n</blockquote>\n','5c4c541e600ff422ccb371ee788f59d6',8,1,'d134bdfe255b9aa8c2ce44da8297f6a6',1,'2020-02-07 10:48:36','2020-02-07 10:48:36','1f01cd1d2f474743b241d74008b12333','0','陌溪_','123412','6a1c7a50c0e7b8e8657949bf02d5d0ca',0,'1',0),('66d84e5e9c5ad586ee6d15b18547d205','哈哈哈哈1','我我我','<p>哈哈哈123</p>\n','5c4c541e600ff422ccb371ee788f59d6',3,0,'d134bdfe255b9aa8c2ce44da8297f6a6',1,'2020-02-29 16:55:08','2020-02-29 16:55:08','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',0,'1',0),('6ada71700fb1c07a8ce9120a21149fe9','测试博客55','测试博客55','<ul style=\"list-style-type:square\">\n	<li>1<a id=\"1\" name=\"1\"></a></li>\n	<li>2<a id=\"1\" name=\"1\"></a></li>\n	<li>3<a id=\"1\" name=\"1\"></a></li>\n</ul>\n\n<p><img src=\"http://localhost:8600//blog/admin/png/2020/2/16/1581852933650.png\" /></p>\n','5c4c541e600ff422ccb371ee788f59d6',3,0,'d134bdfe255b9aa8c2ce44da8297f6a6',1,'2020-02-14 12:22:05','2020-02-14 12:22:05','1f01cd1d2f474743b241d74008b12333','0','陌溪_','123412','6a1c7a50c0e7b8e8657949bf02d5d0ca',0,'0',0),('6ea38cd43001d0df3981534cb21536b3','测试博客2','测试博客2','<p>测试博客2</p>\n','6b0ba63beabccc91c4f8fb938984f8a3',4,0,'c54296fcb729599afec1d94d261a6229',1,'2020-01-30 22:09:12','2020-01-30 22:09:12','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',2,'1',2),('7d5baec3fb05cc699ee4c9e9446c75a0','测试内容拉拉','测试内容拉拉','<p>测试内容拉拉</p>\n','6b0ba63beabccc91c4f8fb938984f8a3',0,0,'63da0632ccf7f1fde167bdf92ff25b6b',1,'2020-03-11 15:59:22','2020-03-11 15:59:22','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',0,'1',0),('7f96c280d5c703af0968726b5f422075','哈哈哈哈','我我我','<p>哈哈哈</p>\n','5c4c541e600ff422ccb371ee788f59d6',2,0,'d134bdfe255b9aa8c2ce44da8297f6a6',1,'2020-02-19 15:50:57','2020-02-19 15:50:57','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',0,'1',0),('9121cf89a93d298005e0833cb0893e69','测试博客8','测试博客8','<p>测试博客8</p>\n','6b0ba63beabccc91c4f8fb938984f8a3',2,0,'7a08d34301b572a54b758f3f57809548',1,'2020-01-30 22:10:56','2020-01-30 22:10:56','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',1,'1',1),('935867d808f0e7ebe51fca94f7184711','测试博客7','测试博客7','<p>测试博客7</p>\n','5c4c541e600ff422ccb371ee788f59d6',2,0,'adeaf35fdcd2d36ed143d95bc02b1cc2',1,'2020-01-30 22:10:42','2020-01-30 22:10:42','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',3,'1',1),('95433e16934450d99124d00ffb09dd91','测试2','测试2','<p>测试2</p>\n','6b0ba63beabccc91c4f8fb938984f8a3',0,0,'3e6d4c73afeb338ad5e9c2d5be0bea14',1,'2020-03-22 12:17:24','2020-03-22 12:17:24','1f01cd1d2f474743b241d74008b12333','1','admin','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',0,'1',0),('99e457c324c7ce31641b427b8e3d09fb','测试博客55','测试博客55','<pre>\n<code>CKEditor 5 core is designed to handle a tree-structured custom data model. This allows for implementing fast and reliable real-time collaboration inside complex structures such as tables or nested widgets.\n\nWe provide all the necessary infrastructure, including SaaS and scalable on-premise solutions, to enable real-time collaborative editing in your application.\n\nWith collaboration features, multiple users can write, edit and comment simultaneously. This makes your content creation and review process simpler within your application, without having to leave for a third-party solution.</code></pre>\n\n<p>&nbsp;</p>\n','5c4c541e600ff422ccb371ee788f59d6',3,1,'d134bdfe255b9aa8c2ce44da8297f6a6',1,'2020-02-14 12:18:36','2020-02-14 12:18:36','1f01cd1d2f474743b241d74008b12333','0','陌溪_','123412','6a1c7a50c0e7b8e8657949bf02d5d0ca',0,'1',0),('acb315de23375abb97d2952f3635e8fb','测试博客5','测试博客5','<p>测试博客5</p>\n','5c4c541e600ff422ccb371ee788f59d6',1,0,'c54296fcb729599afec1d94d261a6229',1,'2020-01-30 22:10:12','2020-01-30 22:10:12','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',0,'1',0),('b4f27bed1bb1874e4b6083a67697f485','测试拉拉','测试拉拉','<p>测试拉拉</p>\n','5c4c541e600ff422ccb371ee788f59d6',0,0,NULL,0,'2020-02-07 10:55:20','2020-02-07 10:55:20','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',0,'1',0),('b51286ab6d40d963e10bcd2544758da7','测试内容拉拉','测试内容拉拉','<p>测试内容拉拉</p>\n','6b0ba63beabccc91c4f8fb938984f8a3',1,1,'63da0632ccf7f1fde167bdf92ff25b6b',1,'2020-03-11 15:59:23','2020-03-11 15:59:23','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',0,'1',0),('cda0a2b70d676534611eafafa8a6cbd4','测试博客6','测试博客6','<p>测试博客6</p>\n','6b0ba63beabccc91c4f8fb938984f8a3',4,1,'c54296fcb729599afec1d94d261a6229',1,'2020-01-30 22:10:28','2020-01-30 22:10:28','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',4,'1',0),('cdb5c5b17d8478a7171c59186a637316','测试博客4','测试博客4','<p>测试博客4</p>\n','5c4c541e600ff422ccb371ee788f59d6',3,0,'c54296fcb729599afec1d94d261a6229',1,'2020-01-30 22:09:40','2020-01-30 22:09:40','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',3,'1',2),('fc98d2ae7756d2587390ae441b82f52d','测试内容','测试内容','<h2>前言</h2>\n\n<p>目前博客源码已经开源至码云和Github中，感兴趣的小伙伴可以star关注一下下~</p>\n\n<p>Gitee地址：<a href=\"https://gitee.com/moxi159753/mogu_blog_v2\" target=\"_blank\">https://gitee.com/moxi159753/mogu_blog_v2</a></p>\n\n<p>Github地址：<a href=\"https://github.com/moxi624/mogu_blog_v2\" target=\"_blank\">https://github.com/moxi624/mogu_blog_v2</a></p>\n\n<p>文档地址：<a href=\"http://moxi159753.gitee.io/mogu_blog_doc\" target=\"_blank\">http://moxi159753.gitee.io/mogu_blog_doc</a></p>\n\n<p>备用文档地址：<a href=\"http://doc.moguit.cn/\" target=\"_blank\">http://doc.moguit.cn</a></p>\n\n<hr />\n<pre>\n<code>// request拦截器\nservice.interceptors.request.use(\n  config =&gt; {\n    if (getCookie(\"token\") != undefined) {\n      config.headers.Authorization = getCookie(\"token\") // 让每个请求携带自定义token 请根据实际情况自行修改\n    }\n    return config\n  },\n  error =&gt; {\n    // Do something with request error\n    console.log(error) // for debug\n    Promise.reject(error)\n  }\n)</code></pre>\n\n<h2>关于我</h2>\n\n<p>许志翔，目前就读于桂林电子科技大学，是一名研二的学生，所属计算机信息与安全学院，研究方向是教育大数据，是一名&quot;不顾正业&quot;的研究僧，沉迷于Java和Vue技术开发，梦想着进入BATJ，也将一直为此不断努力了~</p>\n\n<p>正宗95后，爱编程，爱旅游，爱生活，爱锻炼，从刚研究生入学后，就坚持着两件事，一个是写代码，一个就是每天5公里慢跑</p>\n\n<blockquote>\n<p>意志力和天生才华，都是人们在事实发生了之后再去赋予某个人的优点：杰森是位不可思议的网球选手，因此，他一定生下来就具有这种才华；杰尼年复一年地练习拉小提琴，每天坚持几个小时，因此，他一定有着令人难以置信的意志力。</p>\n\n<p>&mdash;&mdash;《刻意练习：从新手到大师》</p>\n</blockquote>\n\n<p>平时喜欢把学习上遇到的问题以博客的方式记录下来，主要目的是为了巩固自己的知识，在以后遇到问题的时候，能够非常快速的查阅</p>\n\n<blockquote>\n<p>内心没有阳光的人温暖不了别人。用心写博客，知识不是高谈阔论，是现实点点滴滴的积累</p>\n</blockquote>\n\n<p>最近可能随着研究生生涯过半，已经要着手开始写小论文的事情了，博客项目的更新估计会变的比较缓慢，应该不会存在大版本的更新迭代了，不过每天应该会抽出一点点时间，来解决博客存在的问题~</p>\n\n<p>目前博客项目的技术功能也编写的差不多，可能还要做的就是SEO优化，后面一段时间应该注重于网站的稳定性和BUG的解决，要是小伙伴在使用的时候，发现了什么问题，欢迎私聊我，或者在QQ群里提出~</p>\n\n<p>在今年的8、9月份，也该着手于校招了，后面应该更多的时间沉淀在Java的基础学习了，当然如果有老哥有内推名额的话，欢迎推荐我一下下....&nbsp; &nbsp;卑微.jpg&nbsp;</p>\n\n<p><img src=\"http://localhost:8600/blog/admin/jpg/2020/3/4/1583309269915.jpg\" /></p>\n\n<p>回顾2019年，每天也会在项目中，花费一些时间去提交代码，可能有的时候是增加了新功能，有的时候是解决一个BUG，到现在已经成为了一个习惯了，因此博客项目中也添加了比较多的有趣的功能，比如这个文章贡献度</p>\n\n<p><img src=\"http://localhost:8600/blog/admin/jpg/2020/3/4/1583309269392.jpg\" /></p>\n\n<p>哈哈哈，其实它和码云上的代码贡献度是一样的，每次发表一篇博客，就会标记出个点，点越大说明该天发表博客越多，可能是因为自己有些强迫症的原因，不过我也希望能够借此来激励自己养成每天写博客的习惯，通过分享自己学习到的东西，来和各位IT的前辈们共同进步。</p>\n\n<p>当然闲暇之余也会玩玩游戏，有空的时候会在酒馆搓搓炉石~，玩玩农药，有喜欢的小伙伴也可以一起，虽然我贼菜</p>\n\n<hr />\n<h2>项目起因</h2>\n\n<p>本博客项目由我和几个小伙伴参与开发的，最开始的搭建蘑菇博客的初心是为了巩固和学习Java开发的一些知识，因此项目的技术选型都是比较新颖的技术，可能这些技术并不一定适用于博客系统，但是我也想着能尽可能把更多的技术融合进来，毕竟通过自己手把手的操作一遍，也能够算是入门了。我也很庆幸我成功将自己的项目开源出来了，并且坚持下来，蘑菇博客起源是2018年9月，到想在也已经度过了1年半的岁月。我也从最开始只会一点点Jsp和Servlet就出去找工作的傻小子慢慢成长了，在读研之前，我也在公司里呆过，算上来好像将近快一年，很感谢之前在公司里的同事和领导，是他们带我入门企业级的项目开发，让我养成了很多Java项目开发的规范。</p>\n\n<p>起初项目开源在码云上，没有多少人关注，所以自己也是坚持做自己的喜欢的事，有的时候是看看论文，有的时候敲敲代码，在2019年12月14日，蘑菇博客被码云推荐了，上了首页</p>\n\n<p><img src=\"http://localhost:8600/blog/admin/jpg/2020/3/4/1583309268255.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>然后项目的关注度就开始上升了，有些小伙伴就开始关注项目的运行和部署了，所以我也花费了一些时间，整理了博客的开发、运行、部署的文档，希望每个小伙伴都能够通过本项目一起学习</p>\n\n<p>目前蘑菇博客已经有300star了，很高兴大家对蘑菇博客项目的认可</p>\n\n<p><img src=\"http://localhost:8600/blog/admin/jpg/2020/3/4/1583309269592.jpg\" /></p>\n\n<p>同时因为更新比较勤快，项目也在码云&nbsp; 博客&nbsp; &nbsp;关键字搜索的第一个，不过未来要走得路还很长，我也希望能够认识更多志同道合的小伙伴，然后一起学习和交流</p>\n\n<p><img src=\"http://localhost:8600/blog/admin/jpg/2020/3/4/1583309269724.jpg\" /></p>\n','5c4c541e600ff422ccb371ee788f59d6',5,11,'d134bdfe255b9aa8c2ce44da8297f6a6',1,'2020-02-29 17:00:00','2020-02-29 17:00:00','1f01cd1d2f474743b241d74008b12333','1','陌溪_','蘑菇博客','6a1c7a50c0e7b8e8657949bf02d5d0ca',0,'1',0);

/*Table structure for table `t_blog_sort` */

DROP TABLE IF EXISTS `t_blog_sort`;

CREATE TABLE `t_blog_sort` (
  `uid` varchar(32) NOT NULL COMMENT '唯一uid',
  `sort_name` varchar(255) DEFAULT NULL COMMENT '分类内容',
  `content` varchar(255) DEFAULT NULL COMMENT '分类简介',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `sort` int(11) DEFAULT '0' COMMENT '排序字段，越大越靠前',
  `click_count` int(11) DEFAULT '0' COMMENT '点击数',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博客分类表';

/*Data for the table `t_blog_sort` */

insert  into `t_blog_sort`(`uid`,`sort_name`,`content`,`create_time`,`update_time`,`status`,`sort`,`click_count`) values ('0a8c48d5768f7c0cba961f8cc7d17afd','231',NULL,'2020-03-20 09:09:12','2020-03-20 09:09:12',0,0,0),('14211abeaf524f89118b07f2c1bb387f','测试2','测试2','2020-03-22 12:17:41','2020-03-22 12:17:41',0,0,0),('20526c5b331b5ae75623c752e56b1bbe','23',NULL,'2020-03-20 09:15:50','2020-03-20 09:15:50',0,0,0),('6a1c7a50c0e7b8e8657949bf02d5d0ca','测试分类','测试分类','2020-01-30 22:06:54','2020-01-30 22:06:54',1,23,5),('8889c9b775f716c7ccd711beced9c43b','1',NULL,'2020-03-20 09:01:06','2020-03-20 09:01:06',0,0,0),('eb4ae70be352f49bd66e2c0bc7838a4a','测试分类2','测试分类2','2020-03-08 21:19:23','2020-03-08 21:19:23',0,0,0),('fea0cd1d9131aa861226272e79ba1da6','测试分类1','测试分类1','2020-02-22 09:14:03','2020-02-22 09:14:03',0,1,0);

/*Table structure for table `t_blog_spider` */

DROP TABLE IF EXISTS `t_blog_spider`;

CREATE TABLE `t_blog_spider` (
  `uid` varchar(32) NOT NULL COMMENT '唯一uid',
  `title` varchar(200) DEFAULT NULL COMMENT '博客标题',
  `summary` varchar(200) DEFAULT NULL COMMENT '博客简介',
  `content` longtext COMMENT '博客内容',
  `tag_uid` varchar(255) DEFAULT NULL COMMENT '标签uid',
  `click_count` int(11) DEFAULT '0' COMMENT '博客点击数',
  `collect_count` int(11) DEFAULT '0' COMMENT '博客收藏数',
  `file_uid` varchar(255) DEFAULT NULL COMMENT '标题图片uid',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `admin_uid` varchar(32) DEFAULT NULL COMMENT '管理员uid',
  `is_original` varchar(1) DEFAULT '1' COMMENT '是否原创（0:不是 1：是）',
  `author` varchar(255) DEFAULT NULL COMMENT '作者',
  `articles_part` varchar(255) DEFAULT NULL COMMENT '文章出处',
  `blog_sort_uid` varchar(32) DEFAULT NULL COMMENT '博客分类UID',
  `level` tinyint(1) DEFAULT '0' COMMENT '推荐等级(0:正常)',
  `is_publish` varchar(1) DEFAULT '1' COMMENT '是否发布：0：否，1：是',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博客爬取表';

/*Data for the table `t_blog_spider` */

/*Table structure for table `t_category_menu` */

DROP TABLE IF EXISTS `t_category_menu`;

CREATE TABLE `t_category_menu` (
  `uid` varchar(32) NOT NULL COMMENT '唯一uid',
  `name` varchar(255) NOT NULL COMMENT '菜单名称',
  `menu_level` tinyint(1) DEFAULT NULL COMMENT '菜单级别',
  `summary` varchar(200) DEFAULT NULL COMMENT '简介',
  `parent_uid` varchar(32) DEFAULT NULL COMMENT '父uid',
  `url` varchar(255) DEFAULT NULL COMMENT 'url地址',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `sort` int(11) DEFAULT '0' COMMENT '排序字段，越大越靠前',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示 1:是 0:否',
  `menu_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '菜单类型 0: 菜单   1: 按钮',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员表';

/*Data for the table `t_category_menu` */

insert  into `t_category_menu`(`uid`,`name`,`menu_level`,`summary`,`parent_uid`,`url`,`icon`,`sort`,`status`,`create_time`,`update_time`,`is_show`,`menu_type`) values ('02ea2f9ef5d44f559fb66189b05f6769','Solr',2,'Solr监控中心','147cd431cbb9007bde87444d7987b151','/monitor/solr','search',0,1,'2018-11-30 03:55:39','2018-11-30 03:55:39',1,0),('062087bce19d00312b3787b6e24c21d1','字典数据',2,'字典数据','badf0010422b432ba6ec9c83a25012ed','/system/sysDictData','example',0,1,'2020-02-21 18:06:11','2020-02-21 18:06:11',0,0),('079f0cfdb7a7017d827f5c349983eebc','Eureka',2,'Eureka监控中心','147cd431cbb9007bde87444d7987b151','/monitor/eureka','authority',0,1,'2020-01-06 05:27:30','2020-01-06 05:27:30',1,0),('0a035547bbec404eb3ee0ef43312148d','分类管理',2,'管理博客分类','49b42250abcb47ff876bad699cf34f03','/blog/blogSort','sort',10,1,'2018-11-26 03:07:14','2018-11-26 03:07:14',1,0),('147cd431cbb9007bde87444d7987b151','监控中心',1,'监控中心',NULL,'/monitor','monitor',0,1,'2020-01-06 13:25:32','2020-01-06 13:25:32',1,0),('16a75a3c38e71c1046b443b4b64dd930','删除选中',3,'博客管理 删除选中','1f01cd1d2f474743b241d74008b12333','/blog/deleteBatch',NULL,0,1,'2020-03-21 18:21:01','2020-03-21 18:21:01',1,1),('1cc493d36e17fad535f2bf70242162b0','图片管理',2,'图片管理','65e22f3d36d94bcea47478aba02895a1','/picture/picture','picture',0,1,'2020-02-21 22:27:12','2020-02-21 22:27:12',0,0),('1d9a5030142e9fd7690f554c20e3bc90','推荐管理',2,'博客推荐管理','49b42250abcb47ff876bad699cf34f03','/blog/blogRecommend','example',0,1,'2020-01-28 10:06:32','2020-01-28 10:06:32',1,0),('1f01cd1d2f474743b241d74008b12333','博客管理',2,'对博客进行增删改查','49b42250abcb47ff876bad699cf34f03','/blog/blog','edit',11,1,'2018-11-27 03:47:07','2018-11-27 03:47:07',1,0),('26bcccf0164bf84f12ab20448388d346','待办事项',2,'首页  代办事项','badf0010422b432ba6ec9c83a25012ed','/dashboard/todo','example',0,1,'2020-03-23 07:51:52','2020-03-23 07:51:52',0,0),('2a733ff390af9b44ecda4e8c4634d73k','删除',3,'菜单管理 删除','aa225cdae6464bc0acebd732192f8362','/categoryMenu/delete',NULL,0,1,'2020-03-21 18:23:19','2020-03-21 18:23:19',1,1),('2a733ff390af9b44ecda4e8c4634d75d','删除选中',3,'分类管理 删除选中','0a035547bbec404eb3ee0ef43312148d','/blogSort/deleteBatch',NULL,0,1,'2020-03-21 18:23:19','2020-03-21 18:23:19',1,1),('2a733ff390af9b44ecda4e8c4634d75f','删除选中',3,'标签管理 删除选中','6606b7e646d545e5a25c70b5e5fade9f','/tag/deleteBatch',NULL,0,1,'2020-03-21 18:23:19','2020-03-21 18:23:19',1,1),('2a733ff390af9b44ecda4e8c4634d75k','删除选中',3,'评论管理 删除选中','9beb7caa2c844b36a02789262dc76fbe','/user/deleteBatch',NULL,0,1,'2020-03-21 18:23:19','2020-03-21 18:23:19',1,1),('2a733ff390af9b44ecda4e8c4634d75t','重置密码',3,'用户管理 重置密码','fb4237a353d0418ab42c748b7c1d64c6','/comment/resetUserPassword',NULL,0,1,'2020-03-21 18:23:19','2020-03-21 18:23:19',1,1),('2a733ff390af9b44ecda4e8c4634d75u','初始化ElasticSearch索引',3,'ElasticSearch 初始化ElasticSearch索引','bfc9463e59a3ca250dcfc1c86627e034','/search/initElasticIndex',NULL,0,1,'2020-03-21 18:23:19','2020-03-21 18:23:19',1,1),('2a733ff390af9b44ecda4e8c4634d75v','初始化Solr索引',3,'Solr 初始化Solr索引','02ea2f9ef5d44f559fb66189b05f6769','/search/initSolrIndex',NULL,0,1,'2020-03-21 18:23:19','2020-03-21 18:23:19',1,1),('2a733ff390af9b44ecda4e8c4634d78k','删除',3,'友情链接 删除','9002d1ae905c4cb79c2a485333dad2f7','/link/delete',NULL,0,1,'2020-03-21 18:23:19','2020-03-21 18:23:19',1,1),('2a733ff390af9b44ecda4e8c4634d7ck','删除选中',3,'字典数据 删除选中','062087bce19d00312b3787b6e24c21d1','/sysDictData/deleteBatch',NULL,0,1,'2020-03-21 18:23:19','2020-03-21 18:23:19',1,1),('2a733ff390af9b44ecda4e8c4634d7gk','删除选中',3,'图片管理 删除选中','1cc493d36e17fad535f2bf70242162b0','/picture/delete',NULL,0,1,'2020-03-21 18:23:19','2020-03-21 18:23:19',1,1),('2a733ff390af9b44ecda4e8c4634d7lk','删除',3,'管理员管理 删除','2de247af3b0a459095e937d7ab9f5864','/admin/delete',NULL,0,1,'2020-03-21 18:23:19','2020-03-21 18:23:19',1,1),('2a733ff390af9b44ecda4e8c4634d7pk','删除',3,'图片类别管理 删除','4dea9c4f39d2480983e8c4333d35e036','/pictureSort/delete',NULL,0,1,'2020-03-21 18:23:19','2020-03-21 18:23:19',1,1),('2a733ff390af9b44ecda4e8c4634d7uk','删除',3,'角色管理 删除','5010ae46511e4c0b9f30d1c63ad3f0c1','/role/delete',NULL,0,1,'2020-03-21 18:23:19','2020-03-21 18:23:19',1,1),('2a733ff390af9b44ecda4e8c4634db8k','删除',3,'资源分类 删除','9449ce5dd5e24b21a9d15f806cb36e87','/resourceSort/deleteBatch',NULL,0,1,'2020-03-21 18:23:19','2020-03-21 18:23:19',1,1),('2a733ff390af9b44ecda4e8c4634dh8c','删除',3,'视频管理 删除','ffc6e9ca2cc243febf6d2f476b849163','/studyVideo/deleteBatch',NULL,0,1,'2020-03-21 18:23:19','2020-03-21 18:23:19',1,1),('2a733ff390af9b44ecda4e8c4634dh8k','删除',3,'字典管理 删除','c28f0b052e0b930299dd53de59cc32d7','/sysDictType/delete',NULL,0,1,'2020-03-21 18:23:19','2020-03-21 18:23:19',1,1),('2a733ff390af9b44ecda4e8c4634dm8k','修改密码',3,'关于我 修改密码','faccfe476b89483791c05019ad5b4906','/system/changePwd',NULL,0,1,'2020-03-21 18:23:19','2020-03-21 18:23:19',1,1),('2b983c5439ac07f2cf07437ba9fff6be','编辑',3,'博客管理 编辑','1f01cd1d2f474743b241d74008b12333','/blog/edit',NULL,0,1,'2020-03-21 18:15:26','2020-03-21 18:15:26',1,1),('2de247af3b0a459095e937d7ab9f5864','管理员管理',2,'管理员增删改查','d3a19221259d439b916f475e43edb13d','/authority/admin','user',0,1,'2018-11-25 19:09:21','2018-11-25 19:09:21',1,0),('2fb47d3b6dbd44279c8206740a263543','网站配置',2,'网站配置','badf0010422b432ba6ec9c83a25012ed','/system/webConfig','web',0,1,'2018-11-28 19:59:04','2018-11-28 19:59:04',1,0),('327d945daf4ddb71976c4ab3830e7c4i','新增',3,'菜单管理 新增','aa225cdae6464bc0acebd732192f8362','/categoryMenu/add',NULL,0,1,'2020-03-21 18:22:06','2020-03-21 18:22:06',1,1),('327d945daf4ddb71976c4ab3830e7c66','新增',3,'分类管理 新增','0a035547bbec404eb3ee0ef43312148d','/blogSort/add',NULL,0,1,'2020-03-21 18:22:06','2020-03-21 18:22:06',1,1),('327d945daf4ddb71976c4ab3830e7c6h','新增',3,'标签管理 新增','6606b7e646d545e5a25c70b5e5fade9f','/tag/add',NULL,0,1,'2020-03-21 18:22:06','2020-03-21 18:22:06',1,1),('327d945daf4ddb71976c4ab3830e7c6i','新增',3,'评论管理 新增','9beb7caa2c844b36a02789262dc76fbe','/user/add',NULL,0,1,'2020-03-21 18:22:06','2020-03-21 18:22:06',1,1),('327d945daf4ddb71976c4ab3830e7c7i','新增',3,'友情链接 新增','9002d1ae905c4cb79c2a485333dad2f7','/link/add',NULL,0,1,'2020-03-21 18:22:06','2020-03-21 18:22:06',1,1),('327d945daf4ddb71976c4ab3830e7cdi','新增',3,'字典数据 新增','062087bce19d00312b3787b6e24c21d1','/sysDictData/add',NULL,0,1,'2020-03-21 18:22:06','2020-03-21 18:22:06',1,1),('327d945daf4ddb71976c4ab3830e7cfi','新增',3,'图片管理 新增','1cc493d36e17fad535f2bf70242162b0','/picture/add',NULL,0,1,'2020-03-21 18:22:06','2020-03-21 18:22:06',1,1),('327d945daf4ddb71976c4ab3830e7cmi','新增',3,'管理员管理 新增','2de247af3b0a459095e937d7ab9f5864','/admin/add',NULL,0,1,'2020-03-21 18:22:06','2020-03-21 18:22:06',1,1),('327d945daf4ddb71976c4ab3830e7cqi','新增',3,'图片类别管理 新增','4dea9c4f39d2480983e8c4333d35e036','/pictureSort/add',NULL,0,1,'2020-03-21 18:22:06','2020-03-21 18:22:06',1,1),('327d945daf4ddb71976c4ab3830e7cvi','新增',3,'角色管理 新增','5010ae46511e4c0b9f30d1c63ad3f0c1','/role/add',NULL,0,1,'2020-03-21 18:22:06','2020-03-21 18:22:06',1,1),('327d945daf4ddb71976c4ab3830e7d7i','新增',3,'资源分类 新增','9449ce5dd5e24b21a9d15f806cb36e87','/resourceSort/add',NULL,0,1,'2020-03-21 18:22:06','2020-03-21 18:22:06',1,1),('327d945daf4ddb71976c4ab3830e7g7d','新增',3,'视频管理 新增','ffc6e9ca2cc243febf6d2f476b849163','/studyVideo/add',NULL,0,1,'2020-03-21 18:22:06','2020-03-21 18:22:06',1,1),('327d945daf4ddb71976c4ab3830e7g7i','新增',3,'字典管理 新增','c28f0b052e0b930299dd53de59cc32d7','/sysDictType/add',NULL,0,1,'2020-03-21 18:22:06','2020-03-21 18:22:06',1,1),('407a263eb12eff5aac31e9f62901cea0','Markdown',2,'Markdown编辑器','f4697cdf85920369179b90ff45a5982d','/test/Markdown','example',0,1,'2020-01-30 10:36:43','2020-01-30 10:36:43',1,0),('4337f63d13d84b9aba64b9d7a69fd066','异常日志',2,'异常日志','98b82be8785e41dc939b6a5517fdfa53','/log/exceptionLog','exception',0,1,'2018-11-28 20:01:36','2018-11-28 20:01:36',1,0),('49b42250abcb47ff876bad699cf34f03','博客管理',1,'用于博客的一些相关操作',NULL,'/blog','edit',20,1,'2018-11-25 05:15:07','2018-11-25 05:15:07',1,0),('4dea9c4f39d2480983e8c4333d35e036','图片类别管理',2,'图片类别管理','65e22f3d36d94bcea47478aba02895a1','/picture/pictureSort','picture',0,1,'2018-11-28 19:50:31','2018-11-28 19:50:31',1,0),('5010ae46511e4c0b9f30d1c63ad3f0c1','角色管理',2,'管理用户角色信息','d3a19221259d439b916f475e43edb13d','/authority/role','peoples',0,1,'2018-11-25 19:10:34','2018-11-25 19:10:34',1,0),('505b4769b77617a314a3ed78e4acdff7','Zipkin',2,'Zipkin链路追踪','147cd431cbb9007bde87444d7987b151','/monitor/Zipkin','example',0,1,'2020-02-06 20:22:18','2020-02-06 20:22:18',1,0),('510483ce569b4fc88299f346147b1314','资源管理',1,'资源管理','','/resource','resource',2,1,'2018-11-28 19:42:13','2018-11-28 19:42:13',1,0),('6228ff4e9ebd42c89599b322201a0345','反馈管理',2,'反馈管理','bcf4a9bc21c14b559bcb015fb7912266','/message/feedback','table',0,1,'2018-11-28 19:48:30','2018-11-28 19:48:30',1,0),('62c91c47c4646661c045727f0a8eb9d4','查询',3,'代办事项  查询','26bcccf0164bf84f12ab20448388d346','/todo/getList',NULL,0,1,'2020-03-23 07:52:42','2020-03-23 07:52:42',1,1),('65e22f3d36d94bcea47478aba02895a1','图片管理',1,'图片管理','','/picture','example',3,1,'2018-11-28 19:48:53','2018-11-28 19:48:53',1,0),('6606b7e646d545e5a25c70b5e5fade9f','标签管理',2,'对博客标签进行管理','49b42250abcb47ff876bad699cf34f03','/blog/blogTag','tag',4,1,'2018-11-26 02:57:38','2018-11-26 02:57:38',1,0),('6c8a8c50c77429fab210bd52ed8c50ba','引用量排序',3,'标签管理 引用量排序','6606b7e646d545e5a25c70b5e5fade9f','/tag/tagSortByCite',NULL,0,1,'2020-03-21 21:38:19','2020-03-21 21:38:19',1,1),('6c8a8c50c77429fab210bd52ed8c50bb','引用量排序',3,'分类管理 引用量排序','0a035547bbec404eb3ee0ef43312148d','/blogSort/blogSortByCite',NULL,0,1,'2020-03-21 21:38:19','2020-03-21 21:38:19',1,1),('72d26cf940bf9dfb6bde0a590ff40882','删除',3,'分类管理，删除分类','0a035547bbec404eb3ee0ef43312148d','/blogSort/delete',NULL,0,1,'2020-03-21 18:22:51','2020-03-21 18:22:51',1,1),('72d26cf940bf9dfb6bde0a590ff4088g','删除',3,'标签管理，删除分类','6606b7e646d545e5a25c70b5e5fade9f','/tag/delete',NULL,0,1,'2020-03-21 18:22:51','2020-03-21 18:22:51',1,1),('72d26cf940bf9dfb6bde0a590ff4088j','删除',3,'评论管理，删除','9beb7caa2c844b36a02789262dc76fbe','/user/delete',NULL,0,1,'2020-03-21 18:22:51','2020-03-21 18:22:51',1,1),('72d26cf940bf9dfb6bde0a590ff4088s','删除',3,'用户管理，删除','fb4237a353d0418ab42c748b7c1d64c6','/comment/delete',NULL,0,1,'2020-03-21 18:22:51','2020-03-21 18:22:51',1,1),('72d26cf940bf9dfb6bde0a590ff408ej','设为封面',3,'图片管理，设为封面','1cc493d36e17fad535f2bf70242162b0','/picture/setCover',NULL,0,1,'2020-03-21 18:22:51','2020-03-21 18:22:51',1,1),('72d26cf940bf9dfb6bde0a590ff408nj','重置密码',3,'管理员管理，重置密码','2de247af3b0a459095e937d7ab9f5864','/admin/restPwd',NULL,0,1,'2020-03-21 18:22:51','2020-03-21 18:22:51',1,1),('78ab104b123f4950af14d65798afb756','收藏管理',2,'管理用户收藏','49b42250abcb47ff876bad699cf34f03','/blog/collect','example',8,1,'2018-11-25 19:07:48','2018-11-25 19:07:48',1,0),('78f24799307cb63bc3759413dadf4d1a','系统配置',2,'设置七牛云和邮箱等相关配置','badf0010422b432ba6ec9c83a25012ed','/system/systemConfig','web',0,1,'2020-01-21 09:29:04','2020-01-21 09:29:04',1,0),('7ada0a7053be4ad4b31f6be64315d03a','删除',3,'博客管理 删除','1f01cd1d2f474743b241d74008b12333','/blog/delete',NULL,0,1,'2020-03-21 15:16:54','2020-03-21 15:16:54',1,1),('7be9dee2f91165d8562aaa80c7e5b936','编辑',3,'代办事项','26bcccf0164bf84f12ab20448388d346','/todo/edit',NULL,0,1,'2020-03-23 07:53:38','2020-03-23 07:53:38',1,1),('80ee135af885f02d52ecb67d5a05b173','点击量排序',3,'分类管理 点击量排序','0a035547bbec404eb3ee0ef43312148d','/blogSort/blogSortByClickCount',NULL,0,1,'2020-03-21 21:37:42','2020-03-21 21:37:42',1,1),('80ee135af885f02d52ecb67d5a05b17b','点击量排序',3,'标签管理 点击量排序','6606b7e646d545e5a25c70b5e5fade9f','/tag/tagSortByClickCount',NULL,0,1,'2020-03-21 21:37:42','2020-03-21 21:37:42',1,1),('879cfcd4dfd3e5bc1bb6ea2c0f1f82c0','按钮管理',2,'按钮管理','d3a19221259d439b916f475e43edb13d','/authority/button','authority',0,1,'2020-03-21 17:39:12','2020-03-21 17:39:12',1,0),('9002d1ae905c4cb79c2a485333dad2f7','友情链接',2,'友情链接','badf0010422b432ba6ec9c83a25012ed','/system/blogLink','blogLink',0,1,'2018-11-29 03:56:35','2018-11-29 03:56:35',1,0),('93f7fd9a6e81735c47649e6b36042b5d','Druid',2,'Druid监控中心','147cd431cbb9007bde87444d7987b151','/monitor/druid','sql',0,1,'2020-01-06 13:26:51','2020-01-06 13:26:51',1,0),('9449ce5dd5e24b21a9d15f806cb36e87','资源分类',2,'资源分类','510483ce569b4fc88299f346147b1314','/resource/resourceSort','sort',0,1,'2018-11-29 03:43:27','2018-11-29 03:43:27',1,0),('98b82be8785e41dc939b6a5517fdfa53','操作日志',1,'操作日志','','/log','log',9,1,'2018-11-28 20:00:19','2018-11-28 20:00:19',1,0),('9beb7caa2c844b36a02789262dc76fbe','评论管理',2,'评论管理','bcf4a9bc21c14b559bcb015fb7912266','/message/comment','table',1,1,'2018-11-28 19:47:23','2018-11-28 19:47:23',1,0),('9c91231f1682aabd765225a7e503bb43','删除',3,'反馈管理 删除','6228ff4e9ebd42c89599b322201a0345','/feedback/deleteBatch',NULL,0,1,'2020-03-22 11:17:27','2020-03-22 11:17:27',1,1),('9e73a9b1de18e4f1cb19eca5e8cd321d','批量编辑',3,'代办事项 批量编辑','26bcccf0164bf84f12ab20448388d346','/todo/toggleAll',NULL,0,1,'2020-03-23 07:54:37','2020-03-23 07:54:37',1,1),('9e91b4f993c946cba4bf720b2c1b2e90','用户日志',2,'用户Web端访问情况','98b82be8785e41dc939b6a5517fdfa53','/log/webVisit','user1',0,1,'2019-05-17 10:16:47','2019-05-17 10:16:47',1,0),('a5902692a3ed4fd794895bf634f97b8e','操作日志',2,'操作日志','98b82be8785e41dc939b6a5517fdfa53','/log/log','log',0,1,'2018-11-28 20:01:02','2018-11-28 20:01:02',1,0),('a9396f1a3fbdec3d4cb614f388a22bea','SpringBoot',2,'SpringBootAdmin监控中心','147cd431cbb9007bde87444d7987b151','/monitor/springBootAdmin','system',0,1,'2020-01-05 21:30:16','2020-01-05 21:30:16',1,0),('aa225cdae6464bc0acebd732192f8362','菜单管理',2,'对页面菜单进行管理','d3a19221259d439b916f475e43edb13d','/authority/categoryMenu','example',0,1,'2018-11-25 11:12:01','2018-11-25 11:12:01',1,0),('ab1289c29b336dccda87a9fa8b711aa2','删除',3,'代办事项 删除','26bcccf0164bf84f12ab20448388d346','/todo/delete',NULL,0,1,'2020-03-23 07:54:01','2020-03-23 07:54:01',1,1),('acbb5d09da25e6c9e019cc361b35d159','Search接口',2,'Search接口','baace3dc03d34c54b81761dce8243814','/restapi/searchRestApi','example',0,1,'2020-01-19 19:56:23','2020-01-19 19:56:23',1,0),('aef85c40b54320d7c5a9d78697e12910','置顶',3,'分类管理 置顶','0a035547bbec404eb3ee0ef43312148d','/blogSort/stick',NULL,0,1,'2020-03-21 21:37:07','2020-03-21 21:37:07',1,1),('aef85c40b54320d7c5a9d78697e1291c','置顶',3,'标签管理 置顶','6606b7e646d545e5a25c70b5e5fade9f','/tag/stick',NULL,0,1,'2020-03-21 21:37:07','2020-03-21 21:37:07',1,1),('aef85c40b54320d7c5a9d78697e1295n','置顶',3,'菜单管理 置顶','aa225cdae6464bc0acebd732192f8362','/categoryMenu/stick',NULL,0,1,'2020-03-21 21:37:07','2020-03-21 21:37:07',1,1),('aef85c40b54320d7c5a9d78697e1296n','置顶',3,'友情链接 置顶','9002d1ae905c4cb79c2a485333dad2f7','/link/stick',NULL,0,1,'2020-03-21 21:37:07','2020-03-21 21:37:07',1,1),('aef85c40b54320d7c5a9d78697e129rn','置顶',3,'图片类别管理 置顶','4dea9c4f39d2480983e8c4333d35e036','/pictureSort/stick',NULL,0,1,'2020-03-21 21:37:07','2020-03-21 21:37:07',1,1),('aef85c40b54320d7c5a9d78697e12e6n','置顶',3,'资源分类 置顶','9449ce5dd5e24b21a9d15f806cb36e87','/resourceSort/stick',NULL,0,1,'2020-03-21 21:37:07','2020-03-21 21:37:07',1,1),('b511cae571834971a392ae4779270034','游客管理',2,'游客管理','c519725da92b42f3acf0cc9fad58c664','/user/visitor','table',2,1,'2018-11-28 19:54:28','2018-11-28 19:54:28',1,0),('baace3dc03d34c54b81761dce8243814','接口管理',1,'接口管理','','/restapi','restapi',4,1,'2018-11-28 20:01:57','2018-11-28 20:01:57',1,0),('badf0010422b432ba6ec9c83a25012ed','系统管理',1,'系统管理','','/system','system',19,1,'2018-11-28 19:54:47','2018-11-28 19:54:47',1,0),('bcf4a9bc21c14b559bcb015fb7912266','消息管理',1,'消息管理','','/message','message1',6,1,'2018-11-28 19:45:29','2018-11-28 19:45:29',1,0),('bfc9463e59a3ca250dcfc1c86627e034','ElasticSearch',2,'ElasticSearch监控页面','147cd431cbb9007bde87444d7987b151','/monitor/elasticSearch','example',0,1,'2020-01-15 22:58:00','2020-01-15 22:58:00',1,0),('c28f0b052e0b930299dd53de59cc32d7','字典管理',2,'字典管理','badf0010422b432ba6ec9c83a25012ed','/system/sysDictType','web',0,1,'2020-02-16 18:11:10','2020-02-16 18:11:10',1,0),('c519725da92b42f3acf0cc9fad58c664','用户管理',1,'用户管理','','/user','user1',15,1,'2018-11-28 19:51:47','2018-11-28 19:51:47',1,0),('cbd7ba11c1b38c66b569405ed9185f35','RabbitMQ',2,'RabbitMQ监控中心','147cd431cbb9007bde87444d7987b151','/monitor/rabbitMQ','rabbitMq',0,1,'2020-01-05 21:29:39','2020-01-05 21:29:39',1,0),('d3a19221259d439b916f475e43edb13d','权限管理',1,'对管理员权限分配进行管理','','/authority','authority',18,1,'2018-11-25 19:08:42','2018-11-25 19:08:42',1,0),('d4d92c53d3614d00865e9219b8292a90','Picture接口',2,'Picture接口','baace3dc03d34c54b81761dce8243814','/restapi/pictureRestApi','table',0,1,'2018-11-28 20:04:33','2018-11-28 20:04:33',1,0),('e4a482c089d04a30b6ecbaadb81b70f8','Admin接口',2,'Admin接口','baace3dc03d34c54b81761dce8243814','/restapi/adminRestApi','table',0,1,'2018-11-28 20:03:32','2018-11-28 20:03:32',1,0),('e5218b0b1cf016ae21eced4e47b628ac','新增',3,'博客管理 新增','1f01cd1d2f474743b241d74008b12333','/blog/add',NULL,1,1,'2020-03-21 10:55:34','2020-03-21 10:55:34',1,1),('e91945e49c5fdb207f996bc9668cd965','增加',3,'代办事项 增加','26bcccf0164bf84f12ab20448388d346','/todo/add',NULL,0,1,'2020-03-23 07:53:07','2020-03-23 07:53:07',1,1),('f3a559635f9d46ee3356d072f5896fcb','图片裁剪',2,'用于图片裁剪','f4697cdf85920369179b90ff45a5982d','/test/CropperPicture','example',0,1,'2020-01-30 10:38:09','2020-01-30 10:38:09',1,0),('f4697cdf85920369179b90ff45a5982d','测试页面',1,'用于一些功能的测试',NULL,'/test','example',17,1,'2020-01-30 10:36:00','2020-01-30 10:36:00',1,0),('f87d2f9b4539abbade38583420dc8b2l','编辑',3,'菜单管理 编辑','aa225cdae6464bc0acebd732192f8362','/categoryMenu/edit',NULL,0,1,'2020-03-21 21:35:57','2020-03-21 21:35:57',1,1),('f87d2f9b4539abbade38583420dc8b89','编辑',3,'分类管理 编辑','0a035547bbec404eb3ee0ef43312148d','/blogSort/edit',NULL,0,1,'2020-03-21 21:35:57','2020-03-21 21:35:57',1,1),('f87d2f9b4539abbade38583420dc8b8e','编辑',3,'标签管理 编辑','6606b7e646d545e5a25c70b5e5fade9f','/tag/edit',NULL,0,1,'2020-03-21 21:35:57','2020-03-21 21:35:57',1,1),('f87d2f9b4539abbade38583420dc8b8l','编辑',3,'评论管理 编辑','9beb7caa2c844b36a02789262dc76fbe','/comment/edit',NULL,0,1,'2020-03-21 21:35:57','2020-03-21 21:35:57',1,1),('f87d2f9b4539abbade38583420dc8b8r','编辑',3,'用户管理 编辑','fb4237a353d0418ab42c748b7c1d64c6','/user/edit',NULL,0,1,'2020-03-21 21:35:57','2020-03-21 21:35:57',1,1),('f87d2f9b4539abbade38583420dc8b9l','编辑',3,'友情链接 编辑','9002d1ae905c4cb79c2a485333dad2f7','/link/edit',NULL,0,1,'2020-03-21 21:35:57','2020-03-21 21:35:57',1,1),('f87d2f9b4539abbade38583420dc8bbl','编辑',3,'字典数据 编辑','062087bce19d00312b3787b6e24c21d1','/sysDictData/edit',NULL,0,1,'2020-03-21 21:35:57','2020-03-21 21:35:57',1,1),('f87d2f9b4539abbade38583420dc8bhl','编辑',3,'图片管理 编辑','1cc493d36e17fad535f2bf70242162b0','/picture/edit',NULL,0,1,'2020-03-21 21:35:57','2020-03-21 21:35:57',1,1),('f87d2f9b4539abbade38583420dc8bkl','编辑',3,'管理员管理 编辑','2de247af3b0a459095e937d7ab9f5864','/admin/edit',NULL,0,1,'2020-03-21 21:35:57','2020-03-21 21:35:57',1,1),('f87d2f9b4539abbade38583420dc8bol','编辑',3,'图片类别管理 编辑','4dea9c4f39d2480983e8c4333d35e036','/pictureSort/edit',NULL,0,1,'2020-03-21 21:35:57','2020-03-21 21:35:57',1,1),('f87d2f9b4539abbade38583420dc8bpl','编辑',3,'网站配置 编辑','2fb47d3b6dbd44279c8206740a263543','/webConfig/editWebConfig',NULL,0,1,'2020-03-21 21:35:57','2020-03-21 21:35:57',1,1),('f87d2f9b4539abbade38583420dc8btl','编辑',3,'角色管理 编辑','5010ae46511e4c0b9f30d1c63ad3f0c1','/role/edit',NULL,0,1,'2020-03-21 21:35:57','2020-03-21 21:35:57',1,1),('f87d2f9b4539abbade38583420dc8bxl','编辑',3,'反馈管理 编辑','6228ff4e9ebd42c89599b322201a0345','/feedback/edit',NULL,0,1,'2020-03-21 21:35:57','2020-03-21 21:35:57',1,1),('f87d2f9b4539abbade38583420dc8byl','编辑',3,'系统配置 编辑','78f24799307cb63bc3759413dadf4d1a','/systemConfig/editSystemConfig',NULL,0,1,'2020-03-21 21:35:57','2020-03-21 21:35:57',1,1),('f87d2f9b4539abbade38583420dc8c9l','编辑',3,'资源分类 编辑','9449ce5dd5e24b21a9d15f806cb36e87','/resourceSort/edit',NULL,0,1,'2020-03-21 21:35:57','2020-03-21 21:35:57',1,1),('f87d2f9b4539abbade38583420dc8i9b','编辑',3,'视频管理 编辑','ffc6e9ca2cc243febf6d2f476b849163','/studyVideo/edit',NULL,0,1,'2020-03-21 21:35:57','2020-03-21 21:35:57',1,1),('f87d2f9b4539abbade38583420dc8i9l','编辑',3,'字典管理 编辑','c28f0b052e0b930299dd53de59cc32d7','/sysDictType/edit',NULL,0,1,'2020-03-21 21:35:57','2020-03-21 21:35:57',1,1),('f87d2f9b4539abbade38583420dc8l9l','编辑',3,'关于我 编辑','faccfe476b89483791c05019ad5b4906','/system/editMe',NULL,0,1,'2020-03-21 21:35:57','2020-03-21 21:35:57',1,1),('f9276eb8e3274c8aa05577c86e4dc8c1','Web接口',2,'Web接口','baace3dc03d34c54b81761dce8243814','/restapi/webRestApi','table',0,1,'2018-11-28 20:04:52','2018-11-28 20:04:52',1,0),('faccfe476b89483791c05019ad5b4906','关于我',2,'关于我','badf0010422b432ba6ec9c83a25012ed','/system/aboutMe','aboutMe',0,1,'2018-11-29 03:55:17','2018-11-29 03:55:17',1,0),('fb4237a353d0418ab42c748b7c1d64c6','用户管理',2,'用户管理','c519725da92b42f3acf0cc9fad58c664','/user/user','table',3,1,'2018-11-28 19:52:20','2018-11-28 19:52:20',1,0),('fbc30e4ae5bb33b39baca7bf6bd8ca0m','查询',3,'资源分类 查询','9449ce5dd5e24b21a9d15f806cb36e87','/resourceSort/getList',NULL,0,1,'2020-03-21 21:36:28','2020-03-21 21:36:28',1,1),('fbc30e4ae5bb33b39baca7bf6bd8ce0m','查询',3,'友情链接 查询','9002d1ae905c4cb79c2a485333dad2f7','/link/getList',NULL,0,1,'2020-03-21 21:36:28','2020-03-21 21:36:28',1,1),('fbc30e4ae5bb33b39baca7bf6bd8ce1m','查询',3,'菜单管理 查询','aa225cdae6464bc0acebd732192f8362','/categoryMenu/getList',NULL,0,1,'2020-03-21 21:36:28','2020-03-21 21:36:28',1,1),('fbc30e4ae5bb33b39baca7bf6bd8ce99','查询',3,'分类管理 查询','0a035547bbec404eb3ee0ef43312148d','/blogSort/getList',NULL,0,1,'2020-03-21 21:36:28','2020-03-21 21:36:28',1,1),('fbc30e4ae5bb33b39baca7bf6bd8ce9d','查询',3,'标签管理 查询','6606b7e646d545e5a25c70b5e5fade9f','/tag/getList',NULL,0,1,'2020-03-21 21:36:28','2020-03-21 21:36:28',1,1),('fbc30e4ae5bb33b39baca7bf6bd8ce9m','查询',3,'评论管理 查询','9beb7caa2c844b36a02789262dc76fbe','/comment/getList',NULL,1,1,'2020-03-21 21:36:28','2020-03-21 21:36:28',1,1),('fbc30e4ae5bb33b39baca7bf6bd8ce9q','查询',3,'用户管理 查询','fb4237a353d0418ab42c748b7c1d64c6','/user/getList',NULL,0,1,'2020-03-21 21:36:28','2020-03-21 21:36:28',1,1),('fbc30e4ae5bb33b39baca7bf6bd8ceam','查询',3,'字典数据 查询','062087bce19d00312b3787b6e24c21d1','/sysDictData/getList',NULL,0,1,'2020-03-21 21:36:28','2020-03-21 21:36:28',1,1),('fbc30e4ae5bb33b39baca7bf6bd8ceim','查询',3,'图片管理 查询','1cc493d36e17fad535f2bf70242162b0','/picture/getList',NULL,0,1,'2020-03-21 21:36:28','2020-03-21 21:36:28',1,1),('fbc30e4ae5bb33b39baca7bf6bd8cejm','查询',3,'管理员管理 查询','2de247af3b0a459095e937d7ab9f5864','/admin/getList',NULL,0,1,'2020-03-21 21:36:28','2020-03-21 21:36:28',1,1),('fbc30e4ae5bb33b39baca7bf6bd8cekm','查询',3,'异常日志 查询','4337f63d13d84b9aba64b9d7a69fd066','/log/getExceptionList',NULL,0,1,'2020-03-21 21:36:28','2020-03-21 21:36:28',1,1),('fbc30e4ae5bb33b39baca7bf6bd8celm','查询',3,'操作日志 查询','a5902692a3ed4fd794895bf634f97b8e','/log/getLogList',NULL,0,1,'2020-03-21 21:36:28','2020-03-21 21:36:28',1,1),('fbc30e4ae5bb33b39baca7bf6bd8cemm','查询',3,'用户日志 查询','9e91b4f993c946cba4bf720b2c1b2e90','/webVisit/getList',NULL,0,1,'2020-03-21 21:36:28','2020-03-21 21:36:28',1,1),('fbc30e4ae5bb33b39baca7bf6bd8cenm','查询',3,'图片类别管理 查询','4dea9c4f39d2480983e8c4333d35e036','/pictureSort/getList',NULL,0,1,'2020-03-21 21:36:28','2020-03-21 21:36:28',1,1),('fbc30e4ae5bb33b39baca7bf6bd8ceom','查询',3,'网站配置 查询','2fb47d3b6dbd44279c8206740a263543','/webConfig/getWebConfig',NULL,0,1,'2020-03-21 21:36:28','2020-03-21 21:36:28',1,1),('fbc30e4ae5bb33b39baca7bf6bd8cesm','查询',3,'角色管理 查询','5010ae46511e4c0b9f30d1c63ad3f0c1','/role/getList',NULL,0,1,'2020-03-21 21:36:28','2020-03-21 21:36:28',1,1),('fbc30e4ae5bb33b39baca7bf6bd8cewm','查询',3,'反馈管理 查询','6228ff4e9ebd42c89599b322201a0345','/feedback/getList',NULL,0,1,'2020-03-21 21:36:28','2020-03-21 21:36:28',1,1),('fbc30e4ae5bb33b39baca7bf6bd8cezm','查询',3,'系统配置 查询','78f24799307cb63bc3759413dadf4d1a','/systemConfig/getSystemConfig',NULL,0,1,'2020-03-21 21:36:28','2020-03-21 21:36:28',1,1),('fbc30e4ae5bb33b39baca7bf6bd8cj0a','查询',3,'视频管理 查询','ffc6e9ca2cc243febf6d2f476b849163','/studyVideo/getList',NULL,0,1,'2020-03-21 21:36:28','2020-03-21 21:36:28',1,1),('fbc30e4ae5bb33b39baca7bf6bd8cj0m','查询',3,'字典管理 查询','c28f0b052e0b930299dd53de59cc32d7','/sysDictType/getList',NULL,0,1,'2020-03-21 21:36:28','2020-03-21 21:36:28',1,1),('fbc30e4ae5bb33b39baca7bf6bd8ck0m','查询',3,'关于我 查询','faccfe476b89483791c05019ad5b4906','/system/getMe',NULL,0,1,'2020-03-21 21:36:28','2020-03-21 21:36:28',1,1),('fe45ea293f75dc88b96cab96c218512a','查询',3,'博客管理 查询','1f01cd1d2f474743b241d74008b12333','/blog/getList',NULL,2,1,'2020-03-21 18:17:36','2020-03-21 18:17:36',1,1),('ffc6e9ca2cc243febf6d2f476b849163','视频管理',2,'视频管理','510483ce569b4fc88299f346147b1314','/resource/studyVideo','table',0,1,'2018-11-28 19:43:50','2018-11-28 19:43:50',1,0);

/*Table structure for table `t_collect` */

DROP TABLE IF EXISTS `t_collect`;

CREATE TABLE `t_collect` (
  `uid` varchar(32) NOT NULL COMMENT '唯一uid',
  `user_uid` varchar(32) NOT NULL COMMENT '用户的uid',
  `blog_uid` varchar(32) NOT NULL COMMENT '博客的uid',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `t_collect` */

/*Table structure for table `t_comment` */

DROP TABLE IF EXISTS `t_comment`;

CREATE TABLE `t_comment` (
  `uid` varchar(32) NOT NULL COMMENT '唯一uid',
  `user_uid` varchar(32) DEFAULT NULL COMMENT '用户uid',
  `to_uid` varchar(32) DEFAULT NULL COMMENT '回复某条评论的uid',
  `to_user_uid` varchar(32) DEFAULT NULL COMMENT '回复某个人的uid',
  `content` varchar(225) DEFAULT NULL COMMENT '评论内容',
  `blog_uid` varchar(32) DEFAULT NULL COMMENT '博客uid',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `source` varchar(255) NOT NULL COMMENT '评论来源： MESSAGE_BOARD，ABOUT，BLOG_INFO 等',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '评论类型 1:点赞 0:评论',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';

/*Data for the table `t_comment` */

insert  into `t_comment`(`uid`,`user_uid`,`to_uid`,`to_user_uid`,`content`,`blog_uid`,`status`,`create_time`,`update_time`,`source`,`type`) values ('027c82b4ee4ef1ab0350796169955503','25675d78f11749d4edaf15e36d046e3b',NULL,NULL,NULL,'231e684d95295d1a06a78abd46f4b75a',1,'2020-03-14 09:34:42','2020-03-14 09:34:42','BLOG_INFO',1),('05274215545c96f5f130a7e0b44e7aa4','25675d78f11749d4edaf15e36d046e3b',NULL,NULL,'1111',NULL,0,'2020-03-10 15:24:03','2020-03-10 15:24:03','MESSAGE_BOARD',0),('0f2c66101585bed51e639750ed10635f','25675d78f11749d4edaf15e36d046e3b',NULL,NULL,'测试','231e684d95295d1a06a78abd46f4b75a',1,'2020-03-18 13:46:56','2020-03-18 13:46:56','BLOG_INFO',0),('12ad9cedc9973c4440f5fe145a9674a3','25675d78f11749d4edaf15e36d046e3b','ed6308b37a3e7a80a2981cb7ee9510ab','25675d78f11749d4edaf15e36d046e3b','测试评论3',NULL,1,'2020-03-19 10:52:12','2020-03-19 10:52:12','MESSAGE_BOARD',0),('1ac0558cdd609c9c41ecdc8b1a013067','25675d78f11749d4edaf15e36d046e3b','7ef99354a4ef3d68db342c7a953861a4','25675d78f11749d4edaf15e36d046e3b','测试评论拉拉',NULL,1,'2020-03-19 10:33:25','2020-03-19 10:33:25','MESSAGE_BOARD',0),('1b8fbb6071da7ac2010383dfd43e6fad','25675d78f11749d4edaf15e36d046e3b','7ef99354a4ef3d68db342c7a953861a4','25675d78f11749d4edaf15e36d046e3b','哈哈，我是最新评论',NULL,1,'2020-03-13 21:55:48','2020-03-13 21:55:48','MESSAGE_BOARD',0),('2142b4da75072d55be7d5de0670d933a','25675d78f11749d4edaf15e36d046e3b',NULL,NULL,'123',NULL,0,'2020-03-10 14:59:37','2020-03-10 14:59:37','MESSAGE_BOARD',0),('32b6784bb62fc6f0d4f64d41a9f27147','25675d78f11749d4edaf15e36d046e3b',NULL,NULL,'最新测试','231e684d95295d1a06a78abd46f4b75a',0,'2020-03-12 12:29:39','2020-03-12 12:29:39','BLOG_INFO',0),('37ff9212829c095f56a3151d1f37fc85','25675d78f11749d4edaf15e36d046e3b','894e5a90246e4f830fbaae0a75cc51e5','25675d78f11749d4edaf15e36d046e3b','测试评论3',NULL,1,'2020-03-19 10:51:08','2020-03-19 10:51:08','ABOUT',0),('3dcca391f5a213ff3403d3f33bb98f55','25675d78f11749d4edaf15e36d046e3b','7ef99354a4ef3d68db342c7a953861a4','25675d78f11749d4edaf15e36d046e3b','你好',NULL,1,'2020-03-13 22:03:49','2020-03-13 22:03:49','MESSAGE_BOARD',0),('4b3beabfec1b87d47d3cc90251896665','25675d78f11749d4edaf15e36d046e3b','7ef99354a4ef3d68db342c7a953861a4','25675d78f11749d4edaf15e36d046e3b','哈哈，我是最新评论',NULL,0,'2020-03-13 21:52:14','2020-03-13 21:52:14','MESSAGE_BOARD',0),('4fcd24e8c4208bfb4b1d719a43f983ca','25675d78f11749d4edaf15e36d046e3b',NULL,NULL,'测试评论\n',NULL,1,'2020-03-19 10:47:45','2020-03-19 10:47:45','ABOUT',0),('5d18d09eddb0ceecf4da9684c151e6c9','25675d78f11749d4edaf15e36d046e3b','9d306c8dfec1f26fc2e53e11809a774d','25675d78f11749d4edaf15e36d046e3b','测试评论哈哈',NULL,1,'2020-03-19 10:28:36','2020-03-19 10:28:36','MESSAGE_BOARD',0),('612bbebb50497ee6c00860da7dcc33ba','25675d78f11749d4edaf15e36d046e3b','dee935336bc8a35fc8814bb2ba498960','25675d78f11749d4edaf15e36d046e3b','雷猴呀',NULL,0,'2020-03-12 11:26:57','2020-03-12 11:26:57','MESSAGE_BOARD',0),('62f1c633abb9c00271f3d2b5dc663400','25675d78f11749d4edaf15e36d046e3b',NULL,NULL,'111',NULL,0,'2020-03-10 15:24:00','2020-03-10 15:24:00','MESSAGE_BOARD',0),('6747f200eefa454d73573ccfc933bdb6','25675d78f11749d4edaf15e36d046e3b',NULL,NULL,'测试',NULL,1,'2020-03-18 13:46:48','2020-03-18 13:46:48','MESSAGE_BOARD',0),('68c2657ee1f5a709758ed0df07f3e23d','25675d78f11749d4edaf15e36d046e3b','7ef99354a4ef3d68db342c7a953861a4','25675d78f11749d4edaf15e36d046e3b','1234',NULL,1,'2020-03-13 22:06:11','2020-03-13 22:06:11','MESSAGE_BOARD',0),('6b68c89a4756ea2b2890d233c3a62d8b','25675d78f11749d4edaf15e36d046e3b',NULL,NULL,'你好呀',NULL,0,'2020-03-11 09:58:21','2020-03-11 09:58:21','MESSAGE_BOARD',0),('702b70aa7e4f839b216499838eaf68f9','25675d78f11749d4edaf15e36d046e3b','5d18d09eddb0ceecf4da9684c151e6c9','25675d78f11749d4edaf15e36d046e3b','不错，支持~',NULL,1,'2020-03-19 10:30:47','2020-03-19 10:30:47','MESSAGE_BOARD',0),('77884cc8a459618e18ad4832e57e0e1a','25675d78f11749d4edaf15e36d046e3b',NULL,NULL,'男男女女女女',NULL,0,'2020-03-10 10:15:14','2020-03-10 10:15:14','MESSAGE_BOARD',0),('79a4b62c43e659c146e63158219cc712','25675d78f11749d4edaf15e36d046e3b',NULL,NULL,'男男女女女女',NULL,0,'2020-03-10 10:14:56','2020-03-10 10:14:56','MESSAGE_BOARD',0),('7ef99354a4ef3d68db342c7a953861a4','25675d78f11749d4edaf15e36d046e3b',NULL,NULL,'你好',NULL,1,'2020-03-13 10:23:34','2020-03-13 10:23:34','MESSAGE_BOARD',0),('848b8e4dccdba35ab470297e6c421b21','a16b223b559e25c8af7187285fec5a63',NULL,NULL,'你好呀',NULL,0,'2020-03-07 21:52:50','2020-03-07 21:52:50','MESSAGE_BOARD',0),('894e5a90246e4f830fbaae0a75cc51e5','25675d78f11749d4edaf15e36d046e3b','4fcd24e8c4208bfb4b1d719a43f983ca','25675d78f11749d4edaf15e36d046e3b','测试评论2',NULL,1,'2020-03-19 10:47:50','2020-03-19 10:47:50','ABOUT',0),('8c863f9da8c539fe93b297407443e91a','25675d78f11749d4edaf15e36d046e3b',NULL,NULL,'测试评论','231e684d95295d1a06a78abd46f4b75a',1,'2020-03-19 10:52:00','2020-03-19 10:52:00','BLOG_INFO',0),('90be4f845ee47647b32149c5176b67d9','25675d78f11749d4edaf15e36d046e3b','8c863f9da8c539fe93b297407443e91a','25675d78f11749d4edaf15e36d046e3b','测试评论2','231e684d95295d1a06a78abd46f4b75a',1,'2020-03-19 10:52:05','2020-03-19 10:52:05','BLOG_INFO',0),('9a15bf032d1aa4dc9a906fe6adf3c4a6','25675d78f11749d4edaf15e36d046e3b','6747f200eefa454d73573ccfc933bdb6','25675d78f11749d4edaf15e36d046e3b','测试评论',NULL,1,'2020-03-19 09:36:40','2020-03-19 09:36:40','MESSAGE_BOARD',0),('9d306c8dfec1f26fc2e53e11809a774d','25675d78f11749d4edaf15e36d046e3b','aff27168226cd24f6ad64525f32bd223','25675d78f11749d4edaf15e36d046e3b','测试评论3',NULL,1,'2020-03-19 10:17:15','2020-03-19 10:17:15','MESSAGE_BOARD',0),('a087b6b51c01811db70beb177555d497','25675d78f11749d4edaf15e36d046e3b',NULL,NULL,'测试评论',NULL,0,'2020-03-13 10:17:59','2020-03-13 10:17:59','MESSAGE_BOARD',0),('a6c3093b9575e379810be1e12fbe4ab1','25675d78f11749d4edaf15e36d046e3b','f83bde3a361c2caa0e2c3fa02073a284','25675d78f11749d4edaf15e36d046e3b','回复自己','231e684d95295d1a06a78abd46f4b75a',0,'2020-03-12 12:25:47','2020-03-12 12:25:47','BLOG_INFO',0),('a75040c714770a48a56c61b6831654c5','25675d78f11749d4edaf15e36d046e3b',NULL,NULL,NULL,'b51286ab6d40d963e10bcd2544758da7',1,'2020-03-14 10:45:43','2020-03-14 10:45:43','BLOG_INFO',1),('a79c7dd6bab208047b25ec2f0b583f9f','25675d78f11749d4edaf15e36d046e3b','1b8fbb6071da7ac2010383dfd43e6fad','25675d78f11749d4edaf15e36d046e3b','你好呀啊',NULL,1,'2020-03-13 22:00:33','2020-03-13 22:00:33','MESSAGE_BOARD',0),('aed4f2c281fbf41fca06826a79457e09','25675d78f11749d4edaf15e36d046e3b',NULL,NULL,'我在博客中评论了','231e684d95295d1a06a78abd46f4b75a',0,'2020-03-12 11:47:27','2020-03-12 11:47:27','BLOG_INFO',0),('aff27168226cd24f6ad64525f32bd223','25675d78f11749d4edaf15e36d046e3b','9a15bf032d1aa4dc9a906fe6adf3c4a6','25675d78f11749d4edaf15e36d046e3b','测试评论2',NULL,1,'2020-03-19 09:38:19','2020-03-19 09:38:19','MESSAGE_BOARD',0),('d823411c7c94141ad10e46fc3971597d','25675d78f11749d4edaf15e36d046e3b',NULL,NULL,'热武器热无',NULL,0,'2020-03-10 10:14:41','2020-03-10 10:14:41','MESSAGE_BOARD',0),('dee935336bc8a35fc8814bb2ba498960','25675d78f11749d4edaf15e36d046e3b','6b68c89a4756ea2b2890d233c3a62d8b','25675d78f11749d4edaf15e36d046e3b','BBK',NULL,0,'2020-03-11 10:57:05','2020-03-11 10:57:05','MESSAGE_BOARD',0),('e9f5079152f923c281cb4ba33fafc778','25675d78f11749d4edaf15e36d046e3b','7ef99354a4ef3d68db342c7a953861a4','25675d78f11749d4edaf15e36d046e3b','12345',NULL,1,'2020-03-13 22:08:49','2020-03-13 22:08:49','MESSAGE_BOARD',0),('ea001e8f52837dcb2f3baa01130b335d','25675d78f11749d4edaf15e36d046e3b','aed4f2c281fbf41fca06826a79457e09','25675d78f11749d4edaf15e36d046e3b','回复自己','231e684d95295d1a06a78abd46f4b75a',0,'2020-03-12 12:26:18','2020-03-12 12:26:18','BLOG_INFO',0),('eaf38f3455e661cd23734c4c779b2180','25675d78f11749d4edaf15e36d046e3b','a6c3093b9575e379810be1e12fbe4ab1','25675d78f11749d4edaf15e36d046e3b','回复自己','231e684d95295d1a06a78abd46f4b75a',0,'2020-03-12 12:25:56','2020-03-12 12:25:56','BLOG_INFO',0),('ed6308b37a3e7a80a2981cb7ee9510ab','25675d78f11749d4edaf15e36d046e3b','6747f200eefa454d73573ccfc933bdb6','25675d78f11749d4edaf15e36d046e3b','测试',NULL,1,'2020-03-19 10:35:30','2020-03-19 10:35:30','MESSAGE_BOARD',0),('ef87d81ac5cac5ba48ffa064f6974ca1','25675d78f11749d4edaf15e36d046e3b','aed4f2c281fbf41fca06826a79457e09','25675d78f11749d4edaf15e36d046e3b','回复自己','231e684d95295d1a06a78abd46f4b75a',0,'2020-03-12 12:26:15','2020-03-12 12:26:15','BLOG_INFO',0),('f83bde3a361c2caa0e2c3fa02073a284','25675d78f11749d4edaf15e36d046e3b',NULL,NULL,'测试评论拉拉','231e684d95295d1a06a78abd46f4b75a',0,'2020-03-12 12:07:33','2020-03-12 12:07:33','BLOG_INFO',0),('fe0976ca8641cb77660ce5d295622541','25675d78f11749d4edaf15e36d046e3b','a6c3093b9575e379810be1e12fbe4ab1','25675d78f11749d4edaf15e36d046e3b','回复自己','231e684d95295d1a06a78abd46f4b75a',0,'2020-03-12 12:25:51','2020-03-12 12:25:51','BLOG_INFO',0);

/*Table structure for table `t_comment_report` */

DROP TABLE IF EXISTS `t_comment_report`;

CREATE TABLE `t_comment_report` (
  `uid` varchar(32) NOT NULL COMMENT '唯一uid',
  `user_uid` varchar(32) DEFAULT NULL COMMENT '举报人uid',
  `report_comment_uid` varchar(32) DEFAULT NULL COMMENT '被举报的评论Uid',
  `report_user_uid` varchar(32) DEFAULT NULL COMMENT '被举报的用户uid',
  `content` varchar(1000) DEFAULT NULL COMMENT '举报的原因',
  `progress` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '进展状态: 0 未查看   1: 已查看  2：已处理',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论举报表';

/*Data for the table `t_comment_report` */

/*Table structure for table `t_exception_log` */

DROP TABLE IF EXISTS `t_exception_log`;

CREATE TABLE `t_exception_log` (
  `uid` varchar(32) NOT NULL COMMENT '唯一uid',
  `exception_json` mediumtext COMMENT '异常对象json格式',
  `exception_message` mediumtext COMMENT '异常信息',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `ip` varchar(20) DEFAULT NULL COMMENT 'ip地址',
  `ip_source` varchar(100) DEFAULT NULL COMMENT 'ip来源',
  `method` varchar(255) DEFAULT NULL COMMENT '请求方法',
  `operation` varchar(100) DEFAULT NULL COMMENT '方法描述',
  `params` longtext COMMENT '请求参数',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_exception_log` */

/*Table structure for table `t_feedback` */

DROP TABLE IF EXISTS `t_feedback`;

CREATE TABLE `t_feedback` (
  `uid` varchar(32) NOT NULL COMMENT '唯一uid',
  `user_uid` varchar(32) NOT NULL COMMENT '用户uid',
  `content` varchar(1000) DEFAULT NULL COMMENT '反馈的内容',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `feedback_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '反馈状态： 0：已开启  1：进行中  2：已完成  3：已拒绝',
  `reply` varchar(255) DEFAULT NULL COMMENT '回复',
  `admin_uid` varchar(32) DEFAULT NULL COMMENT '管理员uid',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='反馈表';

/*Data for the table `t_feedback` */

insert  into `t_feedback`(`uid`,`user_uid`,`content`,`status`,`create_time`,`update_time`,`title`,`feedback_status`,`reply`,`admin_uid`) values ('5217d7212f9d487eab13deadca961405','25675d78f11749d4edaf15e36d046e3b','一个BUG',0,'2020-03-16 09:31:46','2020-03-16 09:31:46','一个BUG',0,'我是回复','1f01cd1d2f474743b241d74008b12333'),('64d2e894d22ffeaa2f41755a4a8d5e88','25675d78f11749d4edaf15e36d046e3b','测试反馈',0,'2020-03-16 11:53:58','2020-03-16 11:53:58','测试反馈',0,NULL,'1f01cd1d2f474743b241d74008b12333'),('670af2dd59d04915b4c5e5a952a7b23f','25675d78f11749d4edaf15e36d046e3b','我是最新反馈我是最新反馈我是最新反馈我是最新反馈我是最新反馈我是最新反馈',0,'2020-03-16 11:14:38','2020-03-16 11:26:41','我是最新反馈',2,'感谢你的反馈','1f01cd1d2f474743b241d74008b12333'),('792ee62f2a61472a0cccf9cfc67ddf9b','25675d78f11749d4edaf15e36d046e3b',' 我是最新反馈我是最新反馈我是最新反馈我是最新反馈我是最新反馈我是最新反馈 我是最新反馈我是最新反馈我是最新反馈我是最新反馈我是最新反馈我是最新反馈',0,'2020-03-16 11:16:02','2020-03-16 11:26:27',' 我是最新反馈',2,'感谢你的反馈','1f01cd1d2f474743b241d74008b12333'),('ae613935909d218a34d2cb31b08d154f','25675d78f11749d4edaf15e36d046e3b','测试反馈',1,'2020-03-17 09:38:45','2020-03-17 09:38:45','测试反馈',0,NULL,NULL),('d5209b8c2a744cea289c752fa2442969','25675d78f11749d4edaf15e36d046e3b','啊啊啊',0,'2020-03-16 11:54:58','2020-03-16 11:54:58','啊啊啊',0,NULL,'1f01cd1d2f474743b241d74008b12333'),('d98c7ae55b7ecc277ef65c5aef9f5151','25675d78f11749d4edaf15e36d046e3b','提交反馈',0,'2020-03-16 10:56:09','2020-03-16 10:56:09','提交反馈',0,NULL,'1f01cd1d2f474743b241d74008b12333');

/*Table structure for table `t_link` */

DROP TABLE IF EXISTS `t_link`;

CREATE TABLE `t_link` (
  `uid` varchar(32) NOT NULL COMMENT '唯一uid',
  `title` varchar(255) DEFAULT NULL COMMENT '友情链接标题',
  `summary` varchar(255) DEFAULT NULL COMMENT '友情链接介绍',
  `url` varchar(255) DEFAULT NULL COMMENT '友情链接URL',
  `click_count` int(11) DEFAULT '0' COMMENT '点击数',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `sort` int(11) DEFAULT '0' COMMENT '排序字段，越大越靠前',
  `link_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '友链状态： 0 申请中， 1：已上线，  2：已下架',
  `user_uid` varchar(32) DEFAULT NULL COMMENT '申请用户UID',
  `admin_uid` varchar(32) DEFAULT NULL COMMENT '操作管理员UID',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='友情链接表';

/*Data for the table `t_link` */

insert  into `t_link`(`uid`,`title`,`summary`,`url`,`click_count`,`create_time`,`update_time`,`status`,`sort`,`link_status`,`user_uid`,`admin_uid`) values ('3b7e9d7a4d9f8c43c0043cd86a4c410b','测试1','测试1','http://url.com',0,'2020-03-22 12:19:06','2020-03-22 12:19:06',0,2,1,NULL,NULL),('5217d7212f9d487eab13deadca961402','博客Gitee','蘑菇博客Gitee','https://gitee.com/moxi159753/mogu_blog_v2',24,'2018-12-17 02:25:11','2018-12-17 02:25:11',1,0,1,NULL,NULL),('6195e13f6272e61da6c7a2c481bd9a6e','1','1','http://www.baidu.com',0,'2020-03-20 11:33:42','2020-03-20 11:33:42',0,0,1,NULL,NULL),('8eff079bd3857879daf8401c52d4a2de','博客Github','蘑菇博客Github','https://github.com/moxi624/mogu_blog_v2',6,'2019-12-06 20:50:05','2019-12-06 20:50:05',1,1,1,NULL,NULL),('d0a5e434f9f06da3e0d0f1ceb4160070','蘑菇博客','蘑菇博客','http://image.moguit.cn/favicon.png',0,'2020-03-15 11:43:18','2020-03-15 11:43:18',1,0,1,'25675d78f11749d4edaf15e36d046e3b',NULL),('da30eaf680ed626431dd14b8eb07a0c6','蘑菇博客','蘑菇博客',NULL,0,'2020-03-15 11:01:46','2020-03-15 11:01:46',0,0,0,'25675d78f11749d4edaf15e36d046e3b',NULL),('dcc01149be71492dabd55821c22f6061','Mybatis-plus','MyBatis-Plus 为简化开发而生','http://mp.baomidou.com/',12,'2018-09-27 02:52:58','2018-09-27 02:52:58',1,0,1,NULL,NULL);

/*Table structure for table `t_picture` */

DROP TABLE IF EXISTS `t_picture`;

CREATE TABLE `t_picture` (
  `uid` varchar(32) NOT NULL COMMENT '唯一uid',
  `file_uid` varchar(32) DEFAULT NULL COMMENT '图片uid',
  `pic_name` varchar(255) DEFAULT NULL COMMENT '图片名',
  `picture_sort_uid` varchar(32) DEFAULT NULL COMMENT '分类uid',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图片表';

/*Data for the table `t_picture` */

insert  into `t_picture`(`uid`,`file_uid`,`pic_name`,`picture_sort_uid`,`status`,`create_time`,`update_time`) values ('0398f756b357eed1fe85e40d2a291e06','3302d7c58941602514f2812a20500a4c',NULL,'481b95ba5cce396c9ec14544b0784751',0,'2020-02-01 10:26:44','2020-02-01 10:26:44'),('136b1862cb3d62b3f6830cb71dd63e14','63da0632ccf7f1fde167bdf92ff25b6b',NULL,'481b95ba5cce396c9ec14544b0784751',1,'2020-02-24 09:25:50','2020-02-24 09:25:50'),('13d70e1b5ffd07d534d28b22c7192408','a5d84f5e443b781fe8146620e1abb5b8',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:23:52','2020-03-17 09:23:52'),('15cda71a209a1d5961473cffb83eff91','d2423d5fa8f4e7fca64f6d36c4697703',NULL,'481b95ba5cce396c9ec14544b0784751',0,'2020-02-01 10:26:40','2020-02-01 10:26:40'),('1679f363cf3f2a1c70e397339f6bf28f','d134bdfe255b9aa8c2ce44da8297f6a6','undefined','481b95ba5cce396c9ec14544b0784751',1,'2020-01-30 22:08:26','2020-01-30 22:08:26'),('17e294de92e7f9535a5fb043f67b0fba','92df30a6f25dc0998e530aef68ccec1b',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:21:20','2020-03-17 09:21:20'),('1a03785415b6eda344753bf93c10a24a','d37d3e699f46a2b3785600f7c4ac6b3f',NULL,'481b95ba5cce396c9ec14544b0784751',0,'2020-02-01 10:23:11','2020-02-01 10:23:11'),('286ee71a8472d0c98b4dfecdef7e1938','b2341210d2061ee92d8de46c261c1ad5',NULL,'481b95ba5cce396c9ec14544b0784751',1,'2020-02-24 10:31:18','2020-02-24 10:31:18'),('2afd4d538ac77a70c3e3bd96aac9366a','4e871894c11e04edbf2c4e22b4644730',NULL,'481b95ba5cce396c9ec14544b0784751',1,'2020-02-06 18:54:27','2020-02-06 18:54:27'),('34aad812f6e123c1c43358c88eabb331','cc9952f52c84dfa51d74ee35a1dc5367',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:23:52','2020-03-17 09:23:52'),('377420b661da6a0d53075a20fdca5ddb','e4c42b7004e9e5751ebc89433fc8b712',NULL,'481b95ba5cce396c9ec14544b0784751',0,'2020-02-01 10:23:21','2020-02-01 10:23:21'),('39b0e096d6f78ad83c4128bff6ddf93f','71a7bc29602e467e1d1b66a59d37c3a2',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:22:19','2020-03-17 09:22:19'),('3d90ea0854f9856700ee1526d7578fbf','858184682eff563a349f595c6b44e5cb',NULL,'481b95ba5cce396c9ec14544b0784751',0,'2020-02-01 10:46:00','2020-02-01 10:46:00'),('447a6e6cbf6ffdf0a3f049f958dd3a03','d2424afcd30ca070d43930d0257097ad',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:22:14','2020-03-17 09:22:14'),('497a63891ac73a87b83e9142efd918fb','ef7e96df0cee789dc1b945e9c67f8992',NULL,'481b95ba5cce396c9ec14544b0784751',1,'2020-02-29 16:35:08','2020-02-29 16:35:08'),('4beccd2462ab1a2d29ddb0780b67763a','66dfad40118ef0217f4269be3b36d5f3',NULL,'481b95ba5cce396c9ec14544b0784751',1,'2020-02-24 09:46:44','2020-02-24 09:46:44'),('51a743e97b5bc86ae3b25c039efb172d','1b8d0337b503b1667d5770f202cc02b9',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:23:37','2020-03-17 09:23:37'),('564fa3bc5ad32b4714e8203bfd3b9271','dca06b7785df4434091e70a0527fd9a4',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:23:52','2020-03-17 09:23:52'),('583eec49d6261dd4298ebbab3b9101e1','c1d5bb9da6c0fe593d57ba95a1c7f3d8',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:22:42','2020-03-17 09:22:42'),('59b6fd6c4c1cc4f2ebe441024f504a8c','8dd7c4f4ff0e87f38e1cdcf6190768d2',NULL,'481b95ba5cce396c9ec14544b0784751',0,'2020-02-01 10:22:48','2020-02-01 10:22:48'),('603b0afe0c29e9ea0ffbe557d1e92777','2f84fab3b2ef5fa75206c596514d9004',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:22:42','2020-03-17 09:22:42'),('635fa294443ba1a27deabbb1d6034a02','671928c59b6a2d546230e26b4772141c',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:22:42','2020-03-17 09:22:42'),('65813af6b86936fded2d6c255ce4e355','3e6d4c73afeb338ad5e9c2d5be0bea14',NULL,'481b95ba5cce396c9ec14544b0784751',1,'2020-02-26 15:36:38','2020-02-26 15:36:38'),('6dc3b84160804ccf0536bfce932c29e0','21bb95558a698f8f1348136effde44e3',NULL,'481b95ba5cce396c9ec14544b0784751',0,'2020-02-01 10:20:30','2020-02-01 10:20:30'),('6ef278b547e77a8ba53119498725e7cc','05b355d8915d479ba7980e65378ddc7b',NULL,'481b95ba5cce396c9ec14544b0784751',0,'2020-02-01 10:46:43','2020-02-01 10:46:43'),('7151f1a03321f19a1f83abc2b01225ae','c9f0fc69d2f53aaab8bf486fe51291c5',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:22:29','2020-03-17 09:22:29'),('730805fa92827552e8296b7e36a973df','70f5b89fe70a28d95e10c19c96bf2e85',NULL,'481b95ba5cce396c9ec14544b0784751',1,'2020-02-06 18:54:31','2020-02-06 18:54:31'),('92b46f0f470a63c6430dba9b18abe8a2','c44d167f73d9556c66c5ba207641a6ca',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:23:52','2020-03-17 09:23:52'),('97cf3d03cc305a4a43cee1571b630dcf','78c1e35d3498bf3546c015f45f7e1ebc',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:23:37','2020-03-17 09:23:37'),('a8e8fca21c869b68a9efd6b8971b0610','144077b7fc908e2f3c7f4ecaa5069862',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:23:52','2020-03-17 09:23:52'),('aa56a5e805d619ae79e88d9ba5fa5b87','adeaf35fdcd2d36ed143d95bc02b1cc2','undefined','481b95ba5cce396c9ec14544b0784751',1,'2020-01-30 22:08:26','2020-01-30 22:08:26'),('ad439ea388b87be53f6aad7125c7fd44','c7782d374ed2d4bff8e43164ece9244d',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:23:37','2020-03-17 09:23:37'),('ae0388aba027c118748663232773d419','bb4ba8de81fdcd837bff6d25045ace5f',NULL,'481b95ba5cce396c9ec14544b0784751',0,'2020-02-01 10:46:57','2020-02-01 10:46:57'),('baae17f47aef79220fe0b9c9c23e6f4b','2c84327cd21f436601815f430c6e8504',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:21:39','2020-03-17 09:21:39'),('bf0ab4ef7ee9ac2c48a46abe71b8cf41','2c2bed0af1c259e605e73c84e533501f',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:21:42','2020-03-17 09:21:42'),('c1afcf1206e2870dc599d64f9d068cfd','8f59451286c970a77cf3793a0f6657de',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:22:19','2020-03-17 09:22:19'),('c8e267edce391e23e357f3528fa21e72','7a08d34301b572a54b758f3f57809548','undefined','481b95ba5cce396c9ec14544b0784751',1,'2020-01-30 22:08:26','2020-01-30 22:08:26'),('c9c9d12197ae1df349a8652b88512749','0d8f61dc08e78a3f76269c367e51f68a',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:22:42','2020-03-17 09:22:42'),('cae0fc2d7bd025f563cb651df774a9f4','ba08d19ef9f5b5113479b385903ee1de',NULL,'481b95ba5cce396c9ec14544b0784751',0,'2020-02-01 10:46:57','2020-02-01 10:46:57'),('cdb12faf3f3bfb4cbf7d4c37a5646146','6aa29d78ca8d9fb98c74fff2027a2023',NULL,'481b95ba5cce396c9ec14544b0784751',0,'2020-02-01 10:20:23','2020-02-01 10:20:23'),('d380c8d36f6298e802e6d5e53ab7221d','ffe1c088d99304a0c3e40e8421ccffbd',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:22:14','2020-03-17 09:22:14'),('d7d5512b7c2f8c1b5124c38d208fd7a2','c24e84fcb9630e6e7884a3982eb8df5d',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:22:19','2020-03-17 09:22:19'),('d979d95bf56497d00db6b3221290c55f','828227a0f1c736ea393fa4a747b1c5d9',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:23:52','2020-03-17 09:23:52'),('db052c7a0ad90d39978ace7c18adc84f','3093e537759b2bddff896fb37d5c242f',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:23:22','2020-03-17 09:23:22'),('e11677dda0cd75a9b93cfa2ee816a4a6','9054299f6da887dfe0a32a202e4bf9ba',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:23:22','2020-03-17 09:23:22'),('e19fdb9d3b15ada4f0ba6048e5fdce88','d88c3f894e101017168039fec9406b8a',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:21:24','2020-03-17 09:21:24'),('e73cf621853b0dcdaedecf3fb7348e5b','6ab1e89918da357782a1c5492d7916bc',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:23:37','2020-03-17 09:23:37'),('ee2c4832ba5b9aae12643754d21ff01d','33f8407082a521fddb37204c4d4a9b5f',NULL,'481b95ba5cce396c9ec14544b0784751',0,'2020-02-01 10:46:53','2020-02-01 10:46:53'),('f2b878f65ead268ba44d58064707ef9f','f11f1fbd9bde32d5bf20e255486f7315',NULL,'976dbeb57cb6d5234c1c73e1de8522cf',1,'2020-03-17 09:22:42','2020-03-17 09:22:42'),('ff90e72a99c6e00d4674661148052eb2','207fecc04931d722404f6b9584e11446',NULL,'676268e609d08412d0e2d5ce1b1a0d0c',0,'2020-03-09 08:52:51','2020-03-09 08:52:51');

/*Table structure for table `t_picture_sort` */

DROP TABLE IF EXISTS `t_picture_sort`;

CREATE TABLE `t_picture_sort` (
  `uid` varchar(32) NOT NULL COMMENT '唯一uid',
  `file_uid` varchar(32) DEFAULT NULL COMMENT '分类图片uid',
  `name` varchar(255) DEFAULT NULL COMMENT '分类名',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `parent_uid` varchar(32) DEFAULT NULL,
  `sort` int(11) DEFAULT '0' COMMENT '排序字段，越大越靠前',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图片分类表';

/*Data for the table `t_picture_sort` */

insert  into `t_picture_sort`(`uid`,`file_uid`,`name`,`status`,`create_time`,`update_time`,`parent_uid`,`sort`) values ('481b95ba5cce396c9ec14544b0784751','c54296fcb729599afec1d94d261a6229','测试图片',1,'2020-01-30 22:08:10','2020-01-30 22:08:10',NULL,2),('543a083eedbb76f1d558b038d68d5ba1','null','123',0,'2020-03-20 13:34:22','2020-03-20 13:34:22',NULL,0),('676268e609d08412d0e2d5ce1b1a0d0c','3e6d4c73afeb338ad5e9c2d5be0bea14','测试分类',0,'2020-03-09 08:52:27','2020-03-09 08:52:27',NULL,1),('976dbeb57cb6d5234c1c73e1de8522cf','null','测试分类2',1,'2020-03-17 09:18:53','2020-03-17 09:18:53',NULL,0),('d4fc04eb7f3ad15679b9e93bf1d87d62','null','null',0,'2020-03-20 13:22:33','2020-03-20 13:22:33',NULL,0);

/*Table structure for table `t_resource_sort` */

DROP TABLE IF EXISTS `t_resource_sort`;

CREATE TABLE `t_resource_sort` (
  `uid` varchar(32) NOT NULL COMMENT '唯一uid',
  `file_uid` varchar(32) DEFAULT NULL COMMENT '分类图片uid',
  `sort_name` varchar(255) DEFAULT NULL COMMENT '分类名',
  `content` varchar(255) DEFAULT NULL COMMENT '分类介绍',
  `click_count` varchar(255) DEFAULT NULL COMMENT '点击数',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `parent_uid` varchar(32) DEFAULT NULL COMMENT '父UID',
  `sort` int(11) DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源分类表';

/*Data for the table `t_resource_sort` */

insert  into `t_resource_sort`(`uid`,`file_uid`,`sort_name`,`content`,`click_count`,`status`,`create_time`,`update_time`,`parent_uid`,`sort`) values ('6d00af642cbff05e3bf5ffcaeefa97cb','adeaf35fdcd2d36ed143d95bc02b1cc2','测试分类2','测试分类2',NULL,0,'2020-03-09 09:06:42','2020-03-09 09:06:42',NULL,0),('a442a4d5c4e07a9032af7de99f301de4','3e6d4c73afeb338ad5e9c2d5be0bea14','测试分类2','测试分类',NULL,1,'2020-03-09 09:21:21','2020-03-09 09:21:21',NULL,2),('cf2fa0b814489b81eec18f2e7f879f19','dd34fc59ff945ca781cd46c23f7d7b65','测试分类','测试分类',NULL,1,'2020-02-01 12:35:35','2020-02-01 12:35:35',NULL,1);

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `uid` varchar(32) NOT NULL COMMENT '角色id',
  `role_name` varchar(255) NOT NULL COMMENT '角色名',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `summary` varchar(255) DEFAULT NULL COMMENT '角色介绍',
  `category_menu_uids` text COMMENT '角色管辖的菜单的UID',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_role` */

insert  into `t_role`(`uid`,`role_name`,`create_time`,`update_time`,`status`,`summary`,`category_menu_uids`) values ('434994947c5a4ee3a710cd277357c7c3','超级管理员','2018-10-16 07:56:26','2018-10-16 07:56:35',1,'超级管理员，管理全部菜单和功能','[\"49b42250abcb47ff876bad699cf34f03\",\"1f01cd1d2f474743b241d74008b12333\",\"fe45ea293f75dc88b96cab96c218512a\",\"e5218b0b1cf016ae21eced4e47b628ac\",\"16a75a3c38e71c1046b443b4b64dd930\",\"2b983c5439ac07f2cf07437ba9fff6be\",\"7ada0a7053be4ad4b31f6be64315d03a\",\"0a035547bbec404eb3ee0ef43312148d\",\"2a733ff390af9b44ecda4e8c4634d75d\",\"327d945daf4ddb71976c4ab3830e7c66\",\"6c8a8c50c77429fab210bd52ed8c50bb\",\"72d26cf940bf9dfb6bde0a590ff40882\",\"80ee135af885f02d52ecb67d5a05b173\",\"aef85c40b54320d7c5a9d78697e12910\",\"f87d2f9b4539abbade38583420dc8b89\",\"fbc30e4ae5bb33b39baca7bf6bd8ce99\",\"78ab104b123f4950af14d65798afb756\",\"6606b7e646d545e5a25c70b5e5fade9f\",\"2a733ff390af9b44ecda4e8c4634d75f\",\"327d945daf4ddb71976c4ab3830e7c6h\",\"6c8a8c50c77429fab210bd52ed8c50ba\",\"72d26cf940bf9dfb6bde0a590ff4088g\",\"80ee135af885f02d52ecb67d5a05b17b\",\"aef85c40b54320d7c5a9d78697e1291c\",\"f87d2f9b4539abbade38583420dc8b8e\",\"fbc30e4ae5bb33b39baca7bf6bd8ce9d\",\"1d9a5030142e9fd7690f554c20e3bc90\",\"badf0010422b432ba6ec9c83a25012ed\",\"faccfe476b89483791c05019ad5b4906\",\"2a733ff390af9b44ecda4e8c4634dm8k\",\"f87d2f9b4539abbade38583420dc8l9l\",\"fbc30e4ae5bb33b39baca7bf6bd8ck0m\",\"c28f0b052e0b930299dd53de59cc32d7\",\"2a733ff390af9b44ecda4e8c4634dh8k\",\"327d945daf4ddb71976c4ab3830e7g7i\",\"f87d2f9b4539abbade38583420dc8i9l\",\"fbc30e4ae5bb33b39baca7bf6bd8cj0m\",\"9002d1ae905c4cb79c2a485333dad2f7\",\"2a733ff390af9b44ecda4e8c4634d78k\",\"327d945daf4ddb71976c4ab3830e7c7i\",\"aef85c40b54320d7c5a9d78697e1296n\",\"f87d2f9b4539abbade38583420dc8b9l\",\"fbc30e4ae5bb33b39baca7bf6bd8ce0m\",\"78f24799307cb63bc3759413dadf4d1a\",\"f87d2f9b4539abbade38583420dc8byl\",\"fbc30e4ae5bb33b39baca7bf6bd8cezm\",\"2fb47d3b6dbd44279c8206740a263543\",\"f87d2f9b4539abbade38583420dc8bpl\",\"fbc30e4ae5bb33b39baca7bf6bd8ceom\",\"26bcccf0164bf84f12ab20448388d346\",\"62c91c47c4646661c045727f0a8eb9d4\",\"7be9dee2f91165d8562aaa80c7e5b936\",\"9e73a9b1de18e4f1cb19eca5e8cd321d\",\"ab1289c29b336dccda87a9fa8b711aa2\",\"e91945e49c5fdb207f996bc9668cd965\",\"062087bce19d00312b3787b6e24c21d1\",\"2a733ff390af9b44ecda4e8c4634d7ck\",\"327d945daf4ddb71976c4ab3830e7cdi\",\"f87d2f9b4539abbade38583420dc8bbl\",\"fbc30e4ae5bb33b39baca7bf6bd8ceam\",\"d3a19221259d439b916f475e43edb13d\",\"aa225cdae6464bc0acebd732192f8362\",\"2a733ff390af9b44ecda4e8c4634d73k\",\"327d945daf4ddb71976c4ab3830e7c4i\",\"aef85c40b54320d7c5a9d78697e1295n\",\"f87d2f9b4539abbade38583420dc8b2l\",\"fbc30e4ae5bb33b39baca7bf6bd8ce1m\",\"879cfcd4dfd3e5bc1bb6ea2c0f1f82c0\",\"5010ae46511e4c0b9f30d1c63ad3f0c1\",\"2a733ff390af9b44ecda4e8c4634d7uk\",\"327d945daf4ddb71976c4ab3830e7cvi\",\"f87d2f9b4539abbade38583420dc8btl\",\"fbc30e4ae5bb33b39baca7bf6bd8cesm\",\"2de247af3b0a459095e937d7ab9f5864\",\"2a733ff390af9b44ecda4e8c4634d7lk\",\"327d945daf4ddb71976c4ab3830e7cmi\",\"72d26cf940bf9dfb6bde0a590ff408nj\",\"f87d2f9b4539abbade38583420dc8bkl\",\"fbc30e4ae5bb33b39baca7bf6bd8cejm\",\"f4697cdf85920369179b90ff45a5982d\",\"f3a559635f9d46ee3356d072f5896fcb\",\"407a263eb12eff5aac31e9f62901cea0\",\"c519725da92b42f3acf0cc9fad58c664\",\"fb4237a353d0418ab42c748b7c1d64c6\",\"2a733ff390af9b44ecda4e8c4634d75t\",\"72d26cf940bf9dfb6bde0a590ff4088s\",\"f87d2f9b4539abbade38583420dc8b8r\",\"fbc30e4ae5bb33b39baca7bf6bd8ce9q\",\"b511cae571834971a392ae4779270034\",\"98b82be8785e41dc939b6a5517fdfa53\",\"a5902692a3ed4fd794895bf634f97b8e\",\"fbc30e4ae5bb33b39baca7bf6bd8celm\",\"9e91b4f993c946cba4bf720b2c1b2e90\",\"fbc30e4ae5bb33b39baca7bf6bd8cemm\",\"4337f63d13d84b9aba64b9d7a69fd066\",\"fbc30e4ae5bb33b39baca7bf6bd8cekm\",\"bcf4a9bc21c14b559bcb015fb7912266\",\"9beb7caa2c844b36a02789262dc76fbe\",\"fbc30e4ae5bb33b39baca7bf6bd8ce9m\",\"2a733ff390af9b44ecda4e8c4634d75k\",\"327d945daf4ddb71976c4ab3830e7c6i\",\"72d26cf940bf9dfb6bde0a590ff4088j\",\"f87d2f9b4539abbade38583420dc8b8l\",\"6228ff4e9ebd42c89599b322201a0345\",\"9c91231f1682aabd765225a7e503bb43\",\"f87d2f9b4539abbade38583420dc8bxl\",\"fbc30e4ae5bb33b39baca7bf6bd8cewm\",\"baace3dc03d34c54b81761dce8243814\",\"f9276eb8e3274c8aa05577c86e4dc8c1\",\"e4a482c089d04a30b6ecbaadb81b70f8\",\"d4d92c53d3614d00865e9219b8292a90\",\"acbb5d09da25e6c9e019cc361b35d159\",\"65e22f3d36d94bcea47478aba02895a1\",\"4dea9c4f39d2480983e8c4333d35e036\",\"2a733ff390af9b44ecda4e8c4634d7pk\",\"327d945daf4ddb71976c4ab3830e7cqi\",\"aef85c40b54320d7c5a9d78697e129rn\",\"f87d2f9b4539abbade38583420dc8bol\",\"fbc30e4ae5bb33b39baca7bf6bd8cenm\",\"1cc493d36e17fad535f2bf70242162b0\",\"2a733ff390af9b44ecda4e8c4634d7gk\",\"327d945daf4ddb71976c4ab3830e7cfi\",\"72d26cf940bf9dfb6bde0a590ff408ej\",\"f87d2f9b4539abbade38583420dc8bhl\",\"fbc30e4ae5bb33b39baca7bf6bd8ceim\",\"510483ce569b4fc88299f346147b1314\",\"ffc6e9ca2cc243febf6d2f476b849163\",\"2a733ff390af9b44ecda4e8c4634dh8c\",\"327d945daf4ddb71976c4ab3830e7g7d\",\"f87d2f9b4539abbade38583420dc8i9b\",\"fbc30e4ae5bb33b39baca7bf6bd8cj0a\",\"9449ce5dd5e24b21a9d15f806cb36e87\",\"2a733ff390af9b44ecda4e8c4634db8k\",\"327d945daf4ddb71976c4ab3830e7d7i\",\"aef85c40b54320d7c5a9d78697e12e6n\",\"f87d2f9b4539abbade38583420dc8c9l\",\"fbc30e4ae5bb33b39baca7bf6bd8ca0m\",\"147cd431cbb9007bde87444d7987b151\",\"cbd7ba11c1b38c66b569405ed9185f35\",\"bfc9463e59a3ca250dcfc1c86627e034\",\"2a733ff390af9b44ecda4e8c4634d75u\",\"a9396f1a3fbdec3d4cb614f388a22bea\",\"93f7fd9a6e81735c47649e6b36042b5d\",\"505b4769b77617a314a3ed78e4acdff7\",\"079f0cfdb7a7017d827f5c349983eebc\",\"02ea2f9ef5d44f559fb66189b05f6769\",\"2a733ff390af9b44ecda4e8c4634d75v\"]'),('434994947c5a4ee3a710cd277357c7c4','文章管理员','2018-10-15 07:56:21','2018-10-15 07:56:23',1,'管理文章','[\"49b42250abcb47ff876bad699cf34f03\",\"1f01cd1d2f474743b241d74008b12333\",\"0a035547bbec404eb3ee0ef43312148d\",\"78ab104b123f4950af14d65798afb756\",\"6606b7e646d545e5a25c70b5e5fade9f\",\"bcf4a9bc21c14b559bcb015fb7912266\",\"9beb7caa2c844b36a02789262dc76fbe\",\"6228ff4e9ebd42c89599b322201a0345\",\"65e22f3d36d94bcea47478aba02895a1\",\"4dea9c4f39d2480983e8c4333d35e036\"]'),('ad92f1639508ca405728f4981770793b','测试角色','2020-03-22 08:24:29','2020-03-22 08:24:29',1,'测试角色','[\"fe45ea293f75dc88b96cab96c218512a\",\"fbc30e4ae5bb33b39baca7bf6bd8ce99\",\"78ab104b123f4950af14d65798afb756\",\"fbc30e4ae5bb33b39baca7bf6bd8ce9d\",\"1d9a5030142e9fd7690f554c20e3bc90\",\"fbc30e4ae5bb33b39baca7bf6bd8ck0m\",\"fbc30e4ae5bb33b39baca7bf6bd8cj0m\",\"fbc30e4ae5bb33b39baca7bf6bd8ce0m\",\"fbc30e4ae5bb33b39baca7bf6bd8cezm\",\"fbc30e4ae5bb33b39baca7bf6bd8ceom\",\"62c91c47c4646661c045727f0a8eb9d4\",\"fbc30e4ae5bb33b39baca7bf6bd8ceam\",\"fbc30e4ae5bb33b39baca7bf6bd8ce1m\",\"879cfcd4dfd3e5bc1bb6ea2c0f1f82c0\",\"fbc30e4ae5bb33b39baca7bf6bd8cesm\",\"fbc30e4ae5bb33b39baca7bf6bd8cejm\",\"f4697cdf85920369179b90ff45a5982d\",\"f3a559635f9d46ee3356d072f5896fcb\",\"407a263eb12eff5aac31e9f62901cea0\",\"fbc30e4ae5bb33b39baca7bf6bd8ce9q\",\"b511cae571834971a392ae4779270034\",\"98b82be8785e41dc939b6a5517fdfa53\",\"a5902692a3ed4fd794895bf634f97b8e\",\"fbc30e4ae5bb33b39baca7bf6bd8celm\",\"9e91b4f993c946cba4bf720b2c1b2e90\",\"fbc30e4ae5bb33b39baca7bf6bd8cemm\",\"4337f63d13d84b9aba64b9d7a69fd066\",\"fbc30e4ae5bb33b39baca7bf6bd8cekm\",\"fbc30e4ae5bb33b39baca7bf6bd8ce9m\",\"fbc30e4ae5bb33b39baca7bf6bd8cewm\",\"baace3dc03d34c54b81761dce8243814\",\"f9276eb8e3274c8aa05577c86e4dc8c1\",\"e4a482c089d04a30b6ecbaadb81b70f8\",\"d4d92c53d3614d00865e9219b8292a90\",\"acbb5d09da25e6c9e019cc361b35d159\",\"fbc30e4ae5bb33b39baca7bf6bd8cenm\",\"fbc30e4ae5bb33b39baca7bf6bd8ceim\",\"fbc30e4ae5bb33b39baca7bf6bd8cj0a\",\"fbc30e4ae5bb33b39baca7bf6bd8ca0m\",\"147cd431cbb9007bde87444d7987b151\",\"cbd7ba11c1b38c66b569405ed9185f35\",\"bfc9463e59a3ca250dcfc1c86627e034\",\"2a733ff390af9b44ecda4e8c4634d75u\",\"a9396f1a3fbdec3d4cb614f388a22bea\",\"93f7fd9a6e81735c47649e6b36042b5d\",\"505b4769b77617a314a3ed78e4acdff7\",\"079f0cfdb7a7017d827f5c349983eebc\",\"02ea2f9ef5d44f559fb66189b05f6769\",\"2a733ff390af9b44ecda4e8c4634d75v\"]'),('d105da79260f4d6a8a03571e4a2b17bc','一般管理员','2019-05-29 00:43:26','2019-05-29 00:43:26',1,'一般管理员','[\"49b42250abcb47ff876bad699cf34f03\",\"1f01cd1d2f474743b241d74008b12333\",\"0a035547bbec404eb3ee0ef43312148d\",\"78ab104b123f4950af14d65798afb756\",\"6606b7e646d545e5a25c70b5e5fade9f\",\"c519725da92b42f3acf0cc9fad58c664\",\"fb4237a353d0418ab42c748b7c1d64c6\",\"b511cae571834971a392ae4779270034\",\"badf0010422b432ba6ec9c83a25012ed\",\"02ea2f9ef5d44f559fb66189b05f6769\",\"2fb47d3b6dbd44279c8206740a263543\",\"9002d1ae905c4cb79c2a485333dad2f7\",\"faccfe476b89483791c05019ad5b4906\",\"98b82be8785e41dc939b6a5517fdfa53\",\"4337f63d13d84b9aba64b9d7a69fd066\",\"9e91b4f993c946cba4bf720b2c1b2e90\",\"a5902692a3ed4fd794895bf634f97b8e\",\"bcf4a9bc21c14b559bcb015fb7912266\",\"9beb7caa2c844b36a02789262dc76fbe\",\"6228ff4e9ebd42c89599b322201a0345\",\"baace3dc03d34c54b81761dce8243814\",\"d4d92c53d3614d00865e9219b8292a90\",\"e4a482c089d04a30b6ecbaadb81b70f8\",\"f9276eb8e3274c8aa05577c86e4dc8c1\",\"65e22f3d36d94bcea47478aba02895a1\",\"4dea9c4f39d2480983e8c4333d35e036\"]');

/*Table structure for table `t_study_video` */

DROP TABLE IF EXISTS `t_study_video`;

CREATE TABLE `t_study_video` (
  `uid` varchar(32) NOT NULL COMMENT '唯一uid',
  `file_uid` varchar(32) DEFAULT NULL COMMENT '视频封面图片uid',
  `resource_sort_uid` varchar(255) DEFAULT NULL COMMENT '资源分类UID',
  `name` varchar(255) DEFAULT NULL COMMENT '视频名称',
  `summary` varchar(255) DEFAULT NULL COMMENT '视频简介',
  `content` varchar(255) DEFAULT NULL COMMENT '分类介绍',
  `baidu_path` varchar(255) DEFAULT NULL COMMENT '百度云完整路径',
  `click_count` varchar(255) DEFAULT NULL COMMENT '点击数',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `parent_uid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学习视频表';

/*Data for the table `t_study_video` */

insert  into `t_study_video`(`uid`,`file_uid`,`resource_sort_uid`,`name`,`summary`,`content`,`baidu_path`,`click_count`,`status`,`create_time`,`update_time`,`parent_uid`) values ('b396e08946a3571ab5de04dae522f255','dd34fc59ff945ca781cd46c23f7d7b65','cf2fa0b814489b81eec18f2e7f879f19','测试','测试','<p>测试</p>\n','测试','0',1,'2020-02-01 12:37:28','2020-02-01 12:37:28',NULL);

/*Table structure for table `t_sys_dict_data` */

DROP TABLE IF EXISTS `t_sys_dict_data`;

CREATE TABLE `t_sys_dict_data` (
  `uid` varchar(32) NOT NULL COMMENT '主键',
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增键oid',
  `dict_type_uid` varchar(255) DEFAULT NULL COMMENT '字典类型UID',
  `dict_label` varchar(255) DEFAULT NULL COMMENT '字典标签',
  `dict_value` varchar(255) DEFAULT NULL COMMENT '字典键值',
  `css_class` varchar(255) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(255) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` tinyint(1) DEFAULT '0' COMMENT '是否默认（1是 0否）,默认为0',
  `create_by_uid` varchar(32) NOT NULL COMMENT '创建人UID',
  `update_by_uid` varchar(32) NOT NULL COMMENT '最后更新人UID',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `is_publish` varchar(1) NOT NULL DEFAULT '1' COMMENT '是否发布(1:是，0:否)',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`uid`),
  KEY `oid` (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

/*Data for the table `t_sys_dict_data` */

insert  into `t_sys_dict_data`(`uid`,`oid`,`dict_type_uid`,`dict_label`,`dict_value`,`css_class`,`list_class`,`is_default`,`create_by_uid`,`update_by_uid`,`remark`,`status`,`create_time`,`update_time`,`is_publish`,`sort`) values ('026b7d3453ff74d3d6a31a10abc39a47',10,'b0c90de7ebeb138e9a0487f6ba86275a','删除','3',NULL,NULL,0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','删除操作',1,'2020-02-17 21:25:04','2020-02-17 21:25:04','1',0),('03bfb8183ef66828f7b04487bfbe35c7',27,'904965b87673d2dd762c9ac2b6726813','七牛云','1',NULL,NULL,0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','图片显示优先级  七牛云',1,'2020-02-18 09:45:27','2020-02-18 09:45:27','1',0),('03ebe4234670f7cfeb0b19c8794bdaea',19,'e582ff889b2e64fffed194737d78fa98','二级推荐','2',NULL,'success',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','推荐等级 二级推荐',1,'2020-02-17 22:05:34','2020-02-17 22:05:34','1',3),('0cb01485ad75f7ec37a29d388e7d6013',7,'e2fa1d1024a2570f13ec7f684c08bd25','女','2',NULL,NULL,0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','性别 女',1,'2020-02-16 20:49:56','2020-02-16 20:49:56','1',0),('0d5183928308f7945bfb300f873b1f1e',44,'147b16259a5f482e86b75893d09e10d4','上架','1',NULL,'success',1,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','友链状态 上线中',1,'2020-03-15 08:50:28','2020-03-15 08:50:28','1',0),('0fb5f67e224f91638e71935eb6a38467',21,'e582ff889b2e64fffed194737d78fa98','四级推荐','4',NULL,'primary',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','推荐等级 四级推荐',1,'2020-02-17 22:06:13','2020-02-17 22:06:13','1',1),('1e666c133099dc361ec0dbaa8b6203cc',56,'80dfd5fa0b8226c8c0102da80cc6fedb','三级菜单','3',NULL,'info',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','菜单管理 三级菜单  按钮',1,'2020-03-21 18:02:22','2020-03-21 18:02:22','1',0),('2388fa41c446c4f870b6010bc404473f',31,'94ba24e6adb46cd094bb2217f1028285','原创','1',NULL,'success',1,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','原创博客',1,'2020-02-19 09:54:52','2020-02-19 09:54:52','1',1),('23b55a610d84470e052e09abf110dccc',17,'e582ff889b2e64fffed194737d78fa98','正常','0',NULL,'info',1,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','推荐等级 正常',1,'2020-02-17 22:01:56','2020-02-17 22:01:56','1',5),('30a04bbb52add36a22211f6b93fc882e',13,'5ce79da03dbedef627e8c6fb002b1a29','是','1',NULL,'success',1,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','系统是否  是',1,'2020-02-17 21:56:35','2020-02-17 21:56:35','1',1),('3151f138e5c2858112da60b70a699469',23,'ba386b930c4a3580357b1df8a2e24c8a','华北','z1',NULL,NULL,0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','存储区域 华北',1,'2020-02-17 23:37:31','2020-02-17 23:37:31','1',0),('39cf99bab1bd3ca0683424f99f1a9fee',26,'ba386b930c4a3580357b1df8a2e24c8a','东南亚','as0',NULL,NULL,0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','存储区域 东南亚',1,'2020-02-17 23:38:32','2020-02-17 23:38:32','1',0),('3f47a55713b1ea101b7f38af0fe1efa9',37,'20a4dd3551aa6264f7e43c2274820763','GITEE','GITEE',NULL,'primary',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','账号类型 Gitee',1,'2020-03-10 12:09:07','2020-03-10 12:09:07','1',0),('40b08947b62bc34793b0655c944d2eec',34,'20a4dd3551aa6264f7e43c2274820763','Gitee','Gitee',NULL,NULL,0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','账号类型 Gitee',0,'2020-03-10 11:59:26','2020-03-10 11:59:26','1',0),('416abb075fd0f8d4a512d204121c15b2',15,'f4c0b7c14e1857a8453af396e1537556','发布','1',NULL,'success',1,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','发布状态  上架',1,'2020-02-17 22:00:01','2020-02-17 22:00:01','1',1),('464f9e4a13d53494bff10df5e966b0cf',39,'397114076512e421458806e5d0050af6','禁言','0',NULL,'danger',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','评论状态 禁言',1,'2020-03-10 13:01:20','2020-03-10 13:01:20','1',0),('47559bf170909797709381e3b8c1a796',38,'20a4dd3551aa6264f7e43c2274820763','GITHUB','GITHUB',NULL,'danger',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','账号类型 Github',1,'2020-03-10 12:09:20','2020-03-10 12:09:20','1',0),('490b20a757bc11fbb0b089a91c169830',14,'5ce79da03dbedef627e8c6fb002b1a29','否','0',NULL,'warning',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','系统是否  否',1,'2020-02-17 21:56:47','2020-02-17 21:56:47','1',0),('4a3e898c54f9ddcfa52a5c40e5a647dd',45,'147b16259a5f482e86b75893d09e10d4','下架','2',NULL,'warning',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','友链状态  已下架',1,'2020-03-15 08:52:20','2020-03-15 08:52:20','1',0),('4dcc00f8566473020608d9609a1686e5',46,'6472ff63369e0118d2e0b907437d631d','已开启','0',NULL,'warning',1,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','反馈状态 已开启',1,'2020-03-16 09:20:38','2020-03-16 09:20:38','1',4),('4f243578b444646a6bc1349a10d1be9f',8,'b0c90de7ebeb138e9a0487f6ba86275a','新增','1',NULL,NULL,0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','新增操作',1,'2020-02-17 21:24:29','2020-02-17 21:24:29','1',0),('5130d2cf209bcf02e97322491b4e611e',4,'861dfd0f77c8b053d40e020f23702df4','隐藏','0',NULL,NULL,0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','菜单状态 隐藏',1,'2020-02-16 13:23:39','2020-02-16 13:23:39','1',0),('5b6f8111b8296906b887ec5d4420721b',52,'4d4a35b3dfc16d23b65a82073c88c0e6','博主','2',NULL,'danger',1,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','用户标签  博主',1,'2020-03-18 09:25:33','2020-03-18 09:25:33','1',0),('5f554b9bae92a1d630a1b89b8f88bc65',47,'6472ff63369e0118d2e0b907437d631d','进行中','1',NULL,'primary',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','反馈状态 进行中',1,'2020-03-16 09:20:56','2020-03-16 09:20:56','1',2),('614a593ba613eb6f5c591f2d2430538a',49,'6472ff63369e0118d2e0b907437d631d','已拒绝','3',NULL,'danger',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','反馈状态 已拒绝',1,'2020-03-16 09:21:33','2020-03-16 09:21:33','1',1),('66aa82856368c573e0bfe012ec6d0ab6',22,'ba386b930c4a3580357b1df8a2e24c8a','华东','z0',NULL,NULL,0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','存储区域 华东',1,'2020-02-17 23:37:12','2020-02-17 23:37:12','1',0),('6e19e89f593b2e378ae98e209972004b',51,'4d4a35b3dfc16d23b65a82073c88c0e6','管理员','1',NULL,'warning',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','用户标签 管理员',1,'2020-03-18 09:25:09','2020-03-18 09:25:09','1',0),('71bb6611f581413baa7b654dd271deca',16,'f4c0b7c14e1857a8453af396e1537556','下架','0',NULL,'danger',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','发布状态  下架',1,'2020-02-17 22:00:15','2020-02-17 22:00:15','1',0),('763bb526d9aa6ebd5bc0b7db69548c57',30,'80dfd5fa0b8226c8c0102da80cc6fedb','二级菜单','2',NULL,'danger',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','菜单等级 二级菜单',1,'2020-02-19 08:45:53','2020-02-19 08:45:53','1',2),('7c99aecb7b9b50c06b1c643c19568a4d',25,'ba386b930c4a3580357b1df8a2e24c8a','北美','na0',NULL,NULL,0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','存储区域 北美',1,'2020-02-17 23:38:16','2020-02-17 23:38:16','1',0),('82d7c4c2fcbd2d3b9aa856ac33420c45',2,'861dfd0f77c8b053d40e020f23702df4','显示','1',NULL,NULL,1,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','菜单状态 显示',1,'2020-02-16 12:40:51','2020-02-16 12:40:51','1',1),('868d1b0c1df6915a4a6ca574b46d4ac8',18,'e582ff889b2e64fffed194737d78fa98','一级推荐','1',NULL,'danger',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','推荐等级 一级推荐',1,'2020-02-17 22:05:19','2020-02-17 22:05:19','1',4),('8cb9f3d3fa091a581a333102dec732ab',20,'e582ff889b2e64fffed194737d78fa98','三级推荐','3',NULL,'warning',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','推荐等级 三级推荐',1,'2020-02-17 22:05:55','2020-02-17 22:05:55','1',2),('95b43081a93a53727b0474098242d64c',33,'20a4dd3551aa6264f7e43c2274820763','Github','Github',NULL,NULL,0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','账号类型 Github',0,'2020-03-10 11:59:12','2020-03-10 11:59:12','1',0),('9673bcc91bb2f22c31381c8364d4726b',9,'b0c90de7ebeb138e9a0487f6ba86275a','编辑','2',NULL,NULL,0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','编辑操作',1,'2020-02-17 21:24:45','2020-02-17 21:24:45','1',0),('a03e72c6f457bb282d3a7f62ff5f4598',55,'6bf52bf12dce9d0bc56f2d0e10ceccbe','按钮','1',NULL,'warning',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','菜单类型 按钮',1,'2020-03-21 09:28:32','2020-03-21 09:28:32','1',0),('a94dadf4a2a5c003c3bb38dd6075ebe3',35,'20a4dd3551aa6264f7e43c2274820763','Mogu','Mogu',NULL,NULL,0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','账号类型 蘑菇博客',0,'2020-03-10 11:59:53','2020-03-10 11:59:53','1',0),('ac72222bb8ac26959460f87328c97d59',24,'ba386b930c4a3580357b1df8a2e24c8a','华南','z2',NULL,NULL,0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','存储区域 华南',1,'2020-02-17 23:38:00','2020-02-17 23:38:00','1',0),('b0e0e31c66fa52f481ea1982348ee703',12,'e7a80c0adce2b69035dfa505d998ba74','关闭','0',NULL,NULL,0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','系统开关 关闭',1,'2020-02-17 21:50:22','2020-02-17 21:50:22','1',0),('b8764efefb7a78d4a2d84466daf34084',40,'397114076512e421458806e5d0050af6','正常','1',NULL,'success',1,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','评论状态 正常',1,'2020-03-10 13:01:35','2020-03-10 13:01:35','1',0),('bc852b3bbec6b9641a508fa32c49a40d',54,'6bf52bf12dce9d0bc56f2d0e10ceccbe','菜单','0',NULL,'success',1,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','菜单类型  菜单',1,'2020-03-21 09:28:13','2020-03-21 09:28:13','1',1),('bd14282cf7e3db5831e1b9e7e899024e',42,'d3d9f373ae0c344fa0a24eadd23a191b','评论','0',NULL,'warning',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','评论类型 评论',1,'2020-03-15 08:49:18','2020-03-15 08:49:18','1',0),('c3299bf019caeff6690e90c358e67e43',53,'861dfd0f77c8b053d40e020f23702df4','123','123',NULL,NULL,0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333',NULL,0,'2020-03-20 11:51:09','2020-03-20 11:51:09','1',0),('ca66f4c186c3ceb69057ae0432bd43d6',11,'e7a80c0adce2b69035dfa505d998ba74','开启','1',NULL,NULL,1,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','系统开关 开启',1,'2020-02-17 21:50:06','2020-02-17 21:50:06','1',1),('cc7cc52fbe8b7b4c89a6f1670d09c060',6,'e2fa1d1024a2570f13ec7f684c08bd25','男','1',NULL,NULL,1,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','性别 男',1,'2020-02-16 20:49:40','2020-02-16 20:49:40','1',2),('d350119289186d520e0ccbb9b320e07a',48,'6472ff63369e0118d2e0b907437d631d','已完成','2',NULL,'success',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','反馈状态 已完成',1,'2020-03-16 09:21:13','2020-03-16 09:21:13','1',3),('d3fe3ce87880595aad04b3e8077da223',32,'94ba24e6adb46cd094bb2217f1028285','转载','0',NULL,'info',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','转载博客',1,'2020-02-19 09:55:09','2020-02-19 09:55:09','1',0),('dc3c52a18d8ad99b83337751187e7359',29,'80dfd5fa0b8226c8c0102da80cc6fedb','一级菜单','1',NULL,'success',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','菜单等级 一级菜单',1,'2020-02-19 08:45:31','2020-02-19 08:45:31','1',3),('e6d918372233a8b48b9609fa70326c89',43,'147b16259a5f482e86b75893d09e10d4','申请','0',NULL,'danger',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','友链状态  申请中',1,'2020-03-15 08:49:57','2020-03-15 08:49:57','1',0),('e7dbddd726ae81086364e49abb12c539',41,'d3d9f373ae0c344fa0a24eadd23a191b','点赞','1',NULL,'success',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','评论类型  点赞',1,'2020-03-15 08:49:02','2020-03-15 08:49:02','1',0),('e9d6bc86f8ffa4e8dcf85b98069211dd',28,'904965b87673d2dd762c9ac2b6726813','本地','0',NULL,NULL,1,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','图片显示优先级  本地',1,'2020-02-18 09:45:45','2020-02-18 09:45:45','1',0),('f6fdd4f421d31989b57d932422ec5528',50,'4d4a35b3dfc16d23b65a82073c88c0e6','普通用户','0',NULL,'info',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','用户标签 普通用户',1,'2020-03-18 09:24:40','2020-03-18 09:24:40','1',0),('f963505ec3462cb63f9a590c9df08ac8',36,'20a4dd3551aa6264f7e43c2274820763','MOGU','MOGU',NULL,'success',0,'1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','账号类型 蘑菇博客',1,'2020-03-10 12:08:50','2020-03-10 12:08:50','1',0);

/*Table structure for table `t_sys_dict_type` */

DROP TABLE IF EXISTS `t_sys_dict_type`;

CREATE TABLE `t_sys_dict_type` (
  `uid` varchar(32) NOT NULL COMMENT '主键',
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增键oid',
  `dict_name` varchar(255) DEFAULT NULL COMMENT '字典名称',
  `dict_type` varchar(255) DEFAULT NULL COMMENT '字典类型',
  `create_by_uid` varchar(32) NOT NULL COMMENT '创建人UID',
  `update_by_uid` varchar(32) NOT NULL COMMENT '最后更新人UID',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `is_publish` varchar(1) NOT NULL DEFAULT '1' COMMENT '是否发布(1:是，0:否)',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`uid`),
  KEY `oid` (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

/*Data for the table `t_sys_dict_type` */

insert  into `t_sys_dict_type`(`uid`,`oid`,`dict_name`,`dict_type`,`create_by_uid`,`update_by_uid`,`remark`,`status`,`create_time`,`update_time`,`is_publish`,`sort`) values ('147b16259a5f482e86b75893d09e10d4',18,'友链状态','sys_link_status','1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','友链状态',1,'2020-03-15 08:47:56','2020-03-15 08:47:56','1',0),('20a4dd3551aa6264f7e43c2274820763',15,'用户账号来源','sys_account_source','1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','用户账号来源',1,'2020-03-10 11:57:40','2020-03-10 12:12:45','1',0),('397114076512e421458806e5d0050af6',16,'评论状态','sys_comment_status','1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','评论状态',1,'2020-03-10 13:00:24','2020-03-10 13:00:24','1',0),('4d4a35b3dfc16d23b65a82073c88c0e6',20,'用户标签','sys_user_tag','1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','用户标签：普通用户，管理员，博主',1,'2020-03-18 09:23:56','2020-03-18 09:24:07','1',0),('5c907ad864bc904851bde2506851cb88',8,'通知类型','sys_notice_type','1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','通知类型列表',1,'2020-02-17 21:40:53','2020-02-17 21:40:53','1',0),('5ce79da03dbedef627e8c6fb002b1a29',7,'系统是否','sys_yes_no','1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','系统是否列表',1,'2020-02-17 21:40:24','2020-02-17 23:28:38','1',0),('6472ff63369e0118d2e0b907437d631d',19,'反馈状态','sys_feedback_status','1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','反馈状态',1,'2020-03-16 09:20:06','2020-03-16 09:20:06','1',0),('6bf52bf12dce9d0bc56f2d0e10ceccbe',21,'菜单类型','sys_menu_type','1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','菜单类型',1,'2020-03-21 09:27:49','2020-03-21 09:27:49','1',0),('80dfd5fa0b8226c8c0102da80cc6fedb',14,'菜单等级','sys_menu_level','1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','菜单管理 菜单等级',1,'2020-02-19 08:45:01','2020-02-19 08:45:01','1',0),('861dfd0f77c8b053d40e020f23702df4',3,'菜单状态','sys_show_hide','1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','菜单状态列表',1,'2020-02-16 10:48:38','2020-03-22 12:19:23','1',3),('904965b87673d2dd762c9ac2b6726813',13,'图片显示优先级','sys_picture_priority','1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','七牛云和本地的图片显示优先级',1,'2020-02-18 09:44:59','2020-02-18 09:44:59','1',0),('94ba24e6adb46cd094bb2217f1028285',11,'原创状态','sys_original_status','1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','原创状态列表',1,'2020-02-17 21:45:52','2020-02-17 23:31:37','1',1),('b0c90de7ebeb138e9a0487f6ba86275a',5,'操作类型','sys_oper_type','1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','操作类型',1,'2020-02-16 12:56:40','2020-02-16 12:56:40','1',0),('ba386b930c4a3580357b1df8a2e24c8a',12,'存储区域','sys_storage_region','1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','七牛云存储区域',1,'2020-02-17 23:36:21','2020-02-17 23:36:21','1',0),('d3d9f373ae0c344fa0a24eadd23a191b',17,'评论类型','sys_comment_type','1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','评论类型',1,'2020-03-15 08:47:37','2020-03-15 08:47:37','1',0),('e2fa1d1024a2570f13ec7f684c08bd25',2,'用户性别','sys_user_sex','1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','用户性别列表',1,'2020-02-16 10:40:49','2020-02-17 23:31:49','1',2),('e582ff889b2e64fffed194737d78fa98',9,'推荐等级','sys_recommend_level','1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','推荐等级列表',1,'2020-02-17 21:41:59','2020-02-17 21:41:59','1',0),('e7a80c0adce2b69035dfa505d998ba74',6,'系统开关','sys_normal_disable','1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','系统开关列表',1,'2020-02-17 21:38:55','2020-02-17 21:40:00','1',0),('f4c0b7c14e1857a8453af396e1537556',10,'发布状态','sys_publish_status','1f01cd1d2f474743b241d74008b12333','1f01cd1d2f474743b241d74008b12333','发布状态列表',1,'2020-02-17 21:44:09','2020-02-17 21:44:09','1',0);

/*Table structure for table `t_sys_log` */

DROP TABLE IF EXISTS `t_sys_log`;

CREATE TABLE `t_sys_log` (
  `uid` varchar(32) NOT NULL COMMENT '唯一uid',
  `user_name` varchar(255) NOT NULL COMMENT '用户名',
  `admin_uid` varchar(32) DEFAULT NULL COMMENT '管理员uid',
  `ip` varchar(50) DEFAULT NULL COMMENT '请求ip地址',
  `url` varchar(255) DEFAULT NULL COMMENT '请求url',
  `type` varchar(32) DEFAULT NULL COMMENT '请求方式',
  `class_path` varchar(255) DEFAULT NULL COMMENT '请求类路径',
  `method` varchar(32) DEFAULT NULL COMMENT '请求方法名',
  `params` longtext COMMENT '请求参数',
  `operation` varchar(32) DEFAULT NULL COMMENT '描述',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `ip_source` varchar(255) DEFAULT NULL COMMENT 'ip来源',
  `spend_time` int(11) DEFAULT '0' COMMENT '方法请求花费的时间',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_log` */

/*Table structure for table `t_system_config` */

DROP TABLE IF EXISTS `t_system_config`;

CREATE TABLE `t_system_config` (
  `uid` varchar(32) NOT NULL COMMENT '主键',
  `qi_niu_access_key` varchar(255) DEFAULT NULL COMMENT '七牛云公钥',
  `qi_niu_secret_key` varchar(255) DEFAULT NULL COMMENT '七牛云私钥',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱账号',
  `email_user_name` varchar(255) DEFAULT NULL COMMENT '邮箱发件人用户名',
  `email_password` varchar(255) DEFAULT NULL COMMENT '邮箱密码',
  `smtp_address` varchar(20) DEFAULT NULL COMMENT 'SMTP地址',
  `smtp_port` varchar(6) DEFAULT '1' COMMENT 'SMTP端口',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `qi_niu_bucket` varchar(255) DEFAULT NULL COMMENT '七牛云上传空间',
  `qi_niu_area` varchar(10) DEFAULT NULL COMMENT '七牛云存储区域 华东（z0），华北(z1)，华南(z2)，北美(na0)，东南亚(as0)',
  `upload_qi_niu` varchar(1) DEFAULT '1' COMMENT '图片是否上传七牛云 (0:否， 1：是)',
  `upload_local` varchar(1) DEFAULT '1' COMMENT '图片是否上传本地存储 (0:否， 1：是)',
  `picture_priority` varchar(1) DEFAULT '1' COMMENT '图片显示优先级（ 1 展示 七牛云,  0 本地）',
  `qi_niu_picture_base_url` varchar(255) DEFAULT NULL COMMENT '七牛云域名前缀：http://images.moguit.cn',
  `local_picture_base_url` varchar(255) DEFAULT NULL COMMENT '本地服务器域名前缀：http://localhost:8600',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统配置表';

/*Data for the table `t_system_config` */

insert  into `t_system_config`(`uid`,`qi_niu_access_key`,`qi_niu_secret_key`,`email`,`email_user_name`,`email_password`,`smtp_address`,`smtp_port`,`status`,`create_time`,`update_time`,`qi_niu_bucket`,`qi_niu_area`,`upload_qi_niu`,`upload_local`,`picture_priority`,`qi_niu_picture_base_url`,`local_picture_base_url`) values ('37d492e35dc6e3fbb9dfedfd2079a123','','','mogublog@163.com',NULL,'mogu2018',NULL,'',1,'2020-01-29 19:14:26','2020-01-29 19:14:26','','','0','1','0','','http://localhost:8600/');

/*Table structure for table `t_tag` */

DROP TABLE IF EXISTS `t_tag`;

CREATE TABLE `t_tag` (
  `uid` varchar(32) NOT NULL COMMENT '唯一uid',
  `content` varchar(1000) DEFAULT NULL COMMENT '标签内容',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `click_count` int(11) DEFAULT '0' COMMENT '标签简介',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `sort` int(11) DEFAULT '0' COMMENT '排序字段，越大越靠前',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标签表';

/*Data for the table `t_tag` */

insert  into `t_tag`(`uid`,`content`,`status`,`click_count`,`create_time`,`update_time`,`sort`) values ('20dcdc364266a023f854b963a8594755','测试标签3',0,2,'2020-02-19 21:43:49','2020-02-19 21:43:49',0),('2d35ec53be17b3e825b271720bcda541','123',0,0,'2020-03-20 09:19:52','2020-03-20 09:19:52',0),('5c4c541e600ff422ccb371ee788f59d6','测试标签',1,1,'2020-01-30 22:07:03','2020-01-30 22:07:03',12),('6b0ba63beabccc91c4f8fb938984f8a3','测试标签2',1,1,'2020-01-30 22:07:10','2020-01-30 22:07:10',11),('aec2763279cc8b46a528c64b00351f69','测试3',0,0,'2020-03-22 12:18:02','2020-03-22 12:18:02',0);

/*Table structure for table `t_todo` */

DROP TABLE IF EXISTS `t_todo`;

CREATE TABLE `t_todo` (
  `uid` varchar(32) NOT NULL COMMENT '唯一uid',
  `admin_uid` varchar(32) DEFAULT NULL COMMENT '管理员uid',
  `text` varchar(255) DEFAULT NULL COMMENT '内容',
  `done` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '表示事项是否完成（0：未完成 1：已完成）',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代办事项表';

/*Data for the table `t_todo` */

insert  into `t_todo`(`uid`,`admin_uid`,`text`,`done`,`status`,`create_time`,`update_time`) values ('2ed69c3adfe60ce3df5bc300f6c6825f','1723ad77a1ca06b29a011471036a2dd6','我是已经完成的代办事项',1,1,'2020-03-23 08:07:49','2020-03-23 08:07:49'),('309d869db882c9e0025f6f181b657cb6','1723ad77a1ca06b29a011471036a2dd6','我是代办事项2',0,1,'2020-03-23 08:07:40','2020-03-23 08:07:40'),('41da90f73049eb428b70235eb791df2c','1f01cd1d2f474743b241d74008b12333','add',0,1,'2020-03-23 08:06:21','2020-03-23 08:06:21'),('700f3e94f5b5c9f1b6d0c8599c2e98f2','1723ad77a1ca06b29a011471036a2dd6','我是代办事项5',0,1,'2020-03-23 08:08:16','2020-03-23 08:08:16'),('81576c796f8d1086a7789e088763b8fb','1723ad77a1ca06b29a011471036a2dd6','我是代办事项3',0,1,'2020-03-23 08:08:00','2020-03-23 08:08:00'),('d8045d8ae222443c163ff479f413987b','1723ad77a1ca06b29a011471036a2dd6','我是代办事项1',0,1,'2020-03-23 08:07:32','2020-03-23 08:07:32'),('f046531905026dab8389ac405389aad2','1723ad77a1ca06b29a011471036a2dd6','我是代办事项4',0,1,'2020-03-23 08:08:10','2020-03-23 08:08:10');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `uid` varchar(32) NOT NULL COMMENT '唯一uid',
  `user_name` varchar(255) NOT NULL COMMENT '用户名',
  `pass_word` varchar(32) NOT NULL COMMENT '密码',
  `gender` tinyint(1) unsigned DEFAULT NULL COMMENT '性别(1:男2:女)',
  `avatar` varchar(100) DEFAULT NULL COMMENT '个人头像',
  `email` varchar(60) DEFAULT NULL COMMENT '邮箱',
  `birthday` date DEFAULT NULL COMMENT '出生年月日',
  `mobile` varchar(50) DEFAULT NULL COMMENT '手机',
  `valid_code` varchar(50) DEFAULT NULL COMMENT '邮箱验证码',
  `summary` varchar(200) DEFAULT NULL COMMENT '自我简介最多150字',
  `login_count` int(11) unsigned DEFAULT '0' COMMENT '登录次数',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(50) DEFAULT '127.0.0.1' COMMENT '最后登录IP',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `source` varchar(255) DEFAULT NULL COMMENT '资料来源',
  `uuid` varchar(255) DEFAULT NULL COMMENT '平台uuid',
  `qq_number` varchar(20) DEFAULT NULL COMMENT 'QQ号',
  `we_chat` varchar(255) DEFAULT NULL COMMENT '微信号',
  `occupation` varchar(255) DEFAULT NULL COMMENT '职业',
  `comment_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '评论状态 1:正常 0:禁言',
  `ip_source` varchar(255) DEFAULT NULL COMMENT 'ip来源',
  `browser` varchar(255) DEFAULT NULL COMMENT '浏览器',
  `os` varchar(255) DEFAULT NULL COMMENT '操作系统',
  `start_email_notification` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启邮件通知 1:开启 0:关闭',
  `user_tag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户标签：0：普通，1：管理员，2：博主 等',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `t_user` */

insert  into `t_user`(`uid`,`user_name`,`pass_word`,`gender`,`avatar`,`email`,`birthday`,`mobile`,`valid_code`,`summary`,`login_count`,`last_login_time`,`last_login_ip`,`status`,`create_time`,`update_time`,`nick_name`,`source`,`uuid`,`qq_number`,`we_chat`,`occupation`,`comment_status`,`ip_source`,`browser`,`os`,`start_email_notification`,`user_tag`) values ('25675d78f11749d4edaf15e36d046e3b','moguBlog_GITHUB_18610136','972d768bb099b1de8fd2362275256fac',2,'27e13408288ad70a59f453cfc589e0bf','xzx19950624@qq.com','1995-08-24',NULL,'a367d6d1483bd8553dbc634678a8597f0bd89eef','Java搬砖工',11,'2020-03-20 02:21:48','192.168.80.1',1,'2020-03-12 02:14:12','2020-03-12 02:14:12','Streamlet','GITHUB','18610136','1595833114',NULL,'Java搬砖工',1,'XX|XX|内网IP|内网IP','Chrome-80.0.3987.132','Windows',1,2),('a16b223b559e25c8af7187285fec5a63','moguBlog_GITEE_6530827','972d768bb099b1de8fd2362275256fac',1,'5881b531125417074150eaaa80d7a222',NULL,NULL,NULL,NULL,NULL,0,'2020-03-07 21:52:44','192.168.80.1',1,'2020-03-07 21:52:43','2020-03-07 21:52:43','陌溪','GITEE','6530827',NULL,NULL,NULL,1,NULL,NULL,NULL,0,0);

/*Table structure for table `t_visitor` */

DROP TABLE IF EXISTS `t_visitor`;

CREATE TABLE `t_visitor` (
  `uid` varchar(32) NOT NULL COMMENT '唯一uid',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `login_count` int(11) unsigned DEFAULT '0' COMMENT '登录次数',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(50) DEFAULT '127.0.0.1' COMMENT '最后登录IP',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游客表';

/*Data for the table `t_visitor` */

/*Table structure for table `t_web_config` */

DROP TABLE IF EXISTS `t_web_config`;

CREATE TABLE `t_web_config` (
  `uid` varchar(32) NOT NULL COMMENT '主键',
  `logo` varchar(255) NOT NULL COMMENT 'logo(文件UID)',
  `name` varchar(255) NOT NULL COMMENT '网站名称',
  `summary` varchar(255) NOT NULL COMMENT '介绍',
  `keyword` varchar(255) NOT NULL COMMENT '关键字',
  `author` varchar(255) NOT NULL COMMENT '作者',
  `record_num` varchar(255) NOT NULL COMMENT '备案号',
  `start_comment` varchar(1) DEFAULT '1' COMMENT '是否开启评论(0:否 1:是)',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `ali_pay` varchar(32) DEFAULT NULL COMMENT '支付宝收款码FileId',
  `weixin_pay` varchar(32) DEFAULT NULL COMMENT '微信收款码FileId',
  `github` varchar(255) DEFAULT NULL COMMENT 'github地址',
  `gitee` varchar(255) DEFAULT NULL COMMENT 'gitee地址',
  `qq_number` varchar(20) DEFAULT NULL COMMENT 'QQ号',
  `qq_group` varchar(20) DEFAULT NULL COMMENT 'QQ群',
  `we_chat` varchar(255) DEFAULT NULL COMMENT '微信号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `show_list` varchar(255) DEFAULT NULL COMMENT '显示的列表（用于控制邮箱、QQ、QQ群、Github、Gitee、微信是否显示在前端）',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_web_config` */

insert  into `t_web_config`(`uid`,`logo`,`name`,`summary`,`keyword`,`author`,`record_num`,`start_comment`,`status`,`create_time`,`update_time`,`title`,`ali_pay`,`weixin_pay`,`github`,`gitee`,`qq_number`,`qq_group`,`we_chat`,`email`,`show_list`) values ('a331e4933cf54afcbb8c0cb11ec0830e',',dd34fc59ff945ca781cd46c23f7d7b65','蘑菇博客','一个专注于技术分享的博客平台，大家以共同学习，乐于分享，拥抱开源的价值观进行学习交流','\"蘑菇博客,蘑菇社区,蘑菇技术社区,,蘑菇IT社区,IT社区,技术社区,Java技术分享,Spring教程,开发者社区','陌溪','赣ICP备18014504号','1',1,'2018-11-17 08:15:27','2018-11-17 08:15:27','一个专注于技术分享的博客平台','5e4365f45a4708e17f2fe300d3279bf5','6d83d6146896f9f27f07404fbb05c90f','https://github.com/moxi624','https://gitee.com/moxi159753','1595833114','950309755','','1595833114@qq.com','[\"1\",\"2\",\"3\",\"4\",\"5\"]');

/*Table structure for table `t_web_visit` */

DROP TABLE IF EXISTS `t_web_visit`;

CREATE TABLE `t_web_visit` (
  `uid` varchar(32) NOT NULL COMMENT '主键',
  `user_uid` varchar(255) DEFAULT NULL COMMENT '用户uid',
  `ip` varchar(255) DEFAULT NULL COMMENT '访问ip地址',
  `behavior` varchar(255) DEFAULT NULL COMMENT '用户行为',
  `module_uid` varchar(255) DEFAULT NULL COMMENT '模块uid（文章uid，标签uid，分类uid）',
  `other_data` varchar(255) DEFAULT NULL COMMENT '附加数据(比如搜索内容)',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `os` varchar(255) DEFAULT NULL COMMENT '操作系统',
  `browser` varchar(255) DEFAULT NULL COMMENT '浏览器',
  `ip_source` varchar(255) DEFAULT NULL COMMENT 'ip来源',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Web访问记录表';

/*Data for the table `t_web_visit` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
