-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2021 a las 14:21:30
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendavirtual`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`) VALUES
(1, 'celulares'),
(2, 'televisores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codigo` int(11) NOT NULL,
  `seccion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `modelo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `marca` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `precio` double NOT NULL,
  `descuento` double NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fechaRegistro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigo`, `seccion`, `modelo`, `marca`, `descripcion`, `imagen`, `precio`, `descuento`, `cantidad`, `fechaRegistro`) VALUES
(1, 'celulares', 'SAMSUNG A10', 'SAMSUMG', 'Este celular cuenta con 2 cámaras frontales de alta definición.', 'huawei1.jpg', 500, 10, 50, '2021-11-20 05:01:05'),
(2, 'televisores', 'LG 4k', 'LG', 'Es una pantalla plana que cuenta para un sistema de video integrado.', 'panasonic.jpg', 1500, 0, 50, '2021-11-20 05:01:23'),
(3, 'celulares', 'HUAWEI P30', 'HUAWEI', 'Este celular cuenta con 3 cámaras frontales y son muy buenas.', 'xiomi1.jpg', 800, 20, 60, '2021-11-20 05:01:38'),
(4, 'celulares', 'XIOMI P30', 'XIOMI', 'Este celular cuenta con 3 cámaras frontales y son muy buenas.', 'xiomi1.jpg', 1000, 10, 60, '2021-11-20 05:01:44'),
(5, 'televisores', 'Aiwa 3000', 'AIWA', 'Pantalla plana de 32 pulgadas con alta definición.', 'sony.jpg', 600, 20, 60, '2021-11-20 05:01:58'),
(6, 'televisores', 'SAMSUNG CRYSTAL ULTRA HD 4K', 'SAMSUMG', 'Pantalla plana de 32 pulgadas con alta definición.', 'sony.jpg', 1500, 0, 150, '2021-11-20 05:02:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(80) CHARACTER SET latin1 NOT NULL,
  `apellidoP` varchar(50) CHARACTER SET latin1 NOT NULL,
  `fechaNacimiento` varchar(30) CHARACTER SET latin1 NOT NULL,
  `dni` int(8) NOT NULL,
  `celular` int(9) NOT NULL,
  `correo` varchar(80) CHARACTER SET latin1 NOT NULL,
  `pass` varchar(80) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`codigo`, `nombre`, `apellidoP`, `fechaNacimiento`, `dni`, `celular`, `correo`, `pass`) VALUES
(1, 'Angelo Patrick', 'Rios Nolasco', '12/12/2003', 75942730, 923929304, 'angelopatrickriosnolasco@gmail.com', 'ANGELOpatrick123'),
(2, 'Gerardo', 'Rios', '12/12/2002', 45678912, 963258741, 'angelopatrickriosnolascoa@gmail.com', 'GErardo123'),
(3, 'Miguel', 'Rios Nolasco', '12/12/2002', 12345678, 456789123, 'riosnolasco@gmail.com', 'angeloPATRICK123'),
(4, 'Luis Fernando', 'Estela Crisolo', '12/12/2003', 85296314, 789456123, 'luisfernando@gmail.com', 'ESTELA123FER1'),
(5, 'Miguel', 'Dominguez', '09/05/2003', 45985623, 789471582, 'migueldominguez123@gmail.com', 'MIGUELdominguez123'),
(6, 'Alexandra', 'Meza Tacuchi', '12/12/2000', 41526987, 569874123, 'alexandra123@gmail.com', 'ALExio123'),
(7, 'Karoline', 'Mejia Pinedo', '12/5/2001', 15926487, 159263487, 'karo123@gmail.com', 'KAROmejia123'),
(8, 'Andy', 'Serrano Nolasco', '14/03/1999', 45789632, 478514267, 'andy@gmail.com', 'ANDYserrano123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
