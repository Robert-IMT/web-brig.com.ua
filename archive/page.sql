-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 14 2014 г., 08:56
-- Версия сервера: 5.6.15-log
-- Версия PHP: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `db_web_brig`
--

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `title` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `name`, `title`) VALUES
(1, 'page', ''),
(2, 'portfolio', 'Портфолио'),
(3, 'gallery', 'Галерея'),
(4, 'library', 'Библиотека'),
(5, 'requisites', 'Реквизиты'),
(6, 'contact', 'Координаты'),
(7, 'webdesign', 'WEB-дизайн'),
(8, 'imagedesign', 'Имидж-дизайн'),
(9, 'polygraphy', 'Полиграфия'),
(10, 'sample', 'Образцы кода'),
(11, 'graphics', 'Графика'),
(12, 'visualization', 'Компьютерная графика'),
(13, 'modeling', '3D модели'),
(14, 'examples', 'Примеры кода'),
(15, 'article', 'Статьи по web разработке'),
(16, 'book', 'Книги по web разработке'),
(99, 'personal', 'Личная страничка');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
