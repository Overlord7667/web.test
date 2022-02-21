-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 21 2022 г., 19:51
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test.web`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `text` text,
  `catigories` int DEFAULT NULL,
  `pubdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `views` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `image`, `text`, `catigories`, `pubdate`, `views`) VALUES
(1, 'Как захватить мир.', 'test.jpg', 'Ты должен создавать будущее. Кто сможет управлять будущем - тот будет владеть миром. Создавай системы, которые будут заменять старые. У тебя должно всегда быть всегда всё нужное, что надо миру(потребности). Ошибка, которую совершают злодеи, которые хотят захватить мир в сказках - это искать врагов. Зачем искать врагов? Они только будут препятствовать вашей системе. Лучше превратить их в друзей или, по крайней мере, в партнёров. На прямую управлять мир, скорее всего, не получится по многим причинам(назовите сами). Лучше управлять косвенно, то есть Вы не имеете реальную власть, но она всё равно у Вас есть по средством ценностей у вас имеющихся(связи, информация, материальные ресурсы). С чего начать? С познания мира в общем. Вы должны быть роботом, чтобы рассчитать каждое своё действие, не совершая ошибок(ошибки могут быть, но только в тех случаях, в которых Вы нуждаетесь), т.к у Вас много времени займёт в разгребании своих ошибок(у человека это занимает половину жизни), а Вы не обладаете бессмертием.', 1, '2022-02-20 15:49:20', 26),
(3, 'Человечество под угрозой.', 'test.jpg', 'Компьютеры сами пишут код. Программисты больше не нужны.', 2, '2022-02-21 12:43:32', 7),
(4, 'Квантовые процессоры.', 'test.jpg', 'Технологии будущего уже скоро в продаже.', 3, '2022-02-21 12:46:45', 1),
(5, 'Благодетель или проклятье?', 'test.jpg', 'NFT пропихиваются в игры мошейниками.', 4, '2022-02-21 12:49:40', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `articles_categories`
--

CREATE TABLE `articles_categories` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `articles_categories`
--

INSERT INTO `articles_categories` (`id`, `title`) VALUES
(1, 'Психология'),
(2, 'Программирование'),
(3, 'Продажа электроники'),
(4, 'Новинки видио игр');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `nickname` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pubdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `articles_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `autor`, `nickname`, `email`, `text`, `pubdate`, `articles_id`) VALUES
(1, 'Alexander', 'storm', 'alexstorm@gmail.com', 'Великолепная статья.', '2022-02-21 12:24:35', 1),
(2, 'Vladimir', 'Vovka', 'kremlin@gmail.com', 'Я вот вообще вашими компуктерами не пользуюсь.', '2022-02-21 13:35:21', 2),
(3, 'Obramovich', 'Romka', 'robramovich@gmail.com', 'Даже для меня это дорого.', '2022-02-21 13:38:36', 3),
(4, 'Bobbi Kotik', 'Kotofey', 'activisionblizard.com', 'А чего сразу мошейники, нормальные там доходы.', '2022-02-21 13:41:21', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `articles_categories`
--
ALTER TABLE `articles_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `articles_categories`
--
ALTER TABLE `articles_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
