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
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` (`id`,`username`,`email`,`phone`,`password`) VALUES 
 (1,'mohammed','mohammedsedky01147226634@gmail.com','01147226634','aaa'),
 (2,'mohammedd','mohammedsedky01147226634@gmail.com','01147226634','123'),
 (3,'mohammed','mohammedsedky01147226634@gmail.com','01147226634','aa'),
 (4,'mohammed','mohamed.sedky1129@ci.menofia.edu.eg','01147226634','DBj+LXv0JCTK1ag4nxTwXw=='),
 (5,'mohammed','mohammedsedky047226634@gmail.com','01147226634','jw2b+QU0D98='),
 (6,'mahmoud','mahmoud.abdallah1471@ci.menofia.edu.eg','453453453453','CQmZmVDN12o='),
 (7,'mahmoud','mahmoudsharf55@gmail.com','32232323','CQmZmVDN12o='),
 (8,'mahmoud','asas@asdasd','453453453453','CQmZmVDN12o=');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`id`,`username`,`email`,`password`) VALUES 
 (1,'Mahmoud Sharaf','mahmoudsharf55@gmail.com','CQmZmVDN12o='),
 (2,'asdasd','mahmoudsharf515@gmail.com','CQmZmVDN12o='),
 (3,'Mahmoud Sharaf','mahmoud.abdallah1471@ci.menofia.edu.eg','CQmZmVDN12o='),
 (4,'Mahmoud Sharaf','mahmoudsharf@gmail.com','CQmZmVDN12o='),
 (5,'Mahmoud Sharaf','mahmoudsharf555@gmail.com','CQmZmVDN12o='),
 (6,'Mahmoud Sharaf','mahmoud.abdallah11471@ci.menofia.edu.eg','CQmZmVDN12o='),
 (7,'Mahmoud Sharaf','mahmoud.abdallah145471@ci.menofia.edu.eg','CQmZmVDN12o='),
 (8,'Mahmoud Sharaf','mahmoudsharf455@gmail.com','CQmZmVDN12o='),
 (9,'Mahmoud Sharaf','mahmoudsharf155@gmail.com','CQmZmVDN12o='),
 (10,'mahmoud','mahmoudsharf5556@gmail.com','CQmZmVDN12o=');
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
  `b_overall_mark` decimal(10,1) NOT NULL,
  `b_graduate_source` varchar(45) NOT NULL,
  `b_graduate_year` varchar(45) NOT NULL,
  `postgraduate_in` varchar(45) default NULL,
  `p_role` varchar(45) default NULL,
  `p_special` varchar(45) default NULL,
  `p_rate` varchar(45) default NULL,
  `p_overall_mark` decimal(10,1) default NULL,
  `p_university` varchar(45) default NULL,
  `enroll_dept` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `student_id` (`s_id`),
  CONSTRAINT `student_id` FOREIGN KEY (`s_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_form`
--

/*!40000 ALTER TABLE `student_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_form` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
