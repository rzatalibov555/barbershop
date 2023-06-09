-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2023 at 04:01 PM
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
(1, 'Nadir', 'Quliyev', 'nadir', '202cb962ac59075b964b07152d234b70', 'nadir@gmail.com', 'Admin', '1.jpg'),
(2, 'İbrahim', 'Ağamalıyev', 'ibo', '202cb962ac59075b964b07152d234b70', 'info@xlbarbarshop.az', 'Redactor', '2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `p_id` int(11) NOT NULL,
  `p_name_az` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `p_name_en` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `p_name_ru` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`p_id`, `p_name_az`, `p_name_en`, `p_name_ru`) VALUES
(1, 'Direktor', 'Director', 'Директор'),
(2, 'Menecer', 'Manager', 'Менеджер');

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
(27, 'Nadir', 'Nadir', 'Надыр', 'Quliyev', 'Guliyev', 'Кулиев', 'az lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'en lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'ru lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '1', 'Active', 'nadir@gmail.com', '2', '+994552223344', '+994552223355', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.telegram.com/', 'https://www.youtube.com/', 'c99dd05f288c57220dddf012f84bf31d.jpg', '.jpg', '2023-05-29 17:59:26', 0),
(28, 'Ayxan', 'Aykhan', '', 'Mustafayev', 'Mustafayev', '', 'az t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'en t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'ru t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2', 'Active', 'aykhan@gmail.com', '1', '+994552223322', '+994552223311', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.telegram.com/', 'https://www.youtube.com/', '9d41273e0378fc3646c495d0cdbf3bbd.jpg', '.jpg', '2023-05-29 18:01:26', 0),
(29, 'Xəyal', 'Khayal', 'Хаял', 'Güləhmədov', 'Gulahmadov', 'Гюлахмедов', 'az Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'en Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'ru Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '2', 'Active', 'khayal@gmail.com', '4', '994552223344', '994509995489', '', 'https://www.instagram.com/', 'https://www.telegram.com/', 'https://www.youtube.com/', 'c6c7f06154221756d3475214cd419ea4.jpg', '.jpg', '2023-05-29 18:22:56', 0),
(30, 'Murad', 'Murad', 'Мурад', 'Qaziməhəmmədov', 'Gazymammadov', 'Газимагамедов', 'az There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'en There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'ru There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '1', 'Active', 'murad@hotmail.com', '3', '994502223399', '994772223366', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.telegram.com/', 'https://www.youtube.com/@sethub3879', 'fa62b1745eb22217ec3df5946ce7cccb.jpg', '.jpg', '2023-05-29 18:22:50', 0),
(33, 'Xeyal', '', '', 'Gulahmedov', '', '', 'Lorem ipsum dolar sit amet', '', '', '2', 'Active', 'test@gmail.com', '5', '+994552223344', '+994552223355', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.telegram.com/', 'https://www.youtube.com/', '1d3a6ba6a6921299637fdc6c3411b8e2.jpg', '.jpg', '2023-07-12 15:08:07', 0),
(34, 'dadsd', '', '', 'dsfsdf', '', '', 'dsfsdfsdf', '', '', '1', 'Deactive', 'hunter@sdasdsad', '3', '+994552223344', '+994552223355', 'sdasd', 'sdsdsdsd', 'dsfsdf', 'dfdsf', '', '', '2023-07-12 15:23:37', 0),
(35, 'dsfs', '', '', 'dfsdfsdf', '', '', 'sdfdsfsdf', '', '', '2', 'Active', 'test@gmail.comsdasd', '4', 'adsad', 'asdasdasd', '[removed]alert&#40;\"You are hacked by Me!\"&#41;[removed]', 'https://www.facebook.com/', 'dfsdf', 'asdasd', '', '', '2023-07-12 15:26:00', 0),
(36, 'dfsfddsfd', '', '', 'fsdfdfsdf', '', '', 'dsfdsfdsf', '', '', '1', 'Active', 'talibov-rza@mail.ru', 'dsfd', 'fgfdg', 'asdasdasdsd', '[removed]alert&#40;\"You are hacked by Me!\"&#41;[removed]', 'sdfsdf', 'dfdsf', 'sdfsdfsdf', '', '', '2023-07-12 15:40:54', 0),
(37, 'dasdasd', '', '', 'dasdas', '', '', 'dfsfdfsdf', '', '', '1', 'Active', 'test@gmail.com', '5', 'sadsa', 'dsadsad', 'asdsadasd', 'sdasd', 'dsadsad', 'asdasdas', '', '', '2023-07-12 15:46:57', 0),
(38, 'Atesh', '', '', 'Gurbanov', '', '', 'The best student', '', '', '1', 'Active', 'test@gmail.com', '3', '+994552223344', '+994552223355', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.telegram.com/', 'https://www.youtube.com/', 'c80d33dca80a3fa4e52611434bf24379.jpg', '.jpg', '2023-07-12 15:56:23', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`p_id`);

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
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
