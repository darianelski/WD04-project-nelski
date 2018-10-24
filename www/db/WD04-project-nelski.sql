-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 24, 2018 at 08:42 PM
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
  `description` text NOT NULL,
  `photo` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `name`, `description`, `photo`) VALUES
(1, 'Дарья Нельски', '<p>Я веб разработчик из Москвы. Мне 28 лет.<br />\r\nЗанимаюсь разработкой современных сайтов и приложений. Мне нравится делать интересные и современные проекты.</p>\r\n\r\n<p>Этот сайт я сделала в рамках обучения в школе онлайн обучения WebCademy.<br />\r\nЧуть позже я освежу в нём свой контент. А пока посмотрите, как тут всё классно и красиво!</p>\r\n\r\n<h3>Что я умею</h3>\r\n\r\n<p>Меня привлекет Frontend разработка, это не только моя работа, но и хобби.<br />\r\nТакже знаком и могу решать не сложные задачи на Backend.</p>\r\n\r\n<p>Знаком и использую современный workflow, работаю с репозиториями git и сборкой проекта на gulp.</p>\r\n', '904241413059.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_title`) VALUES
(1, 'Путешествия'),
(2, 'Едаааа'),
(3, 'Спорт'),
(4, 'Мечты');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `text`, `date_time`) VALUES
(6, 22, 10, 'привет', '2018-10-21 14:48:05'),
(9, 23, 10, 'Очень люблю)', '2018-10-21 15:53:21'),
(10, 22, 10, 'как сложно-то', '2018-10-21 15:56:15'),
(13, 23, 10, 'Что?', '2018-10-21 16:01:38');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `adress` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `secondname` varchar(191) DEFAULT NULL,
  `skype` varchar(191) DEFAULT NULL,
  `vk` varchar(191) DEFAULT NULL,
  `fb` varchar(191) DEFAULT NULL,
  `github` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `phone`, `adress`, `name`, `secondname`, `skype`, `vk`, `fb`, `github`, `twitter`) VALUES
(1, 'daria.nelski@gmail.com', '03', 'Москва', 'Дарья', 'Нельски', 'dasha_lego', 'https://vk.com/c_e_v', '', 'darianelski', '');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(11) UNSIGNED NOT NULL,
  `period` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `period`, `title`, `description`) VALUES
(1, 'февраль 2017 &mdash; по настоящее время', 'Frontend разработчик, Вконтактe, mail.ru group', 'Работы в команде Вконтакте. Работал в команде над обновление сервиса Музыка, работа над видео разделом. Создание видеоплеера. Создание кроссбраузерных компонентов. Работа над оптимизацией скорости загрузки медиа контента'),
(3, 'январь 2017 &mdash; январь 2019', 'Верстальщик', '');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message_file_name_original` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message_file` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`, `message_file_name_original`, `message_file`, `date_time`) VALUES
(3, 'Максим', 'max', '2', 'Снимок экрана 2018-01-11 в 23.50.33.png', '628504966105.png', '2018-10-23 15:42:13'),
(4, 'Миша', 'misha@gmail.com', 'Никакого вреда автомобилю. Переживаете что не понравится или передумаете?\r\nВернём деньги и заводскую прошивку в тот же день без всяких заявлений!', 'Dsk8qceH_qY.jpg', '704735879037.jpg', '2018-10-23 16:00:18'),
(9, 'Павел', 'pavel@gmail.com', 'Хочу заказать у вас сайт.', NULL, NULL, '2018-10-23 19:37:16');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cat` int(11) UNSIGNED DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `author_id`, `date_time`, `post_img`, `post_img_small`, `cat`, `update_time`) VALUES
(22, 'Что значит Notice: Undefined index в PHP', '<p>Многие начинающие разработчики зачастую отключают notice в настройках вывода ошибок PHP и спокойно разрабатывают своё приложение. Когда через определенный промежуток времени они решают отладить своё приложение и включают их, у многих (судя по многочисленным темам на форумах) возникает вопрос, что же такое undefined index и как с ним бороться? Чтобы не возникало этого предупреждения нужно проверять элемент массива на существование функцией isset().</p>\r\n\r\n<p>Например:</p>\r\n\r\n<p>$my_var = $_GET[&#39;var1&#39;];</p>\r\n\r\n<p>вызовет предупреждение Undefined index: var1.</p>\r\n\r\n<p>Чтобы этого избежать нужно написать: if (isset($_GET[&#39;var1&#39;])) { $my_var = $_GET[&#39;var1&#39;]; }</p>\r\n', 10, '2018-10-20 16:46:00', '463489174970.jpg', '320-463489174970.jpg', 2, '2018-10-21 11:51:27'),
(23, 'Тестовый постик', '<p>Я люблю море)</p>\r\n', 10, '2018-10-20 20:02:07', '428732689700.jpg', '320-428732689700.jpg', 4, '2018-10-21 11:50:44'),
(28, '15 самых популярных вопросов про ИП и ООО в российском интернете (с ответами)', '<p>По всей России люди задают одни и те же вопросы про ИП и ООО и не могут найти внятных и аргументированных ответов. Пора уже устранить этот пробел. Поехали.</p>\r\n\r\n<h3><strong>Вопрос №1: должен ли ИП вести бухгалтерский учет?</strong></h3>\r\n\r\n<p>Нет не должен.</p>\r\n\r\n<p>Почему? Часть 2 статьи 6 Федерального закона &quot;О бухгалтерском учете&quot; прямо указывает что ИП могут не вести бухгалтерский учет.</p>\r\n\r\n<p>На уровне здравого смысла этому также есть объяснение - бухгалтерский учет в отличие от налогового прежде всего интересен в компаниях где есть несколько собственников и директор для того, чтобы контролировать друг друга и ситуацию в компании. ИП же сам себе хозяин ему некому отчитываться.</p>\r\n', 10, '2018-10-20 23:13:57', '942688736485.jpg', '320-942688736485.jpg', 1, '2018-10-21 11:50:15'),
(33, 'Пост без фото.', '<p>Пост без фото.</p>\r\n', 10, '2018-10-21 11:51:53', NULL, NULL, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) UNSIGNED NOT NULL,
  `html` int(11) UNSIGNED DEFAULT NULL,
  `css` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `js` int(11) UNSIGNED DEFAULT NULL,
  `jquery` int(11) UNSIGNED DEFAULT NULL,
  `php` int(11) UNSIGNED DEFAULT NULL,
  `mysql` int(11) UNSIGNED DEFAULT NULL,
  `git` int(11) UNSIGNED DEFAULT NULL,
  `gulp` int(11) UNSIGNED DEFAULT NULL,
  `npm` int(11) UNSIGNED DEFAULT NULL,
  `yarn` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `html`, `css`, `js`, `jquery`, `php`, `mysql`, `git`, `gulp`, `npm`, `yarn`) VALUES
(1, 100, '100', 10, 80, 60, 50, 70, 80, 90, 80);

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
(13, 'cat@mail.ru', '$2y$10$sZnLqcl36FU4o6heUPQzmO17D/fHH358TRywBclF7QighbmpwQgp.', 'user', 'Котик', 'Домашний', 'Дом', 'Россия', '857824390186.jpg', '48-857824390186.jpg', 'hDIxVTo3QG5vrqW', 3),
(14, 'dog@mail.ru', '$2y$10$kfH8oCAr3ezT2xA/fJp/lOiAf4puxPARxcTqrhDzeoH.KD9jVhPAy', 'user', 'Пёс', 'Уличный', 'Улица', 'Россия', NULL, NULL, 'qhetJgmDBx8HyNP', 3),
(15, 'bird@mail.ru', '$2y$10$KYi000X6ySaxjD4il4Kz1OJFF0GmwjapEY6bzjTKyIcoQq4ko1lW.', 'user', 'Птичка', 'Певчая', 'Небо', 'Россия', NULL, NULL, 'MxifH0gdBzKLAV4', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_comments_post` (`post_id`),
  ADD KEY `index_foreignkey_comments_user` (`user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
