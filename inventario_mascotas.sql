-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-06-2021 a las 00:05:22
-- Versión del servidor: 5.7.11
-- Versión de PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario_mascotas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(4, 'Alimentos para perro'),
(3, 'Almacen'),
(7, 'Dietetica'),
(6, 'Especias'),
(2, 'Frutos secos'),
(5, 'Semillas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `id` int(11) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `media`
--

INSERT INTO `media` (`id`, `file_name`, `file_type`) VALUES
(2, 'comino.jpg', 'image/jpeg'),
(3, 'pimenton.jpg', 'image/jpeg'),
(4, 'pimientablancagrano.jpg', 'image/jpeg'),
(5, 'fideosbluepatna.jpg', 'image/jpeg'),
(6, 'pimienta-negra-molida.jpg', 'image/jpeg'),
(7, 'provenzal.jpg', 'image/jpeg'),
(8, 'oregano.jpg', 'image/jpeg'),
(9, 'fideossoyarroz.jpg', 'image/jpeg'),
(10, 'fideosdearrozorox.jpg', 'image/jpeg'),
(11, 'macakallpa.jpg', 'image/jpeg'),
(12, 'macanegra.jpeg', 'image/jpeg'),
(13, 'azucarmascabo.jpg', 'image/jpeg'),
(14, 'stevialiquida.jpg', 'image/jpeg'),
(15, 'discosdearroz.jpg', 'image/jpeg'),
(16, 'sal-marina.jpg', 'image/jpeg'),
(17, 'salhimalaya.jpg', 'image/jpeg'),
(18, 'aceitedecoco.jpg', 'image/jpeg'),
(19, 'lentejas.jpg', 'image/jpeg'),
(20, 'arrozintegral.jpg', 'image/jpeg'),
(21, 'porotosalubia.jpg', 'image/jpeg'),
(22, 'porotosnegros.jpg', 'image/jpeg'),
(23, 'garbanzos.jpg', 'image/jpeg'),
(24, 'harinaintegral.jpg', 'image/jpeg'),
(25, 'harina-de-arroz.jpg', 'image/jpeg'),
(26, 'nuecespeladas.jpg', 'image/jpeg'),
(27, 'almendras.jpg', 'image/jpeg'),
(28, 'barrajberries.jpg', 'image/jpeg'),
(29, 'aceitedeoliva.jpg', 'image/jpeg'),
(30, 'barrawillka.jpg', 'image/jpeg'),
(31, 'granola.jpg', 'image/jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `buy_price` decimal(25,2) DEFAULT NULL,
  `sale_price` decimal(25,2) NOT NULL,
  `categorie_id` int(11) UNSIGNED NOT NULL,
  `media_id` int(11) DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `buy_price`, `sale_price`, `categorie_id`, `media_id`, `date`) VALUES
(3, 'Comino molido', '2', '360.00', '500.00', 6, 2, '2021-05-31 21:42:41'),
(4, 'PimentÃ³n dulce', '2', '320.00', '450.00', 6, 3, '2021-05-31 21:46:32'),
(5, 'Pimienta blanca en grano', '1', '1150.00', '1900.00', 6, 4, '2021-05-31 21:50:28'),
(6, 'Oregano deshidratado', '2', '440.00', '800.00', 6, 8, '2021-05-31 21:57:07'),
(7, 'Provenzal', '2', '440.00', '800.00', 6, 7, '2021-05-31 21:57:53'),
(8, 'Pimienta negra molida', '2', '390.00', '550.00', 6, 6, '2021-05-31 21:58:58'),
(9, 'Fideos de arroz Blue Patna', '18', '160.00', '250.00', 3, 5, '2021-05-31 22:01:16'),
(10, 'Fideos de arroz Soyarroz', '3', '160.00', '220.00', 3, 9, '2021-05-31 22:05:48'),
(11, 'Fideos de arroz orox', '4', '160.00', '220.00', 3, 10, '2021-05-31 22:07:33'),
(12, 'Maca Kallpa', '2', '400.00', '750.00', 7, 11, '2021-05-31 22:38:37'),
(13, 'Maca negra', '2', '270.00', '500.00', 7, 12, '2021-05-31 22:41:03'),
(14, 'AzÃºcar mascabo', '3', '150.00', '290.00', 3, 13, '2021-05-31 22:42:30'),
(15, 'Stevia liquida 200 ml', '12', '140.00', '220.00', 7, 14, '2021-05-31 22:44:14'),
(16, 'Discos de arroz salados', '12', '50.00', '70.00', 7, 15, '2021-05-31 22:46:25'),
(17, 'Discos de arroz dulces', '12', '50.00', '70.00', 7, 15, '2021-05-31 22:46:39'),
(18, 'Sal marina fina/gruesa', '6', '125.00', '220.00', 7, 16, '2021-05-31 22:48:22'),
(19, 'Sal del Himalaya', '3', '175.00', '330.00', 7, 17, '2021-05-31 22:50:21'),
(20, 'Aceite de coco', '18', '150.00', '220.00', 7, 18, '2021-05-31 22:52:12'),
(21, 'Lentejas', '5', '210.00', '340.00', 7, 19, '2021-05-31 22:53:39'),
(22, 'Arroz Integral', '5', '75.00', '140.00', 7, 20, '2021-05-31 22:54:57'),
(23, 'Porotos alubia', '5', '120.00', '180.00', 7, 21, '2021-05-31 22:56:05'),
(24, 'Porotos negros', '5', '100.00', '180.00', 7, 22, '2021-05-31 22:57:06'),
(25, 'Garbanzos', '5', '85.00', '150.00', 7, 23, '2021-05-31 22:58:30'),
(26, 'Harina integral', '5', '65.00', '110.00', 7, 24, '2021-05-31 22:59:32'),
(27, 'Harina de arroz', '5', '70.00', '120.00', 7, 25, '2021-05-31 23:00:28'),
(28, 'Nueces peladas', '3', '920.00', '1400.00', 2, 26, '2021-05-31 23:04:40'),
(29, 'Almendras', '3', '950.00', '1500.00', 2, 27, '2021-05-31 23:06:33'),
(30, 'CastaÃ±as de caju', '3', '1080.00', '1600.00', 2, 0, '2021-05-31 23:07:34'),
(31, 'Pasas de uva sin semilla', '5', '210.00', '320.00', 2, 0, '2021-05-31 23:08:18'),
(32, 'Chips de banana', '3', '700.00', '1000.00', 7, 0, '2021-05-31 23:08:55'),
(33, 'Mix de semillas', '5', '180.00', '280.00', 7, 0, '2021-05-31 23:09:30'),
(34, 'Chia', '5', '170.00', '260.00', 5, 0, '2021-06-01 10:09:38'),
(35, 'Sesamo integral', '5', '160.00', '260.00', 5, 0, '2021-06-01 10:10:13'),
(36, 'Lino', '5', '130.00', '200.00', 5, 0, '2021-06-01 10:10:49'),
(37, 'Avena instantanea', '5', '110.00', '170.00', 7, 0, '2021-06-01 10:11:42'),
(38, 'Barra de cereal J Berries', '12', '25.00', '50.00', 7, 28, '2021-06-01 10:35:39'),
(39, 'Aceite de oliva extra virgen 500 ml', '10', '110.00', '250.00', 3, 29, '2021-06-01 10:38:40'),
(40, 'Aceite de oliva extra virgen 1000 ml', '5', '190.00', '420.00', 3, 29, '2021-06-01 10:39:16'),
(41, 'Barra de cereal Willka', '20', '16.00', '60.00', 7, 30, '2021-06-01 10:41:50'),
(42, 'Copoz de maiz', '6', '190.00', '320.00', 7, 0, '2021-06-01 10:42:41'),
(43, 'Granola simple', '5', '320.00', '500.00', 7, 31, '2021-06-01 10:45:01'),
(44, 'Granola con frutos', '5', '320.00', '500.00', 7, 31, '2021-06-01 10:45:23'),
(45, 'Mix deportivo', '5', '400.00', '680.00', 7, 0, '2021-06-01 10:45:55'),
(46, 'Mani pelado con sal', '5', '170.00', '260.00', 2, 0, '2021-06-01 10:46:31'),
(47, 'Almohaditas rellenas de frutilla', '4', '440.00', '680.00', 7, 0, '2021-06-01 10:47:21'),
(48, 'Semilla de zapallo', '3', '785.00', '1200.00', 5, 0, '2021-06-01 10:49:34'),
(49, 'Mani saborizado', '10', '180.00', '300.00', 2, 0, '2021-06-01 10:50:48'),
(50, 'Maiz frito', '3', '620.00', '1000.00', 3, 0, '2021-06-01 10:51:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `qty` decimal(25,2) NOT NULL,
  `price` decimal(25,2) NOT NULL,
  `profit` decimal(25,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `status` int(1) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `user_level`, `image`, `status`, `last_login`) VALUES
(1, 'Admin Users', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'pzg9wa7o1.jpg', 1, '2021-06-01 10:08:52'),
(2, 'Special User', 'special', 'ba36b97a41e7faf742ab09bf88405ac04f99599a', 2, 'no_image.jpg', 1, '2017-06-16 07:11:26'),
(3, 'Default User', 'user', '12dea96fec20593566ab75692c9949596833adc9', 3, 'no_image.jpg', 1, '2017-06-16 07:11:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'Admin', 1, 1),
(2, 'Special', 2, 0),
(3, 'User', 3, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `categorie_id` (`categorie_id`),
  ADD KEY `media_id` (`media_id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `user_level` (`user_level`);

--
-- Indices de la tabla `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`group_level`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_products` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `SK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`user_level`) REFERENCES `user_groups` (`group_level`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
