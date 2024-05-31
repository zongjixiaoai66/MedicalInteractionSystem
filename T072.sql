/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t072`;
CREATE DATABASE IF NOT EXISTS `t072` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t072`;

DROP TABLE IF EXISTS `bingrenbingli`;
CREATE TABLE IF NOT EXISTS `bingrenbingli` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yiyuanbianhao` varchar(200) DEFAULT NULL COMMENT '医院编号',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `hunyin` varchar(200) DEFAULT NULL COMMENT '婚姻',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xianzhudizhi` varchar(200) DEFAULT NULL COMMENT '现住地址',
  `ruyuanriqi` varchar(200) DEFAULT NULL COMMENT '入院日期',
  `zhusu` longtext COMMENT '主诉',
  `xianbingshi` longtext COMMENT '现病史',
  `jiwangshi` longtext COMMENT '既往史',
  `gerenshi` longtext COMMENT '个人史',
  `jiazushi` longtext COMMENT '家族史',
  `tigejiancha` longtext COMMENT '体格检查',
  `binglizhaiyao` longtext COMMENT '病历摘要',
  `chubuzhenduan` longtext COMMENT '初步诊断',
  `yishengzhanghao` varchar(200) DEFAULT NULL COMMENT '医生账号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb3 COMMENT='病人病历';

DELETE FROM `bingrenbingli`;
INSERT INTO `bingrenbingli` (`id`, `addtime`, `zhanghao`, `xingming`, `yiyuanbianhao`, `xingbie`, `hunyin`, `nianling`, `xianzhudizhi`, `ruyuanriqi`, `zhusu`, `xianbingshi`, `jiwangshi`, `gerenshi`, `jiazushi`, `tigejiancha`, `binglizhaiyao`, `chubuzhenduan`, `yishengzhanghao`, `yishengxingming`) VALUES
	(111, '2021-04-20 03:49:06', '账号1', '姓名1', '医院编号1', '男', '婚姻1', '年龄1', '现住地址1', '入院日期1', '主诉1', '现病史1', '既往史1', '个人史1', '家族史1', '体格检查1', '病历摘要1', '初步诊断1', '医生账号1', '医生姓名1'),
	(112, '2021-04-20 03:49:06', '账号2', '姓名2', '医院编号2', '男', '婚姻2', '年龄2', '现住地址2', '入院日期2', '主诉2', '现病史2', '既往史2', '个人史2', '家族史2', '体格检查2', '病历摘要2', '初步诊断2', '医生账号2', '医生姓名2'),
	(113, '2021-04-20 03:49:06', '账号3', '姓名3', '医院编号3', '男', '婚姻3', '年龄3', '现住地址3', '入院日期3', '主诉3', '现病史3', '既往史3', '个人史3', '家族史3', '体格检查3', '病历摘要3', '初步诊断3', '医生账号3', '医生姓名3'),
	(114, '2021-04-20 03:49:06', '账号4', '姓名4', '医院编号4', '男', '婚姻4', '年龄4', '现住地址4', '入院日期4', '主诉4', '现病史4', '既往史4', '个人史4', '家族史4', '体格检查4', '病历摘要4', '初步诊断4', '医生账号4', '医生姓名4'),
	(115, '2021-04-20 03:49:06', '账号5', '姓名5', '医院编号5', '男', '婚姻5', '年龄5', '现住地址5', '入院日期5', '主诉5', '现病史5', '既往史5', '个人史5', '家族史5', '体格检查5', '病历摘要5', '初步诊断5', '医生账号5', '医生姓名5'),
	(116, '2021-04-20 03:49:06', '账号6', '姓名6', '医院编号6', '男', '婚姻6', '年龄6', '现住地址6', '入院日期6', '主诉6', '现病史6', '既往史6', '个人史6', '家族史6', '体格检查6', '病历摘要6', '初步诊断6', '医生账号6', '医生姓名6');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootr2r43/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootr2r43/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootr2r43/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discussyishengzhanshi`;
CREATE TABLE IF NOT EXISTS `discussyishengzhanshi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb3 COMMENT='医生展示评论表';

DELETE FROM `discussyishengzhanshi`;
INSERT INTO `discussyishengzhanshi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(191, '2021-04-20 03:49:06', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(192, '2021-04-20 03:49:06', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(193, '2021-04-20 03:49:07', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(194, '2021-04-20 03:49:07', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(195, '2021-04-20 03:49:07', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(196, '2021-04-20 03:49:07', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `discussyiyuanwenzhang`;
CREATE TABLE IF NOT EXISTS `discussyiyuanwenzhang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb3 COMMENT='医院文章评论表';

DELETE FROM `discussyiyuanwenzhang`;
INSERT INTO `discussyiyuanwenzhang` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(181, '2021-04-20 03:49:06', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(182, '2021-04-20 03:49:06', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(183, '2021-04-20 03:49:06', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(184, '2021-04-20 03:49:06', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(185, '2021-04-20 03:49:06', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(186, '2021-04-20 03:49:06', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `discussyuanquzhanshi`;
CREATE TABLE IF NOT EXISTS `discussyuanquzhanshi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb3 COMMENT='院区展示评论表';

DELETE FROM `discussyuanquzhanshi`;
INSERT INTO `discussyuanquzhanshi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(171, '2021-04-20 03:49:06', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(172, '2021-04-20 03:49:06', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(173, '2021-04-20 03:49:06', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(174, '2021-04-20 03:49:06', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(175, '2021-04-20 03:49:06', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(176, '2021-04-20 03:49:06', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707288200406 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1707288188191, '2024-02-07 06:43:07', 11, 64, 'yiyuanwenzhang', '标题4', 'http://localhost:8080/springbootr2r43/upload/yiyuanwenzhang_wenzhangtupian4.jpg'),
	(1707288200405, '2024-02-07 06:43:20', 11, 154, 'yishengzhanshi', '医生姓名4', 'http://localhost:8080/springbootr2r43/upload/yishengzhanshi_zhaopian4.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1619258546231, '1', 'yonghu', '用户', 'db75ik26edjx0uu9pjonfdcnovkf8y7y', '2021-04-24 10:02:30', '2021-04-24 11:02:31'),
	(2, 1, 'admin', 'users', '管理员', 'uonpv8jkmi2fpc9b2fmnskaoyr9atbv7', '2024-02-07 06:34:16', '2024-02-07 07:41:31'),
	(3, 11, '用户1', 'yonghu', '用户', 's75yd0niv4z9n9j3pbi6xgmb71rtagxt', '2024-02-07 06:37:14', '2024-02-07 07:37:14');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-20 03:49:07');

DROP TABLE IF EXISTS `wenzhangleixing`;
CREATE TABLE IF NOT EXISTS `wenzhangleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangleixing` varchar(200) DEFAULT NULL COMMENT '文章类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb3 COMMENT='文章类型';

DELETE FROM `wenzhangleixing`;
INSERT INTO `wenzhangleixing` (`id`, `addtime`, `wenzhangleixing`) VALUES
	(141, '2021-04-20 03:49:06', '文章类型1'),
	(142, '2021-04-20 03:49:06', '文章类型2'),
	(143, '2021-04-20 03:49:06', '文章类型3'),
	(144, '2021-04-20 03:49:06', '文章类型4'),
	(145, '2021-04-20 03:49:06', '文章类型5'),
	(146, '2021-04-20 03:49:06', '文章类型6');

DROP TABLE IF EXISTS `yiliaoanpai`;
CREATE TABLE IF NOT EXISTS `yiliaoanpai` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yiyuanbianhao` varchar(200) DEFAULT NULL COMMENT '医院编号',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `ruyuanriqi` datetime DEFAULT NULL COMMENT '入院日期',
  `ruzhukeshi` varchar(200) DEFAULT NULL COMMENT '入住科室',
  `ruzhufanghao` varchar(200) DEFAULT NULL COMMENT '入住房号',
  `yishengzhanghao` varchar(200) DEFAULT NULL COMMENT '医生账号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `yongyaoanpai` longtext COMMENT '用药安排',
  `yongyaojindu` varchar(200) DEFAULT NULL COMMENT '用药进度',
  `jianchaxiangmuanpai` longtext COMMENT '检查项目安排',
  `xiangmujianchajindu` varchar(200) DEFAULT NULL COMMENT '项目检查进度',
  `hulianpai` longtext COMMENT '护理安排',
  `hulijindu` varchar(200) DEFAULT NULL COMMENT '护理进度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3 COMMENT='医疗安排';

DELETE FROM `yiliaoanpai`;
INSERT INTO `yiliaoanpai` (`id`, `addtime`, `yiyuanbianhao`, `zhanghao`, `xingming`, `ruyuanriqi`, `ruzhukeshi`, `ruzhufanghao`, `yishengzhanghao`, `yishengxingming`, `yongyaoanpai`, `yongyaojindu`, `jianchaxiangmuanpai`, `xiangmujianchajindu`, `hulianpai`, `hulijindu`) VALUES
	(121, '2021-04-20 03:49:06', '医院编号1', '账号1', '姓名1', '2021-04-20 11:49:06', '入住科室1', '入住房号1', '医生账号1', '医生姓名1', '用药安排1', '0', '检查项目安排1', '0', '护理安排1', '0'),
	(122, '2021-04-20 03:49:06', '医院编号2', '账号2', '姓名2', '2021-04-20 11:49:06', '入住科室2', '入住房号2', '医生账号2', '医生姓名2', '用药安排2', '0', '检查项目安排2', '0', '护理安排2', '0'),
	(123, '2021-04-20 03:49:06', '医院编号3', '账号3', '姓名3', '2021-04-20 11:49:06', '入住科室3', '入住房号3', '医生账号3', '医生姓名3', '用药安排3', '0', '检查项目安排3', '0', '护理安排3', '0'),
	(124, '2021-04-20 03:49:06', '医院编号4', '账号4', '姓名4', '2021-04-20 11:49:06', '入住科室4', '入住房号4', '医生账号4', '医生姓名4', '用药安排4', '0', '检查项目安排4', '0', '护理安排4', '0'),
	(125, '2021-04-20 03:49:06', '医院编号5', '账号5', '姓名5', '2021-04-20 11:49:06', '入住科室5', '入住房号5', '医生账号5', '医生姓名5', '用药安排5', '0', '检查项目安排5', '0', '护理安排5', '0'),
	(126, '2021-04-20 03:49:06', '医院编号6', '账号6', '姓名6', '2021-04-20 11:49:06', '入住科室6', '入住房号6', '医生账号6', '医生姓名6', '用药安排6', '0', '检查项目安排6', '0', '护理安排6', '0');

DROP TABLE IF EXISTS `yisheng`;
CREATE TABLE IF NOT EXISTS `yisheng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishengzhanghao` varchar(200) NOT NULL COMMENT '医生账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) NOT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `chushengriqi` date DEFAULT NULL COMMENT '出生日期',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `gerenjianjie` longtext COMMENT '个人简介',
  `zhuanyetezhang` varchar(200) DEFAULT NULL COMMENT '专业特长',
  `yiyuanbianhao` varchar(200) NOT NULL COMMENT '医院编号',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishengzhanghao` (`yishengzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 COMMENT='医生';

DELETE FROM `yisheng`;
INSERT INTO `yisheng` (`id`, `addtime`, `yishengzhanghao`, `mima`, `yishengxingming`, `xingbie`, `chushengriqi`, `shouji`, `youxiang`, `shenfenzheng`, `nianling`, `keshi`, `zhicheng`, `zhiwu`, `gerenjianjie`, `zhuanyetezhang`, `yiyuanbianhao`, `zhaopian`, `sfsh`, `shhf`) VALUES
	(101, '2021-04-20 03:49:06', '医生1', '123456', '医生姓名1', '男', '2021-04-20', '13823888881', '773890001@qq.com', '440300199101010001', '年龄1', '科室1', '职称1', '职务1', '个人简介1', '专业特长1', '医院编号1', 'http://localhost:8080/springbootr2r43/upload/yisheng_zhaopian1.jpg', '是', ''),
	(102, '2021-04-20 03:49:06', '医生2', '123456', '医生姓名2', '男', '2021-04-20', '13823888882', '773890002@qq.com', '440300199202020002', '年龄2', '科室2', '职称2', '职务2', '个人简介2', '专业特长2', '医院编号2', 'http://localhost:8080/springbootr2r43/upload/yisheng_zhaopian2.jpg', '是', ''),
	(103, '2021-04-20 03:49:06', '医生3', '123456', '医生姓名3', '男', '2021-04-20', '13823888883', '773890003@qq.com', '440300199303030003', '年龄3', '科室3', '职称3', '职务3', '个人简介3', '专业特长3', '医院编号3', 'http://localhost:8080/springbootr2r43/upload/yisheng_zhaopian3.jpg', '是', ''),
	(104, '2021-04-20 03:49:06', '医生4', '123456', '医生姓名4', '男', '2021-04-20', '13823888884', '773890004@qq.com', '440300199404040004', '年龄4', '科室4', '职称4', '职务4', '个人简介4', '专业特长4', '医院编号4', 'http://localhost:8080/springbootr2r43/upload/yisheng_zhaopian4.jpg', '是', ''),
	(105, '2021-04-20 03:49:06', '医生5', '123456', '医生姓名5', '男', '2021-04-20', '13823888885', '773890005@qq.com', '440300199505050005', '年龄5', '科室5', '职称5', '职务5', '个人简介5', '专业特长5', '医院编号5', 'http://localhost:8080/springbootr2r43/upload/yisheng_zhaopian5.jpg', '是', ''),
	(106, '2021-04-20 03:49:06', '医生6', '123456', '医生姓名6', '男', '2021-04-20', '13823888886', '773890006@qq.com', '440300199606060006', '年龄6', '科室6', '职称6', '职务6', '个人简介6', '专业特长6', '医院编号6', 'http://localhost:8080/springbootr2r43/upload/yisheng_zhaopian6.jpg', '是', '');

DROP TABLE IF EXISTS `yishengzhanshi`;
CREATE TABLE IF NOT EXISTS `yishengzhanshi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishengzhanghao` varchar(200) DEFAULT NULL COMMENT '医生账号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `chushengriqi` varchar(200) DEFAULT NULL COMMENT '出生日期',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `gerenjianjie` longtext COMMENT '个人简介',
  `zhuanyetezhang` varchar(200) DEFAULT NULL COMMENT '专业特长',
  `yiyuanbianhao` varchar(200) DEFAULT NULL COMMENT '医院编号',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb3 COMMENT='医生展示';

DELETE FROM `yishengzhanshi`;
INSERT INTO `yishengzhanshi` (`id`, `addtime`, `yishengzhanghao`, `yishengxingming`, `xingbie`, `chushengriqi`, `nianling`, `keshi`, `zhicheng`, `zhiwu`, `gerenjianjie`, `zhuanyetezhang`, `yiyuanbianhao`, `zhaopian`, `thumbsupnum`, `crazilynum`) VALUES
	(151, '2021-04-20 03:49:06', '医生账号1', '医生姓名1', '性别1', '出生日期1', '年龄1', '科室1', '职称1', '职务1', '个人简介1', '专业特长1', '医院编号1', 'http://localhost:8080/springbootr2r43/upload/yishengzhanshi_zhaopian1.jpg', 1, 1),
	(152, '2021-04-20 03:49:06', '医生账号2', '医生姓名2', '性别2', '出生日期2', '年龄2', '科室2', '职称2', '职务2', '个人简介2', '专业特长2', '医院编号2', 'http://localhost:8080/springbootr2r43/upload/yishengzhanshi_zhaopian2.jpg', 2, 2),
	(153, '2021-04-20 03:49:06', '医生账号3', '医生姓名3', '性别3', '出生日期3', '年龄3', '科室3', '职称3', '职务3', '个人简介3', '专业特长3', '医院编号3', 'http://localhost:8080/springbootr2r43/upload/yishengzhanshi_zhaopian3.jpg', 3, 3),
	(154, '2021-04-20 03:49:06', '医生账号4', '医生姓名4', '性别4', '出生日期4', '年龄4', '科室4', '职称4', '职务4', '个人简介4', '专业特长4', '医院编号4', 'http://localhost:8080/springbootr2r43/upload/yishengzhanshi_zhaopian4.jpg', 4, 4),
	(155, '2021-04-20 03:49:06', '医生账号5', '医生姓名5', '性别5', '出生日期5', '年龄5', '科室5', '职称5', '职务5', '个人简介5', '专业特长5', '医院编号5', 'http://localhost:8080/springbootr2r43/upload/yishengzhanshi_zhaopian5.jpg', 5, 5),
	(156, '2021-04-20 03:49:06', '医生账号6', '医生姓名6', '性别6', '出生日期6', '年龄6', '科室6', '职称6', '职务6', '个人简介6', '专业特长6', '医院编号6', 'http://localhost:8080/springbootr2r43/upload/yishengzhanshi_zhaopian6.jpg', 6, 6);

DROP TABLE IF EXISTS `yiyuan`;
CREATE TABLE IF NOT EXISTS `yiyuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yiyuanbianhao` varchar(200) NOT NULL COMMENT '医院编号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yiyuanmingcheng` varchar(200) NOT NULL COMMENT '医院名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `fuzerenshouji` varchar(200) DEFAULT NULL COMMENT '负责人手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `fuzerenshenfenzheng` varchar(200) DEFAULT NULL COMMENT '负责人身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yiyuanbianhao` (`yiyuanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='医院';

DELETE FROM `yiyuan`;
INSERT INTO `yiyuan` (`id`, `addtime`, `yiyuanbianhao`, `mima`, `yiyuanmingcheng`, `fuzeren`, `fuzerenshouji`, `youxiang`, `fuzerenshenfenzheng`) VALUES
	(21, '2021-04-20 03:49:06', '医院1', '123456', '医院名称1', '负责人1', '13823888881', '773890001@qq.com', '440300199101010001'),
	(22, '2021-04-20 03:49:06', '医院2', '123456', '医院名称2', '负责人2', '13823888882', '773890002@qq.com', '440300199202020002'),
	(23, '2021-04-20 03:49:06', '医院3', '123456', '医院名称3', '负责人3', '13823888883', '773890003@qq.com', '440300199303030003'),
	(24, '2021-04-20 03:49:06', '医院4', '123456', '医院名称4', '负责人4', '13823888884', '773890004@qq.com', '440300199404040004'),
	(25, '2021-04-20 03:49:06', '医院5', '123456', '医院名称5', '负责人5', '13823888885', '773890005@qq.com', '440300199505050005'),
	(26, '2021-04-20 03:49:06', '医院6', '123456', '医院名称6', '负责人6', '13823888886', '773890006@qq.com', '440300199606060006');

DROP TABLE IF EXISTS `yiyuangonggao`;
CREATE TABLE IF NOT EXISTS `yiyuangonggao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` varchar(200) DEFAULT NULL COMMENT '内容',
  `gonggaoshijian` datetime DEFAULT NULL COMMENT '公告时间',
  `gonggaowenjian` varchar(200) DEFAULT NULL COMMENT '公告文件',
  `gonggaotupian` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `yiyuanbianhao` varchar(200) DEFAULT NULL COMMENT '医院编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 COMMENT='医院公告';

DELETE FROM `yiyuangonggao`;
INSERT INTO `yiyuangonggao` (`id`, `addtime`, `biaoti`, `neirong`, `gonggaoshijian`, `gonggaowenjian`, `gonggaotupian`, `yiyuanbianhao`) VALUES
	(81, '2021-04-20 03:49:06', '标题1', '内容1', '2021-04-20 11:49:06', '', 'http://localhost:8080/springbootr2r43/upload/yiyuangonggao_gonggaotupian1.jpg', '医院编号1'),
	(82, '2021-04-20 03:49:06', '标题2', '内容2', '2021-04-20 11:49:06', '', 'http://localhost:8080/springbootr2r43/upload/yiyuangonggao_gonggaotupian2.jpg', '医院编号2'),
	(83, '2021-04-20 03:49:06', '标题3', '内容3', '2021-04-20 11:49:06', '', 'http://localhost:8080/springbootr2r43/upload/yiyuangonggao_gonggaotupian3.jpg', '医院编号3'),
	(84, '2021-04-20 03:49:06', '标题4', '内容4', '2021-04-20 11:49:06', '', 'http://localhost:8080/springbootr2r43/upload/yiyuangonggao_gonggaotupian4.jpg', '医院编号4'),
	(85, '2021-04-20 03:49:06', '标题5', '内容5', '2021-04-20 11:49:06', '', 'http://localhost:8080/springbootr2r43/upload/yiyuangonggao_gonggaotupian5.jpg', '医院编号5'),
	(86, '2021-04-20 03:49:06', '标题6', '内容6', '2021-04-20 11:49:06', '', 'http://localhost:8080/springbootr2r43/upload/yiyuangonggao_gonggaotupian6.jpg', '医院编号6');

DROP TABLE IF EXISTS `yiyuangongzuorenyuan`;
CREATE TABLE IF NOT EXISTS `yiyuangongzuorenyuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `chushengriqi` date NOT NULL COMMENT '出生日期',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `bumen` varchar(200) NOT NULL COMMENT '部门',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yiyuanbianhao` varchar(200) DEFAULT NULL COMMENT '医院编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 COMMENT='医院工作人员';

DELETE FROM `yiyuangongzuorenyuan`;
INSERT INTO `yiyuangongzuorenyuan` (`id`, `addtime`, `xingming`, `xingbie`, `nianling`, `chushengriqi`, `xueli`, `bumen`, `zhiwu`, `keshi`, `shenfenzheng`, `shouji`, `touxiang`, `yiyuanbianhao`) VALUES
	(91, '2021-04-20 03:49:06', '姓名1', '男', '年龄1', '2021-04-20', '学历1', '部门1', '职务1', '科室1', '440300199101010001', '13823888881', 'http://localhost:8080/springbootr2r43/upload/yiyuangongzuorenyuan_touxiang1.jpg', '医院编号1'),
	(92, '2021-04-20 03:49:06', '姓名2', '男', '年龄2', '2021-04-20', '学历2', '部门2', '职务2', '科室2', '440300199202020002', '13823888882', 'http://localhost:8080/springbootr2r43/upload/yiyuangongzuorenyuan_touxiang2.jpg', '医院编号2'),
	(93, '2021-04-20 03:49:06', '姓名3', '男', '年龄3', '2021-04-20', '学历3', '部门3', '职务3', '科室3', '440300199303030003', '13823888883', 'http://localhost:8080/springbootr2r43/upload/yiyuangongzuorenyuan_touxiang3.jpg', '医院编号3'),
	(94, '2021-04-20 03:49:06', '姓名4', '男', '年龄4', '2021-04-20', '学历4', '部门4', '职务4', '科室4', '440300199404040004', '13823888884', 'http://localhost:8080/springbootr2r43/upload/yiyuangongzuorenyuan_touxiang4.jpg', '医院编号4'),
	(95, '2021-04-20 03:49:06', '姓名5', '男', '年龄5', '2021-04-20', '学历5', '部门5', '职务5', '科室5', '440300199505050005', '13823888885', 'http://localhost:8080/springbootr2r43/upload/yiyuangongzuorenyuan_touxiang5.jpg', '医院编号5'),
	(96, '2021-04-20 03:49:06', '姓名6', '男', '年龄6', '2021-04-20', '学历6', '部门6', '职务6', '科室6', '440300199606060006', '13823888886', 'http://localhost:8080/springbootr2r43/upload/yiyuangongzuorenyuan_touxiang6.jpg', '医院编号6');

DROP TABLE IF EXISTS `yiyuankeshi`;
CREATE TABLE IF NOT EXISTS `yiyuankeshi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `keshileixing` varchar(200) DEFAULT NULL COMMENT '科室类型',
  `keshijianjie` longtext COMMENT '科室简介',
  `keshirenyuan` longtext COMMENT '科室人员',
  `keshitupian` varchar(200) DEFAULT NULL COMMENT '科室图片',
  `yiyuanbianhao` varchar(200) DEFAULT NULL COMMENT '医院编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='医院科室';

DELETE FROM `yiyuankeshi`;
INSERT INTO `yiyuankeshi` (`id`, `addtime`, `keshimingcheng`, `keshileixing`, `keshijianjie`, `keshirenyuan`, `keshitupian`, `yiyuanbianhao`) VALUES
	(71, '2021-04-20 03:49:06', '科室名称1', '科室类型1', '科室简介1', '科室人员1', 'http://localhost:8080/springbootr2r43/upload/yiyuankeshi_keshitupian1.jpg', '医院编号1'),
	(72, '2021-04-20 03:49:06', '科室名称2', '科室类型2', '科室简介2', '科室人员2', 'http://localhost:8080/springbootr2r43/upload/yiyuankeshi_keshitupian2.jpg', '医院编号2'),
	(73, '2021-04-20 03:49:06', '科室名称3', '科室类型3', '科室简介3', '科室人员3', 'http://localhost:8080/springbootr2r43/upload/yiyuankeshi_keshitupian3.jpg', '医院编号3'),
	(74, '2021-04-20 03:49:06', '科室名称4', '科室类型4', '科室简介4', '科室人员4', 'http://localhost:8080/springbootr2r43/upload/yiyuankeshi_keshitupian4.jpg', '医院编号4'),
	(75, '2021-04-20 03:49:06', '科室名称5', '科室类型5', '科室简介5', '科室人员5', 'http://localhost:8080/springbootr2r43/upload/yiyuankeshi_keshitupian5.jpg', '医院编号5'),
	(76, '2021-04-20 03:49:06', '科室名称6', '科室类型6', '科室简介6', '科室人员6', 'http://localhost:8080/springbootr2r43/upload/yiyuankeshi_keshitupian6.jpg', '医院编号6');

DROP TABLE IF EXISTS `yiyuankeshiyuyue`;
CREATE TABLE IF NOT EXISTS `yiyuankeshiyuyue` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshileixing` varchar(200) DEFAULT NULL COMMENT '科室类型',
  `yiyuanbianhao` varchar(200) DEFAULT NULL COMMENT '医院编号',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb3 COMMENT='医院科室预约';

DELETE FROM `yiyuankeshiyuyue`;
INSERT INTO `yiyuankeshiyuyue` (`id`, `addtime`, `keshileixing`, `yiyuanbianhao`, `keshimingcheng`, `yuyueshijian`, `zhanghao`, `xingming`, `sfsh`, `shhf`) VALUES
	(131, '2021-04-20 03:49:06', '科室类型1', '医院编号1', '科室名称1', '2021-04-20 11:49:06', '账号1', '姓名1', '是', ''),
	(132, '2021-04-20 03:49:06', '科室类型2', '医院编号2', '科室名称2', '2021-04-20 11:49:06', '账号2', '姓名2', '是', ''),
	(133, '2021-04-20 03:49:06', '科室类型3', '医院编号3', '科室名称3', '2021-04-20 11:49:06', '账号3', '姓名3', '是', ''),
	(134, '2021-04-20 03:49:06', '科室类型4', '医院编号4', '科室名称4', '2021-04-20 11:49:06', '账号4', '姓名4', '是', ''),
	(135, '2021-04-20 03:49:06', '科室类型5', '医院编号5', '科室名称5', '2021-04-20 11:49:06', '账号5', '姓名5', '是', ''),
	(136, '2021-04-20 03:49:06', '科室类型6', '医院编号6', '科室名称6', '2021-04-20 11:49:06', '账号6', '姓名6', '是', '');

DROP TABLE IF EXISTS `yiyuanliebiao`;
CREATE TABLE IF NOT EXISTS `yiyuanliebiao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yiyuanbianhao` varchar(200) NOT NULL COMMENT '医院编号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yiyuanmingcheng` varchar(200) NOT NULL COMMENT '医院名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `fuzerenshouji` varchar(200) DEFAULT NULL COMMENT '负责人手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `fuzerenshenfenzheng` varchar(200) DEFAULT NULL COMMENT '负责人身份证',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhuceshijian` datetime DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yiyuanbianhao` (`yiyuanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='医院列表';

DELETE FROM `yiyuanliebiao`;
INSERT INTO `yiyuanliebiao` (`id`, `addtime`, `yiyuanbianhao`, `mima`, `yiyuanmingcheng`, `fuzeren`, `fuzerenshouji`, `youxiang`, `fuzerenshenfenzheng`, `zhanghao`, `xingming`, `zhuceshijian`) VALUES
	(41, '2021-04-20 03:49:06', '医院编号1', '密码1', '医院名称1', '负责人1', '13823888881', '773890001@qq.com', '440300199101010001', '账号1', '姓名1', '2021-04-20 11:49:06'),
	(42, '2021-04-20 03:49:06', '医院编号2', '密码2', '医院名称2', '负责人2', '13823888882', '773890002@qq.com', '440300199202020002', '账号2', '姓名2', '2021-04-20 11:49:06'),
	(43, '2021-04-20 03:49:06', '医院编号3', '密码3', '医院名称3', '负责人3', '13823888883', '773890003@qq.com', '440300199303030003', '账号3', '姓名3', '2021-04-20 11:49:06'),
	(44, '2021-04-20 03:49:06', '医院编号4', '密码4', '医院名称4', '负责人4', '13823888884', '773890004@qq.com', '440300199404040004', '账号4', '姓名4', '2021-04-20 11:49:06'),
	(45, '2021-04-20 03:49:06', '医院编号5', '密码5', '医院名称5', '负责人5', '13823888885', '773890005@qq.com', '440300199505050005', '账号5', '姓名5', '2021-04-20 11:49:06'),
	(46, '2021-04-20 03:49:06', '医院编号6', '密码6', '医院名称6', '负责人6', '13823888886', '773890006@qq.com', '440300199606060006', '账号6', '姓名6', '2021-04-20 11:49:06');

DROP TABLE IF EXISTS `yiyuanwenzhang`;
CREATE TABLE IF NOT EXISTS `yiyuanwenzhang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `wenzhangleixing` varchar(200) DEFAULT NULL COMMENT '文章类型',
  `neirong` longtext COMMENT '内容',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `fabiaoshijian` datetime DEFAULT NULL COMMENT '发表时间',
  `wenzhangtupian` varchar(200) DEFAULT NULL COMMENT '文章图片',
  `yiyuanbianhao` varchar(200) DEFAULT NULL COMMENT '医院编号',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='医院文章';

DELETE FROM `yiyuanwenzhang`;
INSERT INTO `yiyuanwenzhang` (`id`, `addtime`, `biaoti`, `wenzhangleixing`, `neirong`, `zuozhe`, `shipin`, `fabiaoshijian`, `wenzhangtupian`, `yiyuanbianhao`, `thumbsupnum`, `crazilynum`) VALUES
	(61, '2021-04-20 03:49:06', '标题1', '文章类型1', '内容1', '作者1', '', '2021-04-20 11:49:06', 'http://localhost:8080/springbootr2r43/upload/yiyuanwenzhang_wenzhangtupian1.jpg', '医院编号1', 1, 1),
	(62, '2021-04-20 03:49:06', '标题2', '文章类型2', '内容2', '作者2', '', '2021-04-20 11:49:06', 'http://localhost:8080/springbootr2r43/upload/yiyuanwenzhang_wenzhangtupian2.jpg', '医院编号2', 2, 2),
	(63, '2021-04-20 03:49:06', '标题3', '文章类型3', '内容3', '作者3', '', '2021-04-20 11:49:06', 'http://localhost:8080/springbootr2r43/upload/yiyuanwenzhang_wenzhangtupian3.jpg', '医院编号3', 3, 3),
	(64, '2021-04-20 03:49:06', '标题4', '文章类型4', '内容4', '作者4', '', '2021-04-20 11:49:06', 'http://localhost:8080/springbootr2r43/upload/yiyuanwenzhang_wenzhangtupian4.jpg', '医院编号4', 4, 4),
	(65, '2021-04-20 03:49:06', '标题5', '文章类型5', '内容5', '作者5', '', '2021-04-20 11:49:06', 'http://localhost:8080/springbootr2r43/upload/yiyuanwenzhang_wenzhangtupian5.jpg', '医院编号5', 5, 5),
	(66, '2021-04-20 03:49:06', '标题6', '文章类型6', '内容6', '作者6', '', '2021-04-20 11:49:06', 'http://localhost:8080/springbootr2r43/upload/yiyuanwenzhang_wenzhangtupian6.jpg', '医院编号6', 6, 6);

DROP TABLE IF EXISTS `yiyuanzhuce`;
CREATE TABLE IF NOT EXISTS `yiyuanzhuce` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yiyuanmingcheng` varchar(200) NOT NULL COMMENT '医院名称',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `fuzerenshouji` varchar(200) DEFAULT NULL COMMENT '负责人手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `fuzerenshenfenzheng` varchar(200) DEFAULT NULL COMMENT '负责人身份证',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='医院注册';

DELETE FROM `yiyuanzhuce`;
INSERT INTO `yiyuanzhuce` (`id`, `addtime`, `yiyuanmingcheng`, `mima`, `fuzeren`, `fuzerenshouji`, `youxiang`, `fuzerenshenfenzheng`, `zhanghao`, `xingming`, `sfsh`, `shhf`) VALUES
	(31, '2021-04-20 03:49:06', '医院名称1', '密码1', '负责人1', '13823888881', '773890001@qq.com', '440300199101010001', '账号1', '姓名1', '是', ''),
	(32, '2021-04-20 03:49:06', '医院名称2', '密码2', '负责人2', '13823888882', '773890002@qq.com', '440300199202020002', '账号2', '姓名2', '是', ''),
	(33, '2021-04-20 03:49:06', '医院名称3', '密码3', '负责人3', '13823888883', '773890003@qq.com', '440300199303030003', '账号3', '姓名3', '是', ''),
	(34, '2021-04-20 03:49:06', '医院名称4', '密码4', '负责人4', '13823888884', '773890004@qq.com', '440300199404040004', '账号4', '姓名4', '是', ''),
	(35, '2021-04-20 03:49:06', '医院名称5', '密码5', '负责人5', '13823888885', '773890005@qq.com', '440300199505050005', '账号5', '姓名5', '是', ''),
	(36, '2021-04-20 03:49:06', '医院名称6', '密码6', '负责人6', '13823888886', '773890006@qq.com', '440300199606060006', '账号6', '姓名6', '是', '');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619258546232 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `youxiang`, `shenfenzheng`, `zhaopian`) VALUES
	(11, '2021-04-20 03:49:06', '用户1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', '440300199101010001', 'http://localhost:8080/springbootr2r43/upload/yonghu_zhaopian1.jpg'),
	(12, '2021-04-20 03:49:06', '用户2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', '440300199202020002', 'http://localhost:8080/springbootr2r43/upload/yonghu_zhaopian2.jpg'),
	(13, '2021-04-20 03:49:06', '用户3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', '440300199303030003', 'http://localhost:8080/springbootr2r43/upload/yonghu_zhaopian3.jpg'),
	(14, '2021-04-20 03:49:06', '用户4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', '440300199404040004', 'http://localhost:8080/springbootr2r43/upload/yonghu_zhaopian4.jpg'),
	(15, '2021-04-20 03:49:06', '用户5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', '440300199505050005', 'http://localhost:8080/springbootr2r43/upload/yonghu_zhaopian5.jpg'),
	(16, '2021-04-20 03:49:06', '用户6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', '440300199606060006', 'http://localhost:8080/springbootr2r43/upload/yonghu_zhaopian6.jpg'),
	(1619258546231, '2021-04-24 10:02:26', '1', '1', '11', NULL, NULL, NULL, NULL, NULL);

DROP TABLE IF EXISTS `yuanquzhanshi`;
CREATE TABLE IF NOT EXISTS `yuanquzhanshi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yiyuanbianhao` varchar(200) DEFAULT NULL COMMENT '医院编号',
  `yuanqumingcheng` varchar(200) NOT NULL COMMENT '院区名称',
  `yuanqujianjie` longtext COMMENT '院区简介',
  `yuanqudizhi` varchar(200) DEFAULT NULL COMMENT '院区地址',
  `yuanqudianhua` varchar(200) DEFAULT NULL COMMENT '院区电话',
  `yuanquzongmianji` varchar(200) DEFAULT NULL COMMENT '院区总面积',
  `zhuanjia` longtext COMMENT '专家',
  `keshi` longtext COMMENT '科室',
  `yuanqutupian` varchar(200) DEFAULT NULL COMMENT '院区图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='院区展示';

DELETE FROM `yuanquzhanshi`;
INSERT INTO `yuanquzhanshi` (`id`, `addtime`, `yiyuanbianhao`, `yuanqumingcheng`, `yuanqujianjie`, `yuanqudizhi`, `yuanqudianhua`, `yuanquzongmianji`, `zhuanjia`, `keshi`, `yuanqutupian`) VALUES
	(51, '2021-04-20 03:49:06', '医院编号1', '院区名称1', '院区简介1', '院区地址1', '020-89819991', '院区总面积1', '专家1', '科室1', 'http://localhost:8080/springbootr2r43/upload/yuanquzhanshi_yuanqutupian1.jpg'),
	(52, '2021-04-20 03:49:06', '医院编号2', '院区名称2', '院区简介2', '院区地址2', '020-89819992', '院区总面积2', '专家2', '科室2', 'http://localhost:8080/springbootr2r43/upload/yuanquzhanshi_yuanqutupian2.jpg'),
	(53, '2021-04-20 03:49:06', '医院编号3', '院区名称3', '院区简介3', '院区地址3', '020-89819993', '院区总面积3', '专家3', '科室3', 'http://localhost:8080/springbootr2r43/upload/yuanquzhanshi_yuanqutupian3.jpg'),
	(54, '2021-04-20 03:49:06', '医院编号4', '院区名称4', '院区简介4', '院区地址4', '020-89819994', '院区总面积4', '专家4', '科室4', 'http://localhost:8080/springbootr2r43/upload/yuanquzhanshi_yuanqutupian4.jpg'),
	(55, '2021-04-20 03:49:06', '医院编号5', '院区名称5', '院区简介5', '院区地址5', '020-89819995', '院区总面积5', '专家5', '科室5', 'http://localhost:8080/springbootr2r43/upload/yuanquzhanshi_yuanqutupian5.jpg'),
	(56, '2021-04-20 03:49:06', '医院编号6', '院区名称6', '院区简介6', '院区地址6', '020-89819996', '院区总面积6', '专家6', '科室6', 'http://localhost:8080/springbootr2r43/upload/yuanquzhanshi_yuanqutupian6.jpg');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
