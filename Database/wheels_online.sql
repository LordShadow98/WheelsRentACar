-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-05-2020 a las 23:55:43
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wheels_online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler`
--

CREATE TABLE `alquiler` (
  `id` int(10) NOT NULL,
  `cliente` int(10) NOT NULL,
  `vehiculo` int(10) NOT NULL,
  `tiempo` int(3) NOT NULL,
  `fecha_salida` date NOT NULL,
  `fecha_entrada` date NOT NULL,
  `forma_pago` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `num_tarjeta` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `total_pagar` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `observacion` text COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) NOT NULL,
  `nombre_empresa` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nit` int(15) NOT NULL,
  `direccion` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono_fijo` varchar(7) COLLATE utf8mb4_spanish_ci NOT NULL,
  `celular` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` int(11) NOT NULL,
  `ciudad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservaciones`
--

CREATE TABLE `reservaciones` (
  `id` int(11) NOT NULL,
  `cliente` int(6) NOT NULL,
  `vehiculo` int(11) NOT NULL,
  `fecha_salida` date NOT NULL,
  `fecha_entrega` date NOT NULL,
  `hora` time NOT NULL,
  `tiempo` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` int(10) NOT NULL,
  `placa` varchar(8) COLLATE utf8mb4_spanish_ci NOT NULL,
  `marca` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `modelo` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `tipo` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `color` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `capacidad_pasaj` int(10) NOT NULL,
  `soat` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `tipo_carroceria` varchar(14) COLLATE utf8mb4_spanish_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `placa`, `marca`, `modelo`, `tipo`, `color`, `capacidad_pasaj`, `soat`, `tipo_carroceria`, `foto`) VALUES
(2, 'JBA565', 'Jeep ', 'Wrangler Sport ', 'Automovil', 'Negro', 6, '', 'Convencional', 'https://http2.mlstatic.com/jeep-wrangler-sport-at-3600-cc-D_NQ_NP_708405-MCO41661585038_052020-F.webp'),
(4, 'KIV891', 'Toyota ', 'Fortuner 2.7 At', 'Camioneta', 'Blanco', 10, '', 'Blindada', 'https://http2.mlstatic.com/toyota-fortuner-27-at-gasolina-D_NQ_NP_652033-MCO41745890606_052020-F.webp'),
(6, 'HFL954', 'Volkswagen', 'Amarok Higline 4x4', 'Camioneta', 'Gris', 6, '', 'Convencional', 'https://http2.mlstatic.com/volkswagen-amarok-higline-2000-cc-at-bt-4x4-D_NQ_NP_886724-MCO40943540282_022020-F.webp'),
(8, 'EOX115', 'Volkswagen ', 'Gol  1600', 'Automovil', 'Negro', 5, '', 'Convencional', 'https://http2.mlstatic.com/volkswagen-gol-comfortline-1600-cc-mt-D_NQ_NP_875725-MCO41167643410_032020-F.webp'),
(10, 'EPR154', 'Mercedes Benz ', 'Clase Gle Gle 250d', 'Camioneta', 'Gris ', 7, '', 'Blindada', 'https://http2.mlstatic.com/gle-gle-mercedes-benz-clase-D_NQ_NP_618176-MCO40937956536_022020-F.webp');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservaciones`
--
ALTER TABLE `reservaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reservaciones`
--
ALTER TABLE `reservaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
