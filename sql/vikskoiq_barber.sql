-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 10-04-2022 a las 03:49:08
-- Versión del servidor: 10.5.15-MariaDB-cll-lve
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vikskoiq_barber`
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
  `telefono` text NOT NULL,
  `calificacion` double DEFAULT 0,
  `numero_calificaciones` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `barberia`
--

INSERT INTO `barberia` (`id`, `nombre`, `direccion`, `ciudad`, `logo`, `fecha_registro`, `fecha_renovacion`, `propietario`, `usuario`, `password`, `horario`, `telefono`, `calificacion`, `numero_calificaciones`) VALUES
(5, 'BarberShop', 'MZ 1 CASA 7/13 NUEVO MILENIO - VALLEDUPAR', 'valledupar', 'descarga (2).jfif', '2021-11-03', '2021-12-03', 'fabian', 'root@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '6AM - 10PM', '3042065930', 0, 0),
(6, 'BarberShop Fab', 'MZ 1 CASA 7/13 NUEVO MILENIO - VALLEDUPAR', 'valledupar', 'descarga (1).jfif', '2021-11-04', '2021-12-04', 'fabian', 'grovveip@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '6AM - 10PM', '3042065930', 0, 0),
(7, 'CAVALIERS', 'Mz 1 casa 7/13 Nuevo milenio - valledupar', 'valledupar', 'descarga.jfif', '2021-11-05', '2021-12-05', 'fabian', 'fandresquintero@unicesar.edu.co', '13866700f2a42af7393471ed1f056837', '6AM - 10PM', '3042065930', 0, 0),
(8, 'Barber Fabian', 'manzana 2 casa 8', 'valledupar', '2d73dbf861e7416144cbd69a6f8e69fb.jpg', '2021-11-03', '2021-12-03', 'fabian', 'root@gmail.com', 'c34c3126c045e327754fa22abc4872fc', '6AM - 10PM', '3042065930', 0, 0),
(9, 'CAVALIERS 2', 'manzana 2 casa 8', 'valledupar', 'images.jfif', '2021-11-04', '2021-12-04', 'fabian', 'root@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '9AM - 9PM', '4534534345', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barbero`
--

CREATE TABLE `barbero` (
  `id` int(11) NOT NULL,
  `id_barberia` text NOT NULL,
  `nombre` text NOT NULL,
  `edad` text NOT NULL,
  `foto_perfil` text NOT NULL,
  `estado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `barbero`
--

INSERT INTO `barbero` (`id`, `id_barberia`, `nombre`, `edad`, `foto_perfil`, `estado`) VALUES
(1, '5', 'FabiÃ¡n Andres Quintero Mendez ', '22', 'image_picker9069577720624150059.jpg', '1'),
(2, '5', 'Cristian Quintero ', '22', 'image_picker8841486495648924226.jpg', '1'),
(3, '6', 'Juan Quintero ', '21', 'image_picker1029196987796415416.jpg', '1'),
(4, '6', 'Juan Quintero ', '21', 'image_picker1029196987796415416.jpg', '1'),
(5, '6', 'JuliÃ¡n Ãlvarez ', '20', 'image_picker5546481607083802836.jpg', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `hora_inicio` int(11) NOT NULL,
  `minuto_inicio` int(11) NOT NULL,
  `hora_final` int(11) NOT NULL,
  `minuto_final` int(11) NOT NULL,
  `id_barbero` int(11) NOT NULL,
  `id_barberia` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `fecha_cita` text NOT NULL,
  `precio` text NOT NULL,
  `servicios` text NOT NULL,
  `estado_cita` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `hora_inicio`, `minuto_inicio`, `hora_final`, `minuto_final`, `id_barbero`, `id_barberia`, `usuario`, `fecha_cita`, `precio`, `servicios`, `estado_cita`) VALUES
(1, 11, 55, 13, 15, 1, 5, 32, '9-4-2022', '15000.0', '1 3 ', 0),
(2, 13, 15, 14, 5, 1, 5, 32, '9-4-2022', '10000.0', '1 ', 0),
(3, 14, 6, 15, 26, 1, 5, 32, '9-4-2022', '15000.0', '1 3 ', 0),
(4, 19, 55, 20, 35, 2, 5, 32, '9-4-2022', '5000.0', '3 ', 0),
(5, 20, 45, 22, 5, 5, 6, 32, '9-4-2022', '15000.0', '6 8 ', 0),
(6, 20, 45, 21, 35, 3, 6, 32, '9-4-2022', '10000.0', '6 ', 0),
(7, 21, 35, 22, 15, 3, 6, 32, '9-4-2022', '7000.0', '7 ', 0),
(8, 22, 5, 22, 45, 5, 6, 32, '9-4-2022', '7000.0', '7 ', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `precio` text NOT NULL,
  `tiempo` text NOT NULL,
  `id_barberia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id`, `nombre`, `precio`, `tiempo`, `id_barberia`) VALUES
(1, 'Corte base', '10000', '40', '5'),
(3, 'barba', '5000', '30', '5'),
(4, 'Corte de pelo', '20000', '30', '5'),
(5, 'cerquillos', '3000', '10', '5'),
(6, 'Corte de cabello (adulto) ', '10000', '40', '6'),
(7, 'Corte de cabello (niÃ±o) ', '7000', '30', '6'),
(8, 'barba', '5000', '30', '6'),
(9, 'pintada de cabello', '50000', '120', '6');

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
(2, 'root', 'b1dd2c3665d831595afeb1b25b9e9145', 'valledupar', 'admin'),
(32, 'fabia', '81dc9bdb52d04dc20036dbd8313ed055', 'valledupar', 'usuario');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `barberia`
--
ALTER TABLE `barberia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `barbero`
--
ALTER TABLE `barbero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
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
-- AUTO_INCREMENT de la tabla `barbero`
--
ALTER TABLE `barbero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
