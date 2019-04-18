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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` (`id`,`username`,`email`,`phone`,`password`) VALUES 
 (1,'mohammed','mohammedsedky01147226634@gmail.com','01147226634','fAlGh+jTloE='),
 (2,'mahmoud','mahmoudsharf55@gmail.com','453453453453','CQmZmVDN12o=');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;


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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

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
 (6,'Mahmoud Sharaf','mahmoudsharf515@gmail.com','CQmZmVDN12o='),
 (7,'Mahmoud Sharaf','mahmoudsharf5565@gmail.com','CQmZmVDN12o=');
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
  PRIMARY KEY  (`id`),
  KEY `student_id` (`s_id`),
  CONSTRAINT `student_id` FOREIGN KEY (`s_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_form`
--

/*!40000 ALTER TABLE `student_form` DISABLE KEYS */;
INSERT INTO `student_form` (`id`,`s_id`,`form_type`,`paper`,`status`,`dept`,`round`,`for_year`,`name`,`dob`,`country`,`city`,`governorate`,`nationality`,`religion`,`national_id`,`national_source`,`national_release`,`recruitment_postion`,`job`,`job_address`,`phone`,`bachelor_in`,`b_role`,`b_overall_rate`,`b_dept`,`b_special_rate`,`b_overall_mark`,`b_graduate_source`,`b_graduate_year`,`postgraduate_in`,`p_role`,`p_special`,`p_rate`,`p_overall_mark`,`p_university`,`enroll_dept`) VALUES 
 (1,5,'1','In Reviewing','Waiting','cs','ÙÙØ§ÙØ±','2019','Mahmoud Sharaf','2019-04-19','ÙØ§','ÙØ§','ÙØ§','ÙØµØ±Ù','ÙØ³ÙÙ',12455221,'Ø§ÙØ´ÙØ¯Ø§Ø¡','2019-04-17','Ø§Ø¹ÙØ§Ø¡','Ø·Ø§ÙØ¨','Ø´Ø¨ÙÙ','01110568681','Ø§ÙÙØ±ÙØ¹Ù','Ø§ÙÙØ±Ø§ÙÙØ¹','Ø§ÙØªÙØ§Ø²','Ø§ÙÙØ±Ø§ÙÙØ¹','Ø§ÙØªÙØ§Ø²',205,'ÙÙÙÙÙÙ','1998','Ø³Ø´ÙØ¨','Ø´Ø³ÙØ¨','Ø´Ø³ÙØ¨','werwer',200,'ÙÙÙÙÙÙ','Ø§ÙÙØ±ÙØ¹Ù'),
 (2,5,'1','In Reviewing','Waiting','cs','safdfa','2342','sdfsdaf','2019-04-19','asdf','asdf','sadf','asdf','sdaf',3423,'sdf','2019-04-18','sdfasdf','asdf','asdf','32232323','23qwer','xcvzcvx','qwer','qwer','qwer',34,'weqr','342','sdffds','asdf','asdf','asdf',324,'fdasf','sadf');
INSERT INTO `student_form` (`id`,`s_id`,`form_type`,`paper`,`status`,`dept`,`round`,`for_year`,`name`,`dob`,`country`,`city`,`governorate`,`nationality`,`religion`,`national_id`,`national_source`,`national_release`,`recruitment_postion`,`job`,`job_address`,`phone`,`bachelor_in`,`b_role`,`b_overall_rate`,`b_dept`,`b_special_rate`,`b_overall_mark`,`b_graduate_source`,`b_graduate_year`,`postgraduate_in`,`p_role`,`p_special`,`p_rate`,`p_overall_mark`,`p_university`,`enroll_dept`) VALUES 
 (3,5,'1','In Reviewing','Waiting','cs','safdfa','2342','sdfsdaf','2019-04-19','asdf','asdf','sadf','asdf','sdaf',3423,'sdf','2019-04-18','sdfasdf','asdf','asdf','32232323','محمود','xcvzcvx','qwer','qwer','qwer',34,'weqr','342','sdffds','asdf','asdf','asdf',324,'fdasf','sadf'),
 (4,5,'1','In Reviewing','Waiting','Ø³Ù','safdfa','2342','sdfsdaf','2019-04-19','asdf','asdf','sadf','asdf','sdaf',3423,'sdf','2019-04-18','sdfasdf','asdf','asdf','32232323','Ø´Ø³Ù','xcvzcvx','qwer','qwer','qwer',34,'weqr','342','sdffds','asdf','asdf','asdf',324,'fdasf','sadf'),
 (5,5,'1','In Reviewing','Waiting','اى تى','safdfa','2342','sdfsdaf','2019-04-19','asdf','asdf','sadf','asdf','sdaf',3423,'sdf','2019-04-18','sdfasdf','asdf','asdf','32232323','Ø´Ø³Ù','xcvzcvx','qwer','qwer','qwer',34,'weqr','342','sdffds','asdf','asdf','asdf',324,'fdasf','sadf');
INSERT INTO `student_form` (`id`,`s_id`,`form_type`,`paper`,`status`,`dept`,`round`,`for_year`,`name`,`dob`,`country`,`city`,`governorate`,`nationality`,`religion`,`national_id`,`national_source`,`national_release`,`recruitment_postion`,`job`,`job_address`,`phone`,`bachelor_in`,`b_role`,`b_overall_rate`,`b_dept`,`b_special_rate`,`b_overall_mark`,`b_graduate_source`,`b_graduate_year`,`postgraduate_in`,`p_role`,`p_special`,`p_rate`,`p_overall_mark`,`p_university`,`enroll_dept`) VALUES 
 (6,5,'1','In Reviewing','Waiting','Ø³Ù','safdfa','2342','sdfsdaf','2019-04-19','asdf','asdf','sadf','asdf','sdaf',3423,'sdf','2019-04-18','sdfasdf','asdf','asdf','32232323','Ø´Ø³Ù','xcvzcvx','qwer','qwer','qwer',34,'weqr','342','sdffds','asdf','asdf','asdf',324,'fdasf','sadf'),
 (7,5,'1','In Reviewing','Waiting','%C3%98%C2%B3%C3%99%C2%89','safdfa','2342','sdfsdaf','2019-04-19','asdf','asdf','sadf','asdf','sdaf',3423,'sdf','2019-04-18','sdfasdf','asdf','asdf','32232323','%C3%98%C2%B4%C3%98%C2%B3%C3%99%C2%8A','xcvzcvx','qwer','qwer','qwer',34,'weqr','342','sdffds','asdf','asdf','asdf',324,'fdasf','sadf'),
 (8,5,'1','In Reviewing','Waiting','Ø³Ù','safdfa','2342','sdfsdaf','2019-04-19','asdf','asdf','sadf','asdf','sdaf',3423,'sdf','2019-04-18','sdfasdf','asdf','asdf','32232323','Ø´Ø³Ù','xcvzcvx','qwer','qwer','qwer',34,'weqr','342','sdffds','asdf','asdf','asdf',324,'fdasf','sadf');
INSERT INTO `student_form` (`id`,`s_id`,`form_type`,`paper`,`status`,`dept`,`round`,`for_year`,`name`,`dob`,`country`,`city`,`governorate`,`nationality`,`religion`,`national_id`,`national_source`,`national_release`,`recruitment_postion`,`job`,`job_address`,`phone`,`bachelor_in`,`b_role`,`b_overall_rate`,`b_dept`,`b_special_rate`,`b_overall_mark`,`b_graduate_source`,`b_graduate_year`,`postgraduate_in`,`p_role`,`p_special`,`p_rate`,`p_overall_mark`,`p_university`,`enroll_dept`) VALUES 
 (9,5,'1','In Reviewing','Waiting','Ø³Ù','safdfa','2342','sdfsdaf','2019-04-19','asdf','asdf','sadf','asdf','sdaf',3423,'sdf','2019-04-18','sdfasdf','asdf','asdf','32232323','Ø´Ø³Ù','xcvzcvx','qwer','qwer','qwer',34,'weqr','342','sdffds','asdf','asdf','asdf',324,'fdasf','sadf'),
 (10,5,'1','In Reviewing','Waiting','Ø³Ù de','safdfa','2342','sdfsdaf','2019-04-19','asdf','asdf','sadf','asdf','sdaf',3423,'sdf','2019-04-18','sdfasdf','asdf','asdf','32232323','Ø´Ø³Ù','xcvzcvx','qwer','qwer','qwer',34,'weqr','342','sdffds','asdf','asdf','asdf',324,'fdasf','sadf'),
 (11,5,'1','In Reviewing','Waiting','Ø³Ù de','safdfa','2342','sdfsdaf','2019-04-19','asdf','asdf','sadf','asdf','sdaf',3423,'sdf','2019-04-18','sdfasdf','asdf','asdf','32232323','Ø´Ø³Ù','xcvzcvx','qwer','qwer','qwer',34,'weqr','342','sdffds','asdf','asdf','asdf',324,'fdasf','sadf');
INSERT INTO `student_form` (`id`,`s_id`,`form_type`,`paper`,`status`,`dept`,`round`,`for_year`,`name`,`dob`,`country`,`city`,`governorate`,`nationality`,`religion`,`national_id`,`national_source`,`national_release`,`recruitment_postion`,`job`,`job_address`,`phone`,`bachelor_in`,`b_role`,`b_overall_rate`,`b_dept`,`b_special_rate`,`b_overall_mark`,`b_graduate_source`,`b_graduate_year`,`postgraduate_in`,`p_role`,`p_special`,`p_rate`,`p_overall_mark`,`p_university`,`enroll_dept`) VALUES 
 (12,5,'1','In Reviewing','Waiting','سى de','safdfa','2342','sdfsdaf','2019-04-19','asdf','asdf','sadf','asdf','sdaf',3423,'sdf','2019-04-18','sdfasdf','asdf','asdf','32232323','شسي','xcvzcvx','qwer','qwer','qwer',34,'weqr','342','sdffds','asdf','asdf','asdf',324,'fdasf','sadf'),
 (13,5,'1','In Reviewing','Waiting','سى de','safdfa','2342','sdfsdaf','2019-04-19','asdf','asdf','sadf','asdf','sdaf',3423,'sdf','2019-04-18','sdfasdf','asdf','asdf','32232323','شسي','xcvzcvx','qwer','qwer','qwer',34,'weqr','342','sdffds','asdf','asdf','asdf',324,'fdasf','sadf'),
 (14,5,'1','In Reviewing','Waiting','mahmoud sharaf','safdfa','2342','sdfsdaf','2019-04-19','asdf','asdf','sadf','asdf','sdaf',3423,'sdf','2019-04-18','sdfasdf','asdf','asdf','32232323','شسي','xcvzcvx','qwer','qwer','qwer',34,'weqr','342','sdffds','asdf','asdf','asdf',324,'fdasf','sadf');
INSERT INTO `student_form` (`id`,`s_id`,`form_type`,`paper`,`status`,`dept`,`round`,`for_year`,`name`,`dob`,`country`,`city`,`governorate`,`nationality`,`religion`,`national_id`,`national_source`,`national_release`,`recruitment_postion`,`job`,`job_address`,`phone`,`bachelor_in`,`b_role`,`b_overall_rate`,`b_dept`,`b_special_rate`,`b_overall_mark`,`b_graduate_source`,`b_graduate_year`,`postgraduate_in`,`p_role`,`p_special`,`p_rate`,`p_overall_mark`,`p_university`,`enroll_dept`) VALUES 
 (15,5,'1','In Reviewing','Waiting','mahmoud sharaf','safdfa','2342','sdfsdaf','2019-04-19','asdf','asdf','sadf','asdf','sdaf',3423,'sdf','2019-04-18','sdfasdf','asdf','asdf','32232323','شسي','xcvzcvx','qwer','qwer','qwer',34,'weqr','342','sdffds','asdf','asdf','asdf',324,'fdasf','sadf'),
 (16,5,'1','In Reviewing','Waiting','mahmoud سر','safdfa','2342','sdfsdaf','2019-04-19','asdf','asdf','sadf','asdf','sdaf',3423,'sdf','2019-04-18','sdfasdf','asdf','asdf','32232323','شسي','xcvzcvx','qwer','qwer','qwer',34,'weqr','342','sdffds','asdf','asdf','asdf',324,'fdasf','sadf'),
 (17,5,'3','In Reviewing','Waiting','سى','يناير','1925','Mahmoud Sharaf1','2019-04-25','asd','asd','لا','مصري','مسلم',7546,'23','2019-12-31','اعفاء','لا','لا','45456','المرقعه','المراقيع','امتياز','المراقيع','امتياز',568,'منوفيه','1952',NULL,NULL,NULL,NULL,NULL,NULL,'المرقعه');
INSERT INTO `student_form` (`id`,`s_id`,`form_type`,`paper`,`status`,`dept`,`round`,`for_year`,`name`,`dob`,`country`,`city`,`governorate`,`nationality`,`religion`,`national_id`,`national_source`,`national_release`,`recruitment_postion`,`job`,`job_address`,`phone`,`bachelor_in`,`b_role`,`b_overall_rate`,`b_dept`,`b_special_rate`,`b_overall_mark`,`b_graduate_source`,`b_graduate_year`,`postgraduate_in`,`p_role`,`p_special`,`p_rate`,`p_overall_mark`,`p_university`,`enroll_dept`) VALUES 
 (18,7,'3','In Reviewing','Waiting','سى','يناير','1925','Mahmoud Sharaf1','2019-04-25','asd','asd','لا','مصري','مسلم',7546,'23','2019-12-31','اعفاء','لا','لا','45456','المرقعه','المراقيع','امتياز','المراقيع','امتياز',568,'منوفيه','1952',NULL,NULL,NULL,NULL,NULL,NULL,'المرقعه'),
 (19,7,'3','In Reviewing','Waiting','سى','يناير','1925','Mahmoud Sharaf1','2019-04-25','asd','asd','لا','مصري','مسلم',7546,'23','2019-12-31','اعفاء','لا','لا','45456','المرقعه','المراقيع','امتياز','المراقيع','امتياز',568,'منوفيه','1952',NULL,NULL,NULL,NULL,NULL,NULL,'المرقعه');
/*!40000 ALTER TABLE `student_form` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
