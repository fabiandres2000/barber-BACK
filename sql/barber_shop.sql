-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-11-2021 a las 06:44:04
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `barber_shop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barberia`
--

CREATE TABLE `barberia` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `direccion` text NOT NULL,
  `ciudad` text NOT NULL,
  `logo` text NOT NULL,
  `fecha_registro` text NOT NULL,
  `fecha_renovacion` text NOT NULL,
  `propietario` text NOT NULL,
  `usuario` text NOT NULL,
  `password` text NOT NULL,
  `horario` text NOT NULL,
  `telefono` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `barberia`
--

INSERT INTO `barberia` (`id`, `nombre`, `direccion`, `ciudad`, `logo`, `fecha_registro`, `fecha_renovacion`, `propietario`, `usuario`, `password`, `horario`, `telefono`) VALUES
(5, 'BarberShop', 'MZ 1 CASA 7/13 NUEVO MILENIO - VALLEDUPAR', 'valledupar', 'descarga (2).jfif', '2021-11-03', '2021-12-03', 'fabian', 'root@gmail.com', 'c34c3126c045e327754fa22abc4872fc', '6AM - 10PM', '3042065930'),
(6, 'BarberShop Fab', 'MZ 1 CASA 7/13 NUEVO MILENIO - VALLEDUPAR', 'valledupar', 'descarga (1).jfif', '2021-11-04', '2021-12-04', 'fabian', 'grovveip@gmail.com', '7e1ce5291fbea007e52b6a053bab7930', '6AM - 10PM', '3042065930'),
(7, 'CAVALIERS', 'Mz 1 casa 7/13 Nuevo milenio - valledupar', 'valledupar', 'descarga.jfif', '2021-11-05', '2021-12-05', 'fabian', 'fandresquintero@unicesar.edu.co', '13866700f2a42af7393471ed1f056837', '6AM - 10PM', '3042065930'),
(8, 'Barber Fabian', 'manzana 2 casa 8', 'valledupar', '2d73dbf861e7416144cbd69a6f8e69fb.jpg', '2021-11-03', '2021-12-03', 'fabian', 'root@gmail.com', 'c34c3126c045e327754fa22abc4872fc', '6AM - 10PM', '3042065930'),
(9, 'CAVALIERS 2', 'manzana 2 casa 8', 'valledupar', 'images.jfif', '2021-11-04', '2021-12-04', 'fabian', 'root@gmail.com', 'c34c3126c045e327754fa22abc4872fc', '9AM - 9PM', '4534534345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `usuario` text NOT NULL,
  `password` text NOT NULL,
  `ciudad` text NOT NULL,
  `tipo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `password`, `ciudad`, `tipo`) VALUES
(2, 'root', '2b1e84480019a2289d11981937cf550b', 'valledupar', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `barberia`
--
ALTER TABLE `barberia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `barberia`
--
ALTER TABLE `barberia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
