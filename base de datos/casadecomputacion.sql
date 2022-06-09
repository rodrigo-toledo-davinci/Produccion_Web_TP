-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2022 a las 01:19:53
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
-- Base de datos: `casadecomputacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abm`
--

CREATE TABLE `abm` (
  `id_productos` int(10) UNSIGNED NOT NULL,
  `id_administrador` int(10) UNSIGNED NOT NULL,
  `fecha_alta` datetime NOT NULL,
  `fecha_baja` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `abm`
--

INSERT INTO `abm` (`id_productos`, `id_administrador`, `fecha_alta`, `fecha_baja`, `fecha_modificacion`) VALUES
(2, 1, '2022-04-25 00:00:00', NULL, '2022-05-29 00:00:00'),
(3, 2, '2022-01-01 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `id_usuarios` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `nombre`, `id_usuarios`) VALUES
(1, 'ximena', 1),
(2, 'emanuel', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'mouse'),
(2, 'monitores'),
(3, 'parlantes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` float NOT NULL,
  `id_categoria` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `id_categoria`) VALUES
(1, 'monitor samsung', 'monitor samsung de 1080 pixeles', 155000, 2),
(2, 'mouse gtc', 'negro de tamaño chico', 2500, 1),
(3, 'parlantes bgh', 'parlantes marca bgh grandes', 5000, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `fecha_nacimiento` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `confrmacion_mail` varchar(255) DEFAULT NULL,
  `contrasena` varchar(255) NOT NULL,
  `confirmacion_contrasena` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `fecha_nacimiento`, `email`, `confrmacion_mail`, `contrasena`, `confirmacion_contrasena`) VALUES
(1, 'ximena', 'coronel ', '1997-02-14 00:00:00', 'ximena.coronel@davinci.edu.ar', 'ximena.coronel@davinci.edu.ar', '12345', '12345'),
(2, 'emanuel', 'toledo', '2000-01-25 00:00:00', 'emanuel.toledo@davinci.edu.ar', 'emanuel.toledo@davinci.edu.ar', '987654', '987654'),
(5, 'sofia', 'tsai', '1999-02-05 00:00:00', 'sofia.tsai@davinci.edu.ar', 'sofia.tsai@davinci.edu.ar', '1556', '1556');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `abm`
--
ALTER TABLE `abm`
  ADD PRIMARY KEY (`id_productos`),
  ADD KEY `id_administrador` (`id_administrador`);

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuarios` (`id_usuarios`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `abm`
--
ALTER TABLE `abm`
  MODIFY `id_productos` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `abm`
--
ALTER TABLE `abm`
  ADD CONSTRAINT `abm_ibfk_1` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `abm_ibfk_2` FOREIGN KEY (`id_administrador`) REFERENCES `administrador` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
