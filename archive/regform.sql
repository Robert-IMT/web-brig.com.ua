-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 14 2014 г., 08:57
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
-- Структура таблицы `regform`
--

CREATE TABLE IF NOT EXISTS `regform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `value` text NOT NULL,
  `required` text NOT NULL,
  `coment` text NOT NULL,
  `type` text NOT NULL,
  `placeholder` text NOT NULL,
  `pattern` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- Дамп данных таблицы `regform`
--

INSERT INTO `regform` (`id`, `name`, `value`, `required`, `coment`, `type`, `placeholder`, `pattern`) VALUES
(1, 'name', '', 'required', 'Введите свои имя', 'text', 'Александр', '[A-Za-zА-Яа-яЁё]{3,}'),
(2, 'surname', '', '', 'Введите фамилию', 'text', 'Борисов', '[A-Za-zА-Яа-яЁё]{3,}'),
(3, 'handle', '', 'required', 'Как к Вам обращаться?', 'text', 'Александр Семенович', '[A-Za-zА-Яа-яЁё\\s-]{3,}'),
(4, 'company', '', '', 'Название компания', 'text', 'ТОВ Оникс LTD', '[0-9A-Za-zА-Яа-яЁё\\s-]{3,}'),
(5, 'mail', '', 'required', 'Електронная почта', 'text', 'company@company.com', '[0-9a-zA-Z-_\\.]+@[0-9a-zA-Z-_\\.]+'),
(6, 'phone', '', 'required', 'Контактный телефон', 'text', '+380 50 500-00-00', '\\+[0-9-\\s]+'),
(7, 'login', '', 'required', 'Логин', 'text', 'S@mWe11', '\\w*[a-zа-я0-9\\s_\\S]+'),
(8, 'password', '', 'required', 'Пароль (>8 символов)', 'text', '********', '[a-zа-я0-9_\\S\\s]{8,}'),
(9, 'check_password', '', 'required', 'Проверка пароля', 'text', '********', '[a-zа-я0-9_\\S\\s]{8,}'),
(99, 'enter', '', '', 'Отправить', 'submit', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
