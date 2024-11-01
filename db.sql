/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm58ip7
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm58ip7` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm58ip7`;

/*Table structure for table `bancileixing` */

DROP TABLE IF EXISTS `bancileixing`;

CREATE TABLE `bancileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617363081557 DEFAULT CHARSET=utf8 COMMENT='班次类型';

/*Data for the table `bancileixing` */

insert  into `bancileixing`(`id`,`addtime`,`fenlei`) values (21,'2021-04-02 18:44:27','分类1'),(22,'2021-04-02 18:44:27','分类2'),(23,'2021-04-02 18:44:27','分类3'),(24,'2021-04-02 18:44:27','分类4'),(1617363081556,'2021-04-02 19:31:21','测试');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='客服中心';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (91,'2021-04-02 18:44:27',1,1,'提问1','回复1',1),(92,'2021-04-02 18:44:27',2,2,'提问2','回复2',2),(93,'2021-04-02 18:44:27',3,3,'提问3','回复3',3),(94,'2021-04-02 18:44:27',4,4,'提问4','回复4',4),(95,'2021-04-02 18:44:27',5,5,'提问5','回复5',5),(96,'2021-04-02 18:44:27',6,6,'提问6','回复6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm58ip7/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm58ip7/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm58ip7/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `goupiaojilu` */

DROP TABLE IF EXISTS `goupiaojilu`;

CREATE TABLE `goupiaojilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bancimingcheng` varchar(200) DEFAULT NULL COMMENT '班次名称',
  `bancileixing` varchar(200) DEFAULT NULL COMMENT '班次类型',
  `cheliangbianhao` varchar(200) DEFAULT NULL COMMENT '车辆编号',
  `cheliangmingcheng` varchar(200) DEFAULT NULL COMMENT '车辆名称',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `facheshijian` varchar(200) DEFAULT NULL COMMENT '发车时间',
  `cheliangzhaopian` varchar(200) DEFAULT NULL COMMENT '车辆照片',
  `chufazhan` varchar(200) DEFAULT NULL COMMENT '出发站',
  `daodazhan` varchar(200) DEFAULT NULL COMMENT '到达站',
  `piaoshu` varchar(200) DEFAULT NULL COMMENT '票数',
  `piaojia` varchar(200) DEFAULT NULL COMMENT '票价',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617362968049 DEFAULT CHARSET=utf8 COMMENT='购票记录';

/*Data for the table `goupiaojilu` */

insert  into `goupiaojilu`(`id`,`addtime`,`bancimingcheng`,`bancileixing`,`cheliangbianhao`,`cheliangmingcheng`,`chepaihao`,`facheshijian`,`cheliangzhaopian`,`chufazhan`,`daodazhan`,`piaoshu`,`piaojia`,`zongjine`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (41,'2021-04-02 18:44:27','班次名称1','班次类型1','车辆编号1','车辆名称1','车牌号1','发车时间1','http://localhost:8080/ssm58ip7/upload/goupiaojilu_cheliangzhaopian1.jpg','出发站1','到达站1','票数1','票价1','总金额1','用户名1','姓名1','手机1','是','','未支付',1),(42,'2021-04-02 18:44:27','班次名称2','班次类型2','车辆编号2','车辆名称2','车牌号2','发车时间2','http://localhost:8080/ssm58ip7/upload/goupiaojilu_cheliangzhaopian2.jpg','出发站2','到达站2','票数2','票价2','总金额2','用户名2','姓名2','手机2','是','','未支付',2),(43,'2021-04-02 18:44:27','班次名称3','班次类型3','车辆编号3','车辆名称3','车牌号3','发车时间3','http://localhost:8080/ssm58ip7/upload/goupiaojilu_cheliangzhaopian3.jpg','出发站3','到达站3','票数3','票价3','总金额3','用户名3','姓名3','手机3','是','','未支付',3),(44,'2021-04-02 18:44:27','班次名称4','班次类型4','车辆编号4','车辆名称4','车牌号4','发车时间4','http://localhost:8080/ssm58ip7/upload/goupiaojilu_cheliangzhaopian4.jpg','出发站4','到达站4','票数4','票价4','总金额4','用户名4','姓名4','手机4','是','','未支付',4),(45,'2021-04-02 18:44:27','班次名称5','班次类型5','车辆编号5','车辆名称5','车牌号5','发车时间5','http://localhost:8080/ssm58ip7/upload/goupiaojilu_cheliangzhaopian5.jpg','出发站5','到达站5','票数5','票价5','总金额5','用户名5','姓名5','手机5','是','','未支付',5),(46,'2021-04-02 18:44:27','班次名称6','班次类型6','车辆编号6','车辆名称6','车牌号6','发车时间6','http://localhost:8080/ssm58ip7/upload/goupiaojilu_cheliangzhaopian6.jpg','出发站6','到达站6','票数6','票价6','总金额6','用户名6','姓名6','手机6','是','','未支付',6),(1617362697784,'2021-04-02 19:24:57','班次名称1','班次类型1','车辆编号1','车辆名称1','车牌号1','2021-04-02 18:44:27','http://localhost:8080/ssm58ip7/upload/keyunbanci_cheliangzhaopian1.jpg','出发站1','到达站1','3','1','3','001','001','13800123456','否',NULL,'已支付',1617362672748),(1617362968048,'2021-04-02 19:29:27','测试','分类2','001','001','001','2021-04-13 00:00:00','http://localhost:8080/ssm58ip7/upload/1617362784123.jpg','出发站测试','到达站测试','3','20','60','002','002','13800123456','是',NULL,'已支付',1617362942239);

/*Table structure for table `huiyuan` */

DROP TABLE IF EXISTS `huiyuan`;

CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `huiyuandengji` varchar(200) DEFAULT NULL COMMENT '会员等级',
  `zhekou` varchar(200) DEFAULT NULL COMMENT '折扣',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1617363145668 DEFAULT CHARSET=utf8 COMMENT='会员';

/*Data for the table `huiyuan` */

insert  into `huiyuan`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`shouji`,`huiyuandengji`,`zhekou`) values (52,'2021-04-02 18:44:27','会员2','123456','姓名2','男','13823888882','会员等级2','折扣2'),(53,'2021-04-02 18:44:27','会员3','123456','姓名3','男','13823888883','会员等级3','折扣3'),(54,'2021-04-02 18:44:27','会员4','123456','姓名4','男','13823888884','会员等级4','折扣4'),(55,'2021-04-02 18:44:27','会员5','123456','姓名5','男','13823888885','会员等级5','折扣5'),(56,'2021-04-02 18:44:27','会员6','123456','姓名6','男','13823888886','会员等级6','折扣6'),(1617363145667,'2021-04-02 19:32:25','002','002','002','男','13800123456','普通会员','0.9');

/*Table structure for table `huiyuanchongzhi` */

DROP TABLE IF EXISTS `huiyuanchongzhi`;

CREATE TABLE `huiyuanchongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chongzhibianhao` varchar(200) DEFAULT NULL COMMENT '充值编号',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `huiyuandengji` varchar(200) NOT NULL COMMENT '会员等级',
  `jine` int(11) NOT NULL COMMENT '金额',
  `chongzhiriqi` date DEFAULT NULL COMMENT '充值日期',
  `beizhushuoming` longtext COMMENT '备注说明',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chongzhibianhao` (`chongzhibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617363024447 DEFAULT CHARSET=utf8 COMMENT='会员充值';

/*Data for the table `huiyuanchongzhi` */

insert  into `huiyuanchongzhi`(`id`,`addtime`,`chongzhibianhao`,`yonghuming`,`xingming`,`shouji`,`huiyuandengji`,`jine`,`chongzhiriqi`,`beizhushuoming`,`sfsh`,`shhf`,`ispay`) values (61,'2021-04-02 18:44:27','充值编号1','用户名1','姓名1','手机1','会员等级1',1,'2021-04-02','备注说明1','是','','未支付'),(62,'2021-04-02 18:44:27','充值编号2','用户名2','姓名2','手机2','会员等级2',2,'2021-04-02','备注说明2','是','','未支付'),(63,'2021-04-02 18:44:27','充值编号3','用户名3','姓名3','手机3','会员等级3',3,'2021-04-02','备注说明3','是','','未支付'),(64,'2021-04-02 18:44:27','充值编号4','用户名4','姓名4','手机4','会员等级4',4,'2021-04-02','备注说明4','是','','未支付'),(65,'2021-04-02 18:44:27','充值编号5','用户名5','姓名5','手机5','会员等级5',5,'2021-04-02','备注说明5','是','','未支付'),(66,'2021-04-02 18:44:27','充值编号6','用户名6','姓名6','手机6','会员等级6',6,'2021-04-02','备注说明6','是','','未支付'),(1617363024446,'2021-04-02 19:30:23','1617363013732','002','002','13800123456','普通会员',10,'2021-04-02','。。。','是','','未支付');

/*Table structure for table `huiyuandengji` */

DROP TABLE IF EXISTS `huiyuandengji`;

CREATE TABLE `huiyuandengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `jine` int(11) DEFAULT NULL COMMENT '金额',
  `zhekou` float DEFAULT NULL COMMENT '折扣',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617363191169 DEFAULT CHARSET=utf8 COMMENT='会员等级';

/*Data for the table `huiyuandengji` */

insert  into `huiyuandengji`(`id`,`addtime`,`leixing`,`jine`,`zhekou`) values (71,'2021-04-02 18:44:27','普通会员',10,0.9),(72,'2021-04-02 18:44:27','黄金会员',20,0.8),(73,'2021-04-02 18:44:27','铂金会员',30,0.7),(74,'2021-04-02 18:44:27','钻石会员',40,0.6),(1617363191168,'2021-04-02 19:33:10','测试',100,0.5);

/*Table structure for table `huiyuangoupiaojilu` */

DROP TABLE IF EXISTS `huiyuangoupiaojilu`;

CREATE TABLE `huiyuangoupiaojilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bancimingcheng` varchar(200) DEFAULT NULL COMMENT '班次名称',
  `bancileixing` varchar(200) DEFAULT NULL COMMENT '班次类型',
  `cheliangbianhao` varchar(200) DEFAULT NULL COMMENT '车辆编号',
  `cheliangmingcheng` varchar(200) DEFAULT NULL COMMENT '车辆名称',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `cheliangzhaopian` varchar(200) DEFAULT NULL COMMENT '车辆照片',
  `chufazhan` varchar(200) DEFAULT NULL COMMENT '出发站',
  `daodazhan` varchar(200) DEFAULT NULL COMMENT '到达站',
  `facheshijian` varchar(200) DEFAULT NULL COMMENT '发车时间',
  `piaoshu` varchar(200) DEFAULT NULL COMMENT '票数',
  `piaojia` varchar(200) DEFAULT NULL COMMENT '票价',
  `zhekou` float DEFAULT NULL COMMENT '折扣',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='会员购票记录';

/*Data for the table `huiyuangoupiaojilu` */

insert  into `huiyuangoupiaojilu`(`id`,`addtime`,`bancimingcheng`,`bancileixing`,`cheliangbianhao`,`cheliangmingcheng`,`chepaihao`,`cheliangzhaopian`,`chufazhan`,`daodazhan`,`facheshijian`,`piaoshu`,`piaojia`,`zhekou`,`zongjine`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (81,'2021-04-02 18:44:27','班次名称1','班次类型1','车辆编号1','车辆名称1','车牌号1','车辆照片1','出发站1','到达站1','发车时间1','票数1','票价1',1,'总金额1','用户名1','姓名1','手机1','是','','未支付',1),(82,'2021-04-02 18:44:27','班次名称2','班次类型2','车辆编号2','车辆名称2','车牌号2','车辆照片2','出发站2','到达站2','发车时间2','票数2','票价2',2,'总金额2','用户名2','姓名2','手机2','是','','未支付',2),(83,'2021-04-02 18:44:27','班次名称3','班次类型3','车辆编号3','车辆名称3','车牌号3','车辆照片3','出发站3','到达站3','发车时间3','票数3','票价3',3,'总金额3','用户名3','姓名3','手机3','是','','未支付',3),(84,'2021-04-02 18:44:27','班次名称4','班次类型4','车辆编号4','车辆名称4','车牌号4','车辆照片4','出发站4','到达站4','发车时间4','票数4','票价4',4,'总金额4','用户名4','姓名4','手机4','是','','未支付',4),(85,'2021-04-02 18:44:27','班次名称5','班次类型5','车辆编号5','车辆名称5','车牌号5','车辆照片5','出发站5','到达站5','发车时间5','票数5','票价5',5,'总金额5','用户名5','姓名5','手机5','是','','未支付',5),(86,'2021-04-02 18:44:27','班次名称6','班次类型6','车辆编号6','车辆名称6','车牌号6','车辆照片6','出发站6','到达站6','发车时间6','票数6','票价6',6,'总金额6','用户名6','姓名6','手机6','是','','未支付',6);

/*Table structure for table `kehu` */

DROP TABLE IF EXISTS `kehu`;

CREATE TABLE `kehu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1617362942240 DEFAULT CHARSET=utf8 COMMENT='客户';

/*Data for the table `kehu` */

insert  into `kehu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`zhaopian`,`userid`) values (12,'2021-04-02 18:44:27','客户2','123456','姓名2','女',2,'13823888882','773890002@qq.com','http://localhost:8080/ssm58ip7/upload/kehu_zhaopian2.jpg',2),(13,'2021-04-02 18:44:27','客户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssm58ip7/upload/kehu_zhaopian3.jpg',3),(14,'2021-04-02 18:44:27','客户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssm58ip7/upload/kehu_zhaopian4.jpg',4),(15,'2021-04-02 18:44:27','客户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssm58ip7/upload/kehu_zhaopian5.jpg',5),(16,'2021-04-02 18:44:27','客户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssm58ip7/upload/kehu_zhaopian6.jpg',6),(1617362672748,'2021-04-02 19:24:32','001','001','001',NULL,20,'13800123456','123@qq.com',NULL,1617362672748),(1617362942239,'2021-04-02 19:29:02','002','002','002',NULL,20,'13800123456','123@qq.com',NULL,1617362942239);

/*Table structure for table `keyunbanci` */

DROP TABLE IF EXISTS `keyunbanci`;

CREATE TABLE `keyunbanci` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bancimingcheng` varchar(200) DEFAULT NULL COMMENT '班次名称',
  `bancileixing` varchar(200) DEFAULT NULL COMMENT '班次类型',
  `cheliangbianhao` varchar(200) DEFAULT NULL COMMENT '车辆编号',
  `cheliangmingcheng` varchar(200) DEFAULT NULL COMMENT '车辆名称',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `cheliangzhaopian` varchar(200) DEFAULT NULL COMMENT '车辆照片',
  `chufazhan` varchar(200) DEFAULT NULL COMMENT '出发站',
  `daodazhan` varchar(200) DEFAULT NULL COMMENT '到达站',
  `facheshijian` datetime DEFAULT NULL COMMENT '发车时间',
  `piaojia` int(11) NOT NULL COMMENT '票价',
  `yijingfache` varchar(200) DEFAULT NULL COMMENT '已经发车',
  `tujingzhandian` longtext COMMENT '途径站点',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617362816907 DEFAULT CHARSET=utf8 COMMENT='客运班次';

/*Data for the table `keyunbanci` */

insert  into `keyunbanci`(`id`,`addtime`,`bancimingcheng`,`bancileixing`,`cheliangbianhao`,`cheliangmingcheng`,`chepaihao`,`cheliangzhaopian`,`chufazhan`,`daodazhan`,`facheshijian`,`piaojia`,`yijingfache`,`tujingzhandian`,`gengxinshijian`) values (31,'2021-04-02 18:44:27','班次名称1','班次类型1','车辆编号1','车辆名称1','车牌号1','http://localhost:8080/ssm58ip7/upload/keyunbanci_cheliangzhaopian1.jpg','出发站1','到达站1','2021-04-02 18:44:27',100,'否','<p>途径站点1</p>','2021-04-02 18:44:27'),(32,'2021-04-02 18:44:27','班次名称2','班次类型2','车辆编号2','车辆名称2','车牌号2','http://localhost:8080/ssm58ip7/upload/keyunbanci_cheliangzhaopian2.jpg','出发站2','到达站2','2021-04-02 18:44:27',2,'否','途径站点2','2021-04-02 18:44:27'),(33,'2021-04-02 18:44:27','班次名称3','班次类型3','车辆编号3','车辆名称3','车牌号3','http://localhost:8080/ssm58ip7/upload/keyunbanci_cheliangzhaopian3.jpg','出发站3','到达站3','2021-04-02 18:44:27',3,'否','途径站点3','2021-04-02 18:44:27'),(34,'2021-04-02 18:44:27','班次名称4','班次类型4','车辆编号4','车辆名称4','车牌号4','http://localhost:8080/ssm58ip7/upload/keyunbanci_cheliangzhaopian4.jpg','出发站4','到达站4','2021-04-02 18:44:27',4,'否','途径站点4','2021-04-02 18:44:27'),(35,'2021-04-02 18:44:27','班次名称5','班次类型5','车辆编号5','车辆名称5','车牌号5','http://localhost:8080/ssm58ip7/upload/keyunbanci_cheliangzhaopian5.jpg','出发站5','到达站5','2021-04-02 18:44:27',5,'否','途径站点5','2021-04-02 18:44:27'),(1617362816906,'2021-04-02 19:26:56','测试','分类2','001','001','001','http://localhost:8080/ssm58ip7/upload/1617362784123.jpg','出发站测试','到达站测试','2021-04-13 00:00:00',20,'是','<p>测试</p>','2021-04-02 00:00:00');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617362984916 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (121,'2021-04-02 18:44:27',1,'用户名1','留言内容1','回复内容1'),(122,'2021-04-02 18:44:27',2,'用户名2','留言内容2','回复内容2'),(123,'2021-04-02 18:44:27',3,'用户名3','留言内容3','回复内容3'),(124,'2021-04-02 18:44:27',4,'用户名4','留言内容4','回复内容4'),(125,'2021-04-02 18:44:27',5,'用户名5','留言内容5','回复内容5'),(126,'2021-04-02 18:44:27',6,'用户名6','留言内容6','回复内容6'),(1617362711214,'2021-04-02 19:25:10',1617362672748,'001','2132s',NULL),(1617362984915,'2021-04-02 19:29:44',1617362942239,'002','投诉',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-04-02 18:44:27','标题1','简介1','http://localhost:8080/ssm58ip7/upload/news_picture1.jpg','内容1'),(112,'2021-04-02 18:44:27','标题2','简介2','http://localhost:8080/ssm58ip7/upload/news_picture2.jpg','内容2'),(113,'2021-04-02 18:44:27','标题3','简介3','http://localhost:8080/ssm58ip7/upload/news_picture3.jpg','内容3'),(114,'2021-04-02 18:44:27','标题4','简介4','http://localhost:8080/ssm58ip7/upload/news_picture4.jpg','内容4'),(115,'2021-04-02 18:44:27','标题5','简介5','http://localhost:8080/ssm58ip7/upload/news_picture5.jpg','内容5');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1617362672748,'001','kehu','客户','e76gzrlljkhilol1iq3v3or2n3u83w0d','2021-04-02 19:24:42','2021-04-02 20:24:43'),(2,1,'abo','users','管理员','53udripg1ll456qowys8vavgcd7kqjbp','2021-04-02 19:25:55','2021-04-02 20:30:57'),(3,1617362942239,'002','kehu','客户','728zy0p6agbanmoohan2coz1vkj8knfg','2021-04-02 19:29:08','2021-04-02 20:29:09');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-02 18:44:27');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
