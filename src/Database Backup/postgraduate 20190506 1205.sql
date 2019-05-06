-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.51b-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema postgraduate
--

CREATE DATABASE IF NOT EXISTS postgraduate;
USE postgraduate;

--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`,`username`,`email`,`phone`,`password`) VALUES 
 (1,'mohammed','mohammedsedky01147226634@gmail.com','01147226634','7JCPGCuEdte7bjDvou6i0A=='),
 (2,'mmmmm','mmm@gmail.com','01147226634','7JCPGCuEdte7bjDvou6i0A=='),
 (3,'ahmed','ahmed@gmail.com','01147226634','7JCPGCuEdte7bjDvou6i0A==');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` (`id`,`username`,`email`,`phone`,`password`,`department`) VALUES 
 (1,'mohammed Sedky','ahmed@gmail.com','01147226634','7JCPGCuEdte7bjDvou6i0A==','cs'),
 (2,'mahmoud','mahmoudsharf55@gmail.com','45456','CQmZmVDN12o=','cs');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;


--
-- Definition of table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` (`id`,`username`,`email`,`phone`,`password`) VALUES 
 (1,'mohammed','mohammedsedky01147226634@gmail.com','01147226634','fAlGh+jTloE='),
 (2,'mahmoud','mahmoudsharf55@gmail.com','453453453453','CQmZmVDN12o='),
 (3,'mohammed sedky','mohammed@gmail.com','01147226634','7JCPGCuEdte7bjDvou6i0A=='),
 (4,' mohammed s','moh@gmail.com','01147226634','7JCPGCuEdte7bjDvou6i0A==');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;


--
-- Definition of table `stu_sub`
--

DROP TABLE IF EXISTS `stu_sub`;
CREATE TABLE `stu_sub` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `stu_id` int(10) unsigned NOT NULL,
  `sub_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned default '1',
  `success` int(10) unsigned default '0',
  PRIMARY KEY  (`id`),
  KEY `FK_stu_sub_1` (`stu_id`),
  KEY `FK_stu_sub_2` (`sub_id`),
  CONSTRAINT `FK_stu_sub_1` FOREIGN KEY (`stu_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_stu_sub_2` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stu_sub`
--

/*!40000 ALTER TABLE `stu_sub` DISABLE KEYS */;
INSERT INTO `stu_sub` (`id`,`stu_id`,`sub_id`,`count`,`success`) VALUES 
 (1,5,1,2,0),
 (6,5,3,3,0),
 (7,5,4,3,0),
 (8,5,5,3,0),
 (9,5,2,1,0);
/*!40000 ALTER TABLE `stu_sub` ENABLE KEYS */;


--
-- Definition of table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`id`,`username`,`email`,`password`) VALUES 
 (1,'Mahmoud Sharaf','mahmoud.abdallah1471@ci.menofia.edu.eg','CQmZmVDN12o='),
 (2,'Mahmoud Sharaf','mahmoudsharf552@gmail.com','CQmZmVDN12o='),
 (3,'Mahmoud Sharaf','mahmoudsharf55@gmail.com','CQmZmVDN12o='),
 (4,'Mahmoud Sharaf','mahmoudsharf555@gmail.com','CQmZmVDN12o='),
 (5,'Mahmoud Sharaf','mahmoudsharf515@gmail.com','CQmZmVDN12o='),
 (7,'Mahmoud Sharaf','mahmoudsharf5565@gmail.com','CQmZmVDN12o='),
 (8,'محمد صدقى','mohammedsedky01147226634@gmail.com','7JCPGCuEdte7bjDvou6i0A=='),
 (9,'ali','ai@gmail.com','7JCPGCuEdte7bjDvou6i0A=='),
 (10,'mostafa','mow@gmail.com','sWYiIhfnQeI=');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;


--
-- Definition of table `student_form`
--

DROP TABLE IF EXISTS `student_form`;
CREATE TABLE `student_form` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `s_id` int(10) unsigned NOT NULL,
  `form_type` varchar(5) NOT NULL,
  `paper` varchar(30) default 'In Reviewing',
  `status` varchar(15) default 'Waiting',
  `dept` varchar(45) NOT NULL,
  `round` varchar(45) NOT NULL,
  `for_year` varchar(15) NOT NULL,
  `name` varchar(65) NOT NULL,
  `dob` date NOT NULL,
  `country` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `governorate` varchar(45) NOT NULL,
  `nationality` varchar(45) NOT NULL,
  `religion` varchar(45) NOT NULL,
  `national_id` int(10) unsigned NOT NULL,
  `national_source` varchar(45) NOT NULL,
  `national_release` date NOT NULL,
  `recruitment_postion` varchar(45) NOT NULL,
  `job` varchar(45) NOT NULL,
  `job_address` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `bachelor_in` varchar(45) NOT NULL,
  `b_role` varchar(45) NOT NULL,
  `b_overall_rate` varchar(45) NOT NULL,
  `b_dept` varchar(45) NOT NULL,
  `b_special_rate` varchar(45) NOT NULL,
  `b_overall_mark` int(10) unsigned NOT NULL,
  `b_graduate_source` varchar(45) NOT NULL,
  `b_graduate_year` varchar(45) NOT NULL,
  `postgraduate_in` varchar(45) default NULL,
  `p_role` varchar(45) default NULL,
  `p_special` varchar(45) default NULL,
  `p_rate` varchar(45) default NULL,
  `p_overall_mark` int(10) unsigned default NULL,
  `p_university` varchar(45) default NULL,
  `enroll_dept` varchar(45) NOT NULL,
  `doctor_mail` varchar(45) default NULL,
  PRIMARY KEY  (`id`),
  KEY `student_id` (`s_id`),
  CONSTRAINT `student_id` FOREIGN KEY (`s_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_form`
--

/*!40000 ALTER TABLE `student_form` DISABLE KEYS */;
INSERT INTO `student_form` (`id`,`s_id`,`form_type`,`paper`,`status`,`dept`,`round`,`for_year`,`name`,`dob`,`country`,`city`,`governorate`,`nationality`,`religion`,`national_id`,`national_source`,`national_release`,`recruitment_postion`,`job`,`job_address`,`phone`,`bachelor_in`,`b_role`,`b_overall_rate`,`b_dept`,`b_special_rate`,`b_overall_mark`,`b_graduate_source`,`b_graduate_year`,`postgraduate_in`,`p_role`,`p_special`,`p_rate`,`p_overall_mark`,`p_university`,`enroll_dept`,`doctor_mail`) VALUES 
 (20,8,'1','accepted','accepted','cs','ياناير','2017','محمد صدقى ','2019-04-25','الباجور','الباجور','المنوفيه','مصري','مسلم',147852369,'الباجور','2019-04-25','اعفاء','لا يوجد','لا يوجد','01245786544','البكلريوس','الله اعلم ','20202','الحلاوه','امتياز',4870,'المنوفيه','2015','تالبلاى','محمحمح','موم','201',50640,'المنوفيه','المرقعه',NULL),
 (21,9,'2','accepted','Accepted','cs','2017','2014','mmmmmmmmmm','2019-04-10','sssssss','sssss','sss','ssss','sssss',111,'kjhgfdfg','2019-04-03','lutn','b','b','b','قسم علوم الحاسب','2014','جيد جدا','cs','741',1,'المنوفيه','4444',NULL,NULL,NULL,NULL,NULL,NULL,'lkjhgf',NULL),
 (22,5,'2','In Reviewing','Waiting','cs','ertyu','1234','Mahmoud Sharaf','2019-04-02','لا','dfghj','dfg','مصري','مسلم',33,'23','6666-01-04','اعفاء','dfgh','ertyu','3456789','المرقعه','xcvzcvx','امتياز','asdfdcv','ewrwre',6,'weqr','5',NULL,NULL,NULL,NULL,NULL,NULL,'شسطيكمكشسطي',NULL);
/*!40000 ALTER TABLE `student_form` ENABLE KEYS */;


--
-- Definition of table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `code` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `hours` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` (`id`,`code`,`name`,`hours`) VALUES 
 (1,'CS641','تحليل ومعالجة البيانات الكبيرة',30),
 (2,'CS621','كائنات اليه متقدمة',26),
 (3,'CS650','جودة البرمجيات',28),
 (4,'MA611','احصاء ورياضه متقدمة',25),
 (5,'GN611','اساليب البحث العلمى',27);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
