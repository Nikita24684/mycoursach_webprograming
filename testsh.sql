-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Окт 19 2021 г., 17:52
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testsh`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
(1, 'Ноутбуки', 1, 1),
(2, 'Планшеты', 2, 1),
(3, 'Телефоны', 3, 1),
(29, 'Аксессуары', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `price` float NOT NULL,
  `availability` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_new` int(11) NOT NULL DEFAULT 0,
  `is_recommended` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `code`, `price`, `availability`, `brand`, `description`, `is_new`, `is_recommended`, `status`, `image`) VALUES
(2, 'Ноутбук HP Stream 11-d050nr', 1, 2343847, 305, 0, 'Hewlett Packard', 'Экран 11.6” (1366x768) HD LED, матовый / Intel Celeron N2840 (2.16 ГГц) / RAM 2 ГБ / eMMC 32 ГБ / Intel HD Graphics / без ОД / Wi-Fi / Bluetooth / веб-камера / Windows 8.1 + MS Office 365 / 1.28 кг / синий', 1, 1, 1, 'views/images/hp.jpg'),
(7, 'Ноутбук Asus X751MA', 1, 2028367, 430, 1, 'Asus', 'Экран 17.3\" (1600х900) HD+ LED, глянцевый / Intel Pentium N3540 (2.16 - 2.66 ГГц) / RAM 4 ГБ / HDD 1 ТБ / Intel HD Graphics / DVD Super Multi / LAN / Wi-Fi / Bluetooth 4.0 / веб-камера / DOS / 2.6 кг / белый', 0, 1, 1, NULL),
(8, 'Samsung Galaxy Tab S 10.5 16GB', 2, 1129365, 780, 1, 'Samsung', 'Samsung Galaxy Tab S создан для того, чтобы сделать вашу жизнь лучше. Наслаждайтесь своим контентом с покрытием 94% цветов Adobe RGB и 100000:1 уровнем контрастности, который обеспечивается sAmoled экраном с функцией оптимизации под отображаемое изображение и окружение. Яркий 10.5” экран в ультратонком корпусе весом 467 г порадует вас высоким уровнем портативности. Работа станет проще вместе с Hancom Office и удаленным доступом к вашему ПК. E-Meeting и WebEx – отличные помощники для проведения встреч, когда вы находитесь вне офиса. Надежно храните ваши данные благодаря сканеру отпечатка пальцев.', 1, 1, 1, NULL),
(9, 'Samsung Galaxy Tab S 8.4 16GB', 2, 1128670, 640, 1, 'Samsung', 'Экран 8.4\" Super AMOLED (2560x1600) емкостный Multi-Touch / Samsung Exynos 5420 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ / 16 ГБ встроенной памяти + поддержка карт памяти microSD / Bluetooth 4.0 / Wi-Fi 802.11 a/b/g/n/ac / основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 4.4.2 (KitKat) / 294 г / белый', 0, 0, 1, NULL),
(10, 'Gazer Tegra Note 7', 2, 683364, 210, 1, 'Gazer', 'Экран 7\" IPS (1280x800) емкостный Multi-Touch / NVIDIA Tegra 4 (1.8 ГГц) / RAM 1 ГБ / 16 ГБ встроенной памяти + поддержка карт памяти microSD / Wi-Fi / Bluetooth 4.0 / основная камера 5 Мп, фронтальная - 0.3 Мп / GPS / ГЛОНАСС / Android 4.4.2 (KitKat) / вес 320 г', 0, 0, 1, NULL),
(11, 'Мобильный телефон SONY Xperia V LT25i Black', 3, 355025, 175, 1, 'Sony', 'Sony Xperia V имеет довольно компактный размер, что уже выделяет его среди большинства современных устройств. Смартфон выполнен в фирменном для Sony «арочном» стиле – матовая задняя крышка имеет вогнутую форму, благодаря чему Xperia V удобно лежит в руке. Еще одной изюминкой дизайна является окантовка, внешне напоминающая металл.', 0, 0, 1, NULL),
(12, 'Наушники Sennheiser CX 150', 4, 1563832, 25, 1, 'Sennheiser', 'Высококачественные внутриканальные (Ear Canal) закрытые стереонаушники с мощным стереозвуком, насыщенным низкими частотами. Оптимизированы для высококачественного воспроизведения звука в движении. Комплект ушных вставок-адаптеров трёх разных размеров гарантирует высокий комфорт, оптимальную посадку в ушном канале и превосходное подавление внешних шумов. CX 150 идеально подходят для использования с МР3, CD, MD и DVD плеерами и другими портативными устройствами', 0, 0, 1, NULL),
(13, 'Ноутбук Asus X200MA (X200MA-KX315D)', 1, 1839707, 395, 1, 'Asus', 'Экран 11.6\" (1366x768) HD LED, глянцевый / Intel Pentium N3530 (2.16 - 2.58 ГГц) / RAM 4 ГБ / HDD 750 ГБ / Intel HD Graphics / без ОД / Bluetooth 4.0 / Wi-Fi / LAN / веб-камера / без ОС / 1.24 кг / синий', 0, 0, 1, NULL),
(14, 'Ноутбук HP Stream 11-d050nr', 1, 2343847, 305, 0, 'Hewlett Packard', 'Экран 11.6” (1366x768) HD LED, матовый / Intel Celeron N2840 (2.16 ГГц) / RAM 2 ГБ / eMMC 32 ГБ / Intel HD Graphics / без ОД / Wi-Fi / Bluetooth / веб-камера / Windows 8.1 + MS Office 365 / 1.28 кг / синий', 1, 0, 1, NULL),
(15, 'Ноутбук Asus X200MA White ', 1, 2028027, 270, 1, 'Asus', 'Экран 11.6\" (1366x768) HD LED, глянцевый / Intel Celeron N2840 (2.16 ГГц) / RAM 2 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / Bluetooth 4.0 / Wi-Fi / LAN / веб-камера / без ОС / 1.24 кг / белый', 0, 0, 1, NULL),
(16, 'Ноутбук Acer Aspire E3-112-C65X', 1, 2019487, 325, 1, 'Acer', 'Экран 11.6\'\' (1366x768) HD LED, матовый / Intel Celeron N2840 (2.16 ГГц) / RAM 2 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linpus / 1.29 кг / серебристый', 0, 0, 1, NULL),
(17, 'Ноутбук Acer TravelMate TMB115', 1, 1953212, 275, 1, 'Acer', 'Экран 11.6\'\' (1366x768) HD LED, матовый / Intel Celeron N2840 (2.16 ГГц) / RAM 2 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth 4.0 / веб-камера / Linpus / 1.32 кг / черный', 0, 0, 1, NULL),
(18, 'Ноутбук Lenovo Flex 10', 1, 1602042, 370, 0, 'Lenovo', 'Экран 10.1', 0, 0, 1, NULL),
(19, 'Ноутбук Asus X751MA', 1, 2028367, 430, 1, 'Asus', 'Экран 17.3\" (1600х900) HD+ LED, глянцевый / Intel Pentium N3540 (2.16 - 2.66 ГГц) / RAM 4 ГБ / HDD 1 ТБ / Intel HD Graphics / DVD Super Multi / LAN / Wi-Fi / Bluetooth 4.0 / веб-камера / DOS / 2.6 кг / белый', 0, 0, 1, NULL),
(20, 'Ноутбук HP 255 (J0Y43EA)', 1, 2028367, 9200, 1, 'HP', 'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный', 0, 0, 1, NULL),
(21, 'Ноутбук Dell Vostro 5470 (V4545NDL-13/15) Haswell', 1, 2028367, 9200, 1, 'DELL', 'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный', 1, 0, 1, NULL),
(22, 'Ноутбук HP 255 (J0Y43EA)', 1, 2028367, 9200, 1, 'HP', 'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный', 0, 0, 1, NULL),
(23, 'Ноутбук ASUS E502MA-XX0030D (90NL0021-M00450)', 1, 2028367, 9200, 1, 'Asus', 'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный', 0, 0, 1, NULL),
(24, 'Ноутбук Lenovo IdeaPad G50-30 (80G00028UA) ', 1, 2028367, 9200, 1, 'Lenovo', 'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный', 0, 0, 1, NULL),
(25, 'Ноутбук LENOVO 100-15 (80QQ004RUA) ', 1, 2028367, 9200, 1, 'Lenovo', 'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный', 0, 0, 1, NULL),
(26, 'Ноутбук ASUS Zenbook Pro UX501JW-FJ410T (90NB0871-M06660)', 1, 2028367, 9200, 1, 'Asus', 'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный', 0, 0, 1, NULL),
(27, 'Ноутбук Apple A1502 MacBook Pro (MF839UA/A)', 1, 2028367, 9200, 1, 'Apple', 'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный', 1, 0, 1, NULL),
(28, 'Ноутбук LENOVO 100-15 (80QQ004NUA)', 1, 2028367, 9200, 1, 'Lenovo', 'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный', 0, 0, 1, NULL),
(29, 'Ноутбук LENOVO G5080 (80E502PTUA) ', 1, 2028367, 9200, 1, 'Lenovo', 'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный', 0, 0, 1, NULL),
(30, 'Ноутбук ASUS X553SA-XX185D (90NB0AC3-M02800)', 1, 2028367, 9200, 1, 'Asus', 'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный', 0, 0, 1, NULL),
(31, 'Ноутбук Lenovo G5080 (80E501JKUA)', 1, 2028367, 9200, 1, 'Lenovo', 'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный', 1, 0, 1, NULL),
(32, 'Нетбук Acer V5-131-10072G32NKK (NX.M89EU.005)', 1, 2028367, 9200, 1, 'Acer', 'Экран 11.3” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный', 0, 0, 1, NULL),
(33, 'Ноутбук Dell Vostro 5470 (V4345NDL-14) Haswell Silver', 1, 2028367, 9200, 1, 'DELL', 'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный', 0, 0, 1, NULL),
(34, 'Ноутбук Apple MacBook Pro 13\" (MD101UA/A)', 1, 2028367, 9200, 1, 'Apple', 'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный', 0, 0, 1, NULL),
(35, 'Ультрабук ASUS Transformer TX300CA-C4023H', 1, 2028367, 9200, 1, 'Asus', 'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный', 0, 0, 1, NULL),
(36, 'Ноутбук HP Pavilion 15-n292sr (G5E73EA)', 1, 2028367, 9200, 1, 'HP', 'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный', 0, 0, 1, NULL),
(37, 'Ноутбук Acer Packard Bell ENTF71BM-C5XC (NX.C3SEU.005)', 1, 2028367, 9200, 1, 'Acer', 'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный', 0, 0, 1, NULL),
(38, 'Ультрабук ASUS VivoBook S551LB-CJ042H', 1, 2028367, 9200, 1, 'Asus', 'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный', 0, 0, 1, NULL),
(39, 'Ноутбук ASUS K550CA-XX1043D (90NB00U3-M18860)', 1, 2028367, 9200, 1, 'Asus', 'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный', 1, 0, 1, NULL),
(40, 'Ноутбук HP 250 (J0X92EA)', 1, 2028367, 9200, 1, 'HP', 'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный', 1, 0, 1, NULL),
(41, 'Планшет Samsung Galaxy Tab S2 9.7\" 32GB Champagne', 2, 565974, 6900, 1, 'Samsung', 'Экран 9.7\" Super AMOLED (2048x1536) емкостный MultiTouch / Samsung Exynos 5433 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ / 32 ГБ встроенной памяти + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 / основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 5.0 (Lollipop) / 375 г / черный', 0, 0, 1, NULL),
(42, 'Планшет Samsung Galaxy Tab S2 8.0\" 32GB Champagne', 2, 565974, 6900, 1, 'Samsung', 'Экран 9.7\" Super AMOLED (2048x1536) емкостный MultiTouch / Samsung Exynos 5433 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ / 32 ГБ встроенной памяти + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 / основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 5.0 (Lollipop) / 375 г / черный', 1, 0, 1, NULL),
(43, 'Планшет Lenovo YOGA Tablet 3-850M LTE', 2, 565974, 6900, 1, 'Lenovo', 'Экран 9.7', 0, 0, 1, NULL),
(44, 'Интернет-планшет Asus 7\" MeMO Pad ME70 8GB black', 2, 565974, 6900, 1, 'Asus', 'Экран 9.7\" Super AMOLED (2048x1536) емкостный MultiTouch / Samsung Exynos 5433 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ / 32 ГБ встроенной памяти + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 / основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 5.0 (Lollipop) / 375 г / черный', 0, 0, 1, NULL),
(45, 'Интернет-планшет Lenovo 10.1\" Yoga Tablet 2-1050F', 2, 565974, 6900, 1, 'Lenovo', 'Экран 9.7\" Super AMOLED (2048x1536) емкостный MultiTouch / Samsung Exynos 5433 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ / 32 ГБ встроенной памяти + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 / основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 5.0 (Lollipop) / 375 г / черный', 1, 0, 1, NULL),
(46, 'Интернет-планшет Globex 9,7', 2, 565974, 6900, 1, 'Globex', 'Экран 9.7', 0, 0, 1, NULL),
(47, 'Интернет-планшет PocketBook 7\" SURFpad U7', 2, 565974, 6900, 1, 'PocketBook', 'Экран 9.7\" Super AMOLED (2048x1536) емкостный MultiTouch / Samsung Exynos 5433 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ / 32 ГБ встроенной памяти + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 / основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 5.0 (Lollipop) / 375 г / черный', 0, 0, 1, NULL),
(48, 'Интернет-планшет SONY 9.4\" Xperia Tablet S 16 GB 3G (SGPT131RU/S.RU3)', 2, 565974, 6900, 1, 'Sony', 'Экран 9.7\" Super AMOLED (2048x1536) емкостный MultiTouch / Samsung Exynos 5433 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ / 32 ГБ встроенной памяти + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 / основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 5.0 (Lollipop) / 375 г / черный', 0, 0, 1, NULL),
(49, 'Планшетный компьютер Apple iPad Mini with Retina Wi-Fi 16GB Space Gray', 2, 565974, 6900, 1, 'Apple', 'Экран 9.7\" Super AMOLED (2048x1536) емкостный MultiTouch / Samsung Exynos 5433 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ / 32 ГБ встроенной памяти + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 / основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 5.0 (Lollipop) / 375 г / черный', 1, 0, 1, NULL),
(50, 'Планшетный компьютер Apple iPad Air Wi-Fi 16GB Silver', 2, 565974, 6900, 1, 'Apple', 'Экран 9.7\" Super AMOLED (2048x1536) емкостный MultiTouch / Samsung Exynos 5433 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ / 32 ГБ встроенной памяти + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 / основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 5.0 (Lollipop) / 375 г / черный', 1, 0, 1, NULL),
(51, 'Планшетный компьютер Apple iPad Air Wi-Fi 16GB Space Gray', 2, 565974, 6900, 1, 'Apple', 'Экран 9.7\" Super AMOLED (2048x1536) емкостный MultiTouch / Samsung Exynos 5433 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ / 32 ГБ встроенной памяти + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 / основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 5.0 (Lollipop) / 375 г / черный', 0, 0, 1, NULL),
(52, 'Интернет-планшет SAMSUNG 10.1\" Galaxy Note 2014 White', 2, 565974, 6900, 1, 'Samsung', 'Экран 9.7\" Super AMOLED (2048x1536) емкостный MultiTouch / Samsung Exynos 5433 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ / 32 ГБ встроенной памяти + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 / основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 5.0 (Lollipop) / 375 г / черный', 0, 0, 1, NULL),
(53, 'Интернет-планшет 10\" Lenovo A7600 Navy Blue 16GB 3G', 2, 565974, 6900, 1, 'Lenovo', 'Экран 9.7\" Super AMOLED (2048x1536) емкостный MultiTouch / Samsung Exynos 5433 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ / 32 ГБ встроенной памяти + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 / основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 5.0 (Lollipop) / 375 г / черный', 0, 0, 1, NULL),
(54, 'Планшетный компьютер Apple iPad Mini with Retina Wi-Fi 16GB Silver', 2, 565974, 6900, 1, 'Apple', 'Экран 9.7\" Super AMOLED (2048x1536) емкостный MultiTouch / Samsung Exynos 5433 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ / 32 ГБ встроенной памяти + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 / основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 5.0 (Lollipop) / 375 г / черный', 0, 0, 1, NULL),
(55, 'Планшет Samsung Galaxy Tab 4 7.0 3G Ebony Black', 2, 565974, 6900, 1, 'Samsung', 'Экран 9.7\" Super AMOLED (2048x1536) емкостный MultiTouch / Samsung Exynos 5433 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ / 32 ГБ встроенной памяти + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 / основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 5.0 (Lollipop) / 375 г / черный', 0, 0, 1, NULL),
(56, 'Планшет Microsoft Surface RT 32Gb (9HR-00016)', 2, 565974, 6900, 1, 'Microsoft', 'Экран 9.7\" Super AMOLED (2048x1536) емкостный MultiTouch / Samsung Exynos 5433 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ / 32 ГБ встроенной памяти + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 / основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 5.0 (Lollipop) / 375 г / черный', 0, 0, 1, NULL),
(57, 'Планшет Microsoft Surface RT 32Gb (7XR-00028)', 2, 565974, 6900, 1, 'Microsoft', 'Экран 9.7\" Super AMOLED (2048x1536) емкостный MultiTouch / Samsung Exynos 5433 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ / 32 ГБ встроенной памяти + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 / основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 5.0 (Lollipop) / 375 г / черный', 0, 0, 1, NULL),
(58, 'Интернет-планшет Acer 10\" Iconia Tab A200 Silver (HT.H9SEE.002)', 2, 565974, 6900, 1, 'Acer', 'Экран 9.7\" Super AMOLED (2048x1536) емкостный MultiTouch / Samsung Exynos 5433 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ / 32 ГБ встроенной памяти + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 / основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 5.0 (Lollipop) / 375 г / черный', 1, 0, 1, NULL),
(59, 'Интернет-планшет Lenovo 10\" IdeaTab Miix 2 64GB', 2, 565974, 6900, 1, 'Lenovo', 'Экран 9.7\" Super AMOLED (2048x1536) емкостный MultiTouch / Samsung Exynos 5433 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ / 32 ГБ встроенной памяти + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 / основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 5.0 (Lollipop) / 375 г / черный', 0, 0, 1, NULL),
(60, 'Мобильный телефон SONY Xperia V LT25i Black', 3, 64486, 6900, 1, 'Sony', 'Экран (5.7\", Super AMOLED, 2560х1440)/ Samsung Exynos 7420 (Quad 1.5 ГГц + Quad 2.1 ГГц)/ основная камера: 16 Мп, фронтальная камера: 5 Мп/ RAM 4 ГБ/ 32 ГБ встроенной памяти/ 3G/ LTE/ GPS/ Nano-SIM/ Android 5.1 (Lollipop) / 3000 мА*ч', 0, 0, 1, NULL),
(61, 'Мобильный телефон Lenovo A536 DUAL SIM BLACK', 3, 64486, 6900, 1, 'Lenovo', 'Экран (5.7\", Super AMOLED, 2560х1440)/ Samsung Exynos 7420 (Quad 1.5 ГГц + Quad 2.1 ГГц)/ основная камера: 16 Мп, фронтальная камера: 5 Мп/ RAM 4 ГБ/ 32 ГБ встроенной памяти/ 3G/ LTE/ GPS/ Nano-SIM/ Android 5.1 (Lollipop) / 3000 мА*ч', 0, 0, 1, NULL),
(62, 'Мобильный телефон SONY Xperia M2 D2302 DualSim Black', 3, 64486, 6900, 1, 'Sony', 'Экран (5.7\", Super AMOLED, 2560х1440)/ Samsung Exynos 7420 (Quad 1.5 ГГц + Quad 2.1 ГГц)/ основная камера: 16 Мп, фронтальная камера: 5 Мп/ RAM 4 ГБ/ 32 ГБ встроенной памяти/ 3G/ LTE/ GPS/ Nano-SIM/ Android 5.1 (Lollipop) / 3000 мА*ч', 0, 0, 1, NULL),
(63, 'Смартфон Samsung Galaxy Star Advance Duos G350E Black', 3, 64486, 6900, 1, 'Samsung', 'Экран (5.7\", Super AMOLED, 2560х1440)/ Samsung Exynos 7420 (Quad 1.5 ГГц + Quad 2.1 ГГц)/ основная камера: 16 Мп, фронтальная камера: 5 Мп/ RAM 4 ГБ/ 32 ГБ встроенной памяти/ 3G/ LTE/ GPS/ Nano-SIM/ Android 5.1 (Lollipop) / 3000 мА*ч', 0, 0, 1, NULL),
(64, 'Смартфон Samsung Galaxy S5 G900H Charcoal Black ', 3, 64486, 6900, 1, 'Samsung', 'Экран (5.7\", Super AMOLED, 2560х1440)/ Samsung Exynos 7420 (Quad 1.5 ГГц + Quad 2.1 ГГц)/ основная камера: 16 Мп, фронтальная камера: 5 Мп/ RAM 4 ГБ/ 32 ГБ встроенной памяти/ 3G/ LTE/ GPS/ Nano-SIM/ Android 5.1 (Lollipop) / 3000 мА*ч', 0, 0, 1, NULL),
(65, 'Смартфон Samsung Note 4 N910 black', 3, 64486, 6900, 1, 'Samsung', 'Экран (5.7\", Super AMOLED, 2560х1440)/ Samsung Exynos 7420 (Quad 1.5 ГГц + Quad 2.1 ГГц)/ основная камера: 16 Мп, фронтальная камера: 5 Мп/ RAM 4 ГБ/ 32 ГБ встроенной памяти/ 3G/ LTE/ GPS/ Nano-SIM/ Android 5.1 (Lollipop) / 3000 мА*ч', 0, 0, 1, NULL),
(66, 'Мобильный телефон HTC One M8 Metal Grey', 3, 64486, 6900, 1, 'HTC', 'Экран (5.7\", Super AMOLED, 2560х1440)/ Samsung Exynos 7420 (Quad 1.5 ГГц + Quad 2.1 ГГц)/ основная камера: 16 Мп, фронтальная камера: 5 Мп/ RAM 4 ГБ/ 32 ГБ встроенной памяти/ 3G/ LTE/ GPS/ Nano-SIM/ Android 5.1 (Lollipop) / 3000 мА*ч', 0, 0, 1, NULL),
(67, 'Смартфон Samsung Galaxy A5 Duos A500H/DS Black', 3, 64486, 6900, 1, 'Samsung', 'Экран (5.7\", Super AMOLED, 2560х1440)/ Samsung Exynos 7420 (Quad 1.5 ГГц + Quad 2.1 ГГц)/ основная камера: 16 Мп, фронтальная камера: 5 Мп/ RAM 4 ГБ/ 32 ГБ встроенной памяти/ 3G/ LTE/ GPS/ Nano-SIM/ Android 5.1 (Lollipop) / 3000 мА*ч', 0, 0, 1, NULL),
(68, 'Мобильный телефон Acer Liquid E700 Triple Sim Black', 3, 64486, 6900, 1, 'Acer', 'Экран (5.7\", Super AMOLED, 2560х1440)/ Samsung Exynos 7420 (Quad 1.5 ГГц + Quad 2.1 ГГц)/ основная камера: 16 Мп, фронтальная камера: 5 Мп/ RAM 4 ГБ/ 32 ГБ встроенной памяти/ 3G/ LTE/ GPS/ Nano-SIM/ Android 5.1 (Lollipop) / 3000 мА*ч', 0, 0, 1, NULL),
(69, 'Мобильный телефон SONY Xperia M Dual C2005 Purple', 3, 64486, 6900, 1, 'Sony', 'Экран (5.7\", Super AMOLED, 2560х1440)/ Samsung Exynos 7420 (Quad 1.5 ГГц + Quad 2.1 ГГц)/ основная камера: 16 Мп, фронтальная камера: 5 Мп/ RAM 4 ГБ/ 32 ГБ встроенной памяти/ 3G/ LTE/ GPS/ Nano-SIM/ Android 5.1 (Lollipop) / 3000 мА*ч', 0, 0, 1, NULL),
(70, 'Мобильный телефон Apple iPhone 6 Plus 16 GB SPACE GRAY', 3, 64486, 6900, 1, 'Apple', 'Экран (5.7', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_comment` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `products` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_order`
--

INSERT INTO `product_order` (`id`, `user_name`, `user_phone`, `user_email`, `user_comment`, `user_id`, `date`, `products`, `status`) VALUES
(42, 'Никита', '0997121751', 'guminskij00@gmail.com', 'Упакуйте в мягкую упаковку пожалуйста', NULL, '2021-02-28 23:05:09', '{id товара:2, название:Ноутбук HP Stream 11-d050nr, цена:305, количество:6};{id товара:7, название:Ноутбук Asus X751MA, цена:430, количество:7};', 0),
(43, 'епеппе', '0987654', 'vfcd@frdes.com', '', NULL, '2021-10-13 21:32:38', '{id товара:13, название:Ноутбук Asus X200MA (X200MA-KX315D), цена:395, количество:15};', 0),
(44, 'епеппе', '0987654', 'vfcd@frdes.com', '', NULL, '2021-10-19 14:42:48', '{id товара:13, название:Ноутбук Asus X200MA (X200MA-KX315D), цена:395, количество:10};', 0),
(45, 'епеппе', '0987654', 'vfcd@frdes.com', 'ацацуауцацуауцауца', NULL, '2021-10-19 14:47:44', '{id товара:7, название:Ноутбук Asus X751MA, цена:430, количество:4};', 0),
(46, 'епеппе', '0987654', 'vfcd@frdes.com', 'ацацуауцацуауцауца', NULL, '2021-10-19 14:51:49', '{id товара:10, название:Gazer Tegra Note 7, цена:210, количество:3};', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` text DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `token`, `password`, `role`) VALUES
(4, 'Admin', 'guminskij00@gmail.com', NULL, '$2y$10$zBnqDtDlYuv4TkO.1CvCWOmuiNyGmMga58eqAaXvAe0HOO7LLK.AS', 'admin'),
(5, 'Vasya', 'pupkin@gmail.com', NULL, '$2y$10$x8vZQoKWdzc0.cjxc1H1wOv0hdk9tDzLaavjisea8c182zTHkInya', 'user'),
(7, 'Nikita24684', 'serg1@mail.com', NULL, '$2y$10$miVVfFSE48IsjBKZ91DNBea0cfj1wZQaAHUFdeNT5S76X/f0MZU72', 'user'),
(8, 'Вася Пупкин', 'vasyok@gmail.com', NULL, '$2y$10$qRCfqf1OrgLBWWTG.zTzBe7XizCU7luq7ZlasNcQIAyl1Rjl5feqW', 'user'),
(9, 'Nekit125', 'nekit@gmail.com', NULL, '$2y$10$9RQsWwXbZVKH9Eu8yZWakO3v2AL2INU7cL7m2bb.b24u8DzKGUH3O', 'user'),
(23, 'nikitos ', 'ixvzvauqnqpmdmbjtx@kiabws.com', NULL, '$2y$10$HxW/MsZbazVL9hkomzyHCu7lRxKmho2dUxnEWT2z08otqbQNlpU3.', 'user');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT для таблицы `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
