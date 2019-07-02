-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2019 at 01:52 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectsend`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(4) NOT NULL,
  `title` varchar(50) NOT NULL,
  `instru_name` varchar(20) NOT NULL,
  `body` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `title`, `instru_name`, `body`) VALUES
(1, 'TEST', 'SANGA', 'juma tatu mtakua na test'),
(2, 'risti', 'baser', 'leten risit zenu');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `code` varchar(10) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `id` int(10) DEFAULT NULL,
  `deptno` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`code`, `cname`, `id`, `deptno`) VALUES
('BT312', 'ENTREPRENEURSHIP', 5, 2),
('CS229', 'RDBMS', 1, 2),
('CS310', 'DDBMS', 4, 1),
('CS312', 'IP PROGRAMMING', 3, 1),
('CS410', 'HCI', 4, 1),
('IS120', 'IS', 1, 2),
('IS220', 'ICT RESEAERCH', 2, 2),
('IS324', 'SELECTED TOPICS IN IS', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `deptno` int(10) NOT NULL,
  `dname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`deptno`, `dname`) VALUES
(1, 'DOCS'),
(2, 'DOIS');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation1`
--

CREATE TABLE `evaluation1` (
  `id` int(6) NOT NULL,
  `department` varchar(10) NOT NULL,
  `instructor_name` varchar(30) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `grade` varchar(2) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `posting_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evaluation1`
--

INSERT INTO `evaluation1` (`id`, `department`, `instructor_name`, `course_code`, `course_name`, `grade`, `comment`, `posting_date`) VALUES
(2, 'DOCS', 'mwombeki', ' CS310', 'Distributed database', 'E', ' kafundisha vizuri sema query ni ngumu zinahitaji mdaa kujifunza', '2019-06-17 19:56:08'),
(4, 'DOIS', 'shidende', ' IS220', 'ICT research', 'B+', ' kafundisha vizuri', '2019-06-17 22:50:53'),
(5, 'DOIS', 'sanga', ' CS229', 'Rdbms', 'A', ' zuri somo', '2019-06-18 22:24:33'),
(6, 'DOCS', 'mwombeki', ' CS310', 'Distributed database', 'B+', ' ngumuasrdtcfyvgubhijnl;k.,mnbvds\\AZSRXETDCFYVGUBHIJNLK.M,NNBAWRSEXDTCFYVGUJNOKL;.,SEDRTFYGBHIJNKLM,', '2019-06-18 22:25:59'),
(8, 'DOIS', 'sanga', ' CS229', 'Rdbms', 'A', ' very well', '2019-06-19 00:06:38'),
(9, 'DOIS', 'shidende', ' IS220', 'ICT research', 'A', ' excellent', '2019-06-19 00:11:57'),
(10, 'DOIS', 'shidende', ' IS220', 'ICT research', 'A', ' Good very well', '2019-06-19 00:14:09'),
(11, 'DOCS', 'Steve', ' CS312', 'Internet programming', 'A', ' gggggggggggggggggggbb', '2019-06-19 02:29:26'),
(12, 'DOCS', 'Steve', ' CS312', 'Internet programming', 'A', ' vcvcvvvv', '2019-06-19 10:53:31'),
(13, 'DOIS', 'sanga', ' CS229', 'Rdbms', 'B+', ' GOOOD AT TEACHING', '2019-06-23 11:04:52'),
(14, 'DOCS', 'Steve', ' CS312', 'Internet programming', 'A', ' he is smart', '2019-06-23 11:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `instry`
--

CREATE TABLE `instry` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `deptno` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instry`
--

INSERT INTO `instry` (`id`, `name`, `deptno`) VALUES
(1, 'sanga', 2),
(2, 'shidende', 2),
(3, 'Steve', 1),
(4, 'mwombeki', 1),
(5, 'Mongi', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_actions_log`
--

CREATE TABLE `tbl_actions_log` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `action` int(2) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `owner_user` text,
  `affected_file` int(11) DEFAULT NULL,
  `affected_account` int(11) DEFAULT NULL,
  `affected_file_name` text,
  `affected_account_name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_actions_log`
--

INSERT INTO `tbl_actions_log` (`id`, `timestamp`, `action`, `owner_id`, `owner_user`, `affected_file`, `affected_account`, `affected_file_name`, `affected_account_name`) VALUES
(1, '2019-04-28 19:57:09', 0, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(2, '2019-04-28 20:01:11', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(3, '2019-04-28 20:04:32', 31, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(4, '2019-04-28 20:04:46', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(5, '2019-04-28 20:19:12', 2, 1, 'Salha Juma', NULL, 2, NULL, 'mussa mkenda'),
(6, '2019-04-28 20:19:19', 31, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(7, '2019-04-28 20:19:36', 1, 2, 'mussa mkenda', NULL, NULL, NULL, 'mussa mkenda'),
(8, '2019-04-28 20:21:47', 5, 2, 'mussa mkenda', 1, NULL, 'teaching-timetable-for-is3-2', 'mkenda'),
(9, '2019-04-28 20:22:08', 31, 2, 'mussa mkenda', NULL, NULL, NULL, NULL),
(10, '2019-04-28 20:22:11', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(11, '2019-04-28 20:23:09', 3, 1, 'Salha Juma', NULL, 3, NULL, 'ally'),
(12, '2019-04-28 20:23:12', 31, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(13, '2019-04-28 20:23:28', 1, 3, 'ally', NULL, NULL, NULL, 'ally'),
(14, '2019-04-28 20:23:41', 31, 3, 'ally', NULL, NULL, NULL, NULL),
(15, '2019-04-28 20:24:01', 1, 2, 'mussa mkenda', NULL, NULL, NULL, 'mussa mkenda'),
(16, '2019-04-28 20:24:40', 25, 2, 'mussa mkenda', 1, 3, 'teaching-timetable-for-is3-2', 'ally'),
(17, '2019-04-28 20:24:40', 32, 2, 'mkenda', 1, NULL, 'teaching-timetable-for-is3-2', NULL),
(18, '2019-04-28 20:24:44', 31, 2, 'mussa mkenda', NULL, NULL, NULL, NULL),
(19, '2019-04-28 20:24:56', 1, 3, 'ally', NULL, NULL, NULL, 'ally'),
(20, '2019-04-28 20:26:28', 31, 3, 'ally', NULL, NULL, NULL, NULL),
(21, '2019-04-28 20:27:32', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(22, '2019-04-28 20:29:02', 31, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(23, '2019-04-28 20:29:32', 1, 3, 'ally', NULL, NULL, NULL, 'ally'),
(24, '2019-04-28 20:29:36', 8, 3, 'ally', 1, 3, 'teaching-timetable-for-is3-2', 'ally'),
(25, '2019-04-28 20:30:21', 31, 3, 'ally', NULL, NULL, NULL, NULL),
(26, '2019-04-28 20:59:58', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(27, '2019-04-29 19:15:20', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(28, '2019-04-29 19:33:01', 3, 1, 'Salha Juma', NULL, 4, NULL, 'SOFTWARE 1'),
(29, '2019-04-29 19:33:57', 3, 1, 'Salha Juma', NULL, 5, NULL, 'HEALTH IS'),
(30, '2019-04-29 19:38:55', 31, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(31, '2019-04-29 19:39:06', 1, 4, 'SOFTWARE 1', NULL, NULL, NULL, 'SOFTWARE 1'),
(32, '2019-04-29 19:39:22', 31, 4, 'SOFTWARE 1', NULL, NULL, NULL, NULL),
(33, '2019-04-29 19:39:25', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(34, '2019-04-29 19:40:57', 3, 1, 'Salha Juma', NULL, 6, NULL, 'Bsc SE1'),
(35, '2019-04-29 19:42:09', 3, 1, 'Salha Juma', NULL, 7, NULL, 'Bsc HIS1'),
(36, '2019-04-29 19:44:25', 23, 1, 'Salha Juma', NULL, 1, NULL, 'HIS 1'),
(37, '2019-04-29 19:46:25', 23, 1, 'Salha Juma', NULL, 2, NULL, 'SE 1'),
(38, '2019-04-29 19:47:58', 2, 1, 'Salha Juma', NULL, 8, NULL, 'MUOMBEKI SUMA'),
(39, '2019-04-29 19:48:04', 31, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(40, '2019-04-29 19:48:11', 1, 8, 'MUOMBEKI SUMA', NULL, NULL, NULL, 'MUOMBEKI SUMA'),
(41, '2019-04-29 19:58:47', 31, 8, 'MUOMBEKI SUMA', NULL, NULL, NULL, NULL),
(42, '2019-04-29 19:59:17', 1, 6, 'Bsc SE1', NULL, NULL, NULL, 'Bsc SE1'),
(43, '2019-04-29 19:59:44', 31, 6, 'Bsc SE1', NULL, NULL, NULL, NULL),
(44, '2019-04-29 19:59:57', 1, 8, 'MUOMBEKI SUMA', NULL, NULL, NULL, 'MUOMBEKI SUMA'),
(45, '2019-04-29 20:01:26', 5, 8, 'MUOMBEKI SUMA', 2, NULL, 'teaching-timetable-for-is3-2 1', 'muombeki'),
(46, '2019-04-29 20:01:27', 25, 8, 'MUOMBEKI SUMA', 2, 6, 'teaching-timetable-for-is3-2 1', 'Bsc SE1'),
(47, '2019-04-29 20:01:27', 26, 8, 'MUOMBEKI SUMA', 2, 1, 'teaching-timetable-for-is3-2 1', 'HIS 1'),
(48, '2019-04-29 20:01:27', 26, 8, 'MUOMBEKI SUMA', 2, 2, 'teaching-timetable-for-is3-2 1', 'SE 1'),
(49, '2019-04-29 20:01:41', 31, 8, 'MUOMBEKI SUMA', NULL, NULL, NULL, NULL),
(50, '2019-04-29 20:01:48', 1, 6, 'Bsc SE1', NULL, NULL, NULL, 'Bsc SE1'),
(51, '2019-04-29 20:02:28', 31, 6, 'Bsc SE1', NULL, NULL, NULL, NULL),
(52, '2019-04-29 20:02:37', 1, 8, 'MUOMBEKI SUMA', NULL, NULL, NULL, 'MUOMBEKI SUMA'),
(53, '2019-04-29 20:03:08', 32, 8, 'muombeki', 2, NULL, 'teaching-timetable-for-is3-2 1', NULL),
(54, '2019-04-29 20:03:16', 31, 8, 'MUOMBEKI SUMA', NULL, NULL, NULL, NULL),
(55, '2019-04-29 20:03:21', 1, 6, 'Bsc SE1', NULL, NULL, NULL, 'Bsc SE1'),
(56, '2019-04-29 20:03:33', 31, 6, 'Bsc SE1', NULL, NULL, NULL, NULL),
(57, '2019-04-29 20:03:47', 1, 8, 'MUOMBEKI SUMA', NULL, NULL, NULL, 'MUOMBEKI SUMA'),
(58, '2019-04-29 20:04:33', 32, 8, 'muombeki', 2, NULL, 'teaching-timetable-for-is3-2 1', NULL),
(59, '2019-04-29 20:04:39', 31, 8, 'MUOMBEKI SUMA', NULL, NULL, NULL, NULL),
(60, '2019-04-29 20:04:58', 1, 6, 'Bsc SE1', NULL, NULL, NULL, 'Bsc SE1'),
(61, '2019-04-29 20:06:31', 31, 6, 'Bsc SE1', NULL, NULL, NULL, NULL),
(62, '2019-04-29 20:06:36', 1, 8, 'MUOMBEKI SUMA', NULL, NULL, NULL, 'MUOMBEKI SUMA'),
(63, '2019-04-29 20:06:53', 32, 8, 'muombeki', 2, NULL, 'teaching-timetable-for-is3-2 1', NULL),
(64, '2019-04-29 20:06:57', 31, 8, 'MUOMBEKI SUMA', NULL, NULL, NULL, NULL),
(65, '2019-04-29 20:07:02', 1, 6, 'Bsc SE1', NULL, NULL, NULL, 'Bsc SE1'),
(66, '2019-04-29 20:13:18', 31, 6, 'Bsc SE1', NULL, NULL, NULL, NULL),
(67, '2019-04-29 20:13:23', 1, 8, 'MUOMBEKI SUMA', NULL, NULL, NULL, 'MUOMBEKI SUMA'),
(68, '2019-04-29 20:13:53', 13, 8, 'MUOMBEKI SUMA', NULL, 8, NULL, 'MUOMBEKI SUMA'),
(69, '2019-04-29 20:14:02', 31, 8, 'MUOMBEKI SUMA', NULL, NULL, NULL, NULL),
(70, '2019-04-29 20:14:34', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(71, '2019-04-29 20:14:58', 13, 1, 'Salha Juma', NULL, 8, NULL, 'MUOMBEKI SUMA'),
(72, '2019-04-29 20:15:05', 31, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(73, '2019-04-29 20:15:59', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(74, '2019-04-29 20:16:12', 13, 1, 'Salha Juma', NULL, 8, NULL, 'MUOMBEKI SUMA'),
(75, '2019-04-29 20:16:15', 31, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(76, '2019-04-29 20:16:52', 1, 8, 'MUOMBEKI SUMA', NULL, NULL, NULL, 'MUOMBEKI SUMA'),
(77, '2019-04-29 20:17:08', 31, 8, 'MUOMBEKI SUMA', NULL, NULL, NULL, NULL),
(78, '2019-04-29 20:19:01', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(79, '2019-04-29 20:21:41', 31, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(80, '2019-04-29 20:29:46', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(81, '2019-04-29 20:35:25', 14, 1, 'Salha Juma', NULL, 3, NULL, 'ally'),
(82, '2019-04-29 20:35:46', 14, 1, 'Salha Juma', NULL, 3, NULL, 'ally'),
(83, '2019-04-29 20:43:48', 2, 1, 'Salha Juma', NULL, 9, NULL, 'aliyu'),
(84, '2019-04-29 20:45:40', 31, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(85, '2019-04-29 20:46:30', 1, 9, 'aliyu', NULL, NULL, NULL, 'aliyu'),
(86, '2019-04-30 05:04:21', 31, 9, 'aliyu', NULL, NULL, NULL, NULL),
(87, '2019-04-30 05:04:54', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(88, '2019-04-30 05:19:24', 14, 1, 'Salha Juma', NULL, 3, NULL, 'ally'),
(89, '2019-04-30 05:26:35', 14, 1, 'Salha Juma', NULL, 5, NULL, 'HEALTH IS'),
(90, '2019-04-30 05:26:52', 14, 1, 'Salha Juma', NULL, 4, NULL, 'SOFTWARE 1'),
(91, '2019-04-30 05:27:09', 14, 1, 'Salha Juma', NULL, 3, NULL, 'ally'),
(92, '2019-04-30 05:32:32', 15, 1, 'Salha Juma', NULL, 1, NULL, 'VB.NET'),
(93, '2019-04-30 05:32:41', 15, 1, 'Salha Juma', NULL, 1, NULL, 'VB.NET'),
(94, '2019-04-30 05:33:44', 15, 1, 'Salha Juma', NULL, 2, NULL, 'Data Structure'),
(95, '2019-04-30 05:35:17', 15, 1, 'Salha Juma', NULL, 2, NULL, 'Data Structure'),
(96, '2019-04-30 05:41:14', 2, 1, 'Salha Juma', NULL, 10, NULL, 'Francis Justin'),
(97, '2019-04-30 05:43:53', 31, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(98, '2019-04-30 05:44:30', 1, 2, 'mussa mkenda', NULL, NULL, NULL, 'mussa mkenda'),
(99, '2019-04-30 05:48:41', 5, 2, 'mussa mkenda', 3, NULL, 'is321-group-work-practice', 'mkenda'),
(100, '2019-04-30 05:48:41', 26, 2, 'mussa mkenda', 3, 1, 'is321-group-work-practice', 'VB.NET'),
(101, '2019-04-30 05:49:10', 31, 2, 'mussa mkenda', NULL, NULL, NULL, NULL),
(102, '2019-04-30 05:49:27', 1, 6, 'Bsc SE1', NULL, NULL, NULL, 'Bsc SE1'),
(103, '2019-04-30 05:58:25', 31, 6, 'Bsc SE1', NULL, NULL, NULL, NULL),
(104, '2019-04-30 05:58:57', 1, 10, 'Francis Justin', NULL, NULL, NULL, 'Francis Justin'),
(105, '2019-04-30 06:26:43', 31, 10, 'Francis Justin', NULL, NULL, NULL, NULL),
(106, '2019-04-30 06:26:47', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(107, '2019-04-30 06:30:09', 31, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(108, '2019-04-30 06:30:29', 1, 10, 'Francis Justin', NULL, NULL, NULL, 'Francis Justin'),
(109, '2019-04-30 06:31:14', 31, 10, 'Francis Justin', NULL, NULL, NULL, NULL),
(110, '2019-04-30 06:31:17', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(111, '2019-04-30 06:33:03', 2, 1, 'Salha Juma', NULL, 11, NULL, 'Augustino Mwogosi'),
(112, '2019-04-30 06:33:06', 31, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(113, '2019-04-30 06:33:17', 1, 11, 'Augustino Mwogosi', NULL, NULL, NULL, 'Augustino Mwogosi'),
(114, '2019-04-30 06:33:29', 31, 11, 'Augustino Mwogosi', NULL, NULL, NULL, NULL),
(115, '2019-04-30 06:33:37', 1, 10, 'Francis Justin', NULL, NULL, NULL, 'Francis Justin'),
(116, '2019-04-30 06:33:49', 31, 10, 'Francis Justin', NULL, NULL, NULL, NULL),
(117, '2019-04-30 06:52:57', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(118, '2019-04-30 06:57:21', 31, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(119, '2019-04-30 06:58:44', 1, 6, 'Bsc SE1', NULL, NULL, NULL, 'Bsc SE1'),
(120, '2019-04-30 07:00:01', 31, 6, 'Bsc SE1', NULL, NULL, NULL, NULL),
(121, '2019-04-30 07:00:16', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(122, '2019-04-30 07:02:49', 3, 1, 'Salha Juma', NULL, 12, NULL, 'Bsc IS1'),
(123, '2019-04-30 07:02:55', 31, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(124, '2019-04-30 07:03:18', 1, 12, 'Bsc IS1', NULL, NULL, NULL, 'Bsc IS1'),
(125, '2019-04-30 07:03:31', 31, 12, 'Bsc IS1', NULL, NULL, NULL, NULL),
(126, '2019-04-30 07:03:52', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(127, '2019-04-30 07:05:57', 3, 1, 'Salha Juma', NULL, 13, NULL, 'Bsc TE1'),
(128, '2019-04-30 07:07:55', 3, 1, 'Salha Juma', NULL, 14, NULL, 'Bsc MTA1'),
(129, '2019-04-30 07:08:17', 31, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(130, '2019-04-30 07:08:39', 1, 11, 'Augustino Mwogosi', NULL, NULL, NULL, 'Augustino Mwogosi'),
(131, '2019-04-30 07:14:12', 5, 11, 'Augustino Mwogosi', 4, NULL, 'udom-prospectus-2016-17', 'mwogosi'),
(132, '2019-04-30 07:14:18', 31, 11, 'Augustino Mwogosi', NULL, NULL, NULL, NULL),
(133, '2019-04-30 07:14:27', 1, 6, 'Bsc SE1', NULL, NULL, NULL, 'Bsc SE1'),
(134, '2019-04-30 07:14:50', 31, 6, 'Bsc SE1', NULL, NULL, NULL, NULL),
(135, '2019-04-30 07:15:03', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(136, '2019-04-30 07:15:44', 31, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(137, '2019-04-30 07:15:59', 1, 11, 'Augustino Mwogosi', NULL, NULL, NULL, 'Augustino Mwogosi'),
(138, '2019-04-30 07:17:10', 31, 11, 'Augustino Mwogosi', NULL, NULL, NULL, NULL),
(139, '2019-04-30 07:17:19', 1, 10, 'Francis Justin', NULL, NULL, NULL, 'Francis Justin'),
(140, '2019-04-30 07:21:03', 32, 10, 'justin', 4, NULL, 'udom-prospectus-2016-17', NULL),
(141, '2019-04-30 07:23:34', 31, 10, 'Francis Justin', NULL, NULL, NULL, NULL),
(142, '2019-04-30 07:25:48', 1, 10, 'Francis Justin', NULL, NULL, NULL, 'Francis Justin'),
(143, '2019-04-30 07:27:05', 5, 10, 'Francis Justin', 5, NULL, 'kazi-ya-ict', 'justin'),
(144, '2019-04-30 07:27:05', 25, 10, 'Francis Justin', 5, 12, 'kazi-ya-ict', 'Bsc IS1'),
(145, '2019-04-30 07:27:11', 31, 10, 'Francis Justin', NULL, NULL, NULL, NULL),
(146, '2019-04-30 07:27:24', 1, 12, 'Bsc IS1', NULL, NULL, NULL, 'Bsc IS1'),
(147, '2019-04-30 07:27:31', 31, 12, 'Bsc IS1', NULL, NULL, NULL, NULL),
(148, '2019-04-30 07:27:42', 1, 6, 'Bsc SE1', NULL, NULL, NULL, 'Bsc SE1'),
(149, '2019-04-30 07:27:50', 31, 6, 'Bsc SE1', NULL, NULL, NULL, NULL),
(150, '2019-04-30 07:28:00', 1, 11, 'Augustino Mwogosi', NULL, NULL, NULL, 'Augustino Mwogosi'),
(151, '2019-04-30 07:29:49', 31, 11, 'Augustino Mwogosi', NULL, NULL, NULL, NULL),
(152, '2019-04-30 07:29:54', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(153, '2019-04-30 07:32:27', 2, 1, 'Salha Juma', NULL, 15, NULL, 'ROJA MUKI'),
(154, '2019-04-30 07:32:38', 31, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(155, '2019-04-30 07:32:52', 1, 15, 'ROJA MUKI', NULL, NULL, NULL, 'ROJA MUKI'),
(156, '2019-04-30 07:34:34', 13, 15, 'MUKI ROJA', NULL, 15, NULL, 'MUKI ROJA'),
(157, '2019-04-30 07:34:43', 31, 15, 'MUKI ROJA', NULL, NULL, NULL, NULL),
(158, '2019-04-30 07:34:55', 1, 15, 'MUKI ROJA', NULL, NULL, NULL, 'MUKI ROJA'),
(159, '2019-04-30 07:35:59', 5, 15, 'MUKI ROJA', 6, NULL, 'research', 'rojamuki'),
(160, '2019-04-30 07:35:59', 25, 15, 'MUKI ROJA', 6, 7, 'research', 'Bsc HIS1'),
(161, '2019-04-30 07:35:59', 25, 15, 'MUKI ROJA', 6, 12, 'research', 'Bsc IS1'),
(162, '2019-04-30 07:36:00', 25, 15, 'MUKI ROJA', 6, 14, 'research', 'Bsc MTA1'),
(163, '2019-04-30 07:36:00', 25, 15, 'MUKI ROJA', 6, 6, 'research', 'Bsc SE1'),
(164, '2019-04-30 07:36:00', 25, 15, 'MUKI ROJA', 6, 13, 'research', 'Bsc TE1'),
(165, '2019-04-30 07:36:00', 25, 15, 'MUKI ROJA', 6, 5, 'research', 'HEALTH IS'),
(166, '2019-04-30 07:36:14', 31, 15, 'MUKI ROJA', NULL, NULL, NULL, NULL),
(167, '2019-04-30 07:36:41', 1, 8, 'MUOMBEKI SUMA', NULL, NULL, NULL, 'MUOMBEKI SUMA'),
(168, '2019-04-30 07:39:44', 31, 8, 'MUOMBEKI SUMA', NULL, NULL, NULL, NULL),
(169, '2019-04-30 07:53:45', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(170, '2019-04-30 07:55:07', 31, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(171, '2019-04-30 07:55:45', 1, 6, 'Bsc SE1', NULL, NULL, NULL, 'Bsc SE1'),
(172, '2019-04-30 07:55:58', 31, 6, 'Bsc SE1', NULL, NULL, NULL, NULL),
(173, '2019-04-30 07:56:32', 1, 8, 'MUOMBEKI SUMA', NULL, NULL, NULL, 'MUOMBEKI SUMA'),
(174, '2019-04-30 07:58:09', 5, 8, 'MUOMBEKI SUMA', 7, NULL, 'teaching-timetable-for-is3-2 4', 'muombeki'),
(175, '2019-04-30 07:58:09', 25, 8, 'MUOMBEKI SUMA', 7, 7, 'teaching-timetable-for-is3-2 4', 'Bsc HIS1'),
(176, '2019-04-30 07:58:54', 31, 8, 'MUOMBEKI SUMA', NULL, NULL, NULL, NULL),
(177, '2019-04-30 07:59:19', 1, 11, 'Augustino Mwogosi', NULL, NULL, NULL, 'Augustino Mwogosi'),
(178, '2019-05-07 09:57:40', 1, 6, 'Bsc SE1', NULL, NULL, NULL, 'Bsc SE1'),
(179, '2019-05-07 09:58:58', 31, 6, 'Bsc SE1', NULL, NULL, NULL, NULL),
(180, '2019-05-07 09:59:07', 1, 8, 'MUOMBEKI SUMA', NULL, NULL, NULL, 'MUOMBEKI SUMA'),
(181, '2019-05-07 10:01:19', 12, 8, 'MUOMBEKI SUMA', 6, NULL, 'research', NULL),
(182, '2019-05-07 11:01:03', 31, 8, 'MUOMBEKI SUMA', NULL, NULL, NULL, NULL),
(183, '2019-05-07 11:01:21', 1, 11, 'Augustino Mwogosi', NULL, NULL, NULL, 'Augustino Mwogosi'),
(184, '2019-05-07 11:04:02', 31, 11, 'Augustino Mwogosi', NULL, NULL, NULL, NULL),
(185, '2019-05-07 11:04:08', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(186, '2019-05-07 11:05:54', 12, 1, 'Salha Juma', 5, NULL, 'kazi-ya-ict', NULL),
(187, '2019-05-07 11:31:07', 31, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(188, '2019-05-07 11:31:13', 1, 6, 'Bsc SE1', NULL, NULL, NULL, 'Bsc SE1'),
(189, '2019-05-07 19:40:40', 31, 6, 'Bsc SE1', NULL, NULL, NULL, NULL),
(190, '2019-05-07 19:40:52', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(191, '2019-05-18 07:02:47', 1, 6, 'Bsc SE1', NULL, NULL, NULL, 'Bsc SE1'),
(192, '2019-05-18 07:05:08', 31, 6, 'Bsc SE1', NULL, NULL, NULL, NULL),
(193, '2019-06-01 18:14:30', 1, 6, 'Bsc SE1', NULL, NULL, NULL, 'Bsc SE1'),
(194, '2019-06-01 18:19:04', 31, 6, 'Bsc SE1', NULL, NULL, NULL, NULL),
(195, '2019-06-01 18:19:17', 1, 10, 'Francis Justin', NULL, NULL, NULL, 'Francis Justin'),
(196, '2019-06-01 18:26:28', 5, 10, 'Francis Justin', 6, NULL, 'gis', 'justin'),
(197, '2019-06-01 18:26:28', 25, 10, 'Francis Justin', 6, 3, 'gis', 'ally'),
(198, '2019-06-01 18:26:28', 25, 10, 'Francis Justin', 6, 7, 'gis', 'Bsc HIS1'),
(199, '2019-06-01 18:26:29', 25, 10, 'Francis Justin', 6, 12, 'gis', 'Bsc IS1'),
(200, '2019-06-01 18:26:29', 25, 10, 'Francis Justin', 6, 14, 'gis', 'Bsc MTA1'),
(201, '2019-06-01 18:26:29', 25, 10, 'Francis Justin', 6, 6, 'gis', 'Bsc SE1'),
(202, '2019-06-01 18:26:29', 25, 10, 'Francis Justin', 6, 13, 'gis', 'Bsc TE1'),
(203, '2019-06-01 18:26:29', 25, 10, 'Francis Justin', 6, 5, 'gis', 'HEALTH IS'),
(204, '2019-06-01 18:26:29', 25, 10, 'Francis Justin', 6, 4, 'gis', 'SOFTWARE 1'),
(205, '2019-06-01 18:26:29', 26, 10, 'Francis Justin', 6, 2, 'gis', 'Data Structure'),
(206, '2019-06-01 18:26:29', 26, 10, 'Francis Justin', 6, 1, 'gis', 'VB.NET'),
(207, '2019-06-01 18:28:40', 5, 10, 'Francis Justin', 7, NULL, 'migrant1xlsx', 'justin'),
(208, '2019-06-01 18:30:38', 5, 10, 'Francis Justin', 8, NULL, 'assignment-2', 'justin'),
(209, '2019-06-01 18:30:38', 25, 10, 'Francis Justin', 8, 6, 'assignment-2', 'Bsc SE1'),
(210, '2019-06-01 18:35:35', 31, 10, 'Francis Justin', NULL, NULL, NULL, NULL),
(211, '2019-06-01 18:35:41', 1, 6, 'Bsc SE1', NULL, NULL, NULL, 'Bsc SE1'),
(212, '2019-06-01 18:37:36', 31, 6, 'Bsc SE1', NULL, NULL, NULL, NULL),
(213, '2019-06-01 18:37:42', 1, 10, 'Francis Justin', NULL, NULL, NULL, 'Francis Justin'),
(214, '2019-06-01 18:38:44', 25, 10, 'Francis Justin', 7, 3, 'migrant1xlsx', 'ally'),
(215, '2019-06-01 18:38:44', 25, 10, 'Francis Justin', 7, 7, 'migrant1xlsx', 'Bsc HIS1'),
(216, '2019-06-01 18:38:44', 25, 10, 'Francis Justin', 7, 12, 'migrant1xlsx', 'Bsc IS1'),
(217, '2019-06-01 18:38:44', 25, 10, 'Francis Justin', 7, 14, 'migrant1xlsx', 'Bsc MTA1'),
(218, '2019-06-01 18:38:44', 25, 10, 'Francis Justin', 7, 6, 'migrant1xlsx', 'Bsc SE1'),
(219, '2019-06-01 18:38:44', 25, 10, 'Francis Justin', 7, 13, 'migrant1xlsx', 'Bsc TE1'),
(220, '2019-06-01 18:38:44', 25, 10, 'Francis Justin', 7, 5, 'migrant1xlsx', 'HEALTH IS'),
(221, '2019-06-01 18:38:45', 25, 10, 'Francis Justin', 7, 4, 'migrant1xlsx', 'SOFTWARE 1'),
(222, '2019-06-01 18:38:45', 26, 10, 'Francis Justin', 7, 2, 'migrant1xlsx', 'Data Structure'),
(223, '2019-06-01 18:38:45', 26, 10, 'Francis Justin', 7, 1, 'migrant1xlsx', 'VB.NET'),
(224, '2019-06-01 18:38:45', 32, 10, 'justin', 7, NULL, 'migrant1xlsx', NULL),
(225, '2019-06-01 18:38:59', 32, 10, 'justin', 7, NULL, 'migrant1xlsx', NULL),
(226, '2019-06-01 18:39:47', 31, 10, 'Francis Justin', NULL, NULL, NULL, NULL),
(227, '2019-06-01 18:39:52', 1, 6, 'Bsc SE1', NULL, NULL, NULL, 'Bsc SE1'),
(228, '2019-06-01 18:40:12', 31, 6, 'Bsc SE1', NULL, NULL, NULL, NULL),
(229, '2019-06-01 18:41:53', 1, 7, 'Bsc HIS1', NULL, NULL, NULL, 'Bsc HIS1'),
(230, '2019-06-01 18:44:00', 31, 7, 'Bsc HIS1', NULL, NULL, NULL, NULL),
(231, '2019-06-01 18:44:06', 1, 7, 'Bsc HIS1', NULL, NULL, NULL, 'Bsc HIS1'),
(232, '2019-06-01 18:44:14', 8, 7, 'Bsc HIS1', 7, 7, 'migrant1xlsx', 'Bsc HIS1'),
(233, '2019-06-01 18:44:52', 31, 7, 'Bsc HIS1', NULL, NULL, NULL, NULL),
(234, '2019-06-01 18:45:01', 1, 10, 'Francis Justin', NULL, NULL, NULL, 'Francis Justin'),
(235, '2019-06-01 18:45:46', 31, 10, 'Francis Justin', NULL, NULL, NULL, NULL),
(236, '2019-06-01 18:45:52', 1, 6, 'Bsc SE1', NULL, NULL, NULL, 'Bsc SE1'),
(237, '2019-06-01 18:46:04', 8, 6, 'Bsc SE1', 7, 6, 'migrant1xlsx', 'Bsc SE1'),
(238, '2019-06-01 18:46:13', 31, 6, 'Bsc SE1', NULL, NULL, NULL, NULL),
(239, '2019-06-01 18:46:18', 1, 10, 'Francis Justin', NULL, NULL, NULL, 'Francis Justin'),
(240, '2019-06-01 18:46:37', 7, 10, 'Francis Justin', 8, 10, 'assignment-2', 'Francis Justin'),
(241, '2019-06-01 18:46:43', 31, 10, 'Francis Justin', NULL, NULL, NULL, NULL),
(242, '2019-06-01 18:46:48', 1, 10, 'Francis Justin', NULL, NULL, NULL, 'Francis Justin'),
(243, '2019-06-01 18:47:04', 31, 10, 'Francis Justin', NULL, NULL, NULL, NULL),
(244, '2019-06-01 18:48:12', 1, 10, 'Francis Justin', NULL, NULL, NULL, 'Francis Justin'),
(245, '2019-06-01 18:50:13', 31, 10, 'Francis Justin', NULL, NULL, NULL, NULL),
(246, '2019-06-01 18:50:20', 1, 1, 'Salha Juma', NULL, NULL, NULL, 'Salha Juma'),
(247, '2019-06-01 18:51:17', 17, 1, 'Salha Juma', NULL, NULL, NULL, 'ally'),
(248, '2019-06-01 18:52:03', 17, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(249, '2019-06-01 18:52:29', 17, 1, 'Salha Juma', NULL, NULL, NULL, 'HEALTH IS'),
(250, '2019-06-01 18:52:29', 17, 1, 'Salha Juma', NULL, NULL, NULL, 'SOFTWARE 1'),
(251, '2019-06-01 18:53:01', 17, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(252, '2019-06-01 18:53:01', 17, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(253, '2019-06-01 18:53:17', 17, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(254, '2019-06-01 18:53:17', 17, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(255, '2019-06-01 18:54:07', 17, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(256, '2019-06-01 18:54:07', 17, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(257, '2019-06-01 18:54:39', 17, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(258, '2019-06-01 18:54:39', 17, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(259, '2019-06-01 18:55:07', 17, 1, 'Salha Juma', NULL, NULL, NULL, 'Bsc MTA1'),
(260, '2019-06-01 18:55:07', 17, 1, 'Salha Juma', NULL, NULL, NULL, 'Bsc TE1'),
(261, '2019-06-01 18:55:27', 17, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(262, '2019-06-01 18:55:27', 17, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(263, '2019-06-01 18:56:47', 18, 1, 'Salha Juma', NULL, NULL, NULL, 'Data Structure'),
(264, '2019-06-01 18:58:41', 5, 1, 'Salha Juma', 9, NULL, 'bt-220-lecture2', 'salha'),
(265, '2019-06-01 18:58:41', 25, 1, 'Salha Juma', 9, 7, 'bt-220-lecture2', 'Bsc HIS1'),
(266, '2019-06-01 18:58:41', 25, 1, 'Salha Juma', 9, 12, 'bt-220-lecture2', 'Bsc IS1'),
(267, '2019-06-01 18:58:42', 25, 1, 'Salha Juma', 9, 6, 'bt-220-lecture2', 'Bsc SE1'),
(268, '2019-06-01 18:58:42', 26, 1, 'Salha Juma', 9, 1, 'bt-220-lecture2', 'VB.NET'),
(269, '2019-06-01 18:59:04', 1, 7, 'Bsc HIS1', NULL, NULL, NULL, 'Bsc HIS1'),
(270, '2019-06-01 18:59:11', 8, 7, 'Bsc HIS1', 9, 7, 'bt-220-lecture2', 'Bsc HIS1'),
(271, '2019-06-01 18:59:12', 8, 7, 'Bsc HIS1', 9, 7, 'bt-220-lecture2', 'Bsc HIS1'),
(272, '2019-06-01 18:59:13', 8, 7, 'Bsc HIS1', 9, 7, 'bt-220-lecture2', 'Bsc HIS1'),
(273, '2019-06-01 18:59:13', 8, 7, 'Bsc HIS1', 9, 7, 'bt-220-lecture2', 'Bsc HIS1'),
(274, '2019-06-01 18:59:13', 8, 7, 'Bsc HIS1', 9, 7, 'bt-220-lecture2', 'Bsc HIS1'),
(275, '2019-06-01 18:59:14', 8, 7, 'Bsc HIS1', 9, 7, 'bt-220-lecture2', 'Bsc HIS1'),
(276, '2019-06-01 18:59:14', 8, 7, 'Bsc HIS1', 9, 7, 'bt-220-lecture2', 'Bsc HIS1'),
(277, '2019-06-01 19:00:14', 31, 7, 'Bsc HIS1', NULL, NULL, NULL, NULL),
(278, '2019-06-01 19:00:20', 1, 10, 'Francis Justin', NULL, NULL, NULL, 'Francis Justin'),
(279, '2019-06-01 19:06:45', 31, 10, 'Francis Justin', NULL, NULL, NULL, NULL),
(280, '2019-06-01 19:06:51', 1, 7, 'Bsc HIS1', NULL, NULL, NULL, 'Bsc HIS1'),
(281, '2019-06-01 19:08:26', 31, 7, 'Bsc HIS1', NULL, NULL, NULL, NULL),
(282, '2019-06-01 19:08:30', 1, 10, 'Francis Justin', NULL, NULL, NULL, 'Francis Justin'),
(283, '2019-06-01 19:10:17', 31, 10, 'Francis Justin', NULL, NULL, NULL, NULL),
(284, '2019-06-01 19:10:23', 1, 7, 'Bsc HIS1', NULL, NULL, NULL, 'Bsc HIS1'),
(285, '2019-06-01 19:11:11', 6, 7, 'Bsc HIS1', 10, NULL, 'new-assignment', 'bschis1'),
(286, '2019-06-01 19:11:54', 31, 7, 'Bsc HIS1', NULL, NULL, NULL, NULL),
(287, '2019-06-01 19:12:00', 1, 10, 'Francis Justin', NULL, NULL, NULL, 'Francis Justin'),
(288, '2019-06-01 19:12:43', 31, 10, 'Francis Justin', NULL, NULL, NULL, NULL),
(289, '2019-06-01 19:12:48', 1, 7, 'Bsc HIS1', NULL, NULL, NULL, 'Bsc HIS1'),
(290, '2019-06-01 19:12:49', 1, 7, 'Bsc HIS1', NULL, NULL, NULL, 'Bsc HIS1'),
(291, '2019-06-01 19:13:10', 31, 7, 'Bsc HIS1', NULL, NULL, NULL, NULL),
(292, '2019-06-01 19:13:15', 1, 6, 'Bsc SE1', NULL, NULL, NULL, 'Bsc SE1'),
(293, '2019-06-01 19:13:15', 1, 6, 'Bsc SE1', NULL, NULL, NULL, 'Bsc SE1'),
(294, '2019-06-01 19:14:42', 31, 6, 'Bsc SE1', NULL, NULL, NULL, NULL),
(295, '2019-06-01 19:14:47', 1, 7, 'Bsc HIS1', NULL, NULL, NULL, 'Bsc HIS1'),
(296, '2019-06-01 19:23:37', 31, 7, 'Bsc HIS1', NULL, NULL, NULL, NULL),
(297, '2019-06-01 19:24:05', 1, 11, 'Augustino Mwogosi', NULL, NULL, NULL, 'Augustino Mwogosi'),
(298, '2019-06-01 19:28:40', 31, 11, 'Augustino Mwogosi', NULL, NULL, NULL, NULL),
(315, '2019-06-06 12:41:04', 32, 1, 'salha', 11, NULL, 'bt-220-lecture1', NULL),
(316, '2019-06-06 12:43:32', 32, 1, 'salha', 11, NULL, 'bt-220-lecture1', NULL),
(317, '2019-06-06 12:46:38', 5, 1, 'Salha Juma', 12, NULL, 'bt220', 'salha'),
(318, '2019-06-06 12:46:38', 25, 1, 'Salha Juma', 12, 12, 'bt220', 'Bsc IS1'),
(319, '2019-06-06 12:49:59', 5, 1, 'Salha Juma', 13, NULL, 'bt-220-log-with-qn', 'salha'),
(320, '2019-06-06 12:50:00', 25, 1, 'Salha Juma', 13, 6, 'bt-220-log-with-qn', 'Bsc SE1'),
(321, '2019-06-06 13:46:35', 2, 1, 'Salha Juma', NULL, 16, NULL, 'Alawi Admin'),
(322, '2019-06-06 13:52:27', 31, 1, 'Salha Juma', NULL, NULL, NULL, NULL),
(323, '2019-06-06 13:52:53', 1, 16, 'Alawi Admin', NULL, NULL, NULL, 'Alawi Admin'),
(324, '2019-06-06 13:53:51', 13, 16, 'Alawi Admin', NULL, 1, NULL, 'Salha Juma'),
(325, '2019-06-06 13:54:28', 31, 16, 'Alawi Admin', NULL, NULL, NULL, NULL),
(326, '2019-06-06 13:54:59', 1, 16, 'Alawi Admin', NULL, NULL, NULL, 'Alawi Admin'),
(327, '2019-06-06 14:04:39', 3, 16, 'Alawi Admin', NULL, 17, NULL, 'Bsc IS2'),
(328, '2019-06-06 14:05:59', 3, 16, 'Alawi Admin', NULL, 18, NULL, 'Bsc IS3'),
(329, '2019-06-06 14:07:27', 3, 16, 'Alawi Admin', NULL, 19, NULL, 'Bsc HIS2'),
(330, '2019-06-06 14:08:25', 3, 16, 'Alawi Admin', NULL, 20, NULL, 'Bsc HIS3'),
(331, '2019-06-06 14:10:38', 3, 16, 'Alawi Admin', NULL, 21, NULL, 'Bsc CIS1'),
(332, '2019-06-06 14:11:54', 3, 16, 'Alawi Admin', NULL, 22, NULL, 'Bsc CIS2'),
(333, '2019-06-06 14:13:19', 3, 16, 'Alawi Admin', NULL, 23, NULL, 'Bsc CIS3'),
(334, '2019-06-06 14:15:07', 3, 16, 'Alawi Admin', NULL, 24, NULL, 'Bsc CS1'),
(335, '2019-06-06 14:16:21', 3, 16, 'Alawi Admin', NULL, 25, NULL, 'Bsc CS2'),
(336, '2019-06-06 14:18:11', 3, 16, 'Alawi Admin', NULL, 26, NULL, 'Bsc CS3'),
(337, '2019-06-06 14:20:00', 3, 16, 'Alawi Admin', NULL, 27, NULL, 'Bsc SE2'),
(338, '2019-06-06 14:21:31', 3, 16, 'Alawi Admin', NULL, 28, NULL, 'Bsc SE3'),
(339, '2019-06-06 14:22:28', 3, 16, 'Alawi Admin', NULL, 29, NULL, 'Bsc SE4'),
(340, '2019-06-06 14:22:49', 31, 16, 'Alawi Admin', NULL, NULL, NULL, NULL),
(341, '2019-06-06 14:23:29', 1, 29, 'Bsc SE4', NULL, NULL, NULL, 'Bsc SE4'),
(342, '2019-06-06 14:25:28', 31, 29, 'Bsc SE4', NULL, NULL, NULL, NULL),
(343, '2019-06-06 14:25:59', 1, 16, 'Alawi Admin', NULL, NULL, NULL, 'Alawi Admin'),
(344, '2019-06-06 14:29:41', 2, 16, 'Alawi Admin', NULL, 30, NULL, 'Dr Nima Shidende'),
(345, '2019-06-06 14:32:04', 2, 16, 'Alawi Admin', NULL, 31, NULL, 'Dr Hector Mongi'),
(346, '2019-06-06 14:34:10', 2, 16, 'Alawi Admin', NULL, 32, NULL, 'Bahati Sanga'),
(347, '2019-06-06 14:36:05', 2, 16, 'Alawi Admin', NULL, 33, NULL, 'Carina Titus'),
(348, '2019-06-06 14:36:57', 2, 16, 'Alawi Admin', NULL, 34, NULL, 'Augustino Mwogosi'),
(349, '2019-06-06 14:39:48', 2, 16, 'Alawi Admin', NULL, 35, NULL, 'Bertha Shayo'),
(350, '2019-06-06 14:41:14', 2, 16, 'Alawi Admin', NULL, 36, NULL, 'Pascal Charles'),
(351, '2019-06-06 14:42:22', 2, 16, 'Alawi Admin', NULL, 37, NULL, 'Ramadhain Duma'),
(352, '2019-06-06 14:44:40', 2, 16, 'Alawi Admin', NULL, 38, NULL, 'prof  Leornard Mselle'),
(353, '2019-06-06 14:45:28', 31, 16, 'Alawi Admin', NULL, NULL, NULL, NULL),
(354, '2019-06-06 14:45:42', 1, 34, 'Augustino Mwogosi', NULL, NULL, NULL, 'Augustino Mwogosi'),
(355, '2019-06-06 14:46:10', 31, 34, 'Augustino Mwogosi', NULL, NULL, NULL, NULL),
(356, '2019-06-06 14:46:27', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(357, '2019-06-06 14:47:06', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(358, '2019-06-06 15:02:29', 1, 34, 'Augustino Mwogosi', NULL, NULL, NULL, 'Augustino Mwogosi'),
(359, '2019-06-10 18:31:59', 1, 16, 'Alawi Admin', NULL, NULL, NULL, 'Alawi Admin'),
(360, '2019-06-15 17:40:22', 1, 16, 'Alawi Admin', NULL, NULL, NULL, 'Alawi Admin'),
(361, '2019-06-18 07:51:38', 1, 16, 'Alawi Admin', NULL, NULL, NULL, 'Alawi Admin'),
(362, '2019-06-18 07:52:08', 31, 16, 'Alawi Admin', NULL, NULL, NULL, NULL),
(363, '2019-06-18 07:52:29', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(364, '2019-06-18 09:27:49', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(365, '2019-06-18 09:28:00', 1, 16, 'Alawi Admin', NULL, NULL, NULL, 'Alawi Admin'),
(366, '2019-06-18 09:30:04', 31, 16, 'Alawi Admin', NULL, NULL, NULL, NULL),
(367, '2019-06-18 09:30:54', 1, 16, 'Alawi Admin', NULL, NULL, NULL, 'Alawi Admin'),
(368, '2019-06-18 09:31:36', 31, 16, 'Alawi Admin', NULL, NULL, NULL, NULL),
(369, '2019-06-18 09:33:29', 1, 16, 'Alawi Admin', NULL, NULL, NULL, 'Alawi Admin'),
(370, '2019-06-18 09:34:40', 14, 16, 'Alawi Admin', NULL, 21, NULL, 'Bsc CIS1'),
(371, '2019-06-18 09:34:47', 31, 16, 'Alawi Admin', NULL, NULL, NULL, NULL),
(372, '2019-06-18 09:35:05', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(373, '2019-06-18 09:35:06', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(374, '2019-06-18 09:35:35', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(375, '2019-06-18 09:35:44', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(376, '2019-06-18 09:40:29', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(377, '2019-06-18 09:40:45', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(378, '2019-06-18 11:17:40', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(379, '2019-06-18 11:24:44', 1, 16, 'Alawi Admin', NULL, NULL, NULL, 'Alawi Admin'),
(380, '2019-06-18 11:30:57', 31, 16, 'Alawi Admin', NULL, NULL, NULL, NULL),
(381, '2019-06-18 11:32:29', 1, 16, 'Alawi Admin', NULL, NULL, NULL, 'Alawi Admin'),
(382, '2019-06-18 11:32:47', 13, 16, 'Alawi Admin', NULL, 32, NULL, 'Bahati Sanga'),
(383, '2019-06-18 11:32:50', 31, 16, 'Alawi Admin', NULL, NULL, NULL, NULL),
(384, '2019-06-18 11:33:00', 1, 32, 'Bahati Sanga', NULL, NULL, NULL, 'Bahati Sanga'),
(385, '2019-06-18 11:35:21', 5, 32, 'Bahati Sanga', 14, NULL, 'assignment-1', 'sanga'),
(386, '2019-06-18 11:35:21', 25, 32, 'Bahati Sanga', 14, 21, 'assignment-1', 'Bsc CIS1'),
(387, '2019-06-18 11:35:21', 25, 32, 'Bahati Sanga', 14, 23, 'assignment-1', 'Bsc CIS3'),
(388, '2019-06-18 11:35:21', 5, 32, 'Bahati Sanga', 15, NULL, 'satellite', 'sanga'),
(389, '2019-06-18 11:37:23', 31, 32, 'Bahati Sanga', NULL, NULL, NULL, NULL),
(390, '2019-06-18 11:37:40', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(391, '2019-06-18 11:43:31', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(392, '2019-06-18 11:44:45', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(393, '2019-06-18 13:07:40', 1, 16, 'Alawi Admin', NULL, NULL, NULL, 'Alawi Admin'),
(394, '2019-06-18 13:11:44', 1, 32, 'Bahati Sanga', NULL, NULL, NULL, 'Bahati Sanga'),
(395, '2019-06-18 13:13:52', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(396, '2019-06-18 13:58:21', 31, 16, 'Alawi Admin', NULL, NULL, NULL, NULL),
(397, '2019-06-18 13:59:15', 1, 32, 'Bahati Sanga', NULL, NULL, NULL, 'Bahati Sanga'),
(398, '2019-06-18 14:03:05', 5, 32, 'Bahati Sanga', 16, NULL, 'ya-kuprintmtembei', 'sanga'),
(399, '2019-06-18 14:03:05', 25, 32, 'Bahati Sanga', 16, 22, 'ya-kuprintmtembei', 'Bsc CIS2'),
(400, '2019-06-18 14:04:40', 31, 32, 'Bahati Sanga', NULL, NULL, NULL, NULL),
(401, '2019-06-18 14:23:36', 1, 32, 'Bahati Sanga', NULL, NULL, NULL, 'Bahati Sanga'),
(402, '2019-06-18 14:26:36', 5, 32, 'Bahati Sanga', 17, NULL, 'assignment5 group', 'sanga'),
(403, '2019-06-18 14:26:36', 25, 32, 'Bahati Sanga', 17, 22, 'assignment5 group', 'Bsc CIS2'),
(404, '2019-06-18 14:26:36', 25, 32, 'Bahati Sanga', 17, 7, 'assignment5 group', 'Bsc HIS1'),
(405, '2019-06-18 14:27:38', 31, 32, 'Bahati Sanga', NULL, NULL, NULL, NULL),
(406, '2019-06-18 14:28:03', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(407, '2019-06-18 14:30:40', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(408, '2019-06-18 14:31:46', 1, 16, 'Alawi Admin', NULL, NULL, NULL, 'Alawi Admin'),
(409, '2019-06-18 14:42:18', 14, 16, 'Alawi Admin', NULL, 21, NULL, 'Bsc CIS1'),
(410, '2019-06-18 14:42:24', 31, 16, 'Alawi Admin', NULL, NULL, NULL, NULL),
(411, '2019-06-18 14:49:00', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(412, '2019-06-18 14:50:42', 8, 21, 'Bsc CIS1', 14, 21, 'assignment-1', 'Bsc CIS1'),
(413, '2019-06-18 19:11:44', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(414, '2019-06-18 19:30:07', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(415, '2019-06-18 19:30:23', 1, 32, 'Bahati Sanga', NULL, NULL, NULL, 'Bahati Sanga'),
(416, '2019-06-18 19:45:39', 31, 32, 'Bahati Sanga', NULL, NULL, NULL, NULL),
(417, '2019-06-18 19:45:50', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(418, '2019-06-18 19:45:55', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(419, '2019-06-18 19:46:36', 1, 16, 'Alawi Admin', NULL, NULL, NULL, 'Alawi Admin'),
(420, '2019-06-18 19:47:18', 31, 16, 'Alawi Admin', NULL, NULL, NULL, NULL),
(421, '2019-06-18 19:47:28', 1, 32, 'Bahati Sanga', NULL, NULL, NULL, 'Bahati Sanga'),
(422, '2019-06-18 19:47:55', 31, 32, 'Bahati Sanga', NULL, NULL, NULL, NULL),
(423, '2019-06-18 19:49:09', 1, 16, 'Alawi Admin', NULL, NULL, NULL, 'Alawi Admin'),
(424, '2019-06-18 19:49:16', 31, 16, 'Alawi Admin', NULL, NULL, NULL, NULL),
(425, '2019-06-18 19:49:25', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(426, '2019-06-18 20:00:17', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(427, '2019-06-18 20:00:41', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(428, '2019-06-18 20:01:00', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(429, '2019-06-18 20:01:09', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(430, '2019-06-18 20:03:06', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(431, '2019-06-18 20:03:15', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(432, '2019-06-18 20:18:53', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(433, '2019-06-18 20:19:06', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(434, '2019-06-18 20:19:23', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(435, '2019-06-18 20:19:33', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(436, '2019-06-18 20:38:06', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(437, '2019-06-18 20:38:21', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(438, '2019-06-18 20:40:22', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(439, '2019-06-18 20:40:32', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(440, '2019-06-18 20:44:34', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(441, '2019-06-18 20:44:45', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(442, '2019-06-18 21:04:14', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(443, '2019-06-18 21:04:34', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(444, '2019-06-18 21:04:54', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(445, '2019-06-18 21:05:06', 1, 32, 'Bahati Sanga', NULL, NULL, NULL, 'Bahati Sanga'),
(446, '2019-06-18 21:05:40', 31, 32, 'Bahati Sanga', NULL, NULL, NULL, NULL),
(447, '2019-06-18 21:05:50', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(448, '2019-06-18 21:07:12', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(449, '2019-06-18 21:07:21', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(450, '2019-06-18 21:08:25', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(451, '2019-06-18 21:08:36', 1, 16, 'Alawi Admin', NULL, NULL, NULL, 'Alawi Admin'),
(452, '2019-06-18 21:11:05', 31, 16, 'Alawi Admin', NULL, NULL, NULL, NULL),
(453, '2019-06-18 21:11:17', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(454, '2019-06-18 21:16:34', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(455, '2019-06-18 21:16:50', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(456, '2019-06-18 21:54:51', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(457, '2019-06-18 21:58:58', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(458, '2019-06-18 22:04:58', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(459, '2019-06-18 22:25:23', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(460, '2019-06-18 23:49:58', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(461, '2019-06-18 23:52:21', 5, 30, 'Dr Nima Shidende', 18, NULL, 'open source  technology and policy-2', 'shidende'),
(462, '2019-06-18 23:52:21', 25, 30, 'Dr Nima Shidende', 18, 21, 'open source  technology and policy-2', 'Bsc CIS1'),
(463, '2019-06-18 23:52:21', 25, 30, 'Dr Nima Shidende', 18, 22, 'open source  technology and policy-2', 'Bsc CIS2'),
(464, '2019-06-18 23:52:21', 25, 30, 'Dr Nima Shidende', 18, 23, 'open source  technology and policy-2', 'Bsc CIS3'),
(465, '2019-06-18 23:52:22', 25, 30, 'Dr Nima Shidende', 18, 24, 'open source  technology and policy-2', 'Bsc CS1'),
(466, '2019-06-18 23:52:22', 25, 30, 'Dr Nima Shidende', 18, 25, 'open source  technology and policy-2', 'Bsc CS2'),
(467, '2019-06-18 23:52:22', 25, 30, 'Dr Nima Shidende', 18, 26, 'open source  technology and policy-2', 'Bsc CS3'),
(468, '2019-06-18 23:52:22', 25, 30, 'Dr Nima Shidende', 18, 7, 'open source  technology and policy-2', 'Bsc HIS1'),
(469, '2019-06-18 23:52:22', 25, 30, 'Dr Nima Shidende', 18, 19, 'open source  technology and policy-2', 'Bsc HIS2'),
(470, '2019-06-18 23:52:22', 25, 30, 'Dr Nima Shidende', 18, 20, 'open source  technology and policy-2', 'Bsc HIS3'),
(471, '2019-06-18 23:52:22', 25, 30, 'Dr Nima Shidende', 18, 12, 'open source  technology and policy-2', 'Bsc IS1'),
(472, '2019-06-18 23:52:22', 25, 30, 'Dr Nima Shidende', 18, 17, 'open source  technology and policy-2', 'Bsc IS2'),
(473, '2019-06-18 23:52:22', 25, 30, 'Dr Nima Shidende', 18, 18, 'open source  technology and policy-2', 'Bsc IS3'),
(474, '2019-06-18 23:52:22', 25, 30, 'Dr Nima Shidende', 18, 6, 'open source  technology and policy-2', 'Bsc SE1'),
(475, '2019-06-18 23:52:22', 25, 30, 'Dr Nima Shidende', 18, 27, 'open source  technology and policy-2', 'Bsc SE2'),
(476, '2019-06-18 23:52:23', 25, 30, 'Dr Nima Shidende', 18, 28, 'open source  technology and policy-2', 'Bsc SE3'),
(477, '2019-06-18 23:52:23', 25, 30, 'Dr Nima Shidende', 18, 29, 'open source  technology and policy-2', 'Bsc SE4'),
(478, '2019-06-18 23:52:23', 26, 30, 'Dr Nima Shidende', 18, 1, 'open source  technology and policy-2', 'VB.NET'),
(479, '2019-06-18 23:52:24', 5, 30, 'Dr Nima Shidende', 19, NULL, 'part i solutions', 'shidende'),
(480, '2019-06-18 23:54:19', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(481, '2019-06-18 23:54:38', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(482, '2019-06-18 23:54:45', 8, 21, 'Bsc CIS1', 14, 21, 'assignment-1', 'Bsc CIS1'),
(483, '2019-06-18 23:54:52', 8, 21, 'Bsc CIS1', 18, 21, 'open source  technology and policy-2', 'Bsc CIS1'),
(484, '2019-06-18 23:56:43', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(485, '2019-06-18 23:57:50', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(486, '2019-06-18 23:59:15', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(487, '2019-06-18 23:59:30', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(488, '2019-06-19 00:01:25', 6, 21, 'Bsc CIS1', 20, NULL, 'img-20150513-wa0017', 'bsccis1'),
(489, '2019-06-19 00:01:25', 6, 21, 'Bsc CIS1', 21, NULL, 'incorporating ideas from computer-suppor', 'bsccis1'),
(490, '2019-06-19 00:01:52', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(491, '2019-06-19 00:02:03', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(492, '2019-06-19 05:45:00', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(493, '2019-06-19 05:45:14', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(494, '2019-06-19 06:00:28', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(495, '2019-06-19 07:54:13', 1, 32, 'Bahati Sanga', NULL, NULL, NULL, 'Bahati Sanga'),
(496, '2019-06-19 07:58:43', 5, 32, 'Bahati Sanga', 22, NULL, 'lacture-6', 'sanga'),
(497, '2019-06-19 07:58:43', 25, 32, 'Bahati Sanga', 22, 21, 'lacture-6', 'Bsc CIS1'),
(498, '2019-06-19 07:58:43', 25, 32, 'Bahati Sanga', 22, 23, 'lacture-6', 'Bsc CIS3'),
(499, '2019-06-19 08:00:27', 31, 32, 'Bahati Sanga', NULL, NULL, NULL, NULL),
(500, '2019-06-19 08:00:47', 1, 16, 'Alawi Admin', NULL, NULL, NULL, 'Alawi Admin'),
(501, '2019-06-19 08:05:15', 31, 16, 'Alawi Admin', NULL, NULL, NULL, NULL),
(502, '2019-06-19 09:58:40', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(503, '2019-06-19 10:09:20', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(504, '2019-06-19 10:21:41', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(505, '2019-06-19 10:21:50', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(506, '2019-06-23 08:03:24', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(507, '2019-06-23 08:05:06', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(508, '2019-06-23 08:05:17', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(509, '2019-06-23 08:05:49', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(510, '2019-06-23 08:07:12', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(511, '2019-06-23 08:07:57', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(512, '2019-06-23 08:08:15', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(513, '2019-06-23 08:09:07', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(514, '2019-06-23 08:09:19', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(515, '2019-06-23 08:12:16', 6, 21, 'Bsc CIS1', 23, NULL, 'online-food-order-system-for-restaurants', 'bsccis1'),
(516, '2019-06-23 08:12:16', 6, 21, 'Bsc CIS1', 24, NULL, 'eva', 'bsccis1'),
(517, '2019-06-23 08:12:16', 6, 21, 'Bsc CIS1', 25, NULL, 'gailanga', 'bsccis1'),
(518, '2019-06-23 08:12:17', 6, 21, 'Bsc CIS1', 26, NULL, 'chromium', 'bsccis1'),
(519, '2019-06-23 08:12:41', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(520, '2019-06-23 08:12:51', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(521, '2019-06-23 08:14:09', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(522, '2019-06-23 08:14:21', 1, 32, 'Bahati Sanga', NULL, NULL, NULL, 'Bahati Sanga'),
(523, '2019-06-23 08:14:43', 31, 32, 'Bahati Sanga', NULL, NULL, NULL, NULL),
(524, '2019-06-23 08:14:56', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(525, '2019-06-23 08:17:29', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(526, '2019-06-23 08:17:50', 1, 32, 'Bahati Sanga', NULL, NULL, NULL, 'Bahati Sanga'),
(527, '2019-06-23 08:18:23', 31, 32, 'Bahati Sanga', NULL, NULL, NULL, NULL),
(528, '2019-06-23 08:18:38', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(529, '2019-06-23 08:18:49', 8, 21, 'Bsc CIS1', 26, 21, 'chromium', 'Bsc CIS1'),
(530, '2019-06-23 08:19:01', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(531, '2019-06-23 08:19:17', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(532, '2019-06-23 08:23:38', 7, 30, 'Dr Nima Shidende', 22, 30, 'lacture-6', 'Dr Nima Shidende'),
(533, '2019-06-23 08:24:07', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(534, '2019-06-23 08:24:19', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(535, '2019-06-23 08:25:11', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(536, '2019-06-23 08:25:21', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(537, '2019-06-23 08:25:56', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(538, '2019-06-23 08:26:11', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(539, '2019-06-23 08:26:38', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(540, '2019-06-23 08:27:06', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(541, '2019-06-23 08:27:30', 7, 30, 'Dr Nima Shidende', 24, 30, 'eva', 'Dr Nima Shidende'),
(542, '2019-06-23 08:27:49', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(543, '2019-06-23 08:28:13', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(544, '2019-06-23 08:28:54', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(545, '2019-06-23 08:30:29', 1, 16, 'Alawi Admin', NULL, NULL, NULL, 'Alawi Admin'),
(546, '2019-06-23 08:32:37', 14, 16, 'Alawi Admin', NULL, 21, NULL, 'Bsc CIS1'),
(547, '2019-06-23 08:33:10', 14, 16, 'Alawi Admin', NULL, 22, NULL, 'Bsc CIS2'),
(548, '2019-06-23 08:34:19', 14, 16, 'Alawi Admin', NULL, 23, NULL, 'Bsc CIS3'),
(549, '2019-06-23 08:35:05', 14, 16, 'Alawi Admin', NULL, 24, NULL, 'Bsc CS1'),
(550, '2019-06-23 08:35:29', 14, 16, 'Alawi Admin', NULL, 25, NULL, 'Bsc CS2'),
(551, '2019-06-23 08:36:04', 14, 16, 'Alawi Admin', NULL, 7, NULL, 'Bsc HIS1'),
(552, '2019-06-23 08:36:33', 14, 16, 'Alawi Admin', NULL, 19, NULL, 'Bsc HIS2'),
(553, '2019-06-23 08:37:08', 14, 16, 'Alawi Admin', NULL, 20, NULL, 'Bsc HIS3'),
(554, '2019-06-23 08:39:07', 23, 16, 'Alawi Admin', NULL, 2, NULL, 'open source'),
(555, '2019-06-23 08:39:55', 13, 16, 'Alawi Admin', NULL, 34, NULL, 'Augustino Mwogosi'),
(556, '2019-06-23 08:40:15', 13, 16, 'Alawi Admin', NULL, 32, NULL, 'Bahati Sanga'),
(557, '2019-06-23 08:40:45', 13, 16, 'Alawi Admin', NULL, 38, NULL, 'prof  Leornard Mselle'),
(558, '2019-06-23 08:40:58', 13, 16, 'Alawi Admin', NULL, 36, NULL, 'Pascal Charles'),
(559, '2019-06-23 08:41:18', 13, 16, 'Alawi Admin', NULL, 31, NULL, 'Dr Hector Mongi'),
(560, '2019-06-23 08:41:35', 13, 16, 'Alawi Admin', NULL, 33, NULL, 'Carina Titus'),
(561, '2019-06-23 08:42:07', 13, 16, 'Alawi Admin', NULL, 32, NULL, 'Bahati Sanga'),
(562, '2019-06-23 08:42:15', 31, 16, 'Alawi Admin', NULL, NULL, NULL, NULL),
(563, '2019-06-23 08:42:28', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(564, '2019-06-23 08:47:43', 6, 21, 'Bsc CIS1', 27, NULL, 'shaolinsoccer2001720pblurayx264-ytsam', 'bsccis1'),
(565, '2019-06-23 08:49:25', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(566, '2019-06-23 08:49:36', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(567, '2019-06-23 08:49:53', 7, 30, 'Dr Nima Shidende', 27, 30, 'shaolinsoccer2001720pblurayx264-ytsam', 'Dr Nima Shidende'),
(568, '2019-06-23 08:53:57', 5, 30, 'Dr Nima Shidende', 28, NULL, 'alphabet-songs-for-children-with-giraffe-train- -abc-alphabet-aerobics low', 'shidende'),
(569, '2019-06-23 08:54:58', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(570, '2019-06-23 08:55:09', 1, 21, 'Bsc CIS1', NULL, NULL, NULL, 'Bsc CIS1'),
(571, '2019-06-23 08:55:15', 8, 21, 'Bsc CIS1', 27, 21, 'shaolinsoccer2001720pblurayx264-ytsam', 'Bsc CIS1'),
(572, '2019-06-23 09:06:12', 8, 21, 'Bsc CIS1', 24, 21, 'eva', 'Bsc CIS1'),
(573, '2019-06-23 09:06:29', 8, 21, 'Bsc CIS1', 25, 21, 'gailanga', 'Bsc CIS1'),
(574, '2019-06-23 09:07:20', 8, 21, 'Bsc CIS1', 21, 21, 'incorporating ideas from computer-suppor', 'Bsc CIS1'),
(575, '2019-06-23 09:13:26', 6, 21, 'Bsc CIS1', 29, NULL, 'check it', 'bsccis1'),
(576, '2019-06-23 09:13:48', 31, 21, 'Bsc CIS1', NULL, NULL, NULL, NULL),
(577, '2019-06-23 09:13:57', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende'),
(578, '2019-06-23 09:14:21', 7, 30, 'Dr Nima Shidende', 29, 30, 'check it', 'Dr Nima Shidende'),
(579, '2019-06-23 09:14:53', 31, 30, 'Dr Nima Shidende', NULL, NULL, NULL, NULL),
(580, '2019-06-24 20:31:55', 1, 30, 'Dr Nima Shidende', NULL, NULL, NULL, 'Dr Nima Shidende');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `description` text,
  `created_by` varchar(60) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories_relations`
--

CREATE TABLE `tbl_categories_relations` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_downloads`
--

CREATE TABLE `tbl_downloads` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `file_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remote_ip` varchar(45) DEFAULT NULL,
  `remote_host` text,
  `anonymous` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_downloads`
--

INSERT INTO `tbl_downloads` (`id`, `user_id`, `file_id`, `timestamp`, `remote_ip`, `remote_host`, `anonymous`) VALUES
(2, 7, 7, '2019-06-01 18:44:14', '::1', NULL, 0),
(3, 6, 7, '2019-06-01 18:46:04', '::1', NULL, 0),
(5, 7, 9, '2019-06-01 18:59:11', '::1', NULL, 0),
(6, 7, 9, '2019-06-01 18:59:12', '::1', NULL, 0),
(7, 7, 9, '2019-06-01 18:59:13', '::1', NULL, 0),
(8, 7, 9, '2019-06-01 18:59:13', '::1', NULL, 0),
(9, 7, 9, '2019-06-01 18:59:13', '::1', NULL, 0),
(10, 7, 9, '2019-06-01 18:59:14', '::1', NULL, 0),
(11, 7, 9, '2019-06-01 18:59:14', '::1', NULL, 0),
(12, 21, 14, '2019-06-18 14:50:42', '::1', NULL, 0),
(13, 21, 14, '2019-06-18 23:54:45', '::1', NULL, 0),
(14, 21, 18, '2019-06-18 23:54:52', '::1', NULL, 0),
(15, 21, 26, '2019-06-23 08:18:49', '::1', NULL, 0),
(16, 30, 22, '2019-06-23 08:23:38', '::1', NULL, 0),
(17, 30, 24, '2019-06-23 08:27:30', '::1', NULL, 0),
(18, 30, 27, '2019-06-23 08:49:53', '::1', NULL, 0),
(19, 21, 27, '2019-06-23 08:55:15', '::1', NULL, 0),
(20, 21, 24, '2019-06-23 09:06:12', '::1', NULL, 0),
(21, 21, 25, '2019-06-23 09:06:29', '::1', NULL, 0),
(22, 21, 21, '2019-06-23 09:07:20', '::1', NULL, 0),
(23, 30, 29, '2019-06-23 09:14:21', '::1', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

CREATE TABLE `tbl_files` (
  `id` int(11) NOT NULL,
  `url` text NOT NULL,
  `original_url` text NOT NULL,
  `filename` text NOT NULL,
  `description` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uploader` varchar(60) NOT NULL,
  `expires` int(1) NOT NULL DEFAULT '0',
  `expiry_date` timestamp NOT NULL DEFAULT '2019-12-31 21:00:00',
  `public_allow` int(1) NOT NULL DEFAULT '0',
  `public_token` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_files`
--

INSERT INTO `tbl_files` (`id`, `url`, `original_url`, `filename`, `description`, `timestamp`, `uploader`, `expires`, `expiry_date`, `public_allow`, `public_token`) VALUES
(1, '1556482907-cec7068d2986dd88b7de1a929cf13de6271834b2-teaching-timetable-for-is3-2.docx', 'teaching-timetable-for-is3-2.docx', 'teaching-timetable-for-is3-2', '', '2019-04-28 20:21:47', 'mkenda', 0, '2019-04-27 21:00:00', 1, 'PsmEHmAaFVlOLi96ufJXBywSDgJwZc1Y'),
(2, '1556568086-0f18ad9d4df10e2c2e00f38629b5ab9a6e7116ac-teaching-timetable-for-is3-2_1.docx', 'teaching-timetable-for-is3-2_1.docx', 'teaching-timetable-for-is3-2 1', 'MR.MUOMBEKI', '2019-04-29 20:01:26', 'muombeki', 1, '2019-04-29 21:00:00', 1, 'qbL8J6anGRKeDcXl9UmkqYW5qODAbvkd'),
(3, '1556603321-cec7068d2986dd88b7de1a929cf13de6271834b2-is321-group-work-practice.docx', 'is321-group-work-practice.docx', 'is321-group-work-practice', '', '2019-04-30 05:48:41', 'mkenda', 1, '2019-04-30 21:00:00', 0, 'CEHX75p2Wf8AiNCRDQ2ub8TUTOfawCFA'),
(4, '1556608452-142e21a10acf01958e5cb2b5a5a1814008322818-udom-prospectus-2016-17.pdf', 'udom-prospectus-2016-17.pdf', 'udom-prospectus-2016-17', '', '2019-04-30 07:14:12', 'mwogosi', 1, '2019-05-07 21:00:00', 1, 'XlYOMx3FlaoiOkYo3EdnspeLZ8XegMom'),
(5, '1556609225-0ce7911e6479995d6c346d6f03eb723b5135309e-kazi-ya-ict.pptx', 'kazi-ya-ict.pptx', 'kazi-ya-ict', '', '2019-04-30 07:27:05', 'justin', 1, '2019-05-03 21:00:00', 0, 'ARcqyxGsAfPAHTgpiVPH8SPnPoyjr77c'),
(6, '1559413588-0ce7911e6479995d6c346d6f03eb723b5135309e-gis.docx', 'gis.docx', 'gis', '', '2019-06-01 18:26:28', 'justin', 1, '2019-06-04 21:00:00', 0, 'b35MGNqBiZ34xc7EPYlHuS4j7DKcaGVx'),
(7, '1559413720-0ce7911e6479995d6c346d6f03eb723b5135309e-migrant1xlsx.xlsx', 'migrant1xlsx.xlsx', 'migrant1xlsx', '', '2019-06-01 18:28:40', 'justin', 1, '2019-06-04 21:00:00', 1, 'KVIwQWgOBSv23fGN8Tk62ngOPNykiPp3'),
(8, '1559413838-0ce7911e6479995d6c346d6f03eb723b5135309e-assignment-2.doc', 'assignment-2.doc', 'assignment-2', '', '2019-06-01 18:30:38', 'justin', 1, '2019-06-04 21:00:00', 0, 'Fghj2iX2MEkCZKpJYmb180PjcJohlPve'),
(9, '1559415521-35425ddb95d7c78644eee8541837bef27ce910ee-bt-220-lecture2.ppt', 'bt-220-lecture2.ppt', 'bt-220-lecture2', '', '2019-06-01 18:58:41', 'salha', 1, '2019-06-04 21:00:00', 0, 'uy92zUtu2iRjlyapklpJj2KuPwJYOYrI'),
(10, '1559416271-203f618923435604a45b8bb8e2264b6c7ba9edb5-new-assignment.doc', 'new-assignment.doc', 'new-assignment', 'imetoka kwa mwanafunzi', '2019-06-01 19:11:11', 'bschis1', 0, '2019-05-31 21:00:00', 0, 'OvPf7pKNu9VXbcWY4DaQqmr2JTStLh9n'),
(11, '1559824672-35425ddb95d7c78644eee8541837bef27ce910ee-bt-220-lecture1.ppt', 'bt-220-lecture1.ppt', 'bt-220-lecture1', '', '2019-06-06 12:37:52', 'salha', 0, '2019-06-18 21:00:00', 0, 'JhqZXkVHC8FBC5pG40O8AV9gXhn6a9ea'),
(12, '1559825198-35425ddb95d7c78644eee8541837bef27ce910ee-bt220.docx', 'bt220.docx', 'bt220', '', '2019-06-06 12:46:38', 'salha', 1, '2019-06-29 21:00:00', 0, 'Q6ow8QxFxtha9wbAft6D6Ghfhj4NDLiZ'),
(13, '1559825399-35425ddb95d7c78644eee8541837bef27ce910ee-bt-220-log-with-qn.docx', 'bt-220-log-with-qn.docx', 'bt-220-log-with-qn', '', '2019-06-06 12:49:59', 'salha', 1, '2019-06-23 21:00:00', 0, 'BPaZ4BG917iD6bFNBbpDqUGSCwzJvP6o'),
(14, '1560857721-f8a5b581e6fbe751c0660c36c9b18e0d2e4d9cb3-assignment-1.docx', 'assignment-1.docx', 'assignment-1', 'notice', '2019-06-18 11:35:21', 'sanga', 1, '2019-06-25 21:00:00', 0, 'olvaX9BShQnQJ0caYKpDwJHfRt62H5Fw'),
(15, '1560857721-f8a5b581e6fbe751c0660c36c9b18e0d2e4d9cb3-satellite.pdf', 'satellite.pdf', 'satellite', '', '2019-06-18 11:35:21', 'sanga', 0, '2019-06-17 21:00:00', 0, 'aFX4wgRtapVy7318k6piWddJeBXnu7BD'),
(16, '1560866585-f8a5b581e6fbe751c0660c36c9b18e0d2e4d9cb3-ya-kuprintmtembei.docx', 'ya-kuprintmtembei.docx', 'ya-kuprintmtembei', '', '2019-06-18 14:03:05', 'sanga', 0, '2019-06-17 21:00:00', 0, 'rLr8WEsXqkvUgjsRbNq4z1NwQ24Azlzt'),
(17, '1560867996-f8a5b581e6fbe751c0660c36c9b18e0d2e4d9cb3-assignment5_group.pdf', 'assignment5_group.pdf', 'assignment5 group', 'VBBBB', '2019-06-18 14:26:36', 'sanga', 1, '2019-06-18 21:00:00', 0, 'wq4s4qgky6UBq9TLQAl60MdsKpmxpBGb'),
(18, '1560901941-b912736110efede67ae5a21844d01dcc298e435f-open_source__technology_and_policy-2.pdf', 'open_source__technology_and_policy-2.pdf', 'open source  technology and policy-2', 'ASSIGNMENT', '2019-06-18 23:52:21', 'shidende', 1, '2019-06-20 21:00:00', 0, 'YcA8iVm1L8xBfbMq38rtl1ASYP2qXGWL'),
(19, '1560901944-b912736110efede67ae5a21844d01dcc298e435f-part_i_solutions.pdf', 'part_i_solutions.pdf', 'part i solutions', '', '2019-06-18 23:52:24', 'shidende', 0, '2019-06-17 21:00:00', 0, 'GIStIJaMu3Uu3ApLQ0LAW4ro0IxpYlLl'),
(20, '1560902485-b8392791b49158a7e95e48fbe479614280a2e86c-img-20150513-wa0017.jpg', 'img-20150513-wa0017.jpg', 'img-20150513-wa0017', 'JUST FOR COLLABORATIVE PURPOSE', '2019-06-19 00:01:25', 'bsccis1', 0, '2019-06-17 21:00:00', 0, '9yAMNz0d6xWoJ638U15jtB6WuufGzFkl'),
(21, '1560902485-b8392791b49158a7e95e48fbe479614280a2e86c-incorporating_ideas_from_computer-suppor.pdf', 'incorporating_ideas_from_computer-suppor.pdf', 'incorporating ideas from computer-suppor', 'PLEASE READ', '2019-06-19 00:01:25', 'bsccis1', 0, '2019-06-17 21:00:00', 0, 'fL8sVsd4is5ZE4RvRKTHeBxvkl71O3DL'),
(22, '1560931123-f8a5b581e6fbe751c0660c36c9b18e0d2e4d9cb3-lacture-6.pdf', 'lacture-6.pdf', 'lacture-6', 'fgggg', '2019-06-19 07:58:43', 'sanga', 1, '2019-06-19 21:00:00', 0, 'dSh7QGVzJTA5uMzuuhqdlIwDQAVhlRyK'),
(23, '1561277536-b8392791b49158a7e95e48fbe479614280a2e86c-online-food-order-system-for-restaurants.pdf', 'online-food-order-system-for-restaurants.pdf', 'online-food-order-system-for-restaurants', '', '2019-06-23 08:12:16', 'bsccis1', 0, '2019-06-22 21:00:00', 0, '4qkdxiJW9TWDJigOP5sorYRvFkJGfeEY'),
(24, '1561277536-b8392791b49158a7e95e48fbe479614280a2e86c-eva.jpg', 'eva.jpg', 'eva', '', '2019-06-23 08:12:16', 'bsccis1', 0, '2019-06-22 21:00:00', 0, 'LCUVBke6FOuPsXXX12w6C5fLTuv5bGE6'),
(25, '1561277536-b8392791b49158a7e95e48fbe479614280a2e86c-gailanga.docx', 'gailanga.docx', 'gailanga', '', '2019-06-23 08:12:16', 'bsccis1', 0, '2019-06-22 21:00:00', 0, 'CiHjdrLYQHDGJO4D6VLPvIVGZ11xfs0u'),
(26, '1561277537-b8392791b49158a7e95e48fbe479614280a2e86c-chromium.docx', 'chromium.docx', 'chromium', '', '2019-06-23 08:12:17', 'bsccis1', 0, '2019-06-22 21:00:00', 0, '83JYKGTWaIEvbr2ofQDmAtCeRc0eY4Gj'),
(27, '1561279663-b8392791b49158a7e95e48fbe479614280a2e86c-shaolinsoccer2001720pblurayx264-ytsam.mp4', 'shaolinsoccer2001720pblurayx264-ytsam.mp4', 'shaolinsoccer2001720pblurayx264-ytsam', 'enjoy it lectures', '2019-06-23 08:47:43', 'bsccis1', 0, '2019-06-22 21:00:00', 0, '4UBzMrlEnoXfVe5CmwAHVbm5n77PztCC'),
(28, '1561280037-b912736110efede67ae5a21844d01dcc298e435f-alphabet-songs-for-children-with-giraffe-train-_-abc-alphabet-aerobics_low.mp4', 'alphabet-songs-for-children-with-giraffe-train-_-abc-alphabet-aerobics_low.mp4', 'alphabet-songs-for-children-with-giraffe-train- -abc-alphabet-aerobics low', '', '2019-06-23 08:53:57', 'shidende', 0, '2019-06-22 21:00:00', 0, 'WGeyoW9Kz0pn2yBKKKxVTOSgSW2A1Paq'),
(29, '1561281206-b8392791b49158a7e95e48fbe479614280a2e86c-new-folder_1.rar', 'new-folder_1.rar', 'check it', '', '2019-06-23 09:13:26', 'bsccis1', 0, '2019-06-22 21:00:00', 0, 'Iu7f72R0uuzfCfHWXunqeDTDEwKyA5zW');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files_relations`
--

CREATE TABLE `tbl_files_relations` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `hidden` int(1) NOT NULL,
  `download_count` int(16) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_files_relations`
--

INSERT INTO `tbl_files_relations` (`id`, `timestamp`, `file_id`, `client_id`, `group_id`, `folder_id`, `hidden`, `download_count`) VALUES
(2, '2019-04-29 20:01:26', 2, 6, NULL, NULL, 0, 0),
(3, '2019-04-29 20:01:27', 2, NULL, 1, NULL, 0, 0),
(5, '2019-04-30 05:48:41', 3, NULL, 1, NULL, 0, 0),
(6, '2019-04-30 07:27:05', 5, 12, NULL, NULL, 0, 0),
(8, '2019-06-01 18:26:28', 6, 7, NULL, NULL, 1, 0),
(9, '2019-06-01 18:26:28', 6, 12, NULL, NULL, 1, 0),
(11, '2019-06-01 18:26:29', 6, 6, NULL, NULL, 1, 0),
(16, '2019-06-01 18:26:29', 6, NULL, 1, NULL, 1, 0),
(17, '2019-06-01 18:30:38', 8, 6, NULL, NULL, 0, 0),
(19, '2019-06-01 18:38:44', 7, 7, NULL, NULL, 0, 0),
(20, '2019-06-01 18:38:44', 7, 12, NULL, NULL, 0, 0),
(22, '2019-06-01 18:38:44', 7, 6, NULL, NULL, 0, 0),
(27, '2019-06-01 18:38:45', 7, NULL, 1, NULL, 0, 0),
(28, '2019-06-01 18:58:41', 9, 7, NULL, NULL, 0, 0),
(29, '2019-06-01 18:58:41', 9, 12, NULL, NULL, 0, 0),
(30, '2019-06-01 18:58:41', 9, 6, NULL, NULL, 0, 0),
(31, '2019-06-01 18:58:42', 9, NULL, 1, NULL, 0, 0),
(32, '2019-06-01 19:11:11', 10, 7, NULL, NULL, 0, 0),
(33, '2019-06-06 12:37:52', 11, 7, NULL, NULL, 0, 0),
(34, '2019-06-06 12:46:38', 12, 12, NULL, NULL, 0, 0),
(35, '2019-06-06 12:50:00', 13, 6, NULL, NULL, 0, 0),
(36, '2019-06-18 11:35:21', 14, 21, NULL, NULL, 0, 0),
(37, '2019-06-18 11:35:21', 14, 23, NULL, NULL, 0, 0),
(38, '2019-06-18 14:03:05', 16, 22, NULL, NULL, 0, 0),
(39, '2019-06-18 14:26:36', 17, 22, NULL, NULL, 0, 0),
(40, '2019-06-18 14:26:36', 17, 7, NULL, NULL, 0, 0),
(41, '2019-06-18 23:52:21', 18, 21, NULL, NULL, 0, 0),
(42, '2019-06-18 23:52:21', 18, 22, NULL, NULL, 0, 0),
(43, '2019-06-18 23:52:21', 18, 23, NULL, NULL, 0, 0),
(44, '2019-06-18 23:52:22', 18, 24, NULL, NULL, 0, 0),
(45, '2019-06-18 23:52:22', 18, 25, NULL, NULL, 0, 0),
(46, '2019-06-18 23:52:22', 18, 26, NULL, NULL, 0, 0),
(47, '2019-06-18 23:52:22', 18, 7, NULL, NULL, 0, 0),
(48, '2019-06-18 23:52:22', 18, 19, NULL, NULL, 0, 0),
(49, '2019-06-18 23:52:22', 18, 20, NULL, NULL, 0, 0),
(50, '2019-06-18 23:52:22', 18, 12, NULL, NULL, 0, 0),
(51, '2019-06-18 23:52:22', 18, 17, NULL, NULL, 0, 0),
(52, '2019-06-18 23:52:22', 18, 18, NULL, NULL, 0, 0),
(53, '2019-06-18 23:52:22', 18, 6, NULL, NULL, 0, 0),
(54, '2019-06-18 23:52:22', 18, 27, NULL, NULL, 0, 0),
(55, '2019-06-18 23:52:22', 18, 28, NULL, NULL, 0, 0),
(56, '2019-06-18 23:52:23', 18, 29, NULL, NULL, 0, 0),
(57, '2019-06-18 23:52:23', 18, NULL, 1, NULL, 0, 0),
(58, '2019-06-19 00:01:25', 20, 21, NULL, NULL, 0, 0),
(59, '2019-06-19 00:01:25', 21, 21, NULL, NULL, 0, 0),
(60, '2019-06-19 07:58:43', 22, 21, NULL, NULL, 0, 0),
(61, '2019-06-19 07:58:43', 22, 23, NULL, NULL, 0, 0),
(62, '2019-06-23 08:12:16', 23, 21, NULL, NULL, 0, 0),
(63, '2019-06-23 08:12:16', 24, 21, NULL, NULL, 0, 0),
(64, '2019-06-23 08:12:17', 25, 21, NULL, NULL, 0, 0),
(65, '2019-06-23 08:12:17', 26, 21, NULL, NULL, 0, 0),
(66, '2019-06-23 08:47:43', 27, 21, NULL, NULL, 0, 0),
(67, '2019-06-23 09:13:26', 29, 21, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_folders`
--

CREATE TABLE `tbl_folders` (
  `id` int(11) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `client_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_groups`
--

CREATE TABLE `tbl_groups` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `public_token` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_groups`
--

INSERT INTO `tbl_groups` (`id`, `timestamp`, `created_by`, `name`, `description`, `public`, `public_token`) VALUES
(1, '2019-04-29 19:44:25', 'salha', 'VB.NET', '<p>For all students taking VB</p>', 0, '1CPyx5KWjhrn8J9CBQlF6bHIr9PCrkvZ'),
(2, '2019-06-23 08:39:07', 'alawi', 'open source', '', 0, 'CtMp4kx2UMzvNSOSX3x2GWih82Gd6TAl');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_members`
--

CREATE TABLE `tbl_members` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(32) NOT NULL,
  `client_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_members`
--

INSERT INTO `tbl_members` (`id`, `timestamp`, `added_by`, `client_id`, `group_id`) VALUES
(6, '2019-04-30 05:32:41', 'salha', 7, 1),
(7, '2019-04-30 05:32:41', 'salha', 6, 1),
(18, '2019-04-30 07:02:49', 'salha', 12, 1),
(19, '2019-06-06 14:04:39', 'alawi', 17, 1),
(20, '2019-06-06 14:07:27', 'alawi', 19, 1),
(21, '2019-06-23 08:39:07', 'alawi', 18, 2),
(22, '2019-06-23 08:39:07', 'alawi', 29, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_members_requests`
--

CREATE TABLE `tbl_members_requests` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `requested_by` varchar(32) NOT NULL,
  `client_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `denied` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notifications`
--

CREATE TABLE `tbl_notifications` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `upload_type` int(11) NOT NULL,
  `sent_status` int(2) NOT NULL,
  `times_failed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_notifications`
--

INSERT INTO `tbl_notifications` (`id`, `timestamp`, `file_id`, `client_id`, `upload_type`, `sent_status`, `times_failed`) VALUES
(2, '2019-04-29 20:01:27', 2, 6, 1, 0, 0),
(3, '2019-04-29 20:01:27', 2, 7, 1, 0, 0),
(4, '2019-04-30 05:48:41', 3, 7, 1, 0, 0),
(5, '2019-04-30 05:48:41', 3, 6, 1, 0, 0),
(6, '2019-04-30 07:27:05', 5, 12, 1, 0, 0),
(7, '2019-06-01 18:30:38', 8, 6, 1, 0, 0),
(9, '2019-06-01 18:38:45', 7, 7, 1, 0, 0),
(10, '2019-06-01 18:38:45', 7, 12, 1, 0, 0),
(12, '2019-06-01 18:38:45', 7, 6, 1, 0, 0),
(16, '2019-06-01 18:58:42', 9, 7, 1, 0, 0),
(17, '2019-06-01 18:58:42', 9, 12, 1, 0, 0),
(18, '2019-06-01 18:58:42', 9, 6, 1, 0, 0),
(19, '2019-06-01 19:11:11', 10, 7, 0, 0, 0),
(20, '2019-06-06 12:37:52', 11, 7, 1, 0, 0),
(21, '2019-06-06 12:46:38', 12, 12, 1, 0, 0),
(22, '2019-06-06 12:50:00', 13, 6, 1, 0, 0),
(23, '2019-06-18 11:35:21', 14, 21, 1, 0, 0),
(24, '2019-06-18 11:35:21', 14, 23, 1, 0, 0),
(25, '2019-06-18 14:03:05', 16, 22, 1, 0, 0),
(26, '2019-06-18 14:26:36', 17, 22, 1, 0, 0),
(27, '2019-06-18 14:26:37', 17, 7, 1, 0, 0),
(28, '2019-06-18 23:52:23', 18, 21, 1, 0, 0),
(29, '2019-06-18 23:52:23', 18, 22, 1, 0, 0),
(30, '2019-06-18 23:52:23', 18, 23, 1, 0, 0),
(31, '2019-06-18 23:52:23', 18, 24, 1, 0, 0),
(32, '2019-06-18 23:52:23', 18, 25, 1, 0, 0),
(33, '2019-06-18 23:52:23', 18, 26, 1, 0, 0),
(34, '2019-06-18 23:52:23', 18, 7, 1, 0, 0),
(35, '2019-06-18 23:52:23', 18, 19, 1, 0, 0),
(36, '2019-06-18 23:52:23', 18, 20, 1, 0, 0),
(37, '2019-06-18 23:52:23', 18, 12, 1, 0, 0),
(38, '2019-06-18 23:52:23', 18, 17, 1, 0, 0),
(39, '2019-06-18 23:52:23', 18, 18, 1, 0, 0),
(40, '2019-06-18 23:52:23', 18, 6, 1, 0, 0),
(41, '2019-06-18 23:52:23', 18, 27, 1, 0, 0),
(42, '2019-06-18 23:52:23', 18, 28, 1, 0, 0),
(43, '2019-06-18 23:52:23', 18, 29, 1, 0, 0),
(44, '2019-06-19 00:01:25', 20, 21, 0, 0, 0),
(45, '2019-06-19 00:01:25', 21, 21, 0, 0, 0),
(46, '2019-06-19 07:58:43', 22, 21, 1, 0, 0),
(47, '2019-06-19 07:58:43', 22, 23, 1, 0, 0),
(48, '2019-06-23 08:12:16', 23, 21, 0, 0, 0),
(49, '2019-06-23 08:12:16', 24, 21, 0, 0, 0),
(50, '2019-06-23 08:12:17', 25, 21, 0, 0, 0),
(51, '2019-06-23 08:12:17', 26, 21, 0, 0, 0),
(52, '2019-06-23 08:47:43', 27, 21, 0, 0, 0),
(53, '2019-06-23 09:13:26', 29, 21, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_options`
--

CREATE TABLE `tbl_options` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_options`
--

INSERT INTO `tbl_options` (`id`, `name`, `value`) VALUES
(1, 'base_uri', 'http://localhost/note/'),
(2, 'max_thumbnail_width', '100'),
(3, 'max_thumbnail_height', '100'),
(4, 'thumbnails_folder', '../../img/custom/thumbs/'),
(5, 'thumbnail_default_quality', '90'),
(6, 'max_logo_width', '300'),
(7, 'max_logo_height', '300'),
(8, 'this_install_title', 'civecontent'),
(9, 'selected_clients_template', 'default'),
(10, 'logo_thumbnails_folder', '/img/custom/thumbs'),
(11, 'timezone', 'America/Argentina/Buenos_Aires'),
(12, 'timeformat', 'd/m/Y'),
(13, 'allowed_file_types', '7z,ace,ai,avi,bin,bmp,cdr,doc,docm,docx,eps,fla,flv,gif,gz,gzip,htm,html,iso,jpeg,jpg,mp3,mp4,mpg,odt,oog,ppt,pptx,pptm,pps,ppsx,pdf,png,psd,rar,rtf,tar,tif,tiff,txt,wav,xls,xlsm,xlsx,zip'),
(14, 'logo_filename', 'logo.png'),
(15, 'admin_email_address', 'salha@gmail.com'),
(16, 'clients_can_register', '0'),
(17, 'last_update', '1053'),
(18, 'mail_system_use', 'mail'),
(19, 'mail_smtp_host', ''),
(20, 'mail_smtp_port', ''),
(21, 'mail_smtp_user', ''),
(22, 'mail_smtp_pass', ''),
(23, 'mail_from_name', 'civecontent'),
(24, 'thumbnails_use_absolute', '0'),
(25, 'mail_copy_user_upload', ''),
(26, 'mail_copy_client_upload', ''),
(27, 'mail_copy_main_user', ''),
(28, 'mail_copy_addresses', ''),
(29, 'version_last_check', '28-04-2019'),
(30, 'version_new_found', '0'),
(31, 'version_new_number', ''),
(32, 'version_new_url', ''),
(33, 'version_new_chlog', ''),
(34, 'version_new_security', ''),
(35, 'version_new_features', ''),
(36, 'version_new_important', ''),
(37, 'clients_auto_approve', '0'),
(38, 'clients_auto_group', '0'),
(39, 'clients_can_upload', '1'),
(40, 'clients_can_set_expiration_date', '0'),
(41, 'email_new_file_by_user_customize', '0'),
(42, 'email_new_file_by_client_customize', '0'),
(43, 'email_new_client_by_user_customize', '0'),
(44, 'email_new_client_by_self_customize', '0'),
(45, 'email_new_user_customize', '0'),
(46, 'email_new_file_by_user_text', ''),
(47, 'email_new_file_by_client_text', ''),
(48, 'email_new_client_by_user_text', ''),
(49, 'email_new_client_by_self_text', ''),
(50, 'email_new_user_text', ''),
(51, 'email_header_footer_customize', '0'),
(52, 'email_header_text', ''),
(53, 'email_footer_text', ''),
(54, 'email_pass_reset_customize', '0'),
(55, 'email_pass_reset_text', ''),
(56, 'expired_files_hide', '1'),
(57, 'notifications_max_tries', '2'),
(58, 'notifications_max_days', '15'),
(59, 'file_types_limit_to', 'all'),
(60, 'pass_require_upper', '0'),
(61, 'pass_require_lower', '0'),
(62, 'pass_require_number', '0'),
(63, 'pass_require_special', '0'),
(64, 'mail_smtp_auth', 'none'),
(65, 'use_browser_lang', '0'),
(66, 'clients_can_delete_own_files', '0'),
(67, 'google_client_id', ''),
(68, 'google_client_secret', ''),
(69, 'google_signin_enabled', '0'),
(70, 'recaptcha_enabled', '0'),
(71, 'recaptcha_site_key', ''),
(72, 'recaptcha_secret_key', ''),
(73, 'clients_can_select_group', 'none'),
(74, 'files_descriptions_use_ckeditor', '0'),
(75, 'enable_landing_for_all_files', '0'),
(76, 'footer_custom_enable', '0'),
(77, 'footer_custom_content', ''),
(78, 'email_new_file_by_user_subject_customize', '0'),
(79, 'email_new_file_by_client_subject_customize', '0'),
(80, 'email_new_client_by_user_subject_customize', '0'),
(81, 'email_new_client_by_self_subject_customize', '0'),
(82, 'email_new_user_subject_customize', '0'),
(83, 'email_pass_reset_subject_customize', '0'),
(84, 'email_new_file_by_user_subject', ''),
(85, 'email_new_file_by_client_subject', ''),
(86, 'email_new_client_by_user_subject', ''),
(87, 'email_new_client_by_self_subject', ''),
(88, 'email_new_user_subject', ''),
(89, 'email_pass_reset_subject', ''),
(90, 'privacy_noindex_site', '0'),
(91, 'email_account_approve_subject_customize', '0'),
(92, 'email_account_deny_subject_customize', '0'),
(93, 'email_account_approve_customize', '0'),
(94, 'email_account_deny_customize', '0'),
(95, 'email_account_approve_subject', ''),
(96, 'email_account_deny_subject', ''),
(97, 'email_account_approve_text', ''),
(98, 'email_account_deny_text', ''),
(99, 'email_client_edited_subject_customize', '0'),
(100, 'email_client_edited_customize', '0'),
(101, 'email_client_edited_subject', ''),
(102, 'email_client_edited_text', ''),
(103, 'public_listing_page_enable', '0'),
(104, 'public_listing_logged_only', '0'),
(105, 'public_listing_show_all_files', '0'),
(106, 'public_listing_use_download_link', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_password_reset`
--

CREATE TABLE `tbl_password_reset` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(32) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `used` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `user` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(60) NOT NULL,
  `level` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address` text,
  `phone` varchar(32) DEFAULT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `contact` text,
  `created_by` varchar(60) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `account_requested` tinyint(1) NOT NULL DEFAULT '0',
  `account_denied` tinyint(1) NOT NULL DEFAULT '0',
  `max_file_size` int(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `user`, `password`, `name`, `email`, `level`, `timestamp`, `address`, `phone`, `notify`, `contact`, `created_by`, `active`, `account_requested`, `account_denied`, `max_file_size`) VALUES
(1, 'salha', '$2a$08$DAaUAsSuW9QXZ6wlFADaSOjSCpW3YYVHMEQ9iGCskfefYIUpWyi2.', 'Salha Juma', 'salha@gmail.com', 9, '2019-04-28 19:57:08', NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0),
(6, 'bscse1', '$2a$08$ae5CD.i7ZccmTlkiDkbWnu8wR9JtLiGiF1VHQZrGWecfPirWFyUSa', 'Bsc SE1', 'bscse1@cive.udom.ac.tz', 0, '2019-04-29 19:40:56', '', '', 1, '', 'salha', 1, 0, 0, 1024),
(7, 'bschis1', '$2a$08$zSsFMFAutvtEgLhOdy74d.OY9JSAFk6MrUHoCZz32j9po4gRHvSoe', 'Bsc HIS1', 'bschis1@cive.udom.ac.tz', 0, '2019-04-29 19:42:07', '', '', 1, '', 'salha', 1, 0, 0, 1024),
(12, 'bscis1', '$2a$08$viSXdZsUSjM8pWDeVK1iHOGHRtPDPiMvgfs6UxWKTrX9Vwy32y1Xi', 'Bsc IS1', 'bscis1@cive.udom.ac.tz', 0, '2019-04-30 07:02:48', '', '', 1, '', 'salha', 1, 0, 0, 2024),
(16, 'alawi', '$2a$08$Qvo7D8.Psu5MJQgQ4XtaWOw3nYy8Wp/I5gshBijx5eRc1obe4Ar1e', 'Alawi Admin', 'alawi@udom.com', 9, '2019-06-06 13:46:35', NULL, NULL, 0, NULL, NULL, 1, 0, 0, 2048),
(17, 'bscis2', '$2a$08$MCgoRFiX/Mfy5C8BScbazu/5uyA2c40Uz1uTXoLlXeS6pd1Ls1fUi', 'Bsc IS2', 'is2@udom.ac.tz', 0, '2019-06-06 14:04:38', '', '', 1, '', 'alawi', 1, 0, 0, 2048),
(18, 'bscis3', '$2a$08$HkIxfigOiROJ13Gw9zYjFeaWUu/bHFO6gnnkm.WGYnQNULGrELkNm', 'Bsc IS3', 'is3@udom.ac.tz', 0, '2019-06-06 14:05:58', '', '', 1, '', 'alawi', 1, 0, 0, 2048),
(19, 'bschis2', '$2a$08$aTjE952lCEtVzH1/lsXUIeMADr0DiXw6JoWbsAjF/hCinIUYPzo4O', 'Bsc HIS2', 'his2@udom.ac.tz', 0, '2019-06-06 14:07:26', '', '', 1, '', 'alawi', 1, 0, 0, 2048),
(20, 'bschis3', '$2a$08$cE5oXiip4T7Z3yDbT8FcVeDLEshuVuYO/FIgC0hu/dcJy7v.U7yU.', 'Bsc HIS3', 'his3@udom.ac.tz', 0, '2019-06-06 14:08:24', '', '', 1, '', 'alawi', 1, 0, 0, 2048),
(21, 'bsccis1', '$2a$08$aJ0PM.Ltiejh1EKqcuZJM.eSInN8B8YsU4cWIhJeP8i7tmLKZ0zhC', 'Bsc CIS1', 'bsccis1@udom.ac.tz', 0, '2019-06-06 14:10:37', '', '', 1, '', 'alawi', 1, 0, 0, 2048),
(22, 'bsccis2', '$2a$08$oZYk/R9Y8EZVyj7WxWi1H.aHOYyQvy7uODwzimobOni79eKjWzinG', 'Bsc CIS2', 'bsccis2@udom.ac.tz', 0, '2019-06-06 14:11:53', '', '', 1, '', 'alawi', 1, 0, 0, 2048),
(23, 'bsccis3', '$2a$08$LQND9ROFZhV.h3QId7D7euEATbBYDWyVJbevBCtoQjMUwDRm9YSq2', 'Bsc CIS3', 'bsccis3@udom.ac.tz', 0, '2019-06-06 14:13:18', '', '', 1, '', 'alawi', 1, 0, 0, 2048),
(24, 'bsccs1', '$2a$08$UgJZy5/Bqw9m.A5KsZpkruVxOTL9RRFaT1RMHaRUDRIDSq/Ecc6Y.', 'Bsc CS1', 'bsccs1@udom.ac.tz', 0, '2019-06-06 14:15:06', '', '', 1, '', 'alawi', 1, 0, 0, 2048),
(25, 'bsccs2', '$2a$08$Qs0qn6nFkEakDw27ubuPteZJBMyd71KZ/bPPkAViztj3SAs0BikL2', 'Bsc CS2', 'bsccs2@udom.ac.tz', 0, '2019-06-06 14:16:20', '', '', 1, '', 'alawi', 1, 0, 0, 2048),
(26, 'bsccs3', '$2a$08$lCQymGRa3IZmXViEF04A0OcuG6J46luMByBzh8sfM87r2l6nQ3AGe', 'Bsc CS3', 'bsccs3@udom.ac.tz', 0, '2019-06-06 14:18:10', '', '', 1, '', 'alawi', 1, 0, 0, 2048),
(27, 'bscse2', '$2a$08$psreoq113Y/4jwAtfVUB7.H5M88rwy6Q50GsKBxKDOCFxhk0Ah.TS', 'Bsc SE2', 'bscse2@udom.ac.tz', 0, '2019-06-06 14:19:59', '', '', 1, '', 'alawi', 1, 0, 0, 2048),
(28, 'bscse3', '$2a$08$K2GHNW0gcD7i6sSQVH2K/Ohm3XkbaCbkIEYMvJVefk6y0zak.D9Ya', 'Bsc SE3', 'bscse3@udom.ac.tz', 0, '2019-06-06 14:21:30', '', '', 1, '', 'alawi', 1, 0, 0, 2048),
(29, 'bscse4', '$2a$08$WHkDuFR0A4bZXIde1.dclO8jz/HhOnyZPmWnIf0mSxW/NwRRsUmOa', 'Bsc SE4', 'bscse4@udom.ac.tz', 0, '2019-06-06 14:22:27', '', '', 1, '', 'alawi', 1, 0, 0, 2048),
(30, 'shidende', '$2a$08$B7lF3S5n/Qmb36Rh6u9H1euGmEogSZam8VOEyMaoWshjzdaqTX6bq', 'Dr Nima Shidende', 'shidende@gmail.com', 8, '2019-06-06 14:29:40', NULL, NULL, 0, NULL, NULL, 1, 0, 0, 2048),
(31, 'mongi', '$2a$08$7Zsa0q4JoYrwrxKkOYuvN.qOjzLiuSWpH8gKkep/pjdXwonTSHM/6', 'Dr Hector Mongi', 'hectorrmongi@gmail.com', 8, '2019-06-06 14:32:03', NULL, NULL, 0, NULL, NULL, 1, 0, 0, 2048),
(32, 'sanga', '$2a$08$isO9B4eP2Xtbb1kQzxHCDeLH0FUoUa/Gkts9ONxfbwMQP5YfkFlou', 'Bahati Sanga', 'bahatisanga7@gmail.com', 7, '2019-06-06 14:34:09', NULL, NULL, 0, NULL, NULL, 1, 0, 0, 2048),
(33, 'carina', '$2a$08$.FDA1pB.g5uNPju8QyeVpOz6iZvak1fhDk93959CK22QxbjUfr0yO', 'Carina Titus', 'carina@gmail.com', 7, '2019-06-06 14:36:03', NULL, NULL, 0, NULL, NULL, 1, 0, 0, 2048),
(34, 'mwogosi', '$2a$08$Wk8LmqYXcVOHrkKSOERwzuTzDPIkK4oD2z4ncMA9UjSOlqDb5nbWC', 'Augustino Mwogosi', 'mwogosi@gmail.com', 7, '2019-06-06 14:36:56', NULL, NULL, 0, NULL, NULL, 1, 0, 0, 2048),
(35, 'bertha', '$2a$08$P.9H59NT1LOMOVMTgia6YOz23PmRadmzyQBl86QAXLvi2DZBnDAh2', 'Bertha Shayo', 'bertha@gmail.com', 7, '2019-06-06 14:39:47', NULL, NULL, 0, NULL, NULL, 1, 0, 0, 2048),
(36, 'pascal', '$2a$08$821HSls64E8yUUS4HbBqeOj2dMEGAoxJCpybSugWU87yuY9eB/K9K', 'Pascal Charles', 'pascal@gmail.com', 7, '2019-06-06 14:41:13', NULL, NULL, 0, NULL, NULL, 1, 0, 0, 2048),
(37, 'ramadhani', '$2a$08$dVLvzSrQGfR7z/cxd9jXcOR2ZJ6E1ntfisw.hFL1zjt7jsDM8ScSm', 'Ramadhain Duma', 'duma@gmail.com', 7, '2019-06-06 14:42:21', NULL, NULL, 0, NULL, NULL, 1, 0, 0, 2048),
(38, 'mselle', '$2a$08$x7MzcsFXYdEOKP6GtuwWdOWEnPHNH/yYdTiJU/xnQntlpu.Uz9V2W', 'prof  Leornard Mselle', 'mselle@gmail.com', 7, '2019-06-06 14:44:39', NULL, NULL, 0, NULL, NULL, 1, 0, 0, 2048);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`code`),
  ADD KEY `idc` (`id`),
  ADD KEY `dc` (`deptno`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`deptno`);

--
-- Indexes for table `evaluation1`
--
ALTER TABLE `evaluation1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instry`
--
ALTER TABLE `instry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insd` (`deptno`);

--
-- Indexes for table `tbl_actions_log`
--
ALTER TABLE `tbl_actions_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `tbl_categories_relations`
--
ALTER TABLE `tbl_categories_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `tbl_downloads`
--
ALTER TABLE `tbl_downloads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `file_id` (`file_id`);

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_files_relations`
--
ALTER TABLE `tbl_files_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `folder_id` (`folder_id`);

--
-- Indexes for table `tbl_folders`
--
ALTER TABLE `tbl_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `tbl_groups`
--
ALTER TABLE `tbl_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_members`
--
ALTER TABLE `tbl_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `tbl_members_requests`
--
ALTER TABLE `tbl_members_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `tbl_options`
--
ALTER TABLE `tbl_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_password_reset`
--
ALTER TABLE `tbl_password_reset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `evaluation1`
--
ALTER TABLE `evaluation1`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_actions_log`
--
ALTER TABLE `tbl_actions_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=581;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_categories_relations`
--
ALTER TABLE `tbl_categories_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_downloads`
--
ALTER TABLE `tbl_downloads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_files_relations`
--
ALTER TABLE `tbl_files_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tbl_folders`
--
ALTER TABLE `tbl_folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_groups`
--
ALTER TABLE `tbl_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_members`
--
ALTER TABLE `tbl_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_members_requests`
--
ALTER TABLE `tbl_members_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tbl_options`
--
ALTER TABLE `tbl_options`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `tbl_password_reset`
--
ALTER TABLE `tbl_password_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `dc` FOREIGN KEY (`deptno`) REFERENCES `dept` (`deptno`),
  ADD CONSTRAINT `idc` FOREIGN KEY (`id`) REFERENCES `instry` (`id`);

--
-- Constraints for table `instry`
--
ALTER TABLE `instry`
  ADD CONSTRAINT `insd` FOREIGN KEY (`deptno`) REFERENCES `dept` (`deptno`);

--
-- Constraints for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD CONSTRAINT `tbl_categories_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `tbl_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tbl_categories_relations`
--
ALTER TABLE `tbl_categories_relations`
  ADD CONSTRAINT `tbl_categories_relations_ibfk_1` FOREIGN KEY (`file_id`) REFERENCES `tbl_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_categories_relations_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `tbl_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_downloads`
--
ALTER TABLE `tbl_downloads`
  ADD CONSTRAINT `tbl_downloads_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_downloads_ibfk_2` FOREIGN KEY (`file_id`) REFERENCES `tbl_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_files_relations`
--
ALTER TABLE `tbl_files_relations`
  ADD CONSTRAINT `tbl_files_relations_ibfk_1` FOREIGN KEY (`file_id`) REFERENCES `tbl_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_files_relations_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_files_relations_ibfk_3` FOREIGN KEY (`group_id`) REFERENCES `tbl_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_files_relations_ibfk_4` FOREIGN KEY (`folder_id`) REFERENCES `tbl_folders` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_folders`
--
ALTER TABLE `tbl_folders`
  ADD CONSTRAINT `tbl_folders_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `tbl_folders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_folders_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_folders_ibfk_3` FOREIGN KEY (`group_id`) REFERENCES `tbl_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_members`
--
ALTER TABLE `tbl_members`
  ADD CONSTRAINT `tbl_members_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_members_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `tbl_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_members_requests`
--
ALTER TABLE `tbl_members_requests`
  ADD CONSTRAINT `tbl_members_requests_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_members_requests_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `tbl_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  ADD CONSTRAINT `tbl_notifications_ibfk_1` FOREIGN KEY (`file_id`) REFERENCES `tbl_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_notifications_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_password_reset`
--
ALTER TABLE `tbl_password_reset`
  ADD CONSTRAINT `tbl_password_reset_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
