-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2021 at 10:28 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bhrf5uvgouxajlovmlzq`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `attendance`
-- (See below for the actual view)
--
CREATE TABLE `attendance` (
`party_id` int(11)
,`event_id` int(11)
,`name` varchar(255)
,`evn_location` varchar(255)
,`description` text
,`start_date` date
,`start_time` time
,`end_date` date
,`end_time` time
,`price` int(11)
,`host_id` int(11)
,`atendee_id` int(11)
,`first_name` varchar(255)
,`last_name` varchar(255)
,`username` varchar(255)
,`email` varchar(255)
,`phone` varchar(255)
,`location` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `attending`
--

CREATE TABLE `attending` (
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attending`
--

INSERT INTO `attending` (`event_id`, `user_id`) VALUES
(7, 4),
(9, 6),
(9, 6),
(9, 7),
(11, 8),
(15, 6),
(17, 15),
(17, 15),
(19, 15),
(22, 6),
(22, 17);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Community and Culture'),
(2, 'Music'),
(3, 'Food and Drinks'),
(4, 'Religious event'),
(5, 'Business and Profession');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `evn_location` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_date` date NOT NULL,
  `end_time` time NOT NULL,
  `capacity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_poster` varchar(255) DEFAULT NULL,
  `hasTickets` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `name`, `evn_location`, `description`, `type_id`, `category_id`, `start_date`, `start_time`, `end_date`, `end_time`, `capacity`, `price`, `user_id`, `event_poster`, `hasTickets`) VALUES
(7, 'Another great event', 'Nairobi', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', 1, 1, '2021-04-09', '09:13:00', '2021-04-09', '10:13:00', 50, 3500, 6, './img/6067f994ebde49.86115128.jpg', 1),
(9, 'NRG On The Road', 'Mombasa', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', 2, 2, '2021-04-30', '18:30:00', '2021-05-01', '00:30:00', 29, 550, 1, './img/60687b8dc27584.65083987.jpg', 1),
(11, 'Mainswitch Live', 'Mombasa, Kenya', 'It is a long distracted by the readable It is a long established fact that a reader content of a page when looking at its layout. The point of using Lorem IpsumIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', 2, 2, '2021-04-30', '18:30:00', '2021-04-30', '22:45:00', 0, 1500, 2, './img/60687e77d9c7b8.78288122.jpg', 1),
(12, 'Real Talk', 'Nakuru', 'It is a long established fact that a reader will be It is a long established fact that a reader will be distracted by the readable contentdistracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 1, 1, '2021-04-11', '18:45:00', '2021-04-11', '19:45:00', 10, 350, 3, './img/60687fa2c02b46.62917924.jpg', 1),
(14, 'Friends Get Together', 'Mombasa, Kenya', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making', 2, 1, '2021-04-24', '10:10:00', '2021-04-24', '22:10:00', 38, 7500, 4, './img/606885106910e3.84209268.jpg', 1),
(15, 'get together at makena', 'Mombasa', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English', 2, 3, '2021-04-14', '14:09:00', '2021-04-16', '01:06:00', 50, 350, 7, './img/606ac5281eeda5.08542811.jpg', 1),
(16, 'Kongamano la makondoo', 'Rongai, Kenya', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', 1, 4, '2021-04-30', '18:50:00', '2021-05-01', '07:50:00', 100, 10, 8, './img/606f5071ccadf5.34349494.jpg', 1),
(17, 'An Awesome event', 'Rongai, Kenya', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', 4, 3, '2021-04-23', '05:44:00', '2021-04-23', '09:44:00', 1, 500, 10, './img/606f69dbbdd4c4.62523232.jpg', 1),
(19, 'Environment week', 'Rongai, Kenya', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', 1, 1, '2021-04-28', '04:27:00', '2021-04-28', '05:27:00', 10, 500, 6, './img/607750272bd686.75992207.jpg', 1),
(22, 'ANU HOLINESS WEEK', 'Leah T. Marangu Campus', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look', 1, 4, '2021-04-30', '11:41:00', '2021-04-30', '15:41:00', 485, 50, 15, './img/607fe52fbf8e60.83160010.jpg', 1),
(23, 'Some new event', 'Rongai, Kenya', 'Code blocks are part of the Markdown spec, but syntax highlighting isn\'t. However, many renderers -- like Github\'s and Markdown Here -- support syntax highlighting. Which languages are supported and how those language names should be written will vary from renderer to renderer. Markdown Here supports', 1, 1, '2021-08-27', '17:10:00', '2021-08-27', '00:00:00', 202, 500, 17, './img/610d97745fc9a4.82786644.jpg', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `follows_table`
-- (See below for the actual view)
--
CREATE TABLE `follows_table` (
`User` int(11)
,`ufname` varchar(255)
,`ulname` varchar(255)
,`uuname` varchar(255)
,`uemail` varchar(255)
,`uphone` varchar(255)
,`ulocation` varchar(255)
,`Follower` int(11)
,`ffname` varchar(255)
,`flname` varchar(255)
,`funame` varchar(255)
,`femail` varchar(255)
,`fphone` varchar(255)
,`flocation` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `folowers`
--

CREATE TABLE `folowers` (
  `user_id` int(11) NOT NULL,
  `folower_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `folowers`
--

INSERT INTO `folowers` (`user_id`, `folower_id`) VALUES
(1, 6),
(2, 6),
(4, 4),
(4, 6),
(6, 15),
(7, 6),
(10, 15);

-- --------------------------------------------------------

--
-- Stand-in structure for view `past_events`
-- (See below for the actual view)
--
CREATE TABLE `past_events` (
`event_id` int(11)
,`name` varchar(255)
,`evn_location` varchar(255)
,`description` text
,`type_id` int(11)
,`category_id` int(11)
,`start_date` date
,`start_time` time
,`end_date` date
,`end_time` time
,`capacity` int(11)
,`price` int(11)
,`user_id` int(11)
,`event_poster` varchar(255)
,`hasTickets` tinyint(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `revenue`
-- (See below for the actual view)
--
CREATE TABLE `revenue` (
`evn_id` int(11)
,`Event` varchar(255)
,`Host` varchar(255)
,`Total_Rev` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `serial_number` varchar(255) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticket_id`, `serial_number`, `event_id`, `user_id`, `buyer_id`, `status`) VALUES
(178, 'SLFL07F9G0', 7, 6, NULL, 0),
(179, 'SLFL0UI390', 7, 6, NULL, 0),
(180, 'SLFL0TY8J0', 7, 6, NULL, 0),
(181, 'SLFL0YFAF0', 7, 6, NULL, 0),
(182, 'SLFL001350', 7, 6, NULL, 0),
(183, 'SLFL06OPF0', 7, 6, NULL, 0),
(184, 'SLFL04D390', 7, 6, NULL, 0),
(185, 'SLFL0J3840', 7, 6, NULL, 0),
(186, 'SLFL072E20', 7, 6, NULL, 0),
(187, 'SLFL07K6E0', 7, 6, NULL, 0),
(188, 'SLFL09I9F0', 7, 6, NULL, 0),
(189, 'SLFL0MV060', 7, 6, NULL, 0),
(190, 'SLFL0LXJ10', 7, 6, NULL, 0),
(191, 'SLFL0I0H10', 7, 6, NULL, 0),
(192, 'SLFL0BN3I0', 7, 6, NULL, 0),
(193, 'SLFL02AJA0', 7, 6, NULL, 0),
(194, 'SLFL02Y990', 7, 6, NULL, 0),
(195, 'SLFL038B10', 7, 6, NULL, 0),
(196, 'SLFL02G260', 7, 6, NULL, 0),
(197, 'SLFL0VVK80', 7, 6, 4, 1),
(218, 'SLFL02SP50', 9, 1, NULL, 0),
(219, 'SLFL0TT810', 9, 1, NULL, 0),
(220, 'SLFL0K08C0', 9, 1, NULL, 0),
(221, 'SLFL0HR5E0', 9, 1, NULL, 0),
(222, 'SLFL0P8T10', 9, 1, NULL, 0),
(223, 'SLFL0TOW50', 9, 1, NULL, 0),
(224, 'SLFL07GN80', 9, 1, NULL, 0),
(225, 'SLFL0R2B80', 9, 1, NULL, 0),
(226, 'SLFL0OD140', 9, 1, NULL, 0),
(227, 'SLFL0UI0C0', 9, 1, NULL, 0),
(228, 'SLFL05I0H0', 9, 1, NULL, 0),
(229, 'SLFL0OPE90', 9, 1, NULL, 0),
(230, 'SLFL0R6CI0', 9, 1, NULL, 0),
(231, 'SLFL0UWQ30', 9, 1, NULL, 0),
(232, 'SLFL0DJ0E0', 9, 1, NULL, 0),
(233, 'SLFL0W0N50', 9, 1, NULL, 0),
(234, 'SLFL0Y8BD0', 9, 1, NULL, 0),
(235, 'SLFL06YA60', 9, 1, NULL, 0),
(236, 'SLFL04XI60', 9, 1, NULL, 0),
(237, 'SLFL01TD20', 9, 1, NULL, 0),
(238, 'SLFL0C1440', 9, 1, NULL, 0),
(239, 'SLFL0OAS0', 9, 1, NULL, 0),
(240, 'SLFL0DVZC0', 9, 1, NULL, 0),
(241, 'SLFL0B9J50', 9, 1, NULL, 0),
(242, 'SLFL02K2D0', 9, 1, NULL, 0),
(243, 'SLFL0LCFC0', 9, 1, NULL, 0),
(244, 'SLFL05PXA0', 9, 1, NULL, 0),
(245, 'SLFL06UJ90', 9, 1, NULL, 0),
(246, 'SLFL0T0Q60', 9, 1, NULL, 0),
(247, 'SLFL0213J0', 9, 1, 6, 1),
(248, 'SLFL0UZ750', 9, 1, 6, 1),
(249, 'SLFL0F4KI0', 9, 1, 6, 1),
(250, 'SLFL0C8M20', 9, 1, 6, 1),
(251, 'SLFL096710', 9, 1, 6, 1),
(252, 'SLFL0JJQF0', 9, 1, 6, 1),
(253, 'SLFL0MYN90', 9, 1, 6, 1),
(254, 'SLFL03EJE0', 9, 1, 6, 1),
(255, 'SLFL0WD520', 9, 1, 6, 1),
(256, 'SLFL0R66J0', 9, 1, 6, 1),
(257, 'SLFL0ASA20', 9, 1, 7, 1),
(258, 'SLFL0GB6E0', 9, 1, 6, 1),
(259, 'SLFL0Z6650', 9, 1, 6, 1),
(260, 'SLFL0TTOH0', 9, 1, 6, 1),
(261, 'SLFL061G90', 9, 1, 6, 1),
(262, 'SLFL03NW30', 9, 1, 6, 1),
(263, 'SLFL0W4P60', 9, 1, 6, 1),
(264, 'SLFL09P590', 9, 1, 6, 1),
(265, 'SLFL0FCQF0', 9, 1, 6, 1),
(266, 'SLFL0G2G20', 9, 1, 6, 1),
(267, 'SLFL0QWV50', 9, 1, 6, 1),
(318, 'SLFL03Z7H0', 11, 2, 8, 1),
(319, 'SLFL0FDB60', 11, 2, 8, 1),
(320, 'SLFL0SSYC0', 11, 2, 8, 1),
(321, 'SLFL0HPBI0', 11, 2, 8, 1),
(322, 'SLFL05YM50', 11, 2, 8, 1),
(323, 'SLFL0VCX60', 11, 2, 8, 1),
(324, 'SLFL0TGOB0', 11, 2, 8, 1),
(325, 'SLFL0CTEB0', 11, 2, 8, 1),
(326, 'SLFL0E0JH0', 11, 2, 8, 1),
(327, 'SLFL0TUKG0', 11, 2, 8, 1),
(328, 'SLFL0UPP40', 11, 2, 8, 1),
(329, 'SLFL0B51C0', 11, 2, 8, 1),
(330, 'SLFL09US90', 11, 2, 8, 1),
(331, 'SLFL0IXBH0', 11, 2, 8, 1),
(332, 'SLFL08AMC0', 11, 2, 8, 1),
(333, 'SLFL0ZCFE0', 11, 2, 8, 1),
(334, 'SLFL00QQ10', 11, 2, 8, 1),
(335, 'SLFL0AEUD0', 11, 2, 8, 1),
(336, 'SLFL0PP720', 11, 2, 8, 1),
(337, 'SLFL0SMC60', 11, 2, 8, 1),
(338, 'SLFL0PH070', 11, 2, 8, 1),
(339, 'SLFL0B4520', 11, 2, 8, 1),
(340, 'SLFL0Z8CI0', 11, 2, 8, 1),
(341, 'SLFL0CUDB0', 11, 2, 8, 1),
(342, 'SLFL01XJ0', 11, 2, 8, 1),
(343, 'SLFL0Z3430', 11, 2, 8, 1),
(344, 'SLFL0ICKD0', 11, 2, 8, 1),
(345, 'SLFL0MPQA0', 11, 2, 8, 1),
(346, 'SLFL03EYI0', 11, 2, 8, 1),
(347, 'SLFL0ZKB10', 11, 2, 8, 1),
(348, 'SLFL0B3AJ0', 11, 2, 8, 1),
(349, 'SLFL033OE0', 11, 2, 8, 1),
(350, 'SLFL0W3TF0', 11, 2, 8, 1),
(351, 'SLFL03RZA0', 11, 2, 8, 1),
(352, 'SLFL0G48A0', 11, 2, 8, 1),
(353, 'SLFL0C1Q30', 11, 2, 8, 1),
(354, 'SLFL019Y50', 11, 2, 8, 1),
(355, 'SLFL0MJ6I0', 11, 2, 8, 1),
(356, 'SLFL0RG840', 11, 2, 8, 1),
(357, 'SLFL0THT30', 11, 2, 8, 1),
(358, 'SLFL029AH0', 11, 2, 8, 1),
(359, 'SLFL0R4Y50', 11, 2, 8, 1),
(360, 'SLFL0A7010', 11, 2, 8, 1),
(361, 'SLFL0LV170', 11, 2, 8, 1),
(362, 'SLFL0DD110', 11, 2, 8, 1),
(363, 'SLFL08C410', 11, 2, 8, 1),
(364, 'SLFL0ALS30', 11, 2, 8, 1),
(365, 'SLFL0P2ZC0', 11, 2, 8, 1),
(366, 'SLFL0DNL40', 11, 2, 8, 1),
(367, 'SLFL0YMTA0', 11, 2, 8, 1),
(368, 'SLFL0KBX50', 12, 3, NULL, 0),
(369, 'SLFL0KC690', 12, 3, NULL, 0),
(370, 'SLFL051S90', 12, 3, NULL, 0),
(371, 'SLFL01YEE0', 12, 3, NULL, 0),
(372, 'SLFL0WV680', 12, 3, NULL, 0),
(373, 'SLFL06RFE0', 12, 3, NULL, 0),
(374, 'SLFL075010', 12, 3, NULL, 0),
(375, 'SLFL068A30', 12, 3, NULL, 0),
(376, 'SLFL09ZKC0', 12, 3, NULL, 0),
(377, 'SLFL0ZB0B0', 12, 3, NULL, 0),
(408, 'SLFL0FZB90', 14, 4, NULL, 0),
(409, 'SLFL0HBVC0', 14, 4, NULL, 0),
(410, 'SLFL0V6080', 14, 4, NULL, 0),
(411, 'SLFL063560', 14, 4, NULL, 0),
(412, 'SLFL059VH0', 14, 4, NULL, 0),
(413, 'SLFL0GVRD0', 14, 4, NULL, 0),
(414, 'SLFL0PBQ10', 14, 4, NULL, 0),
(415, 'SLFL0P38A0', 14, 4, NULL, 0),
(416, 'SLFL0KL110', 14, 4, NULL, 0),
(417, 'SLFL0WJMG0', 14, 4, NULL, 0),
(418, 'SLFL0QT960', 14, 4, NULL, 0),
(419, 'SLFL014890', 14, 4, NULL, 0),
(420, 'SLFL098I90', 14, 4, NULL, 0),
(421, 'SLFL0KS3B0', 14, 4, NULL, 0),
(422, 'SLFL0UGEG0', 14, 4, NULL, 0),
(423, 'SLFL0M2870', 14, 4, NULL, 0),
(424, 'SLFL0QGR80', 14, 4, NULL, 0),
(425, 'SLFL0411C0', 14, 4, NULL, 0),
(426, 'SLFL020NE0', 14, 4, NULL, 0),
(427, 'SLFL03AI60', 14, 4, NULL, 0),
(428, 'SLFL02N110', 14, 4, NULL, 0),
(429, 'SLFL0C9270', 14, 4, NULL, 0),
(430, 'SLFL0KXM60', 14, 4, NULL, 0),
(431, 'SLFL0ZCP10', 14, 4, NULL, 0),
(432, 'SLFL0O7OA0', 14, 4, NULL, 0),
(433, 'SLFL009NI0', 14, 4, NULL, 0),
(434, 'SLFL04RB40', 14, 4, NULL, 0),
(435, 'SLFL0PI550', 14, 4, NULL, 0),
(436, 'SLFL0M9610', 14, 4, NULL, 0),
(437, 'SLFL06XOA0', 14, 4, NULL, 0),
(438, 'SLFL0Y9LG0', 14, 4, NULL, 0),
(439, 'SLFL0BRL60', 14, 4, NULL, 0),
(440, 'SLFL0Y0B30', 14, 4, NULL, 0),
(441, 'SLFL0S2VC0', 14, 4, NULL, 0),
(442, 'SLFL0RKKI0', 14, 4, NULL, 0),
(443, 'SLFL0RUIH0', 14, 4, NULL, 0),
(444, 'SLFL0KERH0', 14, 4, NULL, 0),
(445, 'SLFL0OH2F0', 14, 4, NULL, 0),
(446, 'SLFL0LME20', 14, 4, 6, 1),
(447, 'SLFL0XCJD0', 14, 4, 6, 1),
(448, 'SLFL0EN520', 14, 4, 6, 1),
(449, 'SLFL0LDPA0', 14, 4, 6, 1),
(450, 'SLFL056060', 14, 4, 6, 1),
(451, 'SLFL0YP5C0', 14, 4, 6, 1),
(452, 'SLFL0TW980', 14, 4, 6, 1),
(453, 'SLFL0B25I0', 14, 4, 6, 1),
(454, 'SLFL09MYB0', 14, 4, 6, 1),
(455, 'SLFL01Q030', 14, 4, 6, 1),
(456, 'SLFL0J4920', 14, 4, 6, 1),
(457, 'SLFL0YHI90', 14, 4, 6, 1),
(458, 'SLFL0W62A0', 7, 6, NULL, 0),
(459, 'SLFL0H9M80', 7, 6, NULL, 0),
(460, 'SLFL0N08D0', 7, 6, NULL, 0),
(461, 'SLFL00SM20', 7, 6, NULL, 0),
(462, 'SLFL0JTW10', 7, 6, NULL, 0),
(463, 'SLFL0QHWH0', 7, 6, NULL, 0),
(464, 'SLFL0FAVA0', 7, 6, NULL, 0),
(465, 'SLFL0C1X50', 7, 6, NULL, 0),
(466, 'SLFL00AU40', 7, 6, NULL, 0),
(467, 'SLFL067C50', 7, 6, NULL, 0),
(468, 'SLFL0HEXC0', 7, 6, NULL, 0),
(469, 'SLFL0DL910', 7, 6, NULL, 0),
(470, 'SLFL05IPH0', 7, 6, NULL, 0),
(471, 'SLFL0CJEA0', 7, 6, NULL, 0),
(472, 'SLFL02YD90', 7, 6, NULL, 0),
(473, 'SLFL0LDQ60', 7, 6, NULL, 0),
(474, 'SLFL09IJ80', 7, 6, NULL, 0),
(475, 'SLFL0I0C40', 7, 6, NULL, 0),
(476, 'SLFL0Q0ZG0', 7, 6, NULL, 0),
(477, 'SLFL0XPNE0', 7, 6, NULL, 0),
(478, 'SLFL0G16F0', 7, 6, NULL, 0),
(479, 'SLFL0U8230', 7, 6, NULL, 0),
(480, 'SLFL09YDG0', 7, 6, NULL, 0),
(481, 'SLFL0J3KG0', 7, 6, NULL, 0),
(482, 'SLFL04EEB0', 7, 6, NULL, 0),
(513, 'SLFL0GT0G0', 15, 7, NULL, 0),
(514, 'SLFL0VUW0', 15, 7, NULL, 0),
(515, 'SLFL0QZ460', 15, 7, NULL, 0),
(516, 'SLFL0J7IH0', 15, 7, NULL, 0),
(517, 'SLFL0MI5F0', 15, 7, NULL, 0),
(518, 'SLFL010RE0', 15, 7, NULL, 0),
(519, 'SLFL0NYQB0', 15, 7, NULL, 0),
(520, 'SLFL0HJCD0', 15, 7, NULL, 0),
(521, 'SLFL0IP4H0', 15, 7, NULL, 0),
(522, 'SLFL02N5G0', 15, 7, NULL, 0),
(523, 'SLFL0DMHB0', 15, 7, NULL, 0),
(524, 'SLFL0IWTF0', 15, 7, NULL, 0),
(525, 'SLFL0C7EH0', 15, 7, NULL, 0),
(526, 'SLFL0WG9F0', 15, 7, NULL, 0),
(527, 'SLFL0UTNB0', 15, 7, NULL, 0),
(528, 'SLFL0LKT40', 15, 7, NULL, 0),
(529, 'SLFL0ZFYG0', 15, 7, NULL, 0),
(530, 'SLFL0IXYF0', 15, 7, NULL, 0),
(531, 'SLFL0K4VI0', 15, 7, NULL, 0),
(532, 'SLFL0IR2E0', 15, 7, NULL, 0),
(533, 'SLFL0A3LI0', 15, 7, NULL, 0),
(534, 'SLFL02O7I0', 15, 7, NULL, 0),
(535, 'SLFL0J9GD0', 15, 7, NULL, 0),
(536, 'SLFL0MASG0', 15, 7, NULL, 0),
(537, 'SLFL0HEF0', 15, 7, NULL, 0),
(538, 'SLFL0YYT10', 15, 7, NULL, 0),
(539, 'SLFL0KJN10', 15, 7, NULL, 0),
(540, 'SLFL0N5ND0', 15, 7, NULL, 0),
(541, 'SLFL0TPZ20', 15, 7, NULL, 0),
(542, 'SLFL0IOVA0', 15, 7, NULL, 0),
(543, 'SLFL0T4U90', 15, 7, NULL, 0),
(544, 'SLFL07UMB0', 15, 7, NULL, 0),
(545, 'SLFL0A9VB0', 15, 7, NULL, 0),
(546, 'SLFL0JT780', 15, 7, NULL, 0),
(547, 'SLFL0E2620', 15, 7, NULL, 0),
(548, 'SLFL06CB90', 15, 7, NULL, 0),
(549, 'SLFL06JPD0', 15, 7, NULL, 0),
(550, 'SLFL0F1E60', 15, 7, NULL, 0),
(551, 'SLFL0FN3D0', 15, 7, NULL, 0),
(552, 'SLFL0MPN80', 15, 7, NULL, 0),
(553, 'SLFL0DI3A0', 15, 7, NULL, 0),
(554, 'SLFL0MH830', 15, 7, NULL, 0),
(555, 'SLFL0DECG0', 15, 7, NULL, 0),
(556, 'SLFL093380', 15, 7, NULL, 0),
(557, 'SLFL0ABE90', 15, 7, NULL, 0),
(558, 'SLFL0WU7I0', 15, 7, NULL, 0),
(559, 'SLFL0LQ730', 15, 7, NULL, 0),
(560, 'SLFL0G9DD0', 15, 7, NULL, 0),
(561, 'SLFL0ZZ4D0', 15, 7, NULL, 0),
(562, 'SLFL0A3H20', 15, 7, NULL, 0),
(563, 'SLFL0PN7I0', 15, 7, 6, 1),
(564, 'SLFL0E9YA0', 15, 7, 6, 1),
(565, 'SLFL0CP770', 15, 7, 6, 1),
(566, 'SLFL0N7CA0', 15, 7, 6, 1),
(567, 'SLFL0RI1F0', 15, 7, 6, 1),
(568, 'SLFL00VXD0', 15, 7, 6, 1),
(569, 'SLFL0A3DA0', 15, 7, 6, 1),
(570, 'SLFL08KB10', 15, 7, 6, 1),
(571, 'SLFL0BNI70', 15, 7, 6, 1),
(572, 'SLFL057L0', 15, 7, 6, 1),
(573, 'SLFL06TEG0', 15, 7, 6, 1),
(574, 'SLFL0UCY50', 15, 7, 6, 1),
(575, 'SLFL01ZWE0', 15, 7, 6, 1),
(576, 'SLFL0N0BB0', 15, 7, 6, 1),
(577, 'SLFL0ISX20', 15, 7, 6, 1),
(578, 'SLFL0RR9E0', 15, 7, 6, 1),
(579, 'SLFL07RSD0', 15, 7, 6, 1),
(580, 'SLFL0QV70', 15, 7, 6, 1),
(581, 'SLFL04VJB0', 15, 7, 6, 1),
(582, 'SLFL01ZAA0', 15, 7, 6, 1),
(583, 'SLFL0BKZ10', 15, 7, 6, 1),
(584, 'SLFL0MRA80', 15, 7, 6, 1),
(585, 'SLFL0YJ4F0', 15, 7, 6, 1),
(586, 'SLFL0BLY50', 15, 7, 6, 1),
(587, 'SLFL0BCQG0', 15, 7, 6, 1),
(588, 'SLFL0KJWD0', 15, 7, 6, 1),
(589, 'SLFL0A3G60', 15, 7, 6, 1),
(590, 'SLFL0LVYD0', 15, 7, 6, 1),
(591, 'SLFL0V7R50', 15, 7, 6, 1),
(592, 'SLFL057ZF0', 15, 7, 6, 1),
(593, 'SLFL0G3S70', 15, 7, 6, 1),
(594, 'SLFL0KD7A0', 15, 7, 6, 1),
(595, 'SLFL0X5TH0', 15, 7, 6, 1),
(596, 'SLFL0YLY40', 15, 7, 6, 1),
(597, 'SLFL0ENQ90', 15, 7, 6, 1),
(598, 'SLFL0BIP60', 15, 7, 6, 1),
(599, 'SLFL08HP70', 15, 7, 6, 1),
(600, 'SLFL0NBN90', 15, 7, 6, 1),
(601, 'SLFL045N10', 15, 7, 6, 1),
(602, 'SLFL00S1E0', 15, 7, 6, 1),
(603, 'SLFL0PF980', 15, 7, 6, 1),
(604, 'SLFL0DVHC0', 15, 7, 6, 1),
(605, 'SLFL0YNQA0', 15, 7, 6, 1),
(606, 'SLFL0WCIB0', 15, 7, 6, 1),
(607, 'SLFL019X70', 15, 7, 6, 1),
(608, 'SLFL0X0860', 15, 7, 6, 1),
(609, 'SLFL0CZAG0', 15, 7, 6, 1),
(610, 'SLFL010Y40', 15, 7, 6, 1),
(611, 'SLFL067460', 15, 7, 6, 1),
(612, 'SLFL0YFRD0', 15, 7, 6, 1),
(613, 'SLFL0P8YI0', 16, 8, NULL, 0),
(614, 'SLFL05XB60', 16, 8, NULL, 0),
(615, 'SLFL09RNG0', 16, 8, NULL, 0),
(616, 'SLFL09O4H0', 16, 8, NULL, 0),
(617, 'SLFL0PM550', 16, 8, NULL, 0),
(618, 'SLFL0PFJ0', 16, 8, NULL, 0),
(619, 'SLFL0C7C0', 16, 8, NULL, 0),
(620, 'SLFL09MKF0', 16, 8, NULL, 0),
(621, 'SLFL08BB20', 16, 8, NULL, 0),
(622, 'SLFL0XRR90', 16, 8, NULL, 0),
(623, 'SLFL0P3V20', 16, 8, NULL, 0),
(624, 'SLFL0UOKF0', 16, 8, NULL, 0),
(625, 'SLFL0N3WF0', 16, 8, NULL, 0),
(626, 'SLFL03TAG0', 16, 8, NULL, 0),
(627, 'SLFL0BGM40', 16, 8, NULL, 0),
(628, 'SLFL0C8L50', 16, 8, NULL, 0),
(629, 'SLFL0EAED0', 16, 8, NULL, 0),
(630, 'SLFL0N2OF0', 16, 8, NULL, 0),
(631, 'SLFL0CKFB0', 16, 8, NULL, 0),
(632, 'SLFL0TK630', 16, 8, NULL, 0),
(633, 'SLFL06EQB0', 16, 8, NULL, 0),
(634, 'SLFL0N8440', 16, 8, NULL, 0),
(635, 'SLFL0IXGC0', 16, 8, NULL, 0),
(636, 'SLFL09YMB0', 16, 8, NULL, 0),
(637, 'SLFL06JY20', 16, 8, NULL, 0),
(638, 'SLFL0Y8B40', 16, 8, NULL, 0),
(639, 'SLFL0BAIE0', 16, 8, NULL, 0),
(640, 'SLFL0Z9890', 16, 8, NULL, 0),
(641, 'SLFL0PVF70', 16, 8, NULL, 0),
(642, 'SLFL0P06A0', 16, 8, NULL, 0),
(643, 'SLFL0O4XD0', 16, 8, NULL, 0),
(644, 'SLFL06Y0D0', 16, 8, NULL, 0),
(645, 'SLFL0049B0', 16, 8, NULL, 0),
(646, 'SLFL0XLWG0', 16, 8, NULL, 0),
(647, 'SLFL0W1H60', 16, 8, NULL, 0),
(648, 'SLFL0BKHH0', 16, 8, NULL, 0),
(649, 'SLFL006E90', 16, 8, NULL, 0),
(650, 'SLFL0RNBG0', 16, 8, NULL, 0),
(651, 'SLFL010BH0', 16, 8, NULL, 0),
(652, 'SLFL0OAX20', 16, 8, NULL, 0),
(653, 'SLFL0741D0', 16, 8, NULL, 0),
(654, 'SLFL06IK20', 16, 8, NULL, 0),
(655, 'SLFL0X4HH0', 16, 8, NULL, 0),
(656, 'SLFL09MDD0', 16, 8, NULL, 0),
(657, 'SLFL0K03B0', 16, 8, NULL, 0),
(658, 'SLFL0JCJD0', 16, 8, NULL, 0),
(659, 'SLFL0NK720', 16, 8, NULL, 0),
(660, 'SLFL01CQ0', 16, 8, NULL, 0),
(661, 'SLFL06PE90', 16, 8, NULL, 0),
(662, 'SLFL0KPVF0', 16, 8, NULL, 0),
(663, 'SLFL028B70', 16, 8, NULL, 0),
(664, 'SLFL01O2A0', 16, 8, NULL, 0),
(665, 'SLFL0YFQI0', 16, 8, NULL, 0),
(666, 'SLFL07AOH0', 16, 8, NULL, 0),
(667, 'SLFL01BM10', 16, 8, NULL, 0),
(668, 'SLFL02ILC0', 16, 8, NULL, 0),
(669, 'SLFL0JU920', 16, 8, NULL, 0),
(670, 'SLFL0BG410', 16, 8, NULL, 0),
(671, 'SLFL05C9J0', 16, 8, NULL, 0),
(672, 'SLFL0C85I0', 16, 8, NULL, 0),
(673, 'SLFL0OJ7C0', 16, 8, NULL, 0),
(674, 'SLFL0LG870', 16, 8, NULL, 0),
(675, 'SLFL0GCV20', 16, 8, NULL, 0),
(676, 'SLFL0Z0EC0', 16, 8, NULL, 0),
(677, 'SLFL0Z74E0', 16, 8, NULL, 0),
(678, 'SLFL0DCYB0', 16, 8, NULL, 0),
(679, 'SLFL0J3X40', 16, 8, NULL, 0),
(680, 'SLFL01ZU70', 16, 8, NULL, 0),
(681, 'SLFL09U560', 16, 8, NULL, 0),
(682, 'SLFL0U3X40', 16, 8, NULL, 0),
(683, 'SLFL0FW410', 16, 8, NULL, 0),
(684, 'SLFL0EV770', 16, 8, NULL, 0),
(685, 'SLFL0TXRI0', 16, 8, NULL, 0),
(686, 'SLFL0TCK0', 16, 8, NULL, 0),
(687, 'SLFL0XGF40', 16, 8, NULL, 0),
(688, 'SLFL0MWU60', 16, 8, NULL, 0),
(689, 'SLFL0NL110', 16, 8, NULL, 0),
(690, 'SLFL0ATJ0', 16, 8, NULL, 0),
(691, 'SLFL0Q4SF0', 16, 8, NULL, 0),
(692, 'SLFL0AVKG0', 16, 8, NULL, 0),
(693, 'SLFL017D30', 16, 8, NULL, 0),
(694, 'SLFL04PW60', 16, 8, NULL, 0),
(695, 'SLFL00B1B0', 16, 8, NULL, 0),
(696, 'SLFL0FW1E0', 16, 8, NULL, 0),
(697, 'SLFL07GQ40', 16, 8, NULL, 0),
(698, 'SLFL0H5L20', 16, 8, NULL, 0),
(699, 'SLFL050Z30', 16, 8, NULL, 0),
(700, 'SLFL0UDAF0', 16, 8, NULL, 0),
(701, 'SLFL0K8S50', 16, 8, NULL, 0),
(702, 'SLFL0HH9F0', 16, 8, NULL, 0),
(703, 'SLFL0O9K90', 16, 8, NULL, 0),
(704, 'SLFL0KIO60', 16, 8, NULL, 0),
(705, 'SLFL05A310', 16, 8, NULL, 0),
(706, 'SLFL0O3A60', 16, 8, NULL, 0),
(707, 'SLFL0382F0', 16, 8, NULL, 0),
(708, 'SLFL0HZ6I0', 16, 8, NULL, 0),
(709, 'SLFL0QVDI0', 16, 8, NULL, 0),
(710, 'SLFL0R5O20', 16, 8, NULL, 0),
(711, 'SLFL01TVD0', 16, 8, NULL, 0),
(712, 'SLFL0HSDE0', 16, 8, NULL, 0),
(713, 'SLFL0FRT70', 7, 6, NULL, 0),
(714, 'SLFL0NGRC0', 7, 6, NULL, 0),
(715, 'SLFL0UJ0I0', 7, 6, NULL, 0),
(716, 'SLFL0GA3A0', 7, 6, NULL, 0),
(717, 'SLFL09V5C0', 7, 6, NULL, 0),
(718, 'SLFL0VC070', 7, 6, NULL, 0),
(719, 'SLFL0HYMC0', 7, 6, NULL, 0),
(720, 'SLFL0JKG90', 7, 6, NULL, 0),
(721, 'SLFL097MG0', 7, 6, NULL, 0),
(722, 'SLFL03BLH0', 7, 6, NULL, 0),
(723, 'SLFL0GWHD0', 7, 6, NULL, 0),
(724, 'SLFL0Q60J0', 7, 6, NULL, 0),
(725, 'SLFL0XQOA0', 7, 6, NULL, 0),
(726, 'SLFL0FHY0', 7, 6, NULL, 0),
(727, 'SLFL0RMD30', 7, 6, NULL, 0),
(728, 'SLFL08A070', 7, 6, NULL, 0),
(729, 'SLFL0P0FB0', 7, 6, NULL, 0),
(730, 'SLFL0HGL10', 7, 6, NULL, 0),
(731, 'SLFL046Z70', 7, 6, NULL, 0),
(732, 'SLFL02N0D0', 7, 6, NULL, 0),
(733, 'SLFL0B4TB0', 7, 6, NULL, 0),
(734, 'SLFL0WDB30', 7, 6, NULL, 0),
(735, 'SLFL0TZA70', 7, 6, NULL, 0),
(736, 'SLFL0DRGH0', 7, 6, NULL, 0),
(737, 'SLFL0IXTG0', 7, 6, NULL, 0),
(738, 'SLFL08M6C0', 17, 10, NULL, 0),
(739, 'SLFL082P50', 17, 10, 15, 1),
(740, 'SLFL0ZI8D0', 17, 10, 15, 1),
(741, 'SLFL0CDMF0', 17, 10, 15, 1),
(742, 'SLFL0STW40', 17, 10, 15, 1),
(743, 'SLFL06RH0', 17, 10, 15, 1),
(744, 'SLFL0FNUA0', 17, 10, 15, 1),
(745, 'SLFL05NVB0', 17, 10, 15, 1),
(746, 'SLFL08DS80', 17, 10, 15, 1),
(747, 'SLFL0J2S40', 17, 10, 15, 1),
(748, 'SLFL06JP70', 17, 10, 15, 1),
(749, 'SLFL0LSHG0', 17, 10, 15, 1),
(750, 'SLFL0X0H20', 17, 10, 15, 1),
(751, 'SLFL0RDZ50', 17, 10, 15, 1),
(752, 'SLFL0OF2H0', 17, 10, 15, 1),
(753, 'SLFL0K1W50', 17, 10, 15, 1),
(754, 'SLFL0OUFG0', 17, 10, 15, 1),
(755, 'SLFL0V7050', 17, 10, 15, 1),
(756, 'SLFL0E6ZB0', 17, 10, 15, 1),
(757, 'SLFL0KXB20', 17, 10, 15, 1),
(758, 'SLFL0C4D20', 17, 10, 15, 1),
(759, 'SLFL0SUAE0', 17, 10, 15, 1),
(760, 'SLFL0HQO20', 17, 10, 15, 1),
(761, 'SLFL0XTJG0', 17, 10, 15, 1),
(762, 'SLFL0433I0', 17, 10, 15, 1),
(763, 'SLFL082J70', 17, 10, 15, 1),
(764, 'SLFL022G90', 17, 10, 15, 1),
(765, 'SLFL0J5N50', 17, 10, 15, 1),
(766, 'SLFL0TWSG0', 17, 10, 15, 1),
(767, 'SLFL0EJUB0', 17, 10, 15, 1),
(768, 'SLFL0YJCA0', 17, 10, 15, 1),
(769, 'SLFL0KKT10', 17, 10, 15, 1),
(770, 'SLFL0CO550', 17, 10, 15, 1),
(771, 'SLFL07T1F0', 17, 10, 15, 1),
(772, 'SLFL030LA0', 17, 10, 15, 1),
(773, 'SLFL0GTT40', 17, 10, 15, 1),
(774, 'SLFL0UZ210', 17, 10, 15, 1),
(775, 'SLFL0IFWD0', 17, 10, 15, 1),
(776, 'SLFL03HSD0', 17, 10, 15, 1),
(777, 'SLFL079GI0', 17, 10, 15, 1),
(778, 'SLFL00U3B0', 17, 10, 15, 1),
(779, 'SLFL010I80', 17, 10, 15, 1),
(780, 'SLFL01ESA0', 17, 10, 15, 1),
(781, 'SLFL0G3H90', 17, 10, 15, 1),
(782, 'SLFL0PAX0', 17, 10, 15, 1),
(783, 'SLFL0HC3G0', 17, 10, 15, 1),
(784, 'SLFL0PH170', 17, 10, 15, 1),
(785, 'SLFL06DI90', 17, 10, 15, 1),
(786, 'SLFL0V4SB0', 17, 10, 15, 1),
(787, 'SLFL0IQPG0', 17, 10, 15, 1),
(788, 'SLFL0210I0', 17, 10, 15, 1),
(789, 'SLFL0DGL80', 17, 10, 15, 1),
(790, 'SLFL0S3T50', 17, 10, 15, 1),
(791, 'SLFL0G4B40', 17, 10, 15, 1),
(792, 'SLFL0HSL50', 17, 10, 15, 1),
(793, 'SLFL0NEX60', 17, 10, 15, 1),
(794, 'SLFL0ZPH20', 17, 10, 15, 1),
(795, 'SLFL0ELV30', 17, 10, 15, 1),
(796, 'SLFL0XQDD0', 17, 10, 15, 1),
(797, 'SLFL0EOK30', 17, 10, 15, 1),
(818, 'SLFL09LY20', 19, 6, NULL, 0),
(819, 'SLFL09NZI0', 19, 6, NULL, 0),
(820, 'SLFL0Y4Z40', 19, 6, NULL, 0),
(821, 'SLFL0ZZA30', 19, 6, NULL, 0),
(822, 'SLFL0FDL70', 19, 6, NULL, 0),
(823, 'SLFL0FLN70', 19, 6, NULL, 0),
(824, 'SLFL0HQ890', 19, 6, NULL, 0),
(825, 'SLFL0E4560', 19, 6, NULL, 0),
(826, 'SLFL08W7A0', 19, 6, NULL, 0),
(827, 'SLFL03O790', 19, 6, NULL, 0),
(828, 'SLFL0T59H0', 19, 6, 15, 1),
(829, 'SLFL0VUHF0', 19, 6, 15, 1),
(830, 'SLFL03ABF0', 19, 6, 15, 1),
(831, 'SLFL0D3W0', 19, 6, 15, 1),
(832, 'SLFL0V8F20', 19, 6, 15, 1),
(833, 'SLFL0BICF0', 19, 6, 15, 1),
(834, 'SLFL09N7E0', 19, 6, 15, 1),
(835, 'SLFL0UXTH0', 19, 6, 15, 1),
(836, 'SLFL0BGD60', 19, 6, 15, 1),
(837, 'SLFL0XCQ90', 19, 6, 15, 1),
(1168, 'SLFL099VH0', 22, 15, NULL, 0),
(1169, 'SLFL07JKA0', 22, 15, NULL, 0),
(1170, 'SLFL0IC7A0', 22, 15, NULL, 0),
(1171, 'SLFL00BH70', 22, 15, NULL, 0),
(1172, 'SLFL0LVRF0', 22, 15, NULL, 0),
(1173, 'SLFL0TOR0', 22, 15, NULL, 0),
(1174, 'SLFL016270', 22, 15, NULL, 0),
(1175, 'SLFL0YKY90', 22, 15, NULL, 0),
(1176, 'SLFL0Y7K0', 22, 15, NULL, 0),
(1177, 'SLFL0R9B50', 22, 15, NULL, 0),
(1178, 'SLFL08LS40', 22, 15, NULL, 0),
(1179, 'SLFL0GE2C0', 22, 15, NULL, 0),
(1180, 'SLFL0UG410', 22, 15, NULL, 0),
(1181, 'SLFL0Y6350', 22, 15, NULL, 0),
(1182, 'SLFL0FTVI0', 22, 15, NULL, 0),
(1183, 'SLFL03WT70', 22, 15, NULL, 0),
(1184, 'SLFL0P3QA0', 22, 15, NULL, 0),
(1185, 'SLFL09U210', 22, 15, NULL, 0),
(1186, 'SLFL0GXF20', 22, 15, NULL, 0),
(1187, 'SLFL08CL80', 22, 15, NULL, 0),
(1188, 'SLFL0IX5E0', 22, 15, NULL, 0),
(1189, 'SLFL0HTV70', 22, 15, NULL, 0),
(1190, 'SLFL0IG3F0', 22, 15, NULL, 0),
(1191, 'SLFL0WZMI0', 22, 15, NULL, 0),
(1192, 'SLFL0BH5I0', 22, 15, NULL, 0),
(1193, 'SLFL0KF0I0', 22, 15, NULL, 0),
(1194, 'SLFL0Q62F0', 22, 15, NULL, 0),
(1195, 'SLFL0FMB50', 22, 15, NULL, 0),
(1196, 'SLFL0D2S0', 22, 15, NULL, 0),
(1197, 'SLFL0ZDYF0', 22, 15, NULL, 0),
(1198, 'SLFL0NQQ0', 22, 15, NULL, 0),
(1199, 'SLFL06YFE0', 22, 15, NULL, 0),
(1200, 'SLFL0VROB0', 22, 15, NULL, 0),
(1201, 'SLFL061010', 22, 15, NULL, 0),
(1202, 'SLFL0K7850', 22, 15, NULL, 0),
(1203, 'SLFL0AEL80', 22, 15, NULL, 0),
(1204, 'SLFL0J4B80', 22, 15, NULL, 0),
(1205, 'SLFL0QE570', 22, 15, NULL, 0),
(1206, 'SLFL0ZR6G0', 22, 15, NULL, 0),
(1207, 'SLFL0CNB10', 22, 15, NULL, 0),
(1208, 'SLFL0CNLI0', 22, 15, NULL, 0),
(1209, 'SLFL0FS6H0', 22, 15, NULL, 0),
(1210, 'SLFL09H0H0', 22, 15, NULL, 0),
(1211, 'SLFL0VLRA0', 22, 15, NULL, 0),
(1212, 'SLFL04ISA0', 22, 15, NULL, 0),
(1213, 'SLFL0AJB90', 22, 15, NULL, 0),
(1214, 'SLFL04S8B0', 22, 15, NULL, 0),
(1215, 'SLFL0B9G90', 22, 15, NULL, 0),
(1216, 'SLFL0BJT30', 22, 15, NULL, 0),
(1217, 'SLFL0WCCC0', 22, 15, NULL, 0),
(1218, 'SLFL01L8E0', 22, 15, NULL, 0),
(1219, 'SLFL00PH10', 22, 15, NULL, 0),
(1220, 'SLFL0OMT40', 22, 15, NULL, 0),
(1221, 'SLFL0CPEC0', 22, 15, NULL, 0),
(1222, 'SLFL09W0J0', 22, 15, NULL, 0),
(1223, 'SLFL0952J0', 22, 15, NULL, 0),
(1224, 'SLFL0MY770', 22, 15, NULL, 0),
(1225, 'SLFL02MFA0', 22, 15, NULL, 0),
(1226, 'SLFL0RVYB0', 22, 15, NULL, 0),
(1227, 'SLFL0YC080', 22, 15, NULL, 0),
(1228, 'SLFL0S0D20', 22, 15, NULL, 0),
(1229, 'SLFL0NJZ40', 22, 15, NULL, 0),
(1230, 'SLFL062450', 22, 15, NULL, 0),
(1231, 'SLFL0LTWG0', 22, 15, NULL, 0),
(1232, 'SLFL0XNAB0', 22, 15, NULL, 0),
(1233, 'SLFL02ULE0', 22, 15, NULL, 0),
(1234, 'SLFL0KCR40', 22, 15, NULL, 0),
(1235, 'SLFL00GBF0', 22, 15, NULL, 0),
(1236, 'SLFL0683H0', 22, 15, NULL, 0),
(1237, 'SLFL0FPEE0', 22, 15, NULL, 0),
(1238, 'SLFL0JGQ40', 22, 15, NULL, 0),
(1239, 'SLFL0MBX50', 22, 15, NULL, 0),
(1240, 'SLFL0S5560', 22, 15, NULL, 0),
(1241, 'SLFL01G1I0', 22, 15, NULL, 0),
(1242, 'SLFL04C240', 22, 15, NULL, 0),
(1243, 'SLFL0BA770', 22, 15, NULL, 0),
(1244, 'SLFL05WG40', 22, 15, NULL, 0),
(1245, 'SLFL03J7F0', 22, 15, NULL, 0),
(1246, 'SLFL050CC0', 22, 15, NULL, 0),
(1247, 'SLFL0YQX70', 22, 15, NULL, 0),
(1248, 'SLFL02S310', 22, 15, NULL, 0),
(1249, 'SLFL0FCN20', 22, 15, NULL, 0),
(1250, 'SLFL0SVQA0', 22, 15, NULL, 0),
(1251, 'SLFL02Z980', 22, 15, NULL, 0),
(1252, 'SLFL04BV10', 22, 15, NULL, 0),
(1253, 'SLFL0UFDE0', 22, 15, NULL, 0),
(1254, 'SLFL0AOP20', 22, 15, NULL, 0),
(1255, 'SLFL0WBYE0', 22, 15, NULL, 0),
(1256, 'SLFL0W4770', 22, 15, NULL, 0),
(1257, 'SLFL0O2Q20', 22, 15, NULL, 0),
(1258, 'SLFL0X6170', 22, 15, NULL, 0),
(1259, 'SLFL0A3HI0', 22, 15, NULL, 0),
(1260, 'SLFL0NCFG0', 22, 15, NULL, 0),
(1261, 'SLFL0G1NI0', 22, 15, NULL, 0),
(1262, 'SLFL0BZP10', 22, 15, NULL, 0),
(1263, 'SLFL0Y1QH0', 22, 15, NULL, 0),
(1264, 'SLFL0M60A0', 22, 15, NULL, 0),
(1265, 'SLFL0APD10', 22, 15, NULL, 0),
(1266, 'SLFL01C2G0', 22, 15, NULL, 0),
(1267, 'SLFL0ZYKA0', 22, 15, NULL, 0),
(1268, 'SLFL02SC60', 22, 15, NULL, 0),
(1269, 'SLFL0XM6G0', 22, 15, NULL, 0),
(1270, 'SLFL0TQGA0', 22, 15, NULL, 0),
(1271, 'SLFL0ODX80', 22, 15, NULL, 0),
(1272, 'SLFL0TM670', 22, 15, NULL, 0),
(1273, 'SLFL0BC2B0', 22, 15, NULL, 0),
(1274, 'SLFL0OLW10', 22, 15, NULL, 0),
(1275, 'SLFL0K9I10', 22, 15, NULL, 0),
(1276, 'SLFL0P19C0', 22, 15, NULL, 0),
(1277, 'SLFL0419F0', 22, 15, NULL, 0),
(1278, 'SLFL0F79D0', 22, 15, NULL, 0),
(1279, 'SLFL0WDS70', 22, 15, NULL, 0),
(1280, 'SLFL0SCYD0', 22, 15, NULL, 0),
(1281, 'SLFL0ZXO10', 22, 15, NULL, 0),
(1282, 'SLFL0JKTG0', 22, 15, NULL, 0),
(1283, 'SLFL0WJOB0', 22, 15, NULL, 0),
(1284, 'SLFL0MHRA0', 22, 15, NULL, 0),
(1285, 'SLFL08GXE0', 22, 15, NULL, 0),
(1286, 'SLFL07RX0', 22, 15, NULL, 0),
(1287, 'SLFL08SM0', 22, 15, NULL, 0),
(1288, 'SLFL0YKP50', 22, 15, NULL, 0),
(1289, 'SLFL0X3KD0', 22, 15, NULL, 0),
(1290, 'SLFL0W6PF0', 22, 15, NULL, 0),
(1291, 'SLFL02Q840', 22, 15, NULL, 0),
(1292, 'SLFL0HE740', 22, 15, NULL, 0),
(1293, 'SLFL09BGH0', 22, 15, NULL, 0),
(1294, 'SLFL0NMSH0', 22, 15, NULL, 0),
(1295, 'SLFL0LZEF0', 22, 15, NULL, 0),
(1296, 'SLFL05AO90', 22, 15, NULL, 0),
(1297, 'SLFL08K990', 22, 15, NULL, 0),
(1298, 'SLFL0A7V70', 22, 15, NULL, 0),
(1299, 'SLFL05TZ40', 22, 15, NULL, 0),
(1300, 'SLFL0ENV50', 22, 15, NULL, 0),
(1301, 'SLFL0RJLF0', 22, 15, NULL, 0),
(1302, 'SLFL0QUNG0', 22, 15, NULL, 0),
(1303, 'SLFL0O8F0', 22, 15, NULL, 0),
(1304, 'SLFL0MYK10', 22, 15, NULL, 0),
(1305, 'SLFL0L1QC0', 22, 15, NULL, 0),
(1306, 'SLFL0JG540', 22, 15, NULL, 0),
(1307, 'SLFL0FBS10', 22, 15, NULL, 0),
(1308, 'SLFL0EYRE0', 22, 15, NULL, 0),
(1309, 'SLFL0BU9B0', 22, 15, NULL, 0),
(1310, 'SLFL00DEH0', 22, 15, NULL, 0),
(1311, 'SLFL0ZVL30', 22, 15, NULL, 0),
(1312, 'SLFL0A3H40', 22, 15, NULL, 0),
(1313, 'SLFL0ULRB0', 22, 15, NULL, 0),
(1314, 'SLFL04U060', 22, 15, NULL, 0),
(1315, 'SLFL08QCA0', 22, 15, NULL, 0),
(1316, 'SLFL037KA0', 22, 15, NULL, 0),
(1317, 'SLFL0X8H0', 22, 15, NULL, 0),
(1318, 'SLFL0RZSB0', 22, 15, NULL, 0),
(1319, 'SLFL0TCI10', 22, 15, NULL, 0),
(1320, 'SLFL0OV4G0', 22, 15, NULL, 0),
(1321, 'SLFL08NN60', 22, 15, NULL, 0),
(1322, 'SLFL0I9E50', 22, 15, NULL, 0),
(1323, 'SLFL0EBCF0', 22, 15, NULL, 0),
(1324, 'SLFL0LVE20', 22, 15, NULL, 0),
(1325, 'SLFL0TV9G0', 22, 15, NULL, 0),
(1326, 'SLFL05FBH0', 22, 15, NULL, 0),
(1327, 'SLFL0FLJ30', 22, 15, NULL, 0),
(1328, 'SLFL07TKB0', 22, 15, NULL, 0),
(1329, 'SLFL0TN6B0', 22, 15, NULL, 0),
(1330, 'SLFL007650', 22, 15, NULL, 0),
(1331, 'SLFL031Y0', 22, 15, NULL, 0),
(1332, 'SLFL0H3DA0', 22, 15, NULL, 0),
(1333, 'SLFL0ZMDE0', 22, 15, NULL, 0),
(1334, 'SLFL0B5V40', 22, 15, NULL, 0),
(1335, 'SLFL019N0', 22, 15, NULL, 0),
(1336, 'SLFL0T1Y70', 22, 15, NULL, 0),
(1337, 'SLFL0ZGF0', 22, 15, NULL, 0),
(1338, 'SLFL076E80', 22, 15, NULL, 0),
(1339, 'SLFL0KS8H0', 22, 15, NULL, 0),
(1340, 'SLFL01KZD0', 22, 15, NULL, 0),
(1341, 'SLFL0LQFA0', 22, 15, NULL, 0),
(1342, 'SLFL02RPD0', 22, 15, NULL, 0),
(1343, 'SLFL0K5M70', 22, 15, NULL, 0),
(1344, 'SLFL0KS910', 22, 15, NULL, 0),
(1345, 'SLFL0MJGB0', 22, 15, NULL, 0),
(1346, 'SLFL0RBF0', 22, 15, NULL, 0),
(1347, 'SLFL00DV70', 22, 15, NULL, 0),
(1348, 'SLFL005EF0', 22, 15, NULL, 0),
(1349, 'SLFL0YIUE0', 22, 15, NULL, 0),
(1350, 'SLFL0QUX0', 22, 15, NULL, 0),
(1351, 'SLFL0K8H50', 22, 15, NULL, 0),
(1352, 'SLFL0ILI80', 22, 15, NULL, 0),
(1353, 'SLFL09X80', 22, 15, NULL, 0),
(1354, 'SLFL0PELB0', 22, 15, NULL, 0),
(1355, 'SLFL0MR430', 22, 15, NULL, 0),
(1356, 'SLFL0H4MD0', 22, 15, NULL, 0),
(1357, 'SLFL0TVLF0', 22, 15, NULL, 0),
(1358, 'SLFL0RYP30', 22, 15, NULL, 0),
(1359, 'SLFL0NH1A0', 22, 15, NULL, 0),
(1360, 'SLFL0L2K10', 22, 15, NULL, 0),
(1361, 'SLFL0UOR20', 22, 15, NULL, 0),
(1362, 'SLFL0RGSB0', 22, 15, NULL, 0),
(1363, 'SLFL0I2RA0', 22, 15, NULL, 0),
(1364, 'SLFL0IEZ10', 22, 15, NULL, 0),
(1365, 'SLFL0FUKG0', 22, 15, NULL, 0),
(1366, 'SLFL06W740', 22, 15, NULL, 0),
(1367, 'SLFL08FR0', 22, 15, NULL, 0),
(1368, 'SLFL00QC70', 22, 15, NULL, 0),
(1369, 'SLFL0EVNI0', 22, 15, NULL, 0),
(1370, 'SLFL0U07H0', 22, 15, NULL, 0),
(1371, 'SLFL0W8C50', 22, 15, NULL, 0),
(1372, 'SLFL08WW20', 22, 15, NULL, 0),
(1373, 'SLFL0VVA80', 22, 15, NULL, 0),
(1374, 'SLFL0MA380', 22, 15, NULL, 0),
(1375, 'SLFL0RWC50', 22, 15, NULL, 0),
(1376, 'SLFL041JG0', 22, 15, NULL, 0),
(1377, 'SLFL060G60', 22, 15, NULL, 0),
(1378, 'SLFL0D9E90', 22, 15, NULL, 0),
(1379, 'SLFL0XHAA0', 22, 15, NULL, 0),
(1380, 'SLFL0GI6J0', 22, 15, NULL, 0),
(1381, 'SLFL0TFO0', 22, 15, NULL, 0),
(1382, 'SLFL0M8RC0', 22, 15, NULL, 0),
(1383, 'SLFL0ND750', 22, 15, NULL, 0),
(1384, 'SLFL04S8F0', 22, 15, NULL, 0),
(1385, 'SLFL0HCM10', 22, 15, NULL, 0),
(1386, 'SLFL0RN240', 22, 15, NULL, 0),
(1387, 'SLFL0HHMF0', 22, 15, NULL, 0),
(1388, 'SLFL05Q560', 22, 15, NULL, 0),
(1389, 'SLFL0UIF20', 22, 15, NULL, 0),
(1390, 'SLFL0CTQE0', 22, 15, NULL, 0),
(1391, 'SLFL0XQ340', 22, 15, NULL, 0),
(1392, 'SLFL0SGZ20', 22, 15, NULL, 0),
(1393, 'SLFL0HDO60', 22, 15, NULL, 0),
(1394, 'SLFL01LH20', 22, 15, NULL, 0),
(1395, 'SLFL0SSW70', 22, 15, NULL, 0),
(1396, 'SLFL0IATC0', 22, 15, NULL, 0),
(1397, 'SLFL0N9NE0', 22, 15, NULL, 0),
(1398, 'SLFL0HP4J0', 22, 15, NULL, 0),
(1399, 'SLFL0DSAH0', 22, 15, NULL, 0),
(1400, 'SLFL0QNT90', 22, 15, NULL, 0),
(1401, 'SLFL0L5T10', 22, 15, NULL, 0),
(1402, 'SLFL0532H0', 22, 15, NULL, 0),
(1403, 'SLFL01VUC0', 22, 15, NULL, 0),
(1404, 'SLFL0JP5D0', 22, 15, NULL, 0),
(1405, 'SLFL0PS3A0', 22, 15, NULL, 0),
(1406, 'SLFL02WU80', 22, 15, NULL, 0),
(1407, 'SLFL0LVQH0', 22, 15, NULL, 0),
(1408, 'SLFL0X9DD0', 22, 15, NULL, 0),
(1409, 'SLFL0RYLC0', 22, 15, NULL, 0),
(1410, 'SLFL0XX2D0', 22, 15, NULL, 0),
(1411, 'SLFL0OJR50', 22, 15, NULL, 0),
(1412, 'SLFL08QK40', 22, 15, NULL, 0),
(1413, 'SLFL083T0', 22, 15, NULL, 0),
(1414, 'SLFL0QQM40', 22, 15, NULL, 0),
(1415, 'SLFL0E0T80', 22, 15, NULL, 0),
(1416, 'SLFL042410', 22, 15, NULL, 0),
(1417, 'SLFL0U28C0', 22, 15, NULL, 0),
(1418, 'SLFL0ND910', 22, 15, NULL, 0),
(1419, 'SLFL08I9I0', 22, 15, NULL, 0),
(1420, 'SLFL0F8S70', 22, 15, NULL, 0),
(1421, 'SLFL0L3470', 22, 15, NULL, 0),
(1422, 'SLFL08BC50', 22, 15, NULL, 0),
(1423, 'SLFL0XJCE0', 22, 15, NULL, 0),
(1424, 'SLFL0RBA40', 22, 15, NULL, 0),
(1425, 'SLFL007UA0', 22, 15, NULL, 0),
(1426, 'SLFL0NJX0', 22, 15, NULL, 0),
(1427, 'SLFL0Z5YD0', 22, 15, NULL, 0),
(1428, 'SLFL0KRO10', 22, 15, NULL, 0),
(1429, 'SLFL09OJA0', 22, 15, NULL, 0),
(1430, 'SLFL0077E0', 22, 15, NULL, 0),
(1431, 'SLFL0F31C0', 22, 15, NULL, 0),
(1432, 'SLFL0KT840', 22, 15, NULL, 0),
(1433, 'SLFL04TO90', 22, 15, NULL, 0),
(1434, 'SLFL0RNQ60', 22, 15, NULL, 0),
(1435, 'SLFL0QJQ70', 22, 15, NULL, 0),
(1436, 'SLFL03GH50', 22, 15, NULL, 0),
(1437, 'SLFL0L9TF0', 22, 15, NULL, 0),
(1438, 'SLFL0E0N90', 22, 15, NULL, 0),
(1439, 'SLFL0TMJA0', 22, 15, NULL, 0),
(1440, 'SLFL0VXXH0', 22, 15, NULL, 0),
(1441, 'SLFL03WL0', 22, 15, NULL, 0),
(1442, 'SLFL0AGE20', 22, 15, NULL, 0),
(1443, 'SLFL0AXO80', 22, 15, NULL, 0),
(1444, 'SLFL01BO80', 22, 15, NULL, 0),
(1445, 'SLFL0CEM0', 22, 15, NULL, 0),
(1446, 'SLFL0WJMF0', 22, 15, NULL, 0),
(1447, 'SLFL0ZXED0', 22, 15, NULL, 0),
(1448, 'SLFL04T4E0', 22, 15, NULL, 0),
(1449, 'SLFL0OUT40', 22, 15, NULL, 0),
(1450, 'SLFL0FVL70', 22, 15, NULL, 0),
(1451, 'SLFL0ZUDB0', 22, 15, NULL, 0),
(1452, 'SLFL0YO3G0', 22, 15, NULL, 0),
(1453, 'SLFL042O0', 22, 15, NULL, 0),
(1454, 'SLFL08ECF0', 22, 15, NULL, 0),
(1455, 'SLFL0CHY80', 22, 15, NULL, 0),
(1456, 'SLFL0NXZ40', 22, 15, NULL, 0),
(1457, 'SLFL06S1C0', 22, 15, NULL, 0),
(1458, 'SLFL0PMJ10', 22, 15, NULL, 0),
(1459, 'SLFL0LQ0C0', 22, 15, NULL, 0),
(1460, 'SLFL09GB0', 22, 15, NULL, 0),
(1461, 'SLFL03DM50', 22, 15, NULL, 0),
(1462, 'SLFL06D280', 22, 15, NULL, 0),
(1463, 'SLFL0ZBCH0', 22, 15, NULL, 0),
(1464, 'SLFL0BXC60', 22, 15, NULL, 0),
(1465, 'SLFL0KEHE0', 22, 15, NULL, 0),
(1466, 'SLFL0G6A60', 22, 15, NULL, 0),
(1467, 'SLFL0EHSG0', 22, 15, NULL, 0),
(1468, 'SLFL0OME30', 22, 15, NULL, 0),
(1469, 'SLFL02PV60', 22, 15, NULL, 0),
(1470, 'SLFL0E0ED0', 22, 15, NULL, 0),
(1471, 'SLFL0SNP90', 22, 15, NULL, 0),
(1472, 'SLFL00WG90', 22, 15, NULL, 0),
(1473, 'SLFL03JWG0', 22, 15, NULL, 0),
(1474, 'SLFL04IPC0', 22, 15, NULL, 0),
(1475, 'SLFL0H8250', 22, 15, NULL, 0),
(1476, 'SLFL0PD730', 22, 15, NULL, 0),
(1477, 'SLFL02RCD0', 22, 15, NULL, 0),
(1478, 'SLFL0M49B0', 22, 15, NULL, 0),
(1479, 'SLFL0S2D90', 22, 15, NULL, 0),
(1480, 'SLFL0U7UA0', 22, 15, NULL, 0),
(1481, 'SLFL0OBF60', 22, 15, NULL, 0),
(1482, 'SLFL0R1Z40', 22, 15, NULL, 0),
(1483, 'SLFL0QYFA0', 22, 15, NULL, 0),
(1484, 'SLFL05W4E0', 22, 15, NULL, 0),
(1485, 'SLFL0F57E0', 22, 15, NULL, 0),
(1486, 'SLFL07T7F0', 22, 15, NULL, 0),
(1487, 'SLFL0CQC80', 22, 15, NULL, 0),
(1488, 'SLFL0FHAH0', 22, 15, NULL, 0),
(1489, 'SLFL0JWBF0', 22, 15, NULL, 0),
(1490, 'SLFL03J310', 22, 15, NULL, 0),
(1491, 'SLFL0Q5G10', 22, 15, NULL, 0),
(1492, 'SLFL05J3A0', 22, 15, NULL, 0),
(1493, 'SLFL0A8TB0', 22, 15, NULL, 0),
(1494, 'SLFL00GJD0', 22, 15, NULL, 0),
(1495, 'SLFL0ZHTD0', 22, 15, NULL, 0),
(1496, 'SLFL0IPC0', 22, 15, NULL, 0),
(1497, 'SLFL0IB6E0', 22, 15, NULL, 0),
(1498, 'SLFL0DRE60', 22, 15, NULL, 0),
(1499, 'SLFL091B50', 22, 15, NULL, 0),
(1500, 'SLFL07TJE0', 22, 15, NULL, 0),
(1501, 'SLFL0I0AD0', 22, 15, NULL, 0),
(1502, 'SLFL0ML280', 22, 15, NULL, 0),
(1503, 'SLFL07KM30', 22, 15, NULL, 0),
(1504, 'SLFL01J0F0', 22, 15, NULL, 0),
(1505, 'SLFL0I3970', 22, 15, NULL, 0),
(1506, 'SLFL0VJD30', 22, 15, NULL, 0),
(1507, 'SLFL06WVE0', 22, 15, NULL, 0),
(1508, 'SLFL01Y9J0', 22, 15, NULL, 0),
(1509, 'SLFL05QRF0', 22, 15, NULL, 0),
(1510, 'SLFL0VYEC0', 22, 15, NULL, 0),
(1511, 'SLFL043YD0', 22, 15, NULL, 0),
(1512, 'SLFL00I8C0', 22, 15, NULL, 0),
(1513, 'SLFL0HT1A0', 22, 15, NULL, 0),
(1514, 'SLFL0HQ640', 22, 15, NULL, 0),
(1515, 'SLFL00S650', 22, 15, NULL, 0),
(1516, 'SLFL0ZAO30', 22, 15, NULL, 0),
(1517, 'SLFL04GH70', 22, 15, NULL, 0),
(1518, 'SLFL09BUB0', 22, 15, NULL, 0),
(1519, 'SLFL0QJE10', 22, 15, NULL, 0),
(1520, 'SLFL0KKZI0', 22, 15, NULL, 0),
(1521, 'SLFL0N9320', 22, 15, NULL, 0),
(1522, 'SLFL0JP0A0', 22, 15, NULL, 0),
(1523, 'SLFL0X6P10', 22, 15, NULL, 0),
(1524, 'SLFL0MF6F0', 22, 15, NULL, 0),
(1525, 'SLFL05LUE0', 22, 15, NULL, 0),
(1526, 'SLFL0OZ7B0', 22, 15, NULL, 0),
(1527, 'SLFL0U9AB0', 22, 15, NULL, 0),
(1528, 'SLFL0A4PB0', 22, 15, NULL, 0),
(1529, 'SLFL06N460', 22, 15, NULL, 0),
(1530, 'SLFL00X0D0', 22, 15, NULL, 0),
(1531, 'SLFL0T4KF0', 22, 15, NULL, 0),
(1532, 'SLFL0KUZI0', 22, 15, NULL, 0),
(1533, 'SLFL0TQ0B0', 22, 15, NULL, 0),
(1534, 'SLFL0JV3I0', 22, 15, NULL, 0),
(1535, 'SLFL0HFL40', 22, 15, NULL, 0),
(1536, 'SLFL0ZFHI0', 22, 15, NULL, 0),
(1537, 'SLFL0IJPB0', 22, 15, NULL, 0),
(1538, 'SLFL0G3X50', 22, 15, NULL, 0),
(1539, 'SLFL0MYPB0', 22, 15, NULL, 0),
(1540, 'SLFL02WND0', 22, 15, NULL, 0),
(1541, 'SLFL0OKPG0', 22, 15, NULL, 0),
(1542, 'SLFL0GWPI0', 22, 15, NULL, 0),
(1543, 'SLFL0TCXB0', 22, 15, NULL, 0),
(1544, 'SLFL0CMZ50', 22, 15, NULL, 0),
(1545, 'SLFL0V5M0', 22, 15, NULL, 0),
(1546, 'SLFL05KRE0', 22, 15, NULL, 0),
(1547, 'SLFL0ZQS40', 22, 15, NULL, 0),
(1548, 'SLFL05BR20', 22, 15, NULL, 0),
(1549, 'SLFL0TTO70', 22, 15, NULL, 0),
(1550, 'SLFL0HQR60', 22, 15, NULL, 0),
(1551, 'SLFL0XY470', 22, 15, NULL, 0),
(1552, 'SLFL0FNXB0', 22, 15, NULL, 0),
(1553, 'SLFL0JT310', 22, 15, NULL, 0),
(1554, 'SLFL066A0', 22, 15, NULL, 0),
(1555, 'SLFL06V9H0', 22, 15, NULL, 0),
(1556, 'SLFL0W7H30', 22, 15, NULL, 0),
(1557, 'SLFL0VK1H0', 22, 15, NULL, 0),
(1558, 'SLFL0MOG90', 22, 15, NULL, 0),
(1559, 'SLFL0H21A0', 22, 15, NULL, 0),
(1560, 'SLFL00G6E0', 22, 15, NULL, 0),
(1561, 'SLFL0KIKE0', 22, 15, NULL, 0),
(1562, 'SLFL0QMT80', 22, 15, NULL, 0),
(1563, 'SLFL0YI7A0', 22, 15, NULL, 0),
(1564, 'SLFL0X1M0', 22, 15, NULL, 0),
(1565, 'SLFL0D4ND0', 22, 15, NULL, 0),
(1566, 'SLFL0RY9D0', 22, 15, NULL, 0),
(1567, 'SLFL0SEWC0', 22, 15, NULL, 0),
(1568, 'SLFL0GB0E0', 22, 15, NULL, 0),
(1569, 'SLFL07M580', 22, 15, NULL, 0),
(1570, 'SLFL0PRK50', 22, 15, NULL, 0),
(1571, 'SLFL0S0TE0', 22, 15, NULL, 0),
(1572, 'SLFL0LV3B0', 22, 15, NULL, 0),
(1573, 'SLFL09CJ90', 22, 15, NULL, 0),
(1574, 'SLFL0T4E20', 22, 15, NULL, 0),
(1575, 'SLFL0CKR80', 22, 15, NULL, 0),
(1576, 'SLFL08SYF0', 22, 15, NULL, 0),
(1577, 'SLFL0RVQ30', 22, 15, NULL, 0),
(1578, 'SLFL0OZK50', 22, 15, NULL, 0),
(1579, 'SLFL0IY4H0', 22, 15, NULL, 0),
(1580, 'SLFL0KND90', 22, 15, NULL, 0),
(1581, 'SLFL08LKB0', 22, 15, NULL, 0),
(1582, 'SLFL073440', 22, 15, NULL, 0),
(1583, 'SLFL06K4G0', 22, 15, NULL, 0),
(1584, 'SLFL0UAL90', 22, 15, NULL, 0),
(1585, 'SLFL091MC0', 22, 15, NULL, 0),
(1586, 'SLFL01NO10', 22, 15, NULL, 0),
(1587, 'SLFL06F7J0', 22, 15, NULL, 0),
(1588, 'SLFL0OWW60', 22, 15, NULL, 0),
(1589, 'SLFL0Q3160', 22, 15, NULL, 0),
(1590, 'SLFL0C6TA0', 22, 15, NULL, 0),
(1591, 'SLFL0K32C0', 22, 15, NULL, 0),
(1592, 'SLFL0RSO60', 22, 15, NULL, 0),
(1593, 'SLFL0D1HI0', 22, 15, NULL, 0),
(1594, 'SLFL0JBFA0', 22, 15, NULL, 0),
(1595, 'SLFL00MQB0', 22, 15, NULL, 0),
(1596, 'SLFL03FWF0', 22, 15, NULL, 0),
(1597, 'SLFL07LED0', 22, 15, NULL, 0),
(1598, 'SLFL0RKZ20', 22, 15, NULL, 0),
(1599, 'SLFL05CBI0', 22, 15, NULL, 0),
(1600, 'SLFL0HAE0', 22, 15, NULL, 0),
(1601, 'SLFL0XN350', 22, 15, NULL, 0),
(1602, 'SLFL0GRU40', 22, 15, NULL, 0),
(1603, 'SLFL0MMLD0', 22, 15, NULL, 0),
(1604, 'SLFL0O5AI0', 22, 15, NULL, 0),
(1605, 'SLFL0OLZ80', 22, 15, NULL, 0),
(1606, 'SLFL0D1ID0', 22, 15, NULL, 0),
(1607, 'SLFL054E0', 22, 15, NULL, 0),
(1608, 'SLFL0SYAC0', 22, 15, NULL, 0),
(1609, 'SLFL0UDXF0', 22, 15, NULL, 0),
(1610, 'SLFL0XKNF0', 22, 15, NULL, 0),
(1611, 'SLFL06JND0', 22, 15, NULL, 0),
(1612, 'SLFL038570', 22, 15, NULL, 0),
(1613, 'SLFL0ENX80', 22, 15, NULL, 0),
(1614, 'SLFL0UWB60', 22, 15, NULL, 0),
(1615, 'SLFL05OFI0', 22, 15, NULL, 0),
(1616, 'SLFL0UWE40', 22, 15, NULL, 0),
(1617, 'SLFL0DWVI0', 22, 15, NULL, 0),
(1618, 'SLFL0PPSA0', 22, 15, NULL, 0),
(1619, 'SLFL0KRH40', 22, 15, NULL, 0),
(1620, 'SLFL0MPKE0', 22, 15, NULL, 0),
(1621, 'SLFL03DP60', 22, 15, NULL, 0),
(1622, 'SLFL0G7GF0', 22, 15, NULL, 0),
(1623, 'SLFL0K6P80', 22, 15, NULL, 0),
(1624, 'SLFL0S5EI0', 22, 15, NULL, 0),
(1625, 'SLFL0WPFA0', 22, 15, NULL, 0),
(1626, 'SLFL0BCFD0', 22, 15, NULL, 0),
(1627, 'SLFL0EB5D0', 22, 15, NULL, 0),
(1628, 'SLFL0RRY10', 22, 15, NULL, 0),
(1629, 'SLFL0DN4D0', 22, 15, NULL, 0),
(1630, 'SLFL0VVSC0', 22, 15, NULL, 0),
(1631, 'SLFL0EV6I0', 22, 15, NULL, 0),
(1632, 'SLFL0M0L50', 22, 15, NULL, 0),
(1633, 'SLFL0S3M30', 22, 15, NULL, 0),
(1634, 'SLFL0NRPA0', 22, 15, NULL, 0),
(1635, 'SLFL0FIS50', 22, 15, NULL, 0),
(1636, 'SLFL07E410', 22, 15, NULL, 0),
(1637, 'SLFL0GL4D0', 22, 15, NULL, 0),
(1638, 'SLFL0MDM90', 22, 15, NULL, 0),
(1639, 'SLFL0NA5G0', 22, 15, NULL, 0),
(1640, 'SLFL03ZJI0', 22, 15, NULL, 0),
(1641, 'SLFL0MA2C0', 22, 15, NULL, 0),
(1642, 'SLFL03YU90', 22, 15, NULL, 0),
(1643, 'SLFL073W0', 22, 15, NULL, 0),
(1644, 'SLFL0LO2F0', 22, 15, NULL, 0),
(1645, 'SLFL0DDPG0', 22, 15, NULL, 0),
(1646, 'SLFL0RVU30', 22, 15, NULL, 0),
(1647, 'SLFL0WZN70', 22, 15, NULL, 0),
(1648, 'SLFL0T4U90', 22, 15, NULL, 0),
(1649, 'SLFL0HEM50', 22, 15, NULL, 0),
(1650, 'SLFL0DKFH0', 22, 15, NULL, 0),
(1651, 'SLFL09BH40', 22, 15, NULL, 0),
(1652, 'SLFL0A7S60', 22, 15, NULL, 0),
(1653, 'SLFL0NFR40', 22, 15, 17, 1),
(1654, 'SLFL0CR350', 22, 15, 17, 1),
(1655, 'SLFL054560', 22, 15, 17, 1),
(1656, 'SLFL0KXV30', 22, 15, 17, 1),
(1657, 'SLFL0Y8Y0', 22, 15, 17, 1),
(1658, 'SLFL076H80', 22, 15, 6, 1),
(1659, 'SLFL0D9J20', 22, 15, 6, 1),
(1660, 'SLFL049Z30', 22, 15, 6, 1),
(1661, 'SLFL058LD0', 22, 15, 6, 1),
(1662, 'SLFL0FF050', 22, 15, 6, 1),
(1663, 'SLFL0E7OI0', 22, 15, 6, 1),
(1664, 'SLFL0LKY50', 22, 15, 6, 1),
(1665, 'SLFL0MB180', 22, 15, 6, 1),
(1666, 'SLFL0SYF90', 22, 15, 6, 1),
(1667, 'SLFL021740', 22, 15, 6, 1),
(1668, 'SLFL06UQG0', 22, 15, 17, 1),
(1669, 'SLFL0HXM20', 22, 15, 17, 1),
(1670, 'SLFL0K6VH0', 22, 15, 17, 1),
(1671, 'SLFL0UTI70', 22, 15, 17, 1),
(1672, 'SLFL0QNTA0', 22, 15, 17, 1),
(1673, 'SLFL0031F0', 22, 15, 17, 1),
(1674, 'SLFL0BWP10', 22, 15, 17, 1),
(1675, 'SLFL0M5850', 22, 15, 17, 1),
(1676, 'SLFL08IZ0', 22, 15, 17, 1),
(1677, 'SLFL0VEVI0', 22, 15, 17, 1),
(1678, 'SLFL0R4UD0', 23, 17, NULL, 0),
(1679, 'SLFL0CY680', 23, 17, NULL, 0),
(1680, 'SLFL0AGN60', 23, 17, NULL, 0),
(1681, 'SLFL07UJ20', 23, 17, NULL, 0),
(1682, 'SLFL0MSV50', 23, 17, NULL, 0),
(1683, 'SLFL05AXF0', 23, 17, NULL, 0),
(1684, 'SLFL09H9G0', 23, 17, NULL, 0),
(1685, 'SLFL0NC7B0', 23, 17, NULL, 0),
(1686, 'SLFL023A90', 23, 17, NULL, 0),
(1687, 'SLFL03P3E0', 23, 17, NULL, 0),
(1688, 'SLFL02XK40', 23, 17, NULL, 0),
(1689, 'SLFL0DED40', 23, 17, NULL, 0),
(1690, 'SLFL0FUSH0', 23, 17, NULL, 0),
(1691, 'SLFL0H18E0', 23, 17, NULL, 0),
(1692, 'SLFL0XKRI0', 23, 17, NULL, 0),
(1693, 'SLFL036010', 23, 17, NULL, 0),
(1694, 'SLFL073NC0', 23, 17, NULL, 0),
(1695, 'SLFL00ML0', 23, 17, NULL, 0),
(1696, 'SLFL0L2CB0', 23, 17, NULL, 0),
(1697, 'SLFL0QT4E0', 23, 17, NULL, 0),
(1698, 'SLFL0WOH60', 23, 17, NULL, 0),
(1699, 'SLFL0V87G0', 23, 17, NULL, 0),
(1700, 'SLFL0Z87H0', 23, 17, NULL, 0),
(1701, 'SLFL0KTTI0', 23, 17, NULL, 0),
(1702, 'SLFL0QB0C0', 23, 17, NULL, 0),
(1703, 'SLFL0D56H0', 23, 17, NULL, 0),
(1704, 'SLFL0E3SD0', 23, 17, NULL, 0),
(1705, 'SLFL09SN50', 23, 17, NULL, 0),
(1706, 'SLFL07Q480', 23, 17, NULL, 0),
(1707, 'SLFL02ND20', 23, 17, NULL, 0),
(1708, 'SLFL0CR1J0', 23, 17, NULL, 0),
(1709, 'SLFL0ROIB0', 23, 17, NULL, 0),
(1710, 'SLFL01BO20', 23, 17, NULL, 0),
(1711, 'SLFL0B93C0', 23, 17, NULL, 0),
(1712, 'SLFL0LAY10', 23, 17, NULL, 0),
(1713, 'SLFL0HQO20', 23, 17, NULL, 0),
(1714, 'SLFL0H1UB0', 23, 17, NULL, 0),
(1715, 'SLFL0ICFC0', 23, 17, NULL, 0),
(1716, 'SLFL0GAG10', 23, 17, NULL, 0),
(1717, 'SLFL05SN50', 23, 17, NULL, 0),
(1718, 'SLFL0E0580', 23, 17, NULL, 0),
(1719, 'SLFL08OK70', 23, 17, NULL, 0),
(1720, 'SLFL0F87C0', 23, 17, NULL, 0),
(1721, 'SLFL0MBF90', 23, 17, NULL, 0),
(1722, 'SLFL0YJIG0', 23, 17, NULL, 0),
(1723, 'SLFL0N5YB0', 23, 17, NULL, 0),
(1724, 'SLFL0GZ9H0', 23, 17, NULL, 0),
(1725, 'SLFL0QEPH0', 23, 17, NULL, 0),
(1726, 'SLFL0PYCD0', 23, 17, NULL, 0),
(1727, 'SLFL0TCQG0', 23, 17, NULL, 0),
(1728, 'SLFL0X5L30', 23, 17, NULL, 0),
(1729, 'SLFL0T70E0', 23, 17, NULL, 0),
(1730, 'SLFL0WHNF0', 23, 17, NULL, 0),
(1731, 'SLFL0M70C0', 23, 17, NULL, 0),
(1732, 'SLFL0DTIF0', 23, 17, NULL, 0),
(1733, 'SLFL0IK440', 23, 17, NULL, 0),
(1734, 'SLFL0GTZI0', 23, 17, NULL, 0),
(1735, 'SLFL0ES530', 23, 17, NULL, 0),
(1736, 'SLFL0NW510', 23, 17, NULL, 0),
(1737, 'SLFL0HUAH0', 23, 17, NULL, 0),
(1738, 'SLFL0HD6B0', 23, 17, NULL, 0),
(1739, 'SLFL0B2BF0', 23, 17, NULL, 0),
(1740, 'SLFL07U950', 23, 17, NULL, 0),
(1741, 'SLFL0MIMB0', 23, 17, NULL, 0),
(1742, 'SLFL0HWJE0', 23, 17, NULL, 0),
(1743, 'SLFL0EYZE0', 23, 17, NULL, 0),
(1744, 'SLFL00EVI0', 23, 17, NULL, 0),
(1745, 'SLFL0C4G30', 23, 17, NULL, 0),
(1746, 'SLFL0J2J90', 23, 17, NULL, 0),
(1747, 'SLFL0CEPH0', 23, 17, NULL, 0),
(1748, 'SLFL0DI470', 23, 17, NULL, 0),
(1749, 'SLFL0JNL0', 23, 17, NULL, 0),
(1750, 'SLFL00ABC0', 23, 17, NULL, 0),
(1751, 'SLFL0XBV60', 23, 17, NULL, 0),
(1752, 'SLFL0KU080', 23, 17, NULL, 0),
(1753, 'SLFL0EQTC0', 23, 17, NULL, 0),
(1754, 'SLFL0O8A10', 23, 17, NULL, 0),
(1755, 'SLFL0XQ8I0', 23, 17, NULL, 0),
(1756, 'SLFL0OZ070', 23, 17, NULL, 0),
(1757, 'SLFL0EXFI0', 23, 17, NULL, 0),
(1758, 'SLFL0CRYE0', 23, 17, NULL, 0),
(1759, 'SLFL0CXUA0', 23, 17, NULL, 0),
(1760, 'SLFL0I5YE0', 23, 17, NULL, 0),
(1761, 'SLFL091690', 23, 17, NULL, 0),
(1762, 'SLFL0LNW90', 23, 17, NULL, 0),
(1763, 'SLFL0UYI20', 23, 17, NULL, 0),
(1764, 'SLFL0DIL10', 23, 17, NULL, 0),
(1765, 'SLFL03PD30', 23, 17, NULL, 0),
(1766, 'SLFL0U73E0', 23, 17, NULL, 0),
(1767, 'SLFL0ZFYE0', 23, 17, NULL, 0),
(1768, 'SLFL01LO90', 23, 17, NULL, 0),
(1769, 'SLFL014CC0', 23, 17, NULL, 0),
(1770, 'SLFL0JHX60', 23, 17, NULL, 0),
(1771, 'SLFL0OKE60', 23, 17, NULL, 0),
(1772, 'SLFL002W70', 23, 17, NULL, 0),
(1773, 'SLFL0UAS40', 23, 17, NULL, 0),
(1774, 'SLFL0ZKK60', 23, 17, NULL, 0),
(1775, 'SLFL0X95I0', 23, 17, NULL, 0),
(1776, 'SLFL06S9B0', 23, 17, NULL, 0),
(1777, 'SLFL0WMT0', 23, 17, NULL, 0),
(1778, 'SLFL0BRV20', 23, 17, NULL, 0),
(1779, 'SLFL09U0J0', 23, 17, NULL, 0),
(1780, 'SLFL0DCKF0', 23, 17, NULL, 0),
(1781, 'SLFL047T20', 23, 17, NULL, 0),
(1782, 'SLFL0QSV40', 23, 17, NULL, 0),
(1783, 'SLFL05PAI0', 23, 17, NULL, 0),
(1784, 'SLFL0A4IH0', 23, 17, NULL, 0),
(1785, 'SLFL0H2N60', 23, 17, NULL, 0),
(1786, 'SLFL0U1DE0', 23, 17, NULL, 0),
(1787, 'SLFL00KNH0', 23, 17, NULL, 0),
(1788, 'SLFL05R1B0', 23, 17, NULL, 0),
(1789, 'SLFL0UTJI0', 23, 17, NULL, 0),
(1790, 'SLFL0SW810', 23, 17, NULL, 0),
(1791, 'SLFL07H5G0', 23, 17, NULL, 0),
(1792, 'SLFL0L3AG0', 23, 17, NULL, 0),
(1793, 'SLFL0NJB20', 23, 17, NULL, 0),
(1794, 'SLFL0DLZ20', 23, 17, NULL, 0),
(1795, 'SLFL0NS610', 23, 17, NULL, 0),
(1796, 'SLFL09OF30', 23, 17, NULL, 0),
(1797, 'SLFL0AKSA0', 23, 17, NULL, 0),
(1798, 'SLFL0SQO60', 23, 17, NULL, 0),
(1799, 'SLFL04DAI0', 23, 17, NULL, 0),
(1800, 'SLFL0FEOG0', 23, 17, NULL, 0),
(1801, 'SLFL0VKF60', 23, 17, NULL, 0),
(1802, 'SLFL0SWVI0', 23, 17, NULL, 0),
(1803, 'SLFL0T77E0', 23, 17, NULL, 0),
(1804, 'SLFL092G70', 23, 17, NULL, 0),
(1805, 'SLFL0EGQ10', 23, 17, NULL, 0),
(1806, 'SLFL0RYEG0', 23, 17, NULL, 0),
(1807, 'SLFL0H1540', 23, 17, NULL, 0),
(1808, 'SLFL08NF10', 23, 17, NULL, 0),
(1809, 'SLFL03VTG0', 23, 17, NULL, 0),
(1810, 'SLFL0G8LF0', 23, 17, NULL, 0),
(1811, 'SLFL06ONC0', 23, 17, NULL, 0),
(1812, 'SLFL0EPB90', 23, 17, NULL, 0),
(1813, 'SLFL0C0ZG0', 23, 17, NULL, 0),
(1814, 'SLFL0FRSE0', 23, 17, NULL, 0),
(1815, 'SLFL031L20', 23, 17, NULL, 0),
(1816, 'SLFL0HPH90', 23, 17, NULL, 0),
(1817, 'SLFL0CQH70', 23, 17, NULL, 0),
(1818, 'SLFL03KK40', 23, 17, NULL, 0),
(1819, 'SLFL0I8YH0', 23, 17, NULL, 0),
(1820, 'SLFL00IBI0', 23, 17, NULL, 0),
(1821, 'SLFL0ZL1G0', 23, 17, NULL, 0),
(1822, 'SLFL0VFND0', 23, 17, NULL, 0),
(1823, 'SLFL0PVZ0', 23, 17, NULL, 0),
(1824, 'SLFL083L60', 23, 17, NULL, 0),
(1825, 'SLFL09OBG0', 23, 17, NULL, 0),
(1826, 'SLFL0DEN0', 23, 17, NULL, 0),
(1827, 'SLFL0ECP60', 23, 17, NULL, 0),
(1828, 'SLFL0PHLD0', 23, 17, NULL, 0),
(1829, 'SLFL07GAB0', 23, 17, NULL, 0),
(1830, 'SLFL0CSXG0', 23, 17, NULL, 0),
(1831, 'SLFL0EHO10', 23, 17, NULL, 0),
(1832, 'SLFL0WWNG0', 23, 17, NULL, 0),
(1833, 'SLFL0KG2B0', 23, 17, NULL, 0),
(1834, 'SLFL094Z20', 23, 17, NULL, 0),
(1835, 'SLFL0Q5220', 23, 17, NULL, 0),
(1836, 'SLFL01HX60', 23, 17, NULL, 0),
(1837, 'SLFL0G0Z40', 23, 17, NULL, 0),
(1838, 'SLFL00FYC0', 23, 17, NULL, 0),
(1839, 'SLFL0Q5U50', 23, 17, NULL, 0),
(1840, 'SLFL0P2R0', 23, 17, NULL, 0),
(1841, 'SLFL0U64I0', 23, 17, NULL, 0),
(1842, 'SLFL0BWFC0', 23, 17, NULL, 0),
(1843, 'SLFL0CF8E0', 23, 17, NULL, 0),
(1844, 'SLFL0Q9SD0', 23, 17, NULL, 0),
(1845, 'SLFL0A4K90', 23, 17, NULL, 0),
(1846, 'SLFL0H5HI0', 23, 17, NULL, 0),
(1847, 'SLFL0XF8H0', 23, 17, NULL, 0),
(1848, 'SLFL0MJG80', 23, 17, NULL, 0),
(1849, 'SLFL0WQ9D0', 23, 17, NULL, 0),
(1850, 'SLFL0AMH40', 23, 17, NULL, 0),
(1851, 'SLFL0KXVF0', 23, 17, NULL, 0),
(1852, 'SLFL0MSVA0', 23, 17, NULL, 0),
(1853, 'SLFL0D07G0', 23, 17, NULL, 0),
(1854, 'SLFL0E39J0', 23, 17, NULL, 0),
(1855, 'SLFL0X72J0', 23, 17, NULL, 0),
(1856, 'SLFL02YS20', 23, 17, NULL, 0),
(1857, 'SLFL0LT8B0', 23, 17, NULL, 0),
(1858, 'SLFL01LZI0', 23, 17, NULL, 0),
(1859, 'SLFL0UNR90', 23, 17, NULL, 0),
(1860, 'SLFL02LO70', 23, 17, NULL, 0),
(1861, 'SLFL0N1O20', 23, 17, NULL, 0),
(1862, 'SLFL0ZUJ60', 23, 17, NULL, 0),
(1863, 'SLFL0OT280', 23, 17, NULL, 0),
(1864, 'SLFL0RFV90', 23, 17, NULL, 0),
(1865, 'SLFL057ZB0', 23, 17, NULL, 0),
(1866, 'SLFL0JCVF0', 23, 17, NULL, 0),
(1867, 'SLFL09W990', 23, 17, NULL, 0),
(1868, 'SLFL06REC0', 23, 17, NULL, 0),
(1869, 'SLFL0AEQ90', 23, 17, NULL, 0),
(1870, 'SLFL087490', 23, 17, NULL, 0),
(1871, 'SLFL006G90', 23, 17, NULL, 0),
(1872, 'SLFL0BB8I0', 23, 17, NULL, 0),
(1873, 'SLFL0O6M80', 23, 17, NULL, 0),
(1874, 'SLFL02B6C0', 23, 17, NULL, 0),
(1875, 'SLFL0868D0', 23, 17, NULL, 0),
(1876, 'SLFL0LZO80', 23, 17, NULL, 0),
(1877, 'SLFL025J80', 23, 17, NULL, 0),
(1878, 'SLFL07OBC0', 23, 17, NULL, 0),
(1879, 'SLFL0UN2J0', 23, 17, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`type_id`, `type_name`) VALUES
(1, 'Conference'),
(2, 'Party/Social gathering'),
(3, 'Dinner/Gala'),
(4, 'Game/Competition'),
(5, 'Concert');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `password` varchar(522) NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'https://img.icons8.com/emoji/58/000000/man-dark-skin-tone.png',
  `isBlocked` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `username`, `email`, `phone`, `location`, `password`, `avatar`, `isBlocked`) VALUES
(1, 'NRG', 'RADIO', 'NRG RADIO Ke', 'nrgradio@email.co.ke', '0725468965', 'Nairobi', '$2y$10$l2UKcv9b6BOcph2hK4Dnce31X6RgyGpvJvZOPS9N4MRUaOK9ButnK', 'https://img.icons8.com/emoji/58/000000/man-dark-skin-tone.png', 0),
(2, 'Main', 'Switch', 'Main Switch_254', 'mswitch@email.ac.ke', '0789987657', 'Nairobi', '$2y$10$l2UKcv9b6BOcph2hK4Dnce31X6RgyGpvJvZOPS9N4MRUaOK9ButnK', 'https://img.icons8.com/emoji/58/000000/man-dark-skin-tone.png', 0),
(3, 'Jim', 'Juma', 'real_J_Juma', 'jjuma@gmail.com', '0789098765', 'Mombasa', '$2y$10$l2UKcv9b6BOcph2hK4Dnce31X6RgyGpvJvZOPS9N4MRUaOK9ButnK', 'https://img.icons8.com/emoji/58/000000/man-dark-skin-tone.png', 0),
(4, 'Lisa', 'Kudrow', 'Pheobe_ph', 'pheubo@friends.en.us', '0789876567', 'Rongai', '$2y$10$l2UKcv9b6BOcph2hK4Dnce31X6RgyGpvJvZOPS9N4MRUaOK9ButnK', 'https://img.icons8.com/emoji/58/000000/man-dark-skin-tone.png', 0),
(6, 'Chandler', 'Bing', 'Chanandler', 'djack@test.com', '0712345698', 'Nairobi, Kenya', '$2y$10$VhAPpkz98rMvZHxsz9KkveSUlIwNC8Tqj6UGuPpIJ5g5eCA56OXyO', 'https://img.icons8.com/emoji/58/000000/man-dark-skin-tone.png', 0),
(7, 'david', 'odero', 'mondi', 'omodidave@gmail.com', '0717296490', 'mombasa', '$2y$10$D9m7XPvDkX3focb6qH5k9e.DIajA/WUOGaWjqN1YKt9UT9s/gNFua', 'https://img.icons8.com/emoji/58/000000/man-dark-skin-tone.png', 0),
(8, 'Allan', 'Abere', 'Kondoo wa kutupa', 'knd@Trash.co.ke', '0765453678', 'Rongai', '$2y$10$5l2uXtrxLVvy7axqqZtSaeiIUEye2EIWtT.c7OlghMk3dBZHntAEK', 'https://img.icons8.com/emoji/58/000000/man-dark-skin-tone.png', 0),
(9, 'Allan', 'Abere', 'Kondoo wa kutupa', 'knd@Trash.co.ke', '0765453678', 'Rongai, Kenya', '$2y$10$YgD1H0Vflvgr95J7lGyDheIzU/9nPbFQ32tq1SUwEjBYfLj6a3n8.', 'https://img.icons8.com/emoji/58/000000/man-dark-skin-tone.png', 0),
(10, 'Chandler', 'Bing', 'Mr Bing', 'sam@gmail.com', '0712345698', 'Rongai, Kenya', '$2y$10$Y3KaD/6HQ5uFuMrrupdjq.1LXEInjoh7l7LHONpFN5QK077Eu6reK', 'https://img.icons8.com/emoji/58/000000/man-dark-skin-tone.png', 0),
(11, 'des', 'Abere', 'mondi', 'djack009@gmail.com', '0765453678', 'Rongai, Kenya', '$2y$10$jVuae.74BXg4/LHB2QnpC.HBU7UqqlzDvubCILjLeRfHCqQAavyda', 'https://img.icons8.com/emoji/58/000000/man-dark-skin-tone.png', 0),
(14, 'Juma', 'mond', 'mondi', 'sam@gmail.com', '0717296490', 'Rongai, Kenya', '$2y$10$s/RwwrOV1AenAOBx8rh3k.1g5ydCx1EMe/yt89tZ9hddgU1qb3m4G', 'https://img.icons8.com/emoji/58/000000/man-dark-skin-tone.png', 0),
(15, 'Juma', 'Genga', 'jgenga', 'jgenga123@gmail.com', '0789876567', 'Mukuru, Kenya', '$2y$10$zNwloobiJ6BZHy1NtR0RbuyMBJXrEvhlkSZj3JHnNK8j4Dw92ruG2', 'https://img.icons8.com/emoji/58/000000/man-dark-skin-tone.png', 0),
(16, 'Jamin', 'Keya', 'JKey123', 'jaminKeya123@gmail.com', '0797876567', 'Mukuru, Kenya', '$2y$10$FqpsmrA7xDtswLqUkubsLOMYNjR8sV7Gpo4VMw.230mT9VoZ6BM3S', 'https://img.icons8.com/emoji/58/000000/man-dark-skin-tone.png', 0),
(17, 'New', 'User_1', 'am_new_', 'sam_new@test.com', '0765453678', 'Rongai, Kenya', '$2y$10$oDBhDtTlXFhRYFtcAB2sl.d.lcNGJGUt/69L91.7YAFuMMmhOBvwS', 'https://img.icons8.com/emoji/58/000000/man-dark-skin-tone.png', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_ticket`
-- (See below for the actual view)
--
CREATE TABLE `v_ticket` (
`event` int(11)
,`evn_id` int(11)
,`evn_name` varchar(255)
,`created_by` varchar(255)
,`Total_revenue` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Structure for view `attendance`
--
DROP TABLE IF EXISTS `attendance`;

CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `attendance`  AS  select `attending`.`event_id` AS `party_id`,`events`.`event_id` AS `event_id`,`events`.`name` AS `name`,`events`.`evn_location` AS `evn_location`,`events`.`description` AS `description`,`events`.`start_date` AS `start_date`,`events`.`start_time` AS `start_time`,`events`.`end_date` AS `end_date`,`events`.`end_time` AS `end_time`,`events`.`price` AS `price`,`events`.`user_id` AS `host_id`,`attending`.`user_id` AS `atendee_id`,`users`.`first_name` AS `first_name`,`users`.`last_name` AS `last_name`,`users`.`username` AS `username`,`users`.`email` AS `email`,`users`.`phone` AS `phone`,`users`.`location` AS `location` from ((`attending` left join `events` on(`attending`.`event_id` = `events`.`event_id`)) left join `users` on(`attending`.`user_id` = `users`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `follows_table`
--
DROP TABLE IF EXISTS `follows_table`;

CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `follows_table`  AS  select `folowers`.`user_id` AS `User`,`u`.`first_name` AS `ufname`,`u`.`last_name` AS `ulname`,`u`.`username` AS `uuname`,`u`.`email` AS `uemail`,`u`.`phone` AS `uphone`,`u`.`location` AS `ulocation`,`folowers`.`folower_id` AS `Follower`,`f`.`first_name` AS `ffname`,`f`.`last_name` AS `flname`,`f`.`username` AS `funame`,`f`.`email` AS `femail`,`f`.`phone` AS `fphone`,`f`.`location` AS `flocation` from ((`folowers` left join `users` `u` on(`folowers`.`user_id` = `u`.`user_id`)) left join `users` `f` on(`folowers`.`folower_id` = `f`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `past_events`
--
DROP TABLE IF EXISTS `past_events`;

CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `past_events`  AS  select `events`.`event_id` AS `event_id`,`events`.`name` AS `name`,`events`.`evn_location` AS `evn_location`,`events`.`description` AS `description`,`events`.`type_id` AS `type_id`,`events`.`category_id` AS `category_id`,`events`.`start_date` AS `start_date`,`events`.`start_time` AS `start_time`,`events`.`end_date` AS `end_date`,`events`.`end_time` AS `end_time`,`events`.`capacity` AS `capacity`,`events`.`price` AS `price`,`events`.`user_id` AS `user_id`,`events`.`event_poster` AS `event_poster`,`events`.`hasTickets` AS `hasTickets` from `events` where timestampdiff(DAY,`events`.`end_date`,current_timestamp()) >= 0 ;

-- --------------------------------------------------------

--
-- Structure for view `revenue`
--
DROP TABLE IF EXISTS `revenue`;

CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `revenue`  AS  select `tickets`.`event_id` AS `evn_id`,`events`.`name` AS `Event`,`users`.`username` AS `Host`,sum(`events`.`price`) AS `Total_Rev` from ((`tickets` join `events`) join `users`) where `tickets`.`status` = 1 and `tickets`.`event_id` = `events`.`event_id` and `tickets`.`user_id` = `users`.`user_id` group by `events`.`event_id` ;

-- --------------------------------------------------------

--
-- Structure for view `v_ticket`
--
DROP TABLE IF EXISTS `v_ticket`;

CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_ticket`  AS  select `tickets`.`event_id` AS `event`,`events`.`event_id` AS `evn_id`,`events`.`name` AS `evn_name`,`users`.`username` AS `created_by`,sum(`events`.`price`) AS `Total_revenue` from (`users` left join (`events` left join `tickets` on(`tickets`.`event_id` = `events`.`event_id`)) on(`tickets`.`user_id` = `users`.`user_id`)) group by `events`.`event_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `attending`
--
ALTER TABLE `attending`
  ADD KEY `event_id` (`event_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `type_id` (`type_id`,`category_id`,`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `folowers`
--
ALTER TABLE `folowers`
  ADD KEY `user_id` (`user_id`,`folower_id`),
  ADD KEY `folower_id` (`folower_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `user_id` (`user_id`,`buyer_id`),
  ADD KEY `buyer_id` (`buyer_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1880;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attending`
--
ALTER TABLE `attending`
  ADD CONSTRAINT `attending_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attending_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `events_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `types` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `events_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `folowers`
--
ALTER TABLE `folowers`
  ADD CONSTRAINT `folowers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `folowers_ibfk_2` FOREIGN KEY (`folower_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_4` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_5` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
