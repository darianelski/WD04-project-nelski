-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 06, 2018 at 12:19 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `WD04-project-nelski`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `name`, `description`) VALUES
(1, 'Дарья Нельски', 'Я - веб-разработчик.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `role` varchar(191) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `secondname` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `avatar_small` varchar(191) DEFAULT NULL,
  `recovery_code` varchar(191) DEFAULT NULL,
  `recovery_code_times` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `name`, `secondname`, `city`, `country`, `avatar`, `avatar_small`, `recovery_code`, `recovery_code_times`) VALUES
(1, 'qw@df.ru', '$2y$10$sFnYo0.YF8/crn4vryt5HOEo0S1YhzUAjDUjvBWu.wISK6SOWq1Bm', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '11@11.ru', '$2y$10$imHvVuyG6rsvLb/bOpQnfu4naIgKia3fOJEi3KdMhZwSLwcQ4UAcO', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 're@er', '$2y$10$mGdFr43HXm544pmLeyKkHeoTE.61GY4HbVp3IPAJ8x02sGu8nmela', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '11@1', '$2y$10$rFAg7tkLcvr9otxMNhTu9uWD/QplsCV1/42GHyfoH9VtD4mwlqu/6', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'max@gmail.com', '0000', 'user', 'Максим', 'Горький', 'Москва', 'Россия', '891853430986.jpg', '48-891853430986.jpg', NULL, NULL),
(7, 'nelski1@mail.ru', '$2y$10$jw0/8JHpOXPaxdcLNSoKGO8vnxsPrL7N06249v8wV0kW6s86CtWDO', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'wewe@ssf', '$2y$10$SlvxZOleRNLxEyin8pyoGeEk.hT3mCUtExFkfuBZQ2iZzU87UFkjK', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'nelskdi@mail.ru', '$2y$10$i968wxKyhn9Mjf7eECR3.uObuHZDjbubosMrR939i2GQQBP1OFpM2', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'masha@mail.ru', '$2y$10$g2f19Sj0VAR/wj32xT6Bee0aW5N2mFwMR69rJewJEzQ1vx5F5lH/i', 'admin', 'Дарья', 'Нельски', 'Москва', 'Россия', '189368290896.jpg', '48-189368290896.jpg', 'KxqwkZCPtDMIb3F', 3),
(11, '&lt;br /&gt;&lt;b&gt;Notice&lt;/b&gt;:  Trying to get property \'email\' of non-object in &lt;b&gt;/Applications/MAMP/htdocs/WD04-project-nelski/www/templates/profile/profile-edit.tpl&lt;/b&gt; on line &lt;b&gt;25&lt;/b&gt;&lt;br /&gt;', '', NULL, '&lt;br /&gt;&lt;b&gt;Notice&lt;/b&gt;:  Trying to get property \'name\' of non-object in &lt;b&gt;/Applications/MAMP/htdocs/WD04-project-nelski/www/templates/profile/profile-edit.tpl&lt;/b&gt; on line &lt;b&gt;15&lt;/b&gt;&lt;br /&gt;', '&lt;br /&gt;&lt;b&gt;Notice&lt;/b&gt;:  Trying to get property \'secondname\' of non-object in &lt;b&gt;/Applications/MAMP/htdocs/WD04-project-nelski/www/templates/profile/profile-edit.tpl&lt;/b&gt; on line &lt;b&gt;20&lt;/b&gt;&lt;br /&gt;', '&lt;br /&gt;&lt;b&gt;Notice&lt;/b&gt;:  Trying to get property \'city\' of non-object in &lt;b&gt;/Applications/MAMP/htdocs/WD04-project-nelski/www/templates/profile/profile-edit.tpl&lt;/b&gt; on line &lt;b&gt;44&lt;/b&gt;&lt;br /&gt;', '&lt;br /&gt;&lt;b&gt;Notice&lt;/b&gt;:  Trying to get property \'country\' of non-object in &lt;b&gt;/Applications/MAMP/htdocs/WD04-project-nelski/www/templates/profile/profile-edit.tpl&lt;/b&gt; on line &lt;b&gt;39&lt;/b&gt;&lt;br /&gt;', '163595099549.jpg', '48-163595099549.jpg', NULL, NULL),
(12, 'max1@mail.ru', '$2y$10$CZ4qC4hm8JLBo5J1g3EKm.7O03oxYElroCAYTauGwmd1M4w8DEk36', 'user', 'Макс', 'Горький', 'Горький', 'Россия', NULL, NULL, 'nUCVTeNDJBzXOu0', 3),
(13, 'cat@mail.ru', '$2y$10$sZnLqcl36FU4o6heUPQzmO17D/fHH358TRywBclF7QighbmpwQgp.', 'user', 'Котик', 'Домашний', 'Дом', 'Россия', NULL, NULL, NULL, NULL),
(14, 'dog@mail.ru', '$2y$10$kfH8oCAr3ezT2xA/fJp/lOiAf4puxPARxcTqrhDzeoH.KD9jVhPAy', 'user', 'Пёс', 'Уличный', 'Улица', 'Россия', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
