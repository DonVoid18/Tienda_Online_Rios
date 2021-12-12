-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2021 a las 05:13:27
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
-- Base de datos: `tienda_online_patrick_test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_img`
--

CREATE TABLE `banner_img` (
  `id_banner` int(11) NOT NULL,
  `direccion_imagen` varchar(500) NOT NULL,
  `estado_imagen` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `banner_img`
--

INSERT INTO `banner_img` (`id_banner`, `direccion_imagen`, `estado_imagen`) VALUES
(1, 'https://hiraoka.com.pe/media/weltpixel/owlcarouselslider/images/b/a/banner-home-lg_4.jpg', 1),
(2, 'https://hiraoka.com.pe/media/weltpixel/owlcarouselslider/images/w/e/web-hiraoka-ux371ea-hl003t.jpg', 1),
(3, 'https://hiraoka.com.pe/media/weltpixel/owlcarouselslider/images/w/e/web-hiraoka-fx506hcb-hn139t_2_.jpg', 1),
(4, 'https://hiraoka.com.pe/media/weltpixel/owlcarouselslider/images/h/1/h1-xiaomi-boom.jpg', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`, `descripcion`) VALUES
(1, 'televisores', 'Entretenimiento en familia'),
(2, 'celulares', 'Alta tecnología en celulares'),
(3, 'audio', 'Los mejores audio para los clientes'),
(4, 'gaming', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id_compra` int(11) NOT NULL,
  `proveedor_id_proveedor` int(11) NOT NULL,
  `fecha_solicitada` datetime NOT NULL,
  `fecha_llegada` datetime NOT NULL,
  `monto_compra` float(5,2) NOT NULL,
  `estado_compra` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correos_publicidad`
--

CREATE TABLE `correos_publicidad` (
  `id_correo` int(11) NOT NULL,
  `correo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `correos_publicidad`
--

INSERT INTO `correos_publicidad` (`id_correo`, `correo`) VALUES
(1, 'patrick@gmail.com'),
(2, 'patrick@gmail.com'),
(3, 'angelo@gmail.com'),
(4, 'ferrer@gmail.com'),
(5, 'miguel@gmail.com'),
(6, 'patrick@gmail.com'),
(7, 'yessica@gmail.com'),
(8, 'ferrer@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `nombre_departamento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `nombre_departamento`) VALUES
(1, 'Huánuco'),
(2, 'Huancayo'),
(3, 'Lima'),
(4, 'Arequipa'),
(5, 'Pasco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_abastecimiento`
--

CREATE TABLE `detalle_abastecimiento` (
  `productos_id_producto` int(11) NOT NULL,
  `compra_id_compra` int(11) NOT NULL,
  `cantidad` varchar(45) NOT NULL,
  `precio_unitario_venta` varchar(45) NOT NULL,
  `descuento` varchar(45) DEFAULT NULL,
  `monto_pd` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `pedido_id_pedido` int(11) NOT NULL,
  `productos_id_producto` int(11) NOT NULL,
  `cantidad` int(5) NOT NULL,
  `monto_producto` float(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`pedido_id_pedido`, `productos_id_producto`, `cantidad`, `monto_producto`) VALUES
(1, 28, 2, 6212.64),
(1, 43, 4, 7816.60),
(1, 125, 4, 164.64),
(2, 149, 2, 1582.24),
(3, 45, 2, 9150.24),
(3, 86, 2, 28898.30),
(3, 124, 2, 87.22),
(3, 125, 2, 82.32),
(3, 128, 3, 1375.14),
(4, 44, 2, 6798.30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha_tecnica`
--

CREATE TABLE `ficha_tecnica` (
  `ancho` varchar(45) NOT NULL,
  `alto` varchar(45) NOT NULL,
  `peso` varchar(45) DEFAULT NULL,
  `color` varchar(45) NOT NULL,
  `productos_id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ficha_tecnica`
--

INSERT INTO `ficha_tecnica` (`ancho`, `alto`, `peso`, `color`, `productos_id_producto`) VALUES
('5.38', '9.36', '2.21', 'amarillo', 1),
('2.09', '4.30', '2.43', 'gris', 2),
('6.21', '9.69', '1.89', 'gris', 3),
('10.24', '10.76', '4.19', 'celeste', 4),
('8.67', '9.86', '4.51', 'blanco', 5),
('5.34', '5.09', '2.71', 'gris', 6),
('6.30', '10.99', '2.42', 'verde', 7),
('9.01', '2.76', '4.97', 'negro', 8),
('11.30', '6.48', '1.69', 'celeste', 9),
('8.64', '8.82', '2.92', 'amarillo', 10),
('2.95', '4.55', '4.49', 'rojo', 11),
('8.89', '4.89', '4.72', 'rojo', 12),
('3.64', '4.14', '4.75', 'rosado', 13),
('4.33', '5.78', '4.29', 'gris', 14),
('11.93', '11.66', '1.87', 'celeste', 15),
('5.47', '7.79', '2.16', 'anaranjado', 16),
('7.68', '8.31', '4.22', 'gris', 17),
('8.86', '2.31', '2.08', 'gris', 18),
('4.11', '6.70', '4.45', 'rojo', 19),
('9.14', '5.65', '2.35', 'anaranjado', 20),
('5.15', '8.86', '4.82', 'rosado', 21),
('6.47', '4.41', '1.92', 'rosado', 22),
('7.37', '9.78', '3.88', 'amarillo', 23),
('10.21', '5.90', '3.52', 'anaranjado', 24),
('4.39', '8.76', '4.64', 'anaranjado', 25),
('6.64', '10.37', '2.47', 'celeste', 26),
('7.01', '9.18', '4.47', 'celeste', 27),
('6.30', '7.95', '1.03', 'gris', 28),
('4.27', '7.38', '4.45', 'blanco', 29),
('4.08', '3.39', '3.99', 'celeste', 30),
('9.52', '6.25', '3.77', 'celeste', 31),
('8.81', '10.79', '2.20', 'celeste', 32),
('4.79', '5.02', '3.92', 'verde', 33),
('11.11', '3.24', '4.65', 'anaranjado', 34),
('5.65', '10.38', '2.74', 'gris', 35),
('10.88', '10.28', '1.54', 'negro', 36),
('11.84', '6.57', '2.54', 'blanco', 37),
('4.22', '3.12', '1.26', 'verde', 38),
('2.28', '7.11', '3.08', 'rojo', 39),
('8.73', '11.57', '1.60', 'celeste', 40),
('2.76', '3.20', '4.32', 'rojo', 41),
('6.67', '7.47', '3.49', 'amarillo', 42),
('9.47', '8.66', '2.33', 'anaranjado', 43),
('5.61', '3.92', '4.81', 'negro', 44),
('8.41', '10.74', '1.77', 'negro', 45),
('2.79', '11.03', '3.22', 'celeste', 46),
('8.87', '9.56', '2.40', 'rojo', 47),
('6.40', '7.72', '1.36', 'verde', 48),
('3.80', '9.07', '4.79', 'negro', 49),
('7.35', '6.25', '2.59', 'verde', 50),
('11.06', '6.54', '3.13', 'verde', 51),
('11.36', '6.89', '4.98', 'negro', 52),
('6.18', '2.48', '2.50', 'gris', 53),
('9.30', '3.83', '2.85', 'amarillo', 54),
('4.27', '4.94', '4.70', 'rojo', 55),
('9.81', '4.78', '2.87', 'verde', 56),
('10.19', '4.38', '1.30', 'negro', 57),
('5.63', '5.55', '3.31', 'amarillo', 58),
('7.15', '7.47', '2.72', 'celeste', 59),
('11.61', '8.54', '4.54', 'blanco', 60),
('6.98', '10.45', '4.87', 'rosado', 61),
('2.35', '2.91', '4.66', 'celeste', 62),
('2.44', '2.70', '3.59', 'gris', 63),
('5.76', '3.94', '2.40', 'anaranjado', 64),
('8.47', '3.43', '2.32', 'rojo', 65),
('9.90', '11.79', '3.60', 'gris', 66),
('5.47', '7.32', '1.28', 'celeste', 67),
('7.35', '3.86', '4.35', 'verde', 68),
('8.45', '3.29', '4.97', 'negro', 69),
('2.35', '11.52', '2.68', 'negro', 70),
('6.79', '4.69', '3.45', 'blanco', 71),
('9.76', '9.80', '1.88', 'blanco', 72),
('7.18', '2.70', '1.51', 'verde', 73),
('4.56', '7.00', '1.63', 'amarillo', 74),
('7.22', '2.57', '3.17', 'rosado', 75),
('3.72', '6.17', '1.28', 'anaranjado', 76),
('2.08', '3.48', '4.87', 'anaranjado', 77),
('9.31', '7.59', '2.69', 'negro', 78),
('4.30', '2.54', '3.12', 'rojo', 79),
('6.61', '8.64', '2.24', 'anaranjado', 80),
('6.95', '5.37', '2.89', 'blanco', 81),
('7.76', '7.17', '4.69', 'amarillo', 82),
('6.16', '4.27', '4.84', 'rosado', 83),
('3.68', '8.37', '3.86', 'celeste', 84),
('2.04', '8.64', '4.16', 'rosado', 85),
('4.49', '5.95', '2.76', 'amarillo', 86),
('11.37', '5.16', '4.32', 'verde', 87),
('11.79', '7.91', '1.29', 'negro', 88),
('11.43', '3.91', '1.98', 'negro', 89),
('11.31', '3.96', '5.00', 'rosado', 90),
('3.66', '11.58', '4.22', 'rosado', 91),
('3.90', '5.69', '4.95', 'celeste', 92),
('2.82', '9.96', '1.96', 'rosado', 93),
('4.04', '2.93', '3.01', 'gris', 94),
('6.47', '9.24', '3.17', 'anaranjado', 95),
('8.26', '6.94', '4.20', 'verde', 96),
('10.63', '5.01', '3.68', 'gris', 97),
('3.30', '2.06', '2.31', 'gris', 98),
('4.34', '5.89', '4.03', 'anaranjado', 99),
('9.53', '10.18', '4.22', 'anaranjado', 100),
('7.37', '6.00', '2.20', 'blanco', 101),
('3.14', '5.44', '3.12', 'rojo', 102),
('5.84', '2.61', '1.15', 'rosado', 103),
('6.80', '11.35', '1.18', 'rojo', 104),
('11.64', '5.73', '1.63', 'negro', 105),
('4.46', '4.60', '1.33', 'verde', 106),
('2.47', '11.78', '4.09', 'gris', 107),
('6.50', '5.72', '3.69', 'celeste', 108),
('11.92', '7.76', '2.43', 'gris', 109),
('6.89', '5.07', '2.98', 'anaranjado', 110),
('3.00', '8.64', '4.50', 'amarillo', 111),
('2.23', '4.24', '1.48', 'gris', 112),
('8.56', '3.96', '1.39', 'negro', 113),
('8.56', '8.36', '3.63', 'rojo', 114),
('7.23', '2.83', '2.56', 'gris', 115),
('7.32', '5.77', '2.06', 'anaranjado', 116),
('10.61', '5.60', '3.76', 'rojo', 117),
('3.91', '9.99', '4.18', 'amarillo', 118),
('2.09', '11.32', '3.49', 'gris', 119),
('2.97', '6.10', '3.09', 'celeste', 120),
('9.22', '3.04', '3.24', 'verde', 121),
('3.11', '8.97', '2.58', 'negro', 122),
('9.97', '2.83', '3.24', 'gris', 123),
('11.56', '8.89', '2.26', 'celeste', 124),
('2.31', '6.22', '4.16', 'blanco', 125),
('9.47', '7.58', '1.22', 'rojo', 126),
('7.50', '6.62', '2.30', 'negro', 127),
('2.23', '8.09', '2.69', 'amarillo', 128),
('7.91', '5.40', '3.48', 'verde', 129),
('5.49', '11.25', '4.24', 'rosado', 130),
('10.21', '3.47', '1.02', 'negro', 131),
('8.84', '9.54', '1.76', 'celeste', 132),
('11.10', '5.14', '3.02', 'rosado', 133),
('9.82', '2.21', '4.86', 'gris', 134),
('6.79', '5.97', '1.78', 'celeste', 135),
('2.71', '8.59', '1.98', 'gris', 136),
('8.01', '2.91', '2.91', 'gris', 137),
('10.12', '11.29', '2.42', 'blanco', 138),
('2.55', '7.87', '3.73', 'negro', 139),
('11.13', '10.80', '2.68', 'blanco', 140),
('2.10', '6.70', '4.18', 'blanco', 141),
('9.44', '6.20', '4.26', 'rojo', 142),
('6.04', '2.66', '2.31', 'rojo', 143),
('8.47', '3.23', '1.89', 'blanco', 144),
('10.78', '9.56', '1.01', 'rosado', 145),
('2.85', '10.43', '1.66', 'gris', 146),
('2.36', '2.50', '4.94', 'amarillo', 147),
('5.26', '3.46', '4.09', 'gris', 148),
('2.42', '3.89', '2.45', 'amarillo', 149),
('6.60', '7.13', '4.59', 'verde', 150),
('11.58', '7.39', '4.22', 'verde', 151),
('2.64', '9.34', '2.20', 'rojo', 152),
('10.65', '7.56', '4.10', 'blanco', 153),
('10.58', '4.59', '3.94', 'amarillo', 154),
('10.92', '8.60', '4.55', 'amarillo', 155),
('3.08', '11.55', '1.04', 'celeste', 156),
('3.27', '9.77', '3.22', 'verde', 157),
('6.64', '3.00', '4.41', 'gris', 158),
('2.27', '2.74', '4.65', 'verde', 159),
('10.68', '5.03', '2.92', 'rosado', 160);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta`
--

CREATE TABLE `oferta` (
  `id_oferta` int(11) NOT NULL,
  `productos_id_producto` int(11) NOT NULL,
  `descuento` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `estado_oferta` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `oferta`
--

INSERT INTO `oferta` (`id_oferta`, `productos_id_producto`, `descuento`, `descripcion`, `estado_oferta`) VALUES
(1, 1, 16, '', 1),
(2, 2, 17, '', 1),
(3, 3, 18, '', 1),
(4, 4, 14, '', 1),
(5, 5, 12, '', 1),
(6, 6, 11, '', 1),
(7, 7, 15, '', 1),
(8, 8, 15, '', 1),
(9, 9, 17, '', 1),
(10, 10, 19, '', 1),
(11, 11, 18, '', 1),
(12, 12, 16, '', 1),
(13, 13, 17, '', 1),
(14, 14, 16, '', 1),
(15, 15, 13, '', 1),
(16, 16, 12, '', 1),
(17, 17, 15, '', 1),
(18, 18, 18, '', 1),
(19, 19, 11, '', 1),
(20, 20, 12, '', 1),
(21, 21, 16, '', 1),
(22, 22, 13, '', 1),
(23, 23, 19, '', 1),
(24, 24, 16, '', 1),
(25, 25, 14, '', 1),
(26, 26, 15, '', 1),
(27, 27, 16, '', 1),
(28, 28, 16, '', 1),
(29, 29, 10, '', 1),
(30, 30, 18, '', 1),
(31, 31, 15, '', 1),
(32, 32, 12, '', 1),
(33, 33, 19, '', 1),
(34, 34, 10, '', 1),
(35, 35, 17, '', 1),
(36, 36, 16, '', 1),
(37, 37, 15, '', 1),
(38, 38, 10, '', 1),
(39, 39, 11, '', 1),
(40, 40, 18, '', 1),
(41, 41, 14, '', 1),
(42, 42, 20, '', 1),
(43, 43, 15, '', 1),
(44, 44, 15, '', 1),
(45, 45, 12, '', 1),
(46, 46, 10, '', 1),
(47, 47, 18, '', 1),
(48, 48, 10, '', 1),
(49, 49, 17, '', 1),
(50, 50, 17, '', 1),
(51, 51, 18, '', 1),
(52, 52, 18, '', 1),
(53, 53, 16, '', 1),
(54, 54, 14, '', 1),
(55, 55, 12, '', 1),
(56, 56, 10, '', 1),
(57, 57, 18, '', 1),
(58, 58, 12, '', 1),
(59, 59, 19, '', 1),
(60, 60, 18, '', 1),
(61, 61, 12, '', 1),
(62, 62, 16, '', 1),
(63, 63, 14, '', 1),
(64, 64, 12, '', 1),
(65, 65, 13, '', 1),
(66, 66, 12, '', 1),
(67, 67, 18, '', 1),
(68, 68, 10, '', 1),
(69, 69, 12, '', 1),
(70, 70, 12, '', 1),
(71, 71, 16, '', 1),
(72, 72, 11, '', 1),
(73, 73, 12, '', 1),
(74, 74, 19, '', 1),
(75, 75, 12, '', 1),
(76, 76, 11, '', 1),
(77, 77, 12, '', 1),
(78, 78, 18, '', 1),
(79, 79, 12, '', 1),
(80, 80, 20, '', 1),
(81, 81, 12, '', 1),
(82, 82, 19, '', 1),
(83, 83, 14, '', 1),
(84, 84, 20, '', 1),
(85, 85, 18, '', 1),
(86, 86, 15, '', 1),
(87, 87, 17, '', 1),
(88, 88, 15, '', 1),
(89, 89, 19, '', 1),
(90, 90, 13, '', 1),
(91, 91, 17, '', 1),
(92, 92, 15, '', 1),
(93, 93, 15, '', 1),
(94, 94, 16, '', 1),
(95, 95, 20, '', 1),
(96, 96, 15, '', 1),
(97, 97, 14, '', 1),
(98, 98, 12, '', 1),
(99, 99, 15, '', 1),
(100, 100, 20, '', 1),
(101, 101, 15, '', 1),
(102, 102, 10, '', 1),
(103, 103, 20, '', 1),
(104, 104, 18, '', 1),
(105, 105, 15, '', 1),
(106, 106, 10, '', 1),
(107, 107, 15, '', 1),
(108, 108, 15, '', 1),
(109, 109, 12, '', 1),
(110, 110, 18, '', 1),
(111, 111, 13, '', 1),
(112, 112, 19, '', 1),
(113, 113, 14, '', 1),
(114, 114, 17, '', 1),
(115, 115, 18, '', 1),
(116, 116, 12, '', 1),
(117, 117, 16, '', 1),
(118, 118, 16, '', 1),
(119, 119, 14, '', 1),
(120, 120, 18, '', 1),
(121, 121, 10, '', 1),
(122, 122, 11, '', 1),
(123, 123, 16, '', 1),
(124, 124, 11, '', 1),
(125, 125, 16, '', 1),
(126, 126, 18, '', 1),
(127, 127, 12, '', 1),
(128, 128, 18, '', 1),
(129, 129, 18, '', 1),
(130, 130, 19, '', 1),
(131, 131, 19, '', 1),
(132, 132, 17, '', 1),
(133, 133, 11, '', 1),
(134, 134, 14, '', 1),
(135, 135, 20, '', 1),
(136, 136, 10, '', 1),
(137, 137, 13, '', 1),
(138, 138, 17, '', 1),
(139, 139, 11, '', 1),
(140, 140, 12, '', 1),
(141, 141, 15, '', 1),
(142, 142, 11, '', 1),
(143, 143, 20, '', 1),
(144, 144, 17, '', 1),
(145, 145, 13, '', 1),
(146, 146, 19, '', 1),
(147, 147, 17, '', 1),
(148, 148, 17, '', 1),
(149, 149, 12, '', 1),
(150, 150, 19, '', 1),
(151, 151, 18, '', 1),
(152, 152, 16, '', 1),
(153, 153, 11, '', 1),
(154, 154, 15, '', 1),
(155, 155, 10, '', 1),
(156, 156, 16, '', 1),
(157, 157, 15, '', 1),
(158, 158, 18, '', 1),
(159, 159, 16, '', 1),
(160, 160, 16, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opinion`
--

CREATE TABLE `opinion` (
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `productos_id_producto` int(11) NOT NULL,
  `usuarios_id_usuario` int(11) NOT NULL,
  `comentario` varchar(500) NOT NULL,
  `producto_puntaje` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `opinion`
--

INSERT INTO `opinion` (`fecha_registro`, `productos_id_producto`, `usuarios_id_usuario`, `comentario`, `producto_puntaje`) VALUES
('2021-12-11 19:46:37', 135, 1, 'Es buen producto me encanta.', 5),
('2021-12-11 20:34:33', 124, 1, 'Mal producto no me gustó', 1),
('2021-12-12 03:18:28', 125, 1, 'Buenos audífonos de los mejores que hay el me', 5),
('2021-12-12 03:26:01', 149, 3, 'Maso menos el producto, no tan bueno pero cum', 4),
('2021-12-12 03:49:23', 127, 3, 'No me gustó el producto.', 1),
('2021-12-12 04:04:01', 126, 1, 'La verdad que si es un buen producto si me ha gustado bastante.', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `usuarios_id_usuario` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `monto_total` decimal(7,2) NOT NULL,
  `estado_pedido` tinyint(1) NOT NULL DEFAULT 0,
  `direccion` varchar(200) NOT NULL,
  `departamento_delivery` varchar(45) NOT NULL,
  `provincia_delivery` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `usuarios_id_usuario`, `fecha`, `monto_total`, `estado_pedido`, `direccion`, `departamento_delivery`, `provincia_delivery`) VALUES
(1, 1, '2021-12-12 03:22:10', '14213.88', 0, 'Jr. 28 julio cerca al mercado de ambo, en la misma esquina del bulevar', 'Huánuco', 'Ambo'),
(2, 3, '2021-12-12 03:26:26', '1602.24', 0, 'Huánuco jr 2 de mayo cerca a la cepreval', 'Huánuco', 'Huánuco'),
(3, 1, '2021-12-12 03:45:52', '39613.22', 0, 'Jr. 28 julio cerca al mercadillo ', 'Huánuco', 'Ambo'),
(4, 3, '2021-12-12 03:52:42', '6818.30', 0, 'Huánuco 2 de mayo cerca a la cepreval', 'Huánuco', 'Huánuco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `categoria_id_categoria` int(11) NOT NULL,
  `marca` varchar(40) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `cantidad` int(5) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen_producto` varchar(300) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `categoria_id_categoria`, `marca`, `descripcion`, `cantidad`, `precio`, `imagen_producto`, `fecha_registro`) VALUES
(1, 1, 'LG', 'TV LG OLED 4K ThinQ AI 48', 12, '5999.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124102.jpg', '2021-12-11 07:08:16'),
(2, 1, 'AOC', 'TV AOC LED HD Smart 32', 14, '1199.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/3/2/32s5305_f.jpg', '2021-12-11 07:08:16'),
(3, 1, 'PHILIPS', 'TV Philips LED 4K UHD Smart 55', 14, '2899.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/5/5/55pud7625_f_-.jpg', '2021-12-11 07:08:16'),
(4, 1, 'PHILIPS', 'TV Philips LED 4K UHD Smart 70', 17, '4199.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/7/0/70pud7625_1_1500x1500_smart.jpg', '2021-12-11 07:08:16'),
(5, 1, 'SAMSUNG', 'TV Samsung QLED 8K Smart 65', 20, '15999.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/o/combo-sam-1.jpg', '2021-12-11 07:08:16'),
(6, 1, 'SAMSUNG', 'TV Samsung Neo QLED 4K Smart 65', 12, '12999.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/o/combo-sam-2.jpg', '2021-12-11 07:08:16'),
(7, 1, 'SAMSUNG', 'TV Samsung Neo QLED 4K Smart (2021) 75', 16, '13999.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/o/combo-sam-3.jpg', '2021-12-11 07:08:16'),
(8, 1, 'LG', 'TV LG LED 4K UHD ThinQ AI 55', 15, '3399.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124722_3.jpg', '2021-12-11 07:08:16'),
(9, 1, 'LG', 'TV LG LED 4K UHD ThinQ AI 50', 16, '2899.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124722_4.jpg', '2021-12-11 07:08:16'),
(10, 1, 'SAMSUNG', 'TV Samsung LED 4K UHD Smart 43', 14, '1999.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/a/u/au7000_0_1.png', '2021-12-11 07:08:16'),
(11, 1, 'SONY', 'TV Sony LED 4K UHD Google TV Smart 55', 14, '4399.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124625_1.jpg', '2021-12-11 07:08:16'),
(12, 1, 'SAMSUNG', 'TV Samsung LED 4k UHD Smart (2021) 50', 17, '2499.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/a/u/au7000_0_1_4.png', '2021-12-11 07:08:16'),
(13, 1, 'SONY', 'TV Sony Full Array LED 4K UHD Google TV Smart 65', 13, '6799.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124307_1_1.jpg', '2021-12-11 07:08:16'),
(14, 1, 'PANASONIC', 'TV Panasonic LED HD Smart 32', 19, '1299.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/3/2/32js500-logos.jpg', '2021-12-11 07:08:16'),
(15, 1, 'LG', 'TV LG LED 8K MINI LED ThinQ AI 75', 13, '24999.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/2/0/2021_75_qned99spa_1.jpg', '2021-12-11 07:08:16'),
(16, 1, 'LG', 'TV LG LED HD ThinQ AI 32', 19, '1299.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/2/0/2021_32_lm637bpsb_1_1.jpg', '2021-12-11 07:08:16'),
(17, 1, 'PANASONIC', 'TV Panasonic LED Smart 32', 15, '1099.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/117691-1_1.jpg', '2021-12-11 07:08:16'),
(18, 1, 'MIRAY', 'TV Miray LED Smart FHD 40', 14, '1299.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/121160_ms40-e201.jpg', '2021-12-11 07:08:16'),
(19, 1, 'PHILIPS', 'TV Philips LED HD Smart 32', 20, '1199.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/3/2/32phd6825_f.jpg', '2021-12-11 07:08:16'),
(20, 1, 'PANASONIC', 'TV Panasonic LCD 4K UHD Smart 43', 16, '1999.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_245.jpg', '2021-12-11 07:08:16'),
(21, 1, 'PHILIPS', 'TV Philips LED FHD Smart TV 43', 10, '1699.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/4/3/43phd6825_f.jpg', '2021-12-11 07:08:16'),
(22, 1, 'MIRAY', 'TV Miray LED 4K UHD Smart 43', 15, '1599.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/121161_mk43-e201.jpg', '2021-12-11 07:08:16'),
(23, 1, 'MIRAY', 'TV Miray LED 4K UHD Smart 50', 18, '1899.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/121402_mk50-e201_5.jpg', '2021-12-11 07:08:16'),
(24, 1, 'PHILIPS', 'TV Philips LED 4K UHD Smart 50', 19, '2499.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/5/8/58pud7625_f.jpg', '2021-12-11 07:08:16'),
(25, 1, 'AOC', 'TV AOC LED 4K UHD Smart 50', 11, '2299.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/5/0/50u6305_f.jpg', '2021-12-11 07:08:16'),
(26, 1, 'PHILIPS', 'TV Philips LED 4K UHD Smart 58', 15, '2899.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/5/8/58pud7625_f_1.jpg', '2021-12-11 07:08:16'),
(27, 1, 'SAMSUNG', 'TV Samsung LED 4k UHD Smart (2021) 58', 13, '3199.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/2/_/2_183.jpg', '2021-12-11 07:08:16'),
(28, 1, 'SAMSUNG', 'TV Samsung LED 4K UHD Smart 55', 14, '3698.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/3/c306990.jpg', '2021-12-11 07:08:16'),
(29, 1, 'PHILIPS', 'TV Philips 4K UHD LED Smart 70', 17, '3999.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/7/0/70pud6774-1.jpg', '2021-12-11 07:08:16'),
(30, 1, 'LG', 'TV LG 4K UHD UP77 Smart con AI ThinQ 60', 20, '3699.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124722.jpg', '2021-12-11 07:08:16'),
(31, 1, 'SAMSUNG', 'TV Samsung LED 4k UHD Smart (2021) 58', 20, '3598.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_309_1.jpg', '2021-12-11 07:08:16'),
(32, 1, 'SAMSUNG', 'TV Samsung LED 4K UHD Smart 60', 11, '3898.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_309.jpg', '2021-12-11 07:08:16'),
(33, 1, 'SONY', 'TV Sony Full Array LED 4K UHD Google TV Smart 55', 20, '5499.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124308_1.jpg', '2021-12-11 07:08:16'),
(34, 1, 'SAMSUNG', 'TV Samsung LED 4K UHD Smart 65', 17, '4498.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_307_1.jpg', '2021-12-11 07:08:16'),
(35, 1, 'LG', 'TV LG LED 4K NanoCell ThinQ AI 70', 11, '5499.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_326.jpg', '2021-12-11 07:08:16'),
(36, 1, 'LG', 'TV LG LED 4K UHD ThinQ AI 75', 14, '5999.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124722_5.jpg', '2021-12-11 07:08:16'),
(37, 1, 'LG', 'TV LG LED 4K NanoCell ThinQ AI 75', 16, '6499.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124852.jpg', '2021-12-11 07:08:16'),
(38, 1, 'LG', 'TV LG LED 4K NanoCell ThinQ AI 50', 19, '3399.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124852_1.jpg', '2021-12-11 07:08:16'),
(39, 1, 'AOC', 'TV AOC FHD Borderless Smart 43', 17, '1599.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/4/3/43s5305_f.jpg', '2021-12-11 07:08:16'),
(40, 1, 'SAMSUNG', 'TV Samsung LED 4K UHD Smart 60', 14, '3499.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/2/_/2_190.jpg', '2021-12-11 07:08:16'),
(41, 2, 'APPLE', 'iPhone 12 Pro Max 6.7', 13, '6299.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_154.jpg', '2021-12-11 07:08:16'),
(42, 2, 'APPLE', 'iPhone 12 Pro 6.1', 14, '5699.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/0/_/0_2_1.jpg', '2021-12-11 07:08:16'),
(43, 2, 'APPLE', 'iPhone SE 2020 4.7', 20, '2299.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_149.jpg', '2021-12-11 07:08:16'),
(44, 2, 'APPLE', 'iPhone 12 Mini 5.4', 12, '3999.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_317.jpg', '2021-12-11 07:08:16'),
(45, 2, 'APPLE', 'iPhone 12 6.1', 20, '5199.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_152.jpg', '2021-12-11 07:08:16'),
(46, 2, 'APPLE', 'iPhone 12 6.1', 17, '5199.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_151.jpg', '2021-12-11 07:08:16'),
(47, 2, 'APPLE', 'iPhone 12 Pro 6.1', 11, '5699.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_153.jpg', '2021-12-11 07:08:16'),
(48, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy M22 6.4', 17, '919.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_324.jpg', '2021-12-11 07:08:16'),
(49, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy A03S 6.5', 19, '649.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_319.jpg', '2021-12-11 07:08:16'),
(50, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy A12 6.5', 20, '799.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_321.jpg', '2021-12-11 07:08:16'),
(51, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy Z Flip 3 5G 6.7', 19, '4499.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_316_3.jpg', '2021-12-11 07:08:16'),
(52, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy A52S 5G 6.5', 20, '1999.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_323.jpg', '2021-12-11 07:08:16'),
(53, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy A32 6.5', 17, '1199.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_318.jpg', '2021-12-11 07:08:16'),
(54, 2, 'SAMSUNG', 'Celular Libre Samsung A32 6.4', 20, '1199.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/g/a/galaxy-a32-negro-sm-a325mzkmltp---0.jpg', '2021-12-11 07:08:16'),
(55, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy A22 6.4', 13, '949.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/a/2/a22-64gb.jpg', '2021-12-11 07:08:16'),
(56, 2, 'SAMSUNG', 'Celular Libre Samsung S20 FE Lavanda 6.5', 16, '2499.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_228.jpg', '2021-12-11 07:08:16'),
(57, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy M22 6.4', 11, '919.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_325.jpg', '2021-12-11 07:08:16'),
(58, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy A12 6.5', 14, '799.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_320.jpg', '2021-12-11 07:08:16'),
(59, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy Z Fold 3 5G 7.6', 16, '7999.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/s/a/samsung-93126295-pe-galaxy-z-fold3-f926-5g-sm-f926bzkapeo-478414120download-source.jpg', '2021-12-11 07:08:16'),
(60, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy A22 6.4', 20, '1049.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_322.jpg', '2021-12-11 07:08:16'),
(61, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy S21+ 5G 6.7', 20, '4599.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/123191.jpg', '2021-12-11 07:08:16'),
(62, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy S21+ 5G 6.7', 12, '4599.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/123190.jpg', '2021-12-11 07:08:16'),
(63, 2, 'XIAOMI', 'Kit Celular Libre Xiaomi 11 Lite 5G 256GB 8GB RAM Negr..', 11, '2199.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/b/u/bundle_11lite5g_256gb_black_1500x1500px.jpg', '2021-12-11 07:08:16'),
(64, 2, 'XIAOMI', 'Kit Celular Libre Xiaomi 11 Lite 5G 256GB 8GB RAM Azul..', 19, '2199.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/b/u/bundle_11lite5g_256gb_blue_1500x1500px.jpg', '2021-12-11 07:08:16'),
(65, 2, 'XIAOMI', 'Celular Libre Xiaomi 11 Lite 5G 6.55', 19, '1999.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/i/m/img-1-pink.jpg', '2021-12-11 07:08:16'),
(66, 2, 'XIAOMI', 'Celular Libre Xiaomi Redmi 10 6.5', 10, '959.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/i/m/img-1.jpg', '2021-12-11 07:08:16'),
(67, 2, 'XIAOMI', 'Celular Libre Xiaomi Redmi 9C 6.53', 13, '599.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/8/1835184-0.jpg', '2021-12-11 07:08:16'),
(68, 2, 'XIAOMI', 'Celular Libre Xiaomi Poco X3 NFC 6.67', 12, '1199.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/123000.jpg', '2021-12-11 07:08:16'),
(69, 2, 'XIAOMI', 'Celular Libre Xiaomi Poco X3 Pro 6.67', 20, '1499.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124191_1_.jpg', '2021-12-11 07:08:16'),
(70, 2, 'XIAOMI', 'Celular Libre Xiaomi Poco X3 Pro 6.67', 18, '1499.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124186_6.jpg', '2021-12-11 07:08:16'),
(71, 2, 'XIAOMI', 'Celular Libre Xiaomi Mi 11 Lite 6.55', 15, '1499.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/123532_3_1.jpg', '2021-12-11 07:08:16'),
(72, 2, 'XIAOMI', 'Celular Libre Xiaomi Redmi 9T 6.53', 10, '959.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_271_1.jpg', '2021-12-11 07:08:16'),
(73, 2, 'XIAOMI', 'Celular Libre Xiaomi Poco X3 GT 5G 6.6', 10, '1899.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/k/1/k10a-white.jpg', '2021-12-11 07:08:16'),
(74, 2, 'XIAOMI', 'Celular Libre Xiaomi Redmi Note 10S 64GB 6GB RAM Gri', 10, '1199.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/r/e/redmi-note-10s-gray-_2_.jpg', '2021-12-11 07:08:16'),
(75, 2, 'XIAOMI', 'Celular Libre Xiaomi Redmi Note 8 2021 6.3', 10, '829.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_210.jpg', '2021-12-11 07:08:16'),
(76, 2, 'XIAOMI', 'Celular Libre Xiaomi Poco X3 6.67', 13, '1159.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_211.jpg', '2021-12-11 07:08:16'),
(77, 2, 'XIAOMI', 'Celular Libre Xiaomi Redmi 9 6.53', 20, '759.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/120996_3_.jpg', '2021-12-11 07:08:16'),
(78, 2, 'XIAOMI', 'Celular Libre Poco X3 NFC 6.67', 15, '1159.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/p/o/poco_x3_nfc-3.jpg', '2021-12-11 07:08:16'),
(79, 2, 'XIAOMI', 'Celular Libre Xiaomi Poco X3 Pro 6.67', 10, '1499.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124185.jpg', '2021-12-11 07:08:16'),
(80, 2, 'XIAOMI', 'Celular Libre Poco X3 Pro 6.67', 18, '1299.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/p/o/poco_x3_pro_black.jpg', '2021-12-11 07:08:16'),
(81, 4, 'SONY', 'Videojuego Medievil Remastered PS', 14, '169.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/118714-1.jpg', '2021-12-11 07:08:16'),
(82, 4, 'ACER', 'Laptop Acer AN515-55-58WZ 15.6', 10, '3999.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/a/n/an515-55-58wz_1.jpg', '2021-12-11 07:08:16'),
(83, 4, 'ASUS', 'Laptop Asus ROG Zephyrus G14 GA401QM 14', 13, '10199.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c170648.jpg', '2021-12-11 07:08:16'),
(84, 4, 'ASUS', 'Laptop Asus ROG Flow X13 GV301QH 13.4', 12, '15199.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/w/h/whatsapp_image_2021-10-07_at_6.57.29_pm.jpeg', '2021-12-11 07:08:16'),
(85, 4, 'TRUST', 'Audífonos Gaming Trust Radiu', 14, '89.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/125482_1.jpg', '2021-12-11 07:08:16'),
(86, 4, 'ASUS', 'Laptop Gamer Asus ROG Strix SCAR 17 G733QS 17.3', 18, '16999.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c176832.jpg', '2021-12-11 07:08:16'),
(87, 4, 'ASUS', 'Laptop Asus ROG Flow X13 GV301QH 13.4', 15, '15199.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c176834.jpg', '2021-12-11 07:08:16'),
(88, 4, 'ASUS', 'Laptop Asus ROG Zephyrus G14 GA401QM 14', 14, '10199.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c176836.jpg', '2021-12-11 07:08:16'),
(89, 4, 'ASUS', 'Laptop Gamer Asus ROG Zephyrus Duo 15 SE 15.6', 10, '11499.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c176838_1.jpg', '2021-12-11 07:08:16'),
(90, 4, 'ASUS', 'Laptop Gamer Asus ROG Zephyrus Duo 15 SE 15.6', 15, '11499.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c176839_1.jpg', '2021-12-11 07:08:16'),
(91, 4, 'ASUS', 'Laptop Gamer Asus ROG Zephyrus Duo 15 SE 15.6', 12, '20799.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c176840.jpg', '2021-12-11 07:08:16'),
(92, 4, 'ASUS', 'Laptop Gamer Asus ROG Zephyrus Duo 15 SE 15.6', 14, '20799.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c176841.jpg', '2021-12-11 07:08:16'),
(93, 4, 'LOGITECH', 'Audífono Gamer con Micrófono Logitech G335 Blanc', 10, '259.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/125523.jpg', '2021-12-11 07:08:16'),
(94, 4, 'SONY', 'Videojuego Until Dawn PS', 18, '99.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/104120_1.jpg', '2021-12-11 07:08:16'),
(95, 4, 'SONY', 'Videojuego God of War 4 PS', 10, '99.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/113521-1.jpg', '2021-12-11 07:08:16'),
(96, 4, 'SONY', 'Videojuego Infamous Second Son PS', 11, '99.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/0/9/096746.jpg', '2021-12-11 07:08:16'),
(97, 4, 'SONY', 'Videojuego Uncharted: The Nathan Drake Collection PS4 ..', 15, '89.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/104121.jpg', '2021-12-11 07:08:16'),
(98, 4, 'SONY', 'Videojuego Ratchet y Clank PS', 19, '99.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/106143-1.jpg', '2021-12-11 07:08:16'),
(99, 4, 'SONY', 'Videojuego Uncharted 4 PS', 16, '99.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/105944_1.jpg', '2021-12-11 07:08:16'),
(100, 4, 'SONY', 'Videojuego The Last of Us 2 PS', 10, '269.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/120559.jpg', '2021-12-11 07:08:16'),
(101, 4, 'MICRONICS', 'Silla Gamer Micronics Mirage MIC GC500 Re', 12, '799.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/115519.jpg', '2021-12-11 07:08:16'),
(102, 4, 'MICRONICS', 'Silla Gamer Micronics Mirage MIC GC500 Blu', 12, '799.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/115518.jpg', '2021-12-11 07:08:16'),
(103, 4, 'COOLER MASTER', 'Silla Gamer Cooler Master Caliber R', 14, '1259.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/m/cmi-gcr2-2019-min.jpg', '2021-12-11 07:08:16'),
(104, 4, 'ANTRYX', 'Audífono Gaming con Micrófono Antryx Xtreme GH-350 A..', 13, '72.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/-/1-min_1.jpg', '2021-12-11 07:08:16'),
(105, 4, 'ANTRYX', 'Audífono Gaming con Micrófono Antryx Xtreme GH-350 N..', 20, '72.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/-/1-min.jpg', '2021-12-11 07:08:16'),
(106, 4, 'ANTRYX', 'Audífono Gaming Antryx Thunder Black AGH-7800K7V RG', 10, '215.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/-/1-min_5_1.jpg', '2021-12-11 07:08:16'),
(107, 4, 'ANTRYX', 'Audífono Gaming Antryx Thunder Silver AGH-7800S7V RG', 16, '215.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/-/1-min_6.jpg', '2021-12-11 07:08:16'),
(108, 4, 'COOLER MASTER', 'Audífono Gamer Cooler Master - MH630 2.', 13, '279.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/m/h/mh630-min.jpg', '2021-12-11 07:08:16'),
(109, 4, 'LOGITECH', 'Audifono Logitech G733 Lightspeed Azu', 11, '719.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124008.jpg', '2021-12-11 07:08:16'),
(110, 4, 'MICRONICS', 'Teclado Gamer Micronics Xforce MIC K82', 18, '75.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/f/r/frontal-1000-x-1000.jpg', '2021-12-11 07:08:16'),
(111, 4, 'COOLER MASTER', 'Teclado Gamer Cooler Master Keyboard MK11', 12, '199.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/121277_1_.jpg', '2021-12-11 07:08:16'),
(112, 4, 'COOLER MASTER', 'Teclado Cooler Master - CK550 V', 14, '469.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/k/ck-550-gktr1-us_1-min.jpg', '2021-12-11 07:08:16'),
(113, 4, 'MICRONICS', 'Teclado Gamer Micronics Neon+ K709', 10, '59.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/f/r/frontal-1000-x1000_4.jpg', '2021-12-11 07:08:16'),
(114, 4, 'MICRONICS', 'Teclado Gamer Micronics Vanquish FK1003 RG', 13, '259.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/f/r/frontal--2--1000-x1000_1.jpg', '2021-12-11 07:08:16'),
(115, 4, 'COOLER MASTER', 'Teclado Cooler Master CK530 V', 10, '419.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/k/ck-530-gktr1-us_1-min.jpg', '2021-12-11 07:08:16'),
(116, 4, 'COOLER MASTER', 'Cooler para Laptop Cooler Master Notepal L', 10, '99.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/n/o/notepal_l2-min.jpg', '2021-12-11 07:08:16'),
(117, 4, 'SONY', 'Videojuego The Last of Us Remasterizado PS4 201', 12, '99.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/0/9/099313.jpg', '2021-12-11 07:08:16'),
(118, 4, 'SONY', 'Videojuego Returnal PS', 13, '389.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/p/s/ps5_returnal_sw_pkg_packshot_2d_la.jpg', '2021-12-11 07:08:16'),
(119, 4, 'SONY', 'Videojuego Resident Evil Village PS', 19, '279.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/r/e/resident_evil_village_packshot_ps5.jpg', '2021-12-11 07:08:16'),
(120, 4, 'COOLER MASTER', 'Mouse gamer Cooler Master MM711 Dorad', 19, '239.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/m/m/mm-711-grol1_1-min.jpg', '2021-12-11 07:08:16'),
(121, 3, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX15AP Rosad..', 14, '49.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116145.jpg', '2021-12-11 07:08:16'),
(122, 3, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX15AP Blanc..', 15, '49.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116143_1.jpg', '2021-12-11 07:08:16'),
(123, 3, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX15AP Negr', 16, '49.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/108282.jpg', '2021-12-11 07:08:16'),
(124, 3, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX15AP Azu', 11, '49.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116146.jpg', '2021-12-11 07:08:16'),
(125, 3, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX15AP Morad..', 20, '49.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116144_1_.jpg', '2021-12-11 07:08:16'),
(126, 3, 'CASIO', 'Organo Casio CT-S200RDC2 + Adaptador Miray AM-9', 16, '738.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/119097.jpg', '2021-12-11 07:08:16'),
(127, 3, 'CASIO', 'Órgano Casio CT-S200WEC2 + Adaptador Miray AM-9', 14, '738.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/119098.jpg', '2021-12-11 07:08:16'),
(128, 3, 'BOSE', 'Parlante Bluetooth Bose SoundLink Micro Orang', 13, '559.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116461-1.jpg', '2021-12-11 07:08:16'),
(129, 3, 'KORG', 'Piano Digital Korg B2-SP Negr', 15, '3199.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/b/2/b2sp_0.jpg', '2021-12-11 07:08:16'),
(130, 3, 'SONY', 'Audífonos Deportivos In Ear con Micrófono Sony MDR-A..', 14, '79.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/108280.jpg', '2021-12-11 07:08:16'),
(131, 3, 'SONY', 'Audífonos Deportivos In Ear con Micrófono Sony MDR-A..', 17, '79.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116147_2.jpg', '2021-12-11 07:08:16'),
(132, 3, 'SONY', 'Audífonos In Ear Sony MDR-E9LP Gri', 13, '29.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/0/8/084290.jpg', '2021-12-11 07:08:16'),
(133, 3, 'SONY', 'Audífonos In Ear Sony MDR-E9LP Azu', 11, '29.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/0/8/084291.jpg', '2021-12-11 07:08:16'),
(134, 3, 'SONY', 'Audífonos In Ear Sony MDR-E9LP Rosad', 16, '29.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/118337.jpg', '2021-12-11 07:08:16'),
(135, 3, 'SONY', 'Audífonos In Ear Sony con Micrófono MDR-EX110AP Negr..', 11, '99.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/105545_1.jpg', '2021-12-11 07:08:16'),
(136, 3, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX110AP Azu', 11, '99.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116140.jpg', '2021-12-11 07:08:16'),
(137, 3, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX110AP Viol..', 16, '99.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/118338.jpg', '2021-12-11 07:08:16'),
(138, 3, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX110AP Blan..', 18, '99.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116139.jpg', '2021-12-11 07:08:16'),
(139, 3, 'SONY', 'Audífonos Over Ear Sony MDR-ZX110 Negr', 11, '59.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/0/9/099575_1_1.jpg', '2021-12-11 07:08:16'),
(140, 3, 'SONY', 'Audífonos Over Ear Sony MDR-ZX110 Rosad', 17, '59.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116136_1.jpg', '2021-12-11 07:08:16'),
(141, 3, 'SONY', 'Audífonos Over Ear Sony MDR-ZX110 Blanc', 18, '59.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116185_1.jpg', '2021-12-11 07:08:16'),
(142, 3, 'SONY', 'Audífonos Over Ear con Micrófono Sony MDR-ZX110AP Ne..', 12, '69.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/107834-1.jpg', '2021-12-11 07:08:16'),
(143, 3, 'SONY', 'Audífonos Over Ear con Micrófono Sony MDR-ZX110AP Bl..', 20, '69.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116149_1.jpg', '2021-12-11 07:08:16'),
(144, 3, 'SONY', 'Audífonos Over Ear con Micrófono Sony MDR-ZX310AP Ne..', 14, '79.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/103881-1.jpg', '2021-12-11 07:08:16'),
(145, 3, 'SONY', 'Audífonos Over Ear con Micrófono Sony MDR-ZX310AP Ro..', 12, '79.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116137-1.jpg', '2021-12-11 07:08:16'),
(146, 3, 'SONY', 'Audífonos In Ear Sony MDR-E9LP Blanc', 13, '29.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/0/8/084293.jpg', '2021-12-11 07:08:16'),
(147, 3, 'SONY', 'Audífonos Over Ear con Micrófono Sony MDR-ZX310AP Az..', 16, '79.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116186-1.jpg', '2021-12-11 07:08:16'),
(148, 3, 'SONY', 'Audífonos Over Ear con Micrófono Sony MDR-ZX310AP Bl..', 15, '99.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116138-1.jpg', '2021-12-11 07:08:16'),
(149, 3, 'SONY', 'Audífonos Noise Cancelling Truly Bluetooth Sony WF-10..', 18, '899.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/119392-2.jpg', '2021-12-11 07:08:16'),
(150, 3, 'SONY', 'Audífonos In Ear Bluetooth Sony WI C200 Blanc', 18, '149.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/119028_1.jpg', '2021-12-11 07:08:16'),
(151, 3, 'SONY', 'Audífonos In Ear Bluetooth Sony WI C310 Azu', 12, '169.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/118683-1.jpg', '2021-12-11 07:08:16'),
(152, 3, 'SONY', 'Audífonos In Ear Bluetooth Sony WI C310 Dorad', 10, '169.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/118684-1.jpg', '2021-12-11 07:08:16'),
(153, 3, 'SONY', 'Audífonos In Ear Bluetooth Sony WI C310 Blanc', 16, '169.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/118682-1.jpg', '2021-12-11 07:08:16'),
(154, 3, 'SONY', 'Audífonos In Ear Bluetooth Sony WI-C400 Negr', 20, '199.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/112629-1.jpg', '2021-12-11 07:08:16'),
(155, 3, 'SONY', 'Audífonos In Ear Bluetooth Sony WI-C400 Blanc', 12, '199.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116154-1.jpg', '2021-12-11 07:08:16'),
(156, 3, 'SONY', 'Equipo de Sonido Sony M80D Bluetooth Karaoke DVD HDMI ..', 10, '1599.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/113479_1_1.jpg', '2021-12-11 07:08:16'),
(157, 3, 'SONY', 'Grabadora de voz digital portátil Sony ICD-PX24', 14, '199.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/102350_1.jpg', '2021-12-11 07:08:16'),
(158, 3, 'SONY', 'Equipo de Sonido Sony SHAKEX30 DVD Karaok', 16, '2299.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/110101_1.jpg', '2021-12-11 07:08:16'),
(159, 3, 'SONY', 'Equipo de Sonido Sony SHAKEX10 DVD Karaok', 12, '2099.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/110100_2_1.jpg', '2021-12-11 07:08:16'),
(160, 3, 'PANASONIC', 'Audífono Panasonic TCM115E', 19, '54.00', 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/118399.jpg', '2021-12-11 07:08:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_prob` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `id_provincia` int(11) NOT NULL,
  `nombre_provincia` varchar(45) NOT NULL,
  `id_departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`id_provincia`, `nombre_provincia`, `id_departamento`) VALUES
(1, 'Chacapampa', 2),
(2, 'Chicche', 2),
(3, 'Chupuro', 2),
(4, 'Huancán', 2),
(5, 'Huánuco', 1),
(6, 'Ambo', 1),
(7, 'Yaroriwilca', 1),
(8, 'Puerto Inca', 1),
(9, 'Lima', 3),
(10, 'Cañete', 3),
(11, 'Yauyos', 3),
(12, 'Huarochiri', 3),
(13, 'Oyon', 3),
(14, 'Camana', 4),
(15, 'Camana', 4),
(16, 'Caraveli', 4),
(17, 'La Unión', 4),
(18, 'Arequipa', 4),
(19, 'Pasco', 5),
(20, 'Oxapampa', 5),
(21, 'Daniel A. Carrión', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `dni` char(8) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `rango` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido_paterno`, `dni`, `celular`, `email`, `password`, `rango`) VALUES
(1, 'Angelo Patrick', 'Rios', '75942730', '923929304', 'angelo@gmail.com', 'ANGELOpatrick123', 0),
(2, 'Joel Enrique', 'Ferrer', '36985212', '963258741', 'ferrer@gmail.com', 'ferrer123', 1),
(3, 'Luis Fernando', 'Estela', '85236974', '963256321', 'luisfernando@gmail.com', 'LUISfernando123', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banner_img`
--
ALTER TABLE `banner_img`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `fk_compra_proveedor1_idx` (`proveedor_id_proveedor`);

--
-- Indices de la tabla `correos_publicidad`
--
ALTER TABLE `correos_publicidad`
  ADD PRIMARY KEY (`id_correo`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `detalle_abastecimiento`
--
ALTER TABLE `detalle_abastecimiento`
  ADD PRIMARY KEY (`productos_id_producto`,`compra_id_compra`),
  ADD KEY `fk_detalle_abastecimiento_productos1_idx` (`productos_id_producto`),
  ADD KEY `fk_detalle_abastecimiento_compra1_idx` (`compra_id_compra`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`pedido_id_pedido`,`productos_id_producto`),
  ADD KEY `fk_detalle_pedido_pedido1_idx` (`pedido_id_pedido`),
  ADD KEY `fk_detalle_pedido_productos1_idx` (`productos_id_producto`);

--
-- Indices de la tabla `ficha_tecnica`
--
ALTER TABLE `ficha_tecnica`
  ADD PRIMARY KEY (`productos_id_producto`);

--
-- Indices de la tabla `oferta`
--
ALTER TABLE `oferta`
  ADD PRIMARY KEY (`id_oferta`),
  ADD KEY `fk_oferta_productos1_idx` (`productos_id_producto`);

--
-- Indices de la tabla `opinion`
--
ALTER TABLE `opinion`
  ADD PRIMARY KEY (`fecha_registro`,`productos_id_producto`,`usuarios_id_usuario`),
  ADD KEY `fk_opinion_usuarios1_idx` (`usuarios_id_usuario`),
  ADD KEY `fk_opinion_productos1_idx` (`productos_id_producto`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `fk_pedido_usuarios1_idx` (`usuarios_id_usuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `fk_productos_categoria1_idx` (`categoria_id_categoria`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id_provincia`),
  ADD KEY `fk_provincia_departamento1_idx` (`id_departamento`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `banner_img`
--
ALTER TABLE `banner_img`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `correos_publicidad`
--
ALTER TABLE `correos_publicidad`
  MODIFY `id_correo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `oferta`
--
ALTER TABLE `oferta`
  MODIFY `id_oferta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `id_provincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `fk_compra_proveedor1` FOREIGN KEY (`proveedor_id_proveedor`) REFERENCES `proveedor` (`id_proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_abastecimiento`
--
ALTER TABLE `detalle_abastecimiento`
  ADD CONSTRAINT `fk_detalle_abastecimiento_compra1` FOREIGN KEY (`compra_id_compra`) REFERENCES `compra` (`id_compra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_abastecimiento_productos1` FOREIGN KEY (`productos_id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedido_id_pedido`) REFERENCES `pedido` (`id_pedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detalle_pedido_productos1` FOREIGN KEY (`productos_id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ficha_tecnica`
--
ALTER TABLE `ficha_tecnica`
  ADD CONSTRAINT `fk_ficha_tecnica_productos1` FOREIGN KEY (`productos_id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `oferta`
--
ALTER TABLE `oferta`
  ADD CONSTRAINT `fk_oferta_productos1` FOREIGN KEY (`productos_id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `opinion`
--
ALTER TABLE `opinion`
  ADD CONSTRAINT `fk_opinion_productos1` FOREIGN KEY (`productos_id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_opinion_usuarios1` FOREIGN KEY (`usuarios_id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_pedido_usuarios1` FOREIGN KEY (`usuarios_id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_productos_categoria1` FOREIGN KEY (`categoria_id_categoria`) REFERENCES `categoria` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD CONSTRAINT `fk_provincia_departamento1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
