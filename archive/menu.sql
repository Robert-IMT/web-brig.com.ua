-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 14 2014 г., 08:55
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
-- Структура таблицы `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `submenu` tinyint(1) NOT NULL,
  `type` varchar(25) NOT NULL DEFAULT 'submenu',
  `parentmenu` int(2) NOT NULL,
  `link` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`,`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `name`, `submenu`, `type`, `parentmenu`, `link`) VALUES
(1, 'главная', 0, 'menu', 0, '?page=page'),
(2, 'портфолио', 1, 'menu', 0, '?page=portfolio'),
(3, 'арт-галерея', 1, 'menu', 0, '?page=gallery'),
(4, 'библиотека', 1, 'menu', 0, '?page=library'),
(5, 'реквизиты', 0, 'menu', 0, '?page=requisites'),
(6, 'контакты', 0, 'menu', 0, '?page=contact'),
(7, 'web-дизайн', 0, 'submenu', 2, '?page=portfolio&sub=webdesign'),
(8, 'имидж-дизайн', 0, 'submenu', 2, '?page=portfolio&sub=imagedesign'),
(9, 'полиграфия', 0, 'submenu', 2, '?page=portfolio&sub=polygraphy'),
(10, 'образцы кода', 0, 'submenu', 2, '?page=portfolio&sub=sample'),
(11, 'графика', 0, 'submenu', 3, '?page=gallery&sub=graphics'),
(12, 'PC визуализация', 0, 'submenu', 3, '?page=gallery&sub=visualization'),
(13, '3D моделирование', 0, 'submenu', 3, '?page=gallery&sub=modeling'),
(14, 'примеры кода', 0, 'submenu', 4, '?page=library&sub=examples'),
(15, 'статьи', 0, 'submenu', 4, '?page=library&sub=article'),
(16, 'книги', 0, 'submenu', 4, '?page=library&sub=book');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
