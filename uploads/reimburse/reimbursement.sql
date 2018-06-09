-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2018 at 11:51 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reimbursement`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE `attachment` (
  `attachment_id` int(10) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `file_type` varchar(50) NOT NULL,
  `url` varchar(300) NOT NULL,
  `detail_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attachment`
--

INSERT INTO `attachment` (`attachment_id`, `filename`, `file_type`, `url`, `detail_id`) VALUES
(5, 'consultance.jpg', 'image/jpeg', 'uploads/reimburse/54058838.jpg', 7),
(6, 'reciept.jpg', 'image/jpeg', 'uploads/reimburse/76962281.jpg', 7),
(3, 'consultance.jpg', 'image/jpeg', 'uploads/reimburse/1525657916.jpg', 6),
(4, 'reciept.jpg', 'image/jpeg', 'uploads/reimburse/1525657916.jpg', 6),
(7, 'Receipt-07-04-2018.jpg', 'image/jpeg', 'uploads/reimburse/83413697.jpg', 8),
(8, 'Receipt-17-04-2018.jpg', 'image/jpeg', 'uploads/reimburse/34454346.jpg', 8),
(9, 'Receipt-26-04-2018.jpg', 'image/jpeg', 'uploads/reimburse/77572632.jpg', 8),
(10, 'Receipt-26-04-2018.jpg', 'image/jpeg', 'uploads/reimburse/72961426.jpg', 9),
(11, 'Receipt-17-04-2018.jpg', 'image/jpeg', 'uploads/reimburse/84219361.jpg', 10),
(12, 'Receipt-17-04-2018.jpg', 'image/jpeg', 'uploads/reimburse/9771729.jpg', 11),
(13, 'Receipt-03-04-2018.jpg', 'image/jpeg', 'uploads/reimburse/9121705.jpg', 12),
(14, 'Receipt-06-04-2018.jpg', 'image/jpeg', 'uploads/reimburse/74127198.jpg', 12),
(15, 'Payment_Receipt-03-04-2018.jpg', 'image/jpeg', 'uploads/reimburse/89413453.jpg', 13),
(16, 'Receipt-03-04-2018.jpg', 'image/jpeg', 'uploads/reimburse/91552735.jpg', 14),
(17, 'Receipt-03-04-2018.jpg', 'image/jpeg', 'uploads/reimburse/41921998.jpg', 14),
(18, 'Receipt-06-04-2018.jpg', 'image/jpeg', 'uploads/reimburse/5609131.jpg', 14),
(19, 'Receipt-03-04-2018.jpg', 'image/jpeg', 'uploads/reimburse/83489991.jpg', 15),
(20, 'Receipt-06-04-2018.jpg', 'image/jpeg', 'uploads/reimburse/66207886.jpg', 15),
(21, 'destination.jpg', 'image/jpeg', 'uploads/reimburse/63677979.jpg', 16),
(22, 'IMG_3532.PNG', 'image/png', 'uploads/reimburse/448609.PNG', 16),
(23, 'Spark for Python Developers.pdf', 'application/pdf', 'uploads/reimburse/44384766.pdf', 16),
(24, 'Invoice-375057.pdf', 'application/pdf', 'uploads/reimburse/50613404.pdf', 16),
(25, 'IMG_3656.JPG', 'image/jpeg', 'uploads/reimburse/25405884.JPG', 17);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `basic_allotment` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `name`, `basic_allotment`) VALUES
(1, 'Medical', 200),
(2, 'International Travel', 1000),
(3, 'Mobile Bills', 100),
(4, 'Food ', 20);

-- --------------------------------------------------------

--
-- Table structure for table `detailed_req`
--

CREATE TABLE `detailed_req` (
  `detail_id` int(10) NOT NULL,
  `emp_id` int(10) NOT NULL,
  `cat_id` int(5) NOT NULL,
  `amount` int(10) NOT NULL,
  `date_of` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `status` varchar(10) NOT NULL,
  `request_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `flag` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detailed_req`
--

INSERT INTO `detailed_req` (`detail_id`, `emp_id`, `cat_id`, `amount`, `date_of`, `description`, `status`, `request_date`, `flag`) VALUES
(9, 1010127, 1, 89, '01-05-2018', 'medi care', '3', '2018-05-07 04:20:35', 1),
(8, 1010124, 2, 56, '18-04-2018', 'travel ', '1', '2018-05-07 03:35:56', 1),
(7, 1010124, 3, 25, '02-05-2018', 'monthly mobile bill payment', '2', '2018-05-07 01:57:05', 1),
(10, 1010127, 2, 77, '03-05-2018', 'flight ticket', '2', '2018-05-07 04:27:28', 1),
(11, 1010127, 3, 100, '18-04-2018', 'hello', '2', '2018-05-07 04:35:03', 1),
(12, 1010124, 1, 100, '01-05-2018', 'Medical bills', '2', '2018-05-08 01:33:13', 1),
(13, 1010124, 2, 230, '03-05-2018', 'Travel expense', '0', '2018-05-08 01:34:22', 0),
(14, 1010124, 4, 15, '02-05-2018', 'Food expense', '2', '2018-05-08 01:36:58', 1),
(15, 1010127, 3, 4000, '02-05-2018', 'mobile bills', '1', '2018-05-08 05:04:24', 1),
(16, 1010124, 4, 20, '01-05-2018', 'food expense', '1', '2018-05-11 11:45:25', 1),
(17, 1010124, 3, 200, '01-05-2018', 'hello', '0', '2018-05-14 04:47:40', 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` varchar(10) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `emp_department` varchar(100) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `password` varchar(250) NOT NULL,
  `emp_role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `access_role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `emp_department`, `email_id`, `userid`, `password`, `emp_role`, `status`, `access_role`) VALUES
('1010124', 'Tom Cruise', 'Development', 'tomcruise@yahoo.com', 'admin', 'admin', 'IT Department', '0', 0),
('1010123', 'Mayank Pandey', 'Development', 'mayank@gmail.com', 'mayank@gmail.com', 'qwerty', 'IT Department', '0', 0),
('1010120', 'Kishan Patel', 'Development', 'kishan@gmail.com', 'kishan@gmail.com', 'admin@777', 'Marketing', '0', 0),
('1010119', 'Palak', 'Marketing', 'dipaka@gmail.com', 'palak@gmail.com', 'Dap@777', 'Admin', '0', 1),
('1010122', 'Roopinder Kaur', 'HRM', 'roop@gmail.com', 'roop@gmail.com', '123123123', 'HR Department', '0', 0),
('1010121', 'Gurpreet Singh', 'Accounting and Finance', 'gurpreetsingh@yahoo.com', 'gurpreet123', '7777777', 'Accounting', '0', 0),
('1010125', 'Amrinder Singh', 'Marketing', 'dipakaaa@gmail.com', 'jhjhuyuy', 'aaaaaa', 'Accounting', '0', 0),
('1010126', 'Anant Patel', 'Marketing', 'anant@gmail.com', 'anant666', 'HELLO', 'Marketing', '0', 0),
('1010127', 'Peter Parker', 'Marketing', 'peter@ibibo.com', 'peter777', 'palak', 'Marketing', '0', 0),
('1010128', 'Yusuf Pathan', 'Development', 'ypathan@ipl.com', 'yusufpathan', '89898989', 'Web Designer', '0', 0),
('1010129', 'Ricky Ponting', 'HRM', 'rickymart@gmail.com', 'rickyponting', 'poipoipo', 'HR Department', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `log_table`
--

CREATE TABLE `log_table` (
  `log_id` int(10) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `time_detail` timestamp NOT NULL,
  `ip_address` double NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reimb_request`
--

CREATE TABLE `reimb_request` (
  `req_id` int(10) NOT NULL,
  `emp_id` varchar(10) NOT NULL,
  `subtotal` int(10) NOT NULL,
  `dateandtime` timestamp NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`attachment_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `detailed_req`
--
ALTER TABLE `detailed_req`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `email_id` (`email_id`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `reimb_request`
--
ALTER TABLE `reimb_request`
  ADD PRIMARY KEY (`req_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachment`
--
ALTER TABLE `attachment`
  MODIFY `attachment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
