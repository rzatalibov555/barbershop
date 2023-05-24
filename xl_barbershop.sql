-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2023 at 06:10 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xl_barbershop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL,
  `a_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a_surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a_username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_name`, `a_surname`, `a_username`, `a_password`, `a_email`, `a_position`, `a_img`) VALUES
(1, 'Nadir', 'Quliyev', 'nadir', '123', 'nadir@gmail.com', 'Admin', '1.jpg'),
(2, 'İbrahim', 'Ağamalıyev', 'ibo', '123', 'info@xlbarbarshop.az', 'Redactor', '2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `s_id` int(11) NOT NULL,
  `s_name_az` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s_name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s_name_ru` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s_surname_az` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s_surname_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s_surname_ru` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s_description_az` longtext COLLATE utf8_unicode_ci NOT NULL,
  `s_description_en` longtext COLLATE utf8_unicode_ci NOT NULL,
  `s_description_ru` longtext COLLATE utf8_unicode_ci NOT NULL,
  `s_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `s_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s_experience` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s_mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `s_whatsApp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s_facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s_instagram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s_telegram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s_youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s_img_ext` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `s_create_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s_creater_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`s_id`, `s_name_az`, `s_name_en`, `s_name_ru`, `s_surname_az`, `s_surname_en`, `s_surname_ru`, `s_description_az`, `s_description_en`, `s_description_ru`, `s_position`, `s_status`, `s_email`, `s_experience`, `s_mobile`, `s_whatsApp`, `s_facebook`, `s_instagram`, `s_telegram`, `s_youtube`, `s_img`, `s_img_ext`, `s_create_date`, `s_creater_id`) VALUES
(1, 'Nadir az', 'Nadir en', 'Nadir ru', 'Quliyev az', 'Quliyev en', 'Quliyev ru', 'az desc das dsad asd asd asdas das d', 'en desc das dsad asd asd asdas das d', 'ru desc das dsad asd asd asdas das d', 'Director', 'Active', 'test@gmail.com', '', '+994552223344', '+994552223355', 'https://www.facebook.com/', '', 'https://www.facebook.com/', 'https://www.facebook.com/', '', '', '2023-05-10 18:28:18', 0),
(2, 'asadsad', 'sadasd', 'sdasd', 'adadsadasd', 'asd', 'asdasd', 'asdasdsad', 'asdasdsad', 'asdasdsad', 'Master', 'Active', 'sdsadsd', '', '232323', '232323', 'dsadasd', '', 'asdsadasd', 'dasdasd', '', '', '2023-05-10 18:29:46', 0),
(4, 'dfgdfg', '', '', 'gdfgfdgfdg', '', '', 'fdgfdgfd', '', '', 'Director', 'Active', 'fgdfg@dfsdfdsf', '', 'fgfdg', 'dfgdfg', 'fdgdfg', '', 'dfgfdg', 'fdgfg', '', '', '2023-05-13 15:59:49', 0),
(5, 'Nadir', '', '', 'Quliyev', '', '', 'Sahib', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(6, 'Rza', '', '', 'Talibov', '', '', 'Ilqar', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
(8, 'sdasd', '', '', 'sadsadasd', '', '', 'asdasdasd', '', '', 'Director', 'Active', 'test@gmail.com', '', '+994552223344', '+994552223355', 'sdasd', '', 'asdasd', 'asdasd', '', '', '2023-05-13 16:11:53', 0),
(10, 'asdasdsa', '', '', 'dasdsadasd', '', '', 'sdsadsdasdasdsad', '', '', 'Director', 'Active', 'test@gmail.com', '', '+994552223344', '+994552223355', 'fgdgh', '', 'gfhgfhgfh', 'hgfhgf', 'saat.jpg', '.jpg', '2023-05-13 16:35:46', 0),
(12, 'sdasdas', '', '', 'ddasdasa', '', '', 'sdasdsadasdsad', '', '', 'Director', 'Active', '', '', '', '', '', '', '', '', '6fca0fae36eb33c8ce8e15a1b60b9dbe.jpg', '.jpg', '2023-05-13 16:39:11', 0),
(19, 'Rza', 'sss', 'ddd', 'Talibov', 'fff', 'ggg', 'lorem ipsum dolar sit amet', 'hhh', 'jjj', 'Director', 'Active', 'test@gmail.com', '7', '+994552223344', '+994552223355', 'https://www.facebook.com/', 'dddd', 'https://www.telegram.com/', 'https://www.youtube.com/', '516d0d518ef3b7b74b5a452269dd608a.jpg', '.jpg', '2023-05-24 18:10:14', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
