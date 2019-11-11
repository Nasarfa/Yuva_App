-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 18, 2018 at 06:06 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angular`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(255) NOT NULL,
  `customer_image` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `mobile`, `email`, `address`, `customer_image`) VALUES
(87, 'praveen pan', '7871666282', 'praveen1124bca@gmail.com', 'chennai', 'lion_king_1920x1280.jpg'),
(88, 'santhip', '9875847584', 'd@gmail.com', 'chennai', 'tiger_face_predator_2048x1536.jpg'),
(91, 'mano', '7857885989', 'mano@gmail.com', 'velachery', 'SPIDER_MAN_superhero_marvel_spider_man_action_spiderman_5333x3333.jpg'),
(100, 'santhosh', '8947485848', 'santhosh@gmail.com', 'chennai', 'hill.png'),
(98, 'sathish', '8788777777', 'admin@admin.com', 'chennai', 'Artboard 5 Copy (1).png'),
(99, 'kalai', '4898748787', 'kalai@gmail.com', 'chennai', 'ocean_surf_rocks_126422_3840x2160.jpg'),
(97, 'prabu', '4448849848', 'praveen@gmail.com', 'chennai', 'tiger_tigers_1600x1000.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `images` varchar(500) NOT NULL,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `images`, `name`) VALUES
(1, 'admin@admin.com', '123', 'admin.png', 'Admin'),
(2, 'kanagu@gmail.com', '123', 'kanagu.png', 'kanagu');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(200) NOT NULL,
  `project_name` varchar(200) NOT NULL,
  `project_duration` varchar(200) NOT NULL,
  `project_cost` varchar(200) NOT NULL,
  `project_description` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `customer_name`, `project_name`, `project_duration`, `project_cost`, `project_description`) VALUES
(72, 'santhip', 'magic box', '3 months', '400000', 'magic box'),
(77, 'mano', 'happy', '3 months', '300000', 'sample project'),
(13, 'praveen pan', 'test project 123', '3 months', '500000', 'test project');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `password`) VALUES
(6, 'g', 'g'),
(10, 'ujk', 'kui'),
(8, 'cc', 'c');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_machine`
--

DROP TABLE IF EXISTS `tbl_machine`;
CREATE TABLE IF NOT EXISTS `tbl_machine` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `machine_name` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_machine`
--

INSERT INTO `tbl_machine` (`id`, `machine_name`) VALUES
(1, 'Machine-1'),
(2, 'Machine-2'),
(3, 'Machine-3'),
(4, 'Machine-4'),
(5, 'Machine-5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_machine_data`
--

DROP TABLE IF EXISTS `tbl_machine_data`;
CREATE TABLE IF NOT EXISTS `tbl_machine_data` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `machine_id` int(3) NOT NULL,
  `country` varchar(15) NOT NULL,
  `price` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_machine_data`
--

INSERT INTO `tbl_machine_data` (`id`, `machine_id`, `country`, `price`) VALUES
(1, 1, 'Germany', 2000),
(2, 1, 'Italy', 3000),
(3, 2, 'France', 2500),
(4, 3, 'Russia', 3000),
(5, 3, 'Germany', 1000),
(6, 5, 'China', 1500),
(7, 4, 'India', 500),
(8, 4, 'Pakistan', 2500),
(9, 3, 'Saudi Arabia', 4000),
(10, 2, 'Japan', 3000),
(11, 4, 'Japan', 3500),
(12, 2, 'France', 3500),
(13, 1, 'Russia', 4500),
(14, 1, 'Belgium', 2000),
(15, 3, 'Italy', 1000),
(16, 5, 'Italy', 1800),
(17, 4, 'Belgium', 2500),
(18, 5, 'Pakistan', 3500),
(19, 4, 'China', 500),
(20, 1, 'China', 3500),
(21, 2, 'China', 500),
(22, 4, 'Thailand', 2500),
(23, 2, 'Thailand', 2500),
(24, 1, 'Thailand', 3500),
(25, 1, 'Saudi Arabia', 3500),
(26, 4, 'Saudi Arabia', 3500),
(27, 5, 'Saudi Arabia', 3500),
(28, 5, 'Japan', 7500),
(29, 2, 'Japan', 2500),
(30, 5, 'Germany', 1500),
(31, 4, 'Germany', 5500),
(32, 4, 'France', 3500),
(33, 4, 'France', 3500),
(34, 4, 'Iran', 4500),
(35, 1, 'Iran', 3500),
(36, 2, 'Iran', 5000),
(37, 1, 'Iran', 3000),
(38, 1, 'Iran', 4000),
(39, 1, 'Portugal', 1000),
(40, 2, 'Portugal', 1000),
(41, 3, 'Portugal', 4000),
(42, 4, 'Portugal', 3000),
(43, 4, 'Pakistan', 1800),
(44, 1, 'Pakistan', 2000),
(45, 2, 'Pakistan', 3000),
(46, 5, 'India', 3000),
(47, 2, 'India', 3000),
(48, 3, 'Germany', 3000),
(49, 5, 'Belgium', 3000),
(50, 2, 'Iran', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
CREATE TABLE IF NOT EXISTS `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(200) NOT NULL,
  `project_name` varchar(200) NOT NULL,
  `platform` varchar(200) NOT NULL,
  `developer_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `customer_name`, `project_name`, `platform`, `developer_name`) VALUES
(124, 'santhosh', 'happy', 'android', 'babu'),
(121, 'praveen pan', 'test project', 'android', 'karthi');

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
CREATE TABLE IF NOT EXISTS `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`user_id`, `name`, `email`, `password`) VALUES
(6, 'gg@gmail.com', 'jj@gmail.com', 'gg333333333');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `dob`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'praveen', '', '', 'praveenca@gmail.com', '7728db14b98c6bc44e679cd57d53f6', '2018-08-17 11:05:37.161', '2018-08-17 11:05:37.161'),
(2, 'praveen', '', '', 'MaheshParashar@tutorialspoint.com', 'ba325b263e2e9fc23fde296c620185cdb6d0', '2018-08-17 11:16:10.920', '2018-08-17 11:16:10.920'),
(3, 'praveen', '', '', 'praveenca@gmail.com', 'abc08b71c7e7c5ed47ab88ed57a2b6', '2018-08-17 11:18:46.089', '2018-08-17 11:18:46.089'),
(4, 'praveen', '', '', 'praveen', '1183bd206cb03caeb657f4f0dc0cac', '2018-08-17 11:28:24.776', '2018-08-17 11:28:24.776'),
(5, 'kk', '', '', 'kk@gmail.com', '5c5c0519a6b9fcdd8179a6', '2018-08-17 11:29:45.468', '2018-08-17 11:29:45.468'),
(11, 'f', 'f', 'f', 'f@gmail.com', '57fd7876f6bf02a6987c', '2018-08-17 13:36:44.119', '2018-08-17 13:36:44.119'),
(12, 'praveen', 'pan', '03-06-96', 'praveen@gmail.com', 'e4193a5081d278fa1f190a23750645', '2018-08-17 14:49:12.686', '2018-08-17 14:49:12.686');

-- --------------------------------------------------------

--
-- Table structure for table `users_image`
--

DROP TABLE IF EXISTS `users_image`;
CREATE TABLE IF NOT EXISTS `users_image` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_image`
--

INSERT INTO `users_image` (`id`, `first_name`, `last_name`, `image`, `user_name`, `password`) VALUES
(1, 'p', 'p', 'Print 2.jpg', 'p', 'pan'),
(2, 'mnj', 'nb', 'Print 2.jpg', 'i', 'jk'),
(3, 'mnj', 'nb', 'Print 2.jpg', 'i', 'iijiojhi'),
(4, 'hg', 'h', 'ic_launcher-web.png', 'h', 'hh'),
(5, 'ghfdgd', 'gt', 'loader-gif-transparent-background-11.gif', 'gf', 'g'),
(6, 'y', 'y', 'Loading1.gif', 'y', 'y');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
