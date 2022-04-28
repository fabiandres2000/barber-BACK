-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 28-04-2022 a las 18:56:39
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
-- Base de datos: `hnrcvalh_barber`
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
  `numero_calificaciones` int(11) DEFAULT 0,
  `Lat` text DEFAULT NULL,
  `Lng` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `barberia`
--

INSERT INTO `barberia` (`id`, `nombre`, `direccion`, `ciudad`, `logo`, `fecha_registro`, `fecha_renovacion`, `propietario`, `usuario`, `password`, `horario`, `telefono`, `calificacion`, `numero_calificaciones`, `Lat`, `Lng`) VALUES
(5, 'BarberShop', 'MZ 1 CASA 7/13 NUEVO MILENIO - VALLEDUPAR', 'valledupar', 'descarga (2).jfif', '2021-11-03', '2021-12-03', 'fabian', 'root@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '6AM - 10PM', '3042065930', 5, 2, '10.474482357430146', '-73.24520033227996'),
(6, 'BarberShop Fab', 'MZ 1 CASA 7/13 NUEVO MILENIO - VALLEDUPAR', 'valledupar', 'descarga (1).jfif', '2021-11-04', '2021-12-04', 'fabian', 'grovveip@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '6AM - 10PM', '3042065930', 4, 1, '10.471781532804489', '-73.24970644339989'),
(7, 'CAVALIERS', 'Mz 1 casa 7/13 Nuevo milenio - valledupar', 'valledupar', 'descarga.jfif', '2021-11-05', '2021-12-05', 'fabian', 'fandresquintero@unicesar.edu.co', '13866700f2a42af7393471ed1f056837', '6AM - 10PM', '3042065930', 0, 0, '10.483105252567654', '-73.27637695824482'),
(8, 'Barber Fabian', 'manzana 2 casa 8', 'valledupar', '2d73dbf861e7416144cbd69a6f8e69fb.jpg', '2021-11-03', '2021-12-03', 'fabian', 'root@gmail.com', 'c34c3126c045e327754fa22abc4872fc', '6AM - 10PM', '3042065930', 0, 0, '10.484759430695892', '-73.25358995648398'),
(9, 'CAVALIERS 2', 'manzana 2 casa 8', 'valledupar', 'images.jfif', '2021-11-04', '2021-12-04', 'fabian', 'root@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '9AM - 9PM', '4534534345', 0, 0, '10.466713373702557', '-73.23799080091612'),
(10, 'Barberia Cristian', 'CR 7 17 A 49 LC 201 BRR EL CARMEN ', 'valledupar', 'images.png', '2022-04-28', '2022-05-28', 'Cristian Quintero', '@cristian', '3cd0a4b43e44242a2ffac5aeab297959', '9AM - 10PM', '3116516330', 0, 0, '10.47810859000509', '-73.28495766579519');

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
  `estado_cita` int(11) DEFAULT 0,
  `dia` text NOT NULL,
  `mes` text NOT NULL,
  `anio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `hora_inicio`, `minuto_inicio`, `hora_final`, `minuto_final`, `id_barbero`, `id_barberia`, `usuario`, `fecha_cita`, `precio`, `servicios`, `estado_cita`, `dia`, `mes`, `anio`) VALUES
(1, 10, 30, 12, 20, 1, 5, 32, '26-4-2022', '35000.0', '1 3 4 ', 0, '26', 'May', '2022');

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
(2, 'root', '827ccb0eea8a706c4c34a16891f84e7b', 'valledupar', 'admin'),
(32, 'fabian', '81dc9bdb52d04dc20036dbd8313ed055', 'valledupar', 'usuario');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `barbero`
--
ALTER TABLE `barbero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
