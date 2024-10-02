-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 02 2024 г., 05:51
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
-- База данных: `talaba_crud`
--

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `fio` varchar(255) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `manzil` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `fio`, `tel`, `manzil`, `img`, `created_at`) VALUES
(2, 'Salimbay Elimuratov', '913892033', 'Tashkent, Sergeli', 'Screenshot 2024-09-26 161223.png', '2024-10-02 03:49:32'),
(3, 'Salimbay Elimuratov', '913892033', 'Tashkent, Sergeli', 'Screenshot 2024-09-26 161223.png', '2024-10-02 03:50:21'),
(4, 'Salimbay Elimuratov', '913892033', 'Tashkent, Sergeli', 'Screenshot 2024-09-26 161223.png', '2024-10-02 03:50:25'),
(5, 'Salimbay Elimuratov', '913892033', 'Tashkent, Sergeli', 'Screenshot 2024-09-26 161223.png', '2024-10-02 03:50:26'),
(6, 'Salimbay Elimuratov', '913892033', 'Tashkent, Sergeli', 'Screenshot 2024-09-26 161223.png', '2024-10-02 03:50:27'),
(7, 'Salimbay Elimuratov', '913892033', 'Tashkent, Sergeli', 'Screenshot 2024-09-26 161223.png', '2024-10-02 03:50:27');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
