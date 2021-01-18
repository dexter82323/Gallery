Create database `gallery`;
use  `gallery`;

--
-- База данных: `gallery`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `source_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth`
--

INSERT INTO `auth` (`id`, `user_id`, `source`, `source_id`) VALUES
(9, 10, 'google', '115936025769230533466'),
(10, 11, 'facebook', '1302563103447580'),
(11, 12, 'VKontakte', '136214676'),
(12, 14, 'GitHub', '50879802');

-- --------------------------------------------------------

--
-- Структура таблицы `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `file`
--

INSERT INTO `file` (`id`, `title`, `path`) VALUES
(1, 'Leonardo DiCaprio', 'images/1.jpg'),
(2, 'Brad Pitt', 'images/2.jpg'),
(3, 'Robert Downey Jr.', 'images/3.jpg'),
(13, 'Bradley Cooper', 'images/4.jpg'),
(14, 'Angelina Jolie', 'images/5.jpg'),
(24, 'Anne Hathaway', 'images/123.jpg'),
(25, 'Emma Watson', 'images/face-women-model-portrait-simple-background-long-hair-brunette-glasses-photography-celebrity-singer-actress-smiling-black-hair-fashion-hair-Emma-Watson-nose-Person-skin-head-supermodel-gir.jpg'),
(26, 'Kate Beckinsale', 'images/katebeckinsale382759.jpg'),
(27, 'Keanu Reeves', 'images/keanureeves259583.jpg'),
(28, 'Hugh Jackman', 'images/147469.jpg'),
(29, 'Hugh Jackman', 'images/147469.jpg'),
(30, 'Hugh Jackman', 'images/147469.jpg'),
(31, 'Ryan Gosling', 'images/wsi-imageoptim-ryan-gosling-beauty-and-the-beast.jpg'),
(32, 'Jake Gyllenhaal', 'images/jake-gyllenhaal-portret.jpg'),
(33, 'Ashton Kutcher', 'images/5493406.jpg'),
(34, 'Emma Roberts', 'images/devushki-aktrisy-znamenitosti-emma-roberts.jpg'),
(35, 'Margot Robbie', 'images/1604414846_1-p-margo-robbi-1.jpg'),
(36, 'Megan Fox', 'images/ca2615474f9a435.jpg'),
(37, 'Jennifer Connelly', 'images/629568d05243981bc8adc2af73a6ebc5.jpg'),
(38, 'Jennifer Lawrence', 'images/00-tout-jennifer-lawrence.jpg'),
(39, 'Robert Pattinson', 'images/e4cd2148a868.jpg'),
(40, 'Robert De Niro', 'images/cT8htcckIuyI1Lqwt1CvD02ynTh.jpg'),
(41, 'Will Smith', 'images/1424765467_pereocenennye-aktery-7.jpg'),
(42, 'Daniel Radcliffe', 'images/multifandom.ru-818.jpg'),
(43, 'Orlando Bloom', 'images/ff175bb294d11ecd513cc61d954a727f.jpg'),
(44, 'Colin Farrell', 'images/1994x3000_0xc0a83945_14779134091400750010.jpg'),
(45, 'Zac Efron', 'images/The-Lucky-One-London-Photos-FuLL-zac-efron-30599110-2560-1662.jpg'),
(46, 'Tobey Maguire', 'images/04uEd18UDk.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1610791602),
('m210116_100621_create_table', 1610791604);

-- --------------------------------------------------------

--
-- Структура таблицы `picture`
--

CREATE TABLE `picture` (
  `id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `picture`
--

INSERT INTO `picture` (`id`, `title`, `description`, `category`, `id_file`) VALUES
(1, 'Leonardo DiCaprio', 'Actor1', 'Popular', 1),
(2, 'Brad Pitt', 'Actor2', 'Popular', 2),
(3, 'Robert Downey Jr.', 'Actor3', 'New', 3),
(5, 'Bradley Cooper', 'Actor4', 'New', 13),
(6, 'Angelina Jolie', 'Actress1', 'Popular', 14),
(8, 'Anne Hathaway', 'Actress2', 'New', 24),
(9, 'Emma Watson', 'Actress3', 'New', 25),
(10, 'Kate Beckinsale', 'Actress4', 'Popular', 26),
(11, 'Keanu Reeves', 'Actor5', 'Popular', 27),
(12, 'Hugh Jackman', 'Actor6', 'Popular', 28),
(15, 'Ryan Gosling', 'Actor6', 'New', 31),
(16, 'Jake Gyllenhaal', 'Actor7', 'New', 32),
(17, 'Ashton Kutcher', 'Actor8', 'New', 33),
(18, 'Emma Roberts', 'Actress5', 'New', 34),
(19, 'Margot Robbie', 'Actress6', 'New', 35),
(20, 'Megan Fox', 'Actress7', 'Popular', 36),
(21, 'Jennifer Connelly', 'Actress8', 'New', 37),
(22, 'Jennifer Lawrence', 'Actress9', 'New', 38),
(23, 'Robert Pattinson', 'Actor9', 'New', 39),
(24, 'Robert De Niro', 'Actor10', 'Popular', 40),
(25, 'Will Smith', 'Actor11', 'New', 41),
(26, 'Daniel Radcliffe', 'Actor12', 'Popular', 42),
(27, 'Orlando Bloom', 'Actor13', 'Popular', 43),
(28, 'Colin Farrell', 'Actor14', 'Popular', 44),
(29, 'Zac Efron', 'Actor15', 'Popular', 45),
(30, 'Tobey Maguire', 'Actor16', 'Popular', 46);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` date DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `github`, `status`, `created_at`, `updated_at`) VALUES
(2, 'test', '1314285555', '$2y$13$sWez7p0FPOoeZwBeLJ21x.cYnoBXHwRQagRK7n9dMbwpRLZqwXK2a', NULL, 'veresklya81@mail.ru', NULL, 10, NULL, NULL),
(10, 'Верескля Владислав', 'efVM8_KoMq1f_Klyhk-XPu7xdxWxAcFq', '$2y$13$uB6/MvYj3x/liTpVYiOCxO9KvfbkL96X9DIuKbvquVNWLN1rEe1wC', NULL, 'veresglya@gmail.com', NULL, 10, '2021-01-16', NULL),
(11, 'Владислав Верескля', 'dWP4TAnA8V4E9UXef5Mcwdqx-jSC34qy', '$2y$13$5YuhB19zzjo4sDxQwqyFnev7/Jc4Q6SAxQIGcNj24ujnheZRLSV.q', NULL, 'vlad.veresklya@yandex.ru', NULL, 10, '2021-01-16', NULL),
(12, NULL, 'y0B0Vvzjyb1jd7bGQJqHDRkCkmKGg-DR', '$2y$13$LWsz5X3JsnM.Pu4X3Z1H6e3Kb2mH8V9YR0Ovpl4VnapygIcXBwe6i', NULL, NULL, NULL, 10, '2021-01-16', NULL),
(13, 'test2', '1572453273', '$2y$13$7nT3IOs48WMbiwGyLZlLvelwB8nERSrjXmR4r4OK.7UoyRRKlt1.m', NULL, 'marketing@rfca412.ru', NULL, 10, NULL, NULL),
(14, NULL, 'x3pSRSOcEfbUD4RDVRiCNQfWTV-0XO8C', '$2y$13$OM6ysmZP0dbErbfuQ/xPw.4gJjhgqlfCBkSzLckXWwBe7o9J9jWFK', NULL, 'vlad.veresklya@yandex.ru', NULL, 10, '2021-01-17', NULL),
(15, 'test3', '645143809', '$2y$13$4O4Gz7dAtmXgTC3VEOT7M.eqwLm69UyQDHZaqoTmrtxMJ4YJWvZ06', NULL, 'vla1d.veresklya@yandex.ru', NULL, 10, '2021-01-17', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-auth-user_id-user-id` (`user_id`);

--
-- Индексы таблицы `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_file_idx` (`id_file`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `picture`
--
ALTER TABLE `picture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth`
--
ALTER TABLE `auth`
  ADD CONSTRAINT `fk-auth-user_id-user-id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `picture`
--
ALTER TABLE `picture`
  ADD CONSTRAINT `id_file` FOREIGN KEY (`id_file`) REFERENCES `file` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
