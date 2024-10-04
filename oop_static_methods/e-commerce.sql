-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 03 2024 г., 05:19
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `e-commerce`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `or` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `or`, `active`) VALUES
(1, 'Category1', 66, 0),
(2, 'Category2', 91, 1),
(3, 'Category3', 100, 0),
(4, 'Category4', 19, 1),
(5, 'Category5', 57, 0),
(6, 'Category6', 96, 1),
(7, 'Category7', 89, 0),
(8, 'Category8', 35, 1),
(9, 'Category9', 58, 0),
(10, 'Category10', 64, 1),
(11, 'Category1', 81, 0),
(12, 'Category2', 37, 1),
(13, 'Category3', 54, 0),
(14, 'Category4', 53, 1),
(15, 'Category5', 9, 0),
(16, 'Category6', 54, 1),
(17, 'Category7', 53, 0),
(18, 'Category8', 45, 1),
(19, 'Category9', 58, 0),
(20, 'Category10', 89, 1),
(21, 'Category1', 51, 0),
(22, 'Category2', 3, 1),
(23, 'Category3', 39, 0),
(24, 'Category4', 19, 1),
(26, 'Category6', 25, 1),
(27, 'Category7', 18, 0),
(28, 'Category8', 49, 1),
(29, 'Category9', 94, 0),
(30, 'Category10', 89, 1),
(31, 'Category1', 33, 0),
(32, 'Category2', 94, 1),
(33, 'Category3', 66, 0),
(34, 'Category4', 34, 1),
(35, 'Category5', 44, 0),
(36, 'Category6', 41, 1),
(37, 'Category7', 40, 0),
(38, 'Category8', 91, 1),
(39, 'Category9', 49, 0),
(40, 'Category10', 15, 1),
(41, 'Category1', 82, 0),
(42, 'Category2', 86, 1),
(43, 'Category3', 20, 0),
(44, 'Category4', 14, 1),
(45, 'Category5', 67, 0),
(46, 'Category6', 11, 1),
(47, 'Category7', 11, 0),
(48, 'Category8', 40, 1),
(49, 'Category9', 15, 0),
(50, 'Category10', 57, 1),
(51, 'Category1', 61, 0),
(52, 'Category2', 90, 1),
(53, 'Category3', 46, 0),
(54, 'Category4', 99, 1),
(55, 'Category5', 12, 0),
(56, 'Category6', 27, 1),
(57, 'Category7', 62, 0),
(58, 'Category8', 22, 1),
(59, 'Category9', 15, 0),
(60, 'Category10', 47, 1),
(61, 'Category1', 65, 0),
(62, 'Category2', 70, 1),
(63, 'Category3', 48, 0),
(64, 'Category4', 42, 1),
(65, 'Category5', 17, 0),
(66, 'Category6', 51, 1),
(67, 'Category7', 47, 0),
(68, 'Category8', 84, 1),
(69, 'Category9', 73, 0),
(70, 'Category10', 71, 1),
(71, 'Category1', 88, 0),
(72, 'Category2', 71, 1),
(73, 'Category3', 3, 0),
(74, 'Category4', 59, 1),
(75, 'Category5', 61, 0),
(76, 'Category6', 81, 1),
(77, 'Category7', 56, 0),
(78, 'Category8', 21, 1),
(79, 'Category9', 65, 0),
(80, 'Category10', 9, 1),
(81, 'Category1', 6, 0),
(82, 'Category2', 100, 1),
(83, 'Category3', 93, 0),
(84, 'Category4', 10, 1),
(85, 'Category5', 55, 0),
(86, 'Category6', 48, 1),
(87, 'Category7', 55, 0),
(88, 'Category8', 55, 1),
(89, 'Category9', 21, 0),
(90, 'Category10', 86, 1),
(91, 'Category1', 71, 0),
(92, 'Category2', 95, 1),
(93, 'Category3', 45, 0),
(94, 'Category4', 29, 1),
(95, 'Category5', 71, 0),
(96, 'Category6', 75, 1),
(97, 'Category7', 20, 0),
(98, 'Category8', 1, 1),
(99, 'Category9', 22, 0),
(100, 'Category10', 72, 1),
(101, 'Category1', 63, 0),
(102, 'Category2', 41, 1),
(103, 'Category3', 71, 0),
(104, 'Category4', 63, 1),
(105, 'Category5', 65, 0),
(106, 'Category6', 13, 1),
(107, 'Category7', 6, 0),
(108, 'Category8', 59, 1),
(109, 'Category9', 61, 0),
(110, 'Category10', 27, 1),
(111, 'Category1', 67, 0),
(112, 'Category2', 35, 1),
(113, 'Category3', 86, 0),
(114, 'Category4', 23, 1),
(115, 'Category5', 6, 0),
(116, 'Category6', 5, 1),
(117, 'Category7', 48, 0),
(118, 'Category8', 88, 1),
(119, 'Category9', 88, 0),
(120, 'Category10', 93, 1),
(121, 'Category1', 48, 0),
(122, 'Category2', 14, 1),
(123, 'Category3', 98, 0),
(124, 'Category4', 81, 1),
(125, 'Category5', 6, 0),
(126, 'Category6', 5, 1),
(127, 'Category7', 11, 0),
(128, 'Category8', 48, 1),
(129, 'Category9', 54, 0),
(130, 'Category10', 55, 1),
(131, 'Category1', 90, 0),
(132, 'Category2', 61, 1),
(133, 'Category3', 47, 0),
(134, 'Category4', 77, 1),
(135, 'Category5', 87, 0),
(136, 'Category6', 64, 1),
(137, 'Category7', 65, 0),
(138, 'Category8', 28, 1),
(139, 'Category9', 49, 0),
(140, 'Category10', 16, 1),
(141, 'Category1', 4, 0),
(142, 'Category2', 85, 1),
(143, 'Category3', 49, 0),
(144, 'Category4', 13, 1),
(145, 'Category5', 67, 0),
(146, 'Category6', 69, 1),
(147, 'Category7', 16, 0),
(148, 'Category8', 86, 1),
(149, 'Category9', 84, 0),
(150, 'Category10', 89, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `owner_id`, `product_id`, `quantity`, `price`, `status`) VALUES
(1, 7, 10, 1, 2, 0, '0'),
(2, 5, 1, 1, 2, 0, '0'),
(3, 6, 4, 10, 5, 0, '0'),
(4, 10, 1, 4, 2, 0, '0'),
(5, 10, 4, 8, 5, 0, '0'),
(6, 9, 6, 5, 4, 0, '0'),
(7, 8, 4, 2, 3, 0, '0'),
(8, 4, 1, 4, 4, 0, '0'),
(9, 3, 9, 3, 1, 0, '0'),
(10, 3, 1, 8, 4, 0, '0'),
(11, 8, 8, 6, 2, 0, '0'),
(12, 8, 1, 8, 1, 0, '0'),
(13, 5, 7, 7, 4, 0, '0'),
(14, 10, 7, 4, 5, 0, '0'),
(15, 4, 4, 9, 2, 0, '0'),
(16, 8, 1, 5, 1, 0, '0'),
(17, 7, 7, 3, 2, 0, '0'),
(18, 6, 7, 7, 2, 0, '0'),
(19, 3, 4, 8, 3, 0, '0'),
(20, 8, 5, 8, 2, 0, '0'),
(21, 181, 181, 0, 2, 26, '0'),
(22, 181, 181, 0, 2, 26, '0'),
(23, 181, 181, 0, 2, 26, '0'),
(24, 181, 181, 0, 2, 26, '0'),
(25, 181, 181, 0, 2, 26, '0'),
(26, 181, 181, 0, 2, 26, '0'),
(27, 181, 181, 0, 2, 26, '0'),
(28, 181, 181, 0, 2, 26, '0'),
(29, 181, 181, 0, 1, 78, '0'),
(30, 181, 10, 1, 7, 91, 'Processing'),
(31, 5, 0, 2, 1223, 2147483647, 'Processing'),
(32, 5, 0, 2, 1223, 2147483647, 'Processing'),
(33, 5, 0, 2, 1223, 2147483647, 'Processing'),
(34, 3, 0, 2, 213123, 2147483647, 'Processing'),
(35, 181, 4, 5, 1, 19, '');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` int(11) NOT NULL,
  `image` text NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `user_id`, `category_id`, `name`, `price`, `image`, `quantity`) VALUES
(1, 10, 6, 'Product1', 13, 'img1.png', 1),
(2, 4, 7, 'Product2', 78, 'img2.png', -216780),
(3, 8, 7, 'Product3', 73, 'img3.png', 26),
(4, 8, 7, 'Product4', 90, 'img4.png', 47),
(5, 4, 1, 'Product5', 19, 'img5.png', 5),
(6, 2, 7, 'Product6', 50, 'img6.png', 8),
(7, 6, 8, 'Product7', 17, 'img7.png', 42),
(8, 2, 3, 'Product8', 53, 'img8.png', 22),
(9, 9, 7, 'Product9', 72, 'img9.png', 29),
(10, 1, 2, 'Product10', 37, 'img10.png', 22),
(11, 2, 8, 'Product1', 42, 'img1.png', 39),
(12, 7, 1, 'Product2', 77, 'img2.png', 45),
(13, 2, 7, 'Product3', 97, 'img3.png', 43),
(14, 8, 4, 'Product4', 80, 'img4.png', 48),
(15, 9, 3, 'Product5', 34, 'img5.png', 26),
(16, 5, 1, 'Product6', 38, 'img6.png', 45),
(17, 3, 1, 'Product7', 66, 'img7.png', 30),
(18, 6, 1, 'Product8', 14, 'img8.png', 47),
(19, 4, 6, 'Product9', 87, 'img9.png', 25),
(20, 1, 10, 'Product10', 69, 'img10.png', 44),
(22, 181, 2, 'PHP new', 123123, 'kelly-sikkema-_04AAMhjm_M-unsplash.jpg', 213123),
(23, 181, 3, 'wqe', 123, 'kelly-sikkema-_04AAMhjm_M-unsplash.jpg', 123123);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `role` varchar(25) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'User1', 'user1@example.com', '', 'user'),
(2, 'User2', 'user2@example.com', '', 'admin'),
(3, 'User3', 'user3@example.com', '', 'user'),
(4, 'User4', 'user4@example.com', '', 'admin'),
(5, 'User5', 'user5@example.com', '', 'user'),
(6, 'User6', 'user6@example.com', '', 'admin'),
(7, 'User7', 'user7@example.com', '', 'user'),
(8, 'User8', 'user8@example.com', '', 'admin'),
(9, 'User9', 'user9@example.com', '', 'user'),
(10, 'User10', 'user10@example.com', '', 'admin'),
(11, 'User1', 'user1@example.com', '', 'user'),
(12, 'User2', 'user2@example.com', '', 'admin'),
(13, 'User3', 'user3@example.com', '', 'user'),
(14, 'User4', 'user4@example.com', '', 'admin'),
(15, 'User5', 'user5@example.com', '', 'user'),
(16, 'User6', 'user6@example.com', '', 'admin'),
(17, 'User7', 'user7@example.com', '', 'user'),
(18, 'User8', 'user8@example.com', '', 'admin'),
(19, 'User9', 'user9@example.com', '', 'user'),
(20, 'User10', 'user10@example.com', '', 'admin'),
(21, 'User1', 'user1@example.com', '', 'user'),
(22, 'User2', 'user2@example.com', '', 'admin'),
(23, 'User3', 'user3@example.com', '', 'user'),
(24, 'User4', 'user4@example.com', '', 'admin'),
(25, 'User5', 'user5@example.com', '', 'user'),
(26, 'User6', 'user6@example.com', '', 'admin'),
(27, 'User7', 'user7@example.com', '', 'user'),
(28, 'User8', 'user8@example.com', '', 'admin'),
(29, 'User9', 'user9@example.com', '', 'user'),
(30, 'User10', 'user10@example.com', '', 'admin'),
(31, 'User1', 'user1@example.com', '', 'user'),
(32, 'User2', 'user2@example.com', '', 'admin'),
(33, 'User3', 'user3@example.com', '', 'user'),
(34, 'User4', 'user4@example.com', '', 'admin'),
(35, 'User5', 'user5@example.com', '', 'user'),
(36, 'User6', 'user6@example.com', '', 'admin'),
(37, 'User7', 'user7@example.com', '', 'user'),
(38, 'User8', 'user8@example.com', '', 'admin'),
(39, 'User9', 'user9@example.com', '', 'user'),
(40, 'User10', 'user10@example.com', '', 'admin'),
(41, 'User1', 'user1@example.com', '', 'user'),
(42, 'User2', 'user2@example.com', '', 'admin'),
(43, 'User3', 'user3@example.com', '', 'user'),
(44, 'User4', 'user4@example.com', '', 'admin'),
(45, 'User5', 'user5@example.com', '', 'user'),
(46, 'User6', 'user6@example.com', '', 'admin'),
(47, 'User7', 'user7@example.com', '', 'user'),
(48, 'User8', 'user8@example.com', '', 'admin'),
(49, 'User9', 'user9@example.com', '', 'user'),
(50, 'User10', 'user10@example.com', '', 'admin'),
(51, 'User1', 'user1@example.com', '', 'user'),
(52, 'User2', 'user2@example.com', '', 'admin'),
(53, 'User3', 'user3@example.com', '', 'user'),
(54, 'User4', 'user4@example.com', '', 'admin'),
(55, 'User5', 'user5@example.com', '', 'user'),
(56, 'User6', 'user6@example.com', '', 'admin'),
(57, 'User7', 'user7@example.com', '', 'user'),
(58, 'User8', 'user8@example.com', '', 'admin'),
(59, 'User9', 'user9@example.com', '', 'user'),
(60, 'User10', 'user10@example.com', '', 'admin'),
(61, 'User1', 'user1@example.com', '', 'user'),
(62, 'User2', 'user2@example.com', '', 'admin'),
(63, 'User3', 'user3@example.com', '', 'user'),
(64, 'User4', 'user4@example.com', '', 'admin'),
(65, 'User5', 'user5@example.com', '', 'user'),
(66, 'User6', 'user6@example.com', '', 'admin'),
(67, 'User7', 'user7@example.com', '', 'user'),
(68, 'User8', 'user8@example.com', '', 'admin'),
(69, 'User9', 'user9@example.com', '', 'user'),
(70, 'User10', 'user10@example.com', '', 'admin'),
(71, 'User1', 'user1@example.com', '', 'user'),
(72, 'User2', 'user2@example.com', '', 'admin'),
(73, 'User3', 'user3@example.com', '', 'user'),
(74, 'User4', 'user4@example.com', '', 'admin'),
(75, 'User5', 'user5@example.com', '', 'user'),
(76, 'User6', 'user6@example.com', '', 'admin'),
(77, 'User7', 'user7@example.com', '', 'user'),
(78, 'User8', 'user8@example.com', '', 'admin'),
(79, 'User9', 'user9@example.com', '', 'user'),
(80, 'User10', 'user10@example.com', '', 'admin'),
(81, 'User1', 'user1@example.com', '', 'user'),
(82, 'User2', 'user2@example.com', '', 'admin'),
(83, 'User3', 'user3@example.com', '', 'user'),
(84, 'User4', 'user4@example.com', '', 'admin'),
(85, 'User5', 'user5@example.com', '', 'user'),
(86, 'User6', 'user6@example.com', '', 'admin'),
(87, 'User7', 'user7@example.com', '', 'user'),
(88, 'User8', 'user8@example.com', '', 'admin'),
(89, 'User9', 'user9@example.com', '', 'user'),
(90, 'User10', 'user10@example.com', '', 'admin'),
(91, 'User1', 'user1@example.com', '', 'user'),
(92, 'User2', 'user2@example.com', '', 'admin'),
(93, 'User3', 'user3@example.com', '', 'user'),
(94, 'User4', 'user4@example.com', '', 'admin'),
(95, 'User5', 'user5@example.com', '', 'user'),
(96, 'User6', 'user6@example.com', '', 'admin'),
(97, 'User7', 'user7@example.com', '', 'user'),
(98, 'User8', 'user8@example.com', '', 'admin'),
(99, 'User9', 'user9@example.com', '', 'user'),
(100, 'User10', 'user10@example.com', '', 'admin'),
(101, 'User1', 'user1@example.com', '', 'user'),
(102, 'User2', 'user2@example.com', '', 'admin'),
(103, 'User3', 'user3@example.com', '', 'user'),
(104, 'User4', 'user4@example.com', '', 'admin'),
(105, 'User5', 'user5@example.com', '', 'user'),
(106, 'User6', 'user6@example.com', '', 'admin'),
(107, 'User7', 'user7@example.com', '', 'user'),
(108, 'User8', 'user8@example.com', '', 'admin'),
(109, 'User9', 'user9@example.com', '', 'user'),
(110, 'User10', 'user10@example.com', '', 'admin'),
(111, 'User1', 'user1@example.com', '', 'user'),
(112, 'User2', 'user2@example.com', '', 'admin'),
(113, 'User3', 'user3@example.com', '', 'user'),
(114, 'User4', 'user4@example.com', '', 'admin'),
(115, 'User5', 'user5@example.com', '', 'user'),
(116, 'User6', 'user6@example.com', '', 'admin'),
(117, 'User7', 'user7@example.com', '', 'user'),
(118, 'User8', 'user8@example.com', '', 'admin'),
(119, 'User9', 'user9@example.com', '', 'user'),
(120, 'User10', 'user10@example.com', '', 'admin'),
(121, 'User1', 'user1@example.com', '', 'user'),
(122, 'User2', 'user2@example.com', '', 'admin'),
(123, 'User3', 'user3@example.com', '', 'user'),
(124, 'User4', 'user4@example.com', '', 'admin'),
(125, 'User5', 'user5@example.com', '', 'user'),
(126, 'User6', 'user6@example.com', '', 'admin'),
(127, 'User7', 'user7@example.com', '', 'user'),
(128, 'User8', 'user8@example.com', '', 'admin'),
(129, 'User9', 'user9@example.com', '', 'user'),
(130, 'User10', 'user10@example.com', '', 'admin'),
(131, 'User1', 'user1@example.com', '', 'user'),
(132, 'User2', 'user2@example.com', '', 'admin'),
(133, 'User3', 'user3@example.com', '', 'user'),
(134, 'User4', 'user4@example.com', '', 'admin'),
(135, 'User5', 'user5@example.com', '', 'user'),
(136, 'User6', 'user6@example.com', '', 'admin'),
(137, 'User7', 'user7@example.com', '', 'user'),
(138, 'User8', 'user8@example.com', '', 'admin'),
(139, 'User9', 'user9@example.com', '', 'user'),
(140, 'User10', 'user10@example.com', '', 'admin'),
(141, 'User1', 'user1@example.com', '', 'user'),
(142, 'User2', 'user2@example.com', '', 'admin'),
(143, 'User3', 'user3@example.com', '', 'user'),
(144, 'User4', 'user4@example.com', '', 'admin'),
(145, 'User5', 'user5@example.com', '', 'user'),
(146, 'User6', 'user6@example.com', '', 'admin'),
(147, 'User7', 'user7@example.com', '', 'user'),
(148, 'User8', 'user8@example.com', '', 'admin'),
(149, 'User9', 'user9@example.com', '', 'user'),
(150, 'User10', 'user10@example.com', '', 'admin'),
(151, 'User1', 'user1@example.com', '', 'user'),
(152, 'User2', 'user2@example.com', '', 'admin'),
(153, 'User3', 'user3@example.com', '', 'user'),
(154, 'User4', 'user4@example.com', '', 'admin'),
(155, 'User5', 'user5@example.com', '', 'user'),
(156, 'User6', 'user6@example.com', '', 'admin'),
(157, 'User7', 'user7@example.com', '', 'user'),
(158, 'User8', 'user8@example.com', '', 'admin'),
(159, 'User9', 'user9@example.com', '', 'user'),
(160, 'User10', 'user10@example.com', '', 'admin'),
(161, 'User1', 'user1@example.com', '', 'user'),
(162, 'User2', 'user2@example.com', '', 'admin'),
(163, 'User3', 'user3@example.com', '', 'user'),
(164, 'User4', 'user4@example.com', '', 'admin'),
(165, 'User5', 'user5@example.com', '', 'user'),
(166, 'User6', 'user6@example.com', '', 'admin'),
(167, 'User7', 'user7@example.com', '', 'user'),
(168, 'User8', 'user8@example.com', '', 'admin'),
(169, 'User9', 'user9@example.com', '', 'user'),
(170, 'User10', 'user10@example.com', '', 'admin'),
(171, 'User1', 'user1@example.com', '', 'user'),
(172, 'User2', 'user2@example.com', '', 'admin'),
(173, 'User3', 'user3@example.com', '', 'user'),
(174, 'User4', 'user4@example.com', '', 'admin'),
(175, 'User5', 'user5@example.com', '', 'user'),
(176, 'User6', 'user6@example.com', '', 'admin'),
(177, 'User7', 'user7@example.com', '', 'user'),
(178, 'User8', 'user8@example.com', '', 'admin'),
(179, 'User9', 'user9@example.com', '', 'user'),
(180, 'User10', 'user10@example.com', '', 'admin'),
(181, 'salimbay', 'yelimuratovsalimbay@gmail.com', '123', 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
