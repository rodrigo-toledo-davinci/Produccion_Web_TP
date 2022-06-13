-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-06-2022 a las 22:04:10
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_compu`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'auriculares'),
(2, 'mouse'),
(3, 'teclados'),
(4, 'monitores'),
(5, 'parlantes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_producto` int(10) UNSIGNED NOT NULL,
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` float(8,2) NOT NULL,
  `id_categoria` int(10) UNSIGNED NOT NULL,
  `fecha_alta` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `fecha_baja` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_productos`, `nombre`, `descripcion`, `precio`, `id_categoria`, `fecha_alta`, `fecha_modificacion`, `fecha_baja`) VALUES
(1, 'Producto 1', '...', 1234.00, 1, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(2, 'Producto 2', '...', 5323.00, 2, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(3, 'Producto 3', '...', 1244.00, 3, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(4, 'Producto 4', '...', 1244.00, 4, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(5, 'Producto 5', '...', 4346.00, 5, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(6, 'Producto 6', '...', 5340.00, 1, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(7, 'Producto 7', '...', 8423.00, 2, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(8, 'Producto 8', '...', 1275.00, 3, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(9, 'Producto 9', '...', 7562.00, 5, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(10, 'Producto 10', '...', 3456.00, 4, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(11, 'Producto 11', '...', 9864.00, 1, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(12, 'Producto 12', '...', 6542.00, 2, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(13, 'Producto 13', '...', 6785.00, 3, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(14, 'Producto 14', '...', 9765.00, 4, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(15, 'Producto 15', '...', 6852.00, 5, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(16, 'Producto 16', '...', 3654.00, 1, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(17, 'Producto 17', '...', 2358.00, 2, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(18, 'Producto 18', '...', 6785.00, 3, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(19, 'Producto 19', '...', 6542.00, 4, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(20, 'Producto 20', '...', 5679.00, 5, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(21, 'Producto 21', '...', 8754.00, 1, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(22, 'Producto 22', '...', 2423.00, 2, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(23, 'Producto 23', '...', 8943.00, 3, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(24, 'Producto 24', '...', 7183.00, 4, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(25, 'Producto 25', '...', 2780.00, 5, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(26, 'Producto 26', '...', 3248.00, 1, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(27, 'Producto 27', '...', 1255.00, 2, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(28, 'Producto 28', '...', 2678.00, 3, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(29, 'Producto 29', '...', 3125.00, 4, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(30, 'Producto 30', '...', 1234.00, 5, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` tinyint(2) UNSIGNED NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`) VALUES
(1, 'usuario'),
(2, 'administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contrasena` text NOT NULL,
  `id_rol` tinyint(2) UNSIGNED NOT NULL,
  `fecha_alta` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `fecha_baja` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `contrasena`, `id_rol`, `fecha_alta`, `fecha_modificacion`, `fecha_baja`) VALUES
(1, 'rodrigo', 'rodrigo@davinci.edu', '1241254', 2, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(2, 'sofia', 'sofia@davinci.edu', '345347', 2, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(3, 'ximena', 'ximena@davinci.edu', '1241254', 2, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL),
(4, 'matias', 'matias@gmail.com', '1241254', 1, '2022-06-10 13:40:37', '2022-06-10 13:40:37', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_productos`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_productos` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_productos`),
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
