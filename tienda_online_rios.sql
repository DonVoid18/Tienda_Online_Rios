-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-12-2021 a las 17:57:19
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
-- Base de datos: `tienda_online_rios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`) VALUES
(1, 'televisores'),
(2, 'celulares'),
(3, 'audio'),
(4, 'gaming');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opinion`
--

CREATE TABLE `opinion` (
  `id_comentario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `comentario` varchar(200) NOT NULL,
  `producto_puntaje` int(11) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `opinion`
--

INSERT INTO `opinion` (`id_comentario`, `id_producto`, `id_usuario`, `comentario`, `producto_puntaje`, `fecha_registro`) VALUES
(1, 143, 1, 'La verdad que si es un buen producto si me ha gustado bastante.', 4, '2021-12-03 16:41:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `descuento` int(11) DEFAULT NULL,
  `imagen_producto` varchar(200) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `id_categoria`, `marca`, `descripcion`, `cantidad`, `precio`, `descuento`, `imagen_producto`, `fecha_registro`) VALUES
(1, 1, 'LG', 'TV LG OLED 4K ThinQ AI 48', 12, 5999, 25, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124102.jpg', '2021-12-03 13:19:54'),
(2, 1, 'AOC', 'TV AOC LED HD Smart 32', 14, 1199, 17, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/3/2/32s5305_f.jpg', '2021-12-03 13:19:54'),
(3, 1, 'PHILIPS', 'TV Philips LED 4K UHD Smart 55', 16, 2899, 24, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/5/5/55pud7625_f_-.jpg', '2021-12-03 13:19:54'),
(4, 1, 'PHILIPS', 'TV Philips LED 4K UHD Smart 70', 13, 4199, 21, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/7/0/70pud7625_1_1500x1500_smart.jpg', '2021-12-03 13:19:54'),
(5, 1, 'SAMSUNG', 'TV Samsung QLED 8K Smart 65', 15, 15999, 31, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/o/combo-sam-1.jpg', '2021-12-03 13:19:54'),
(6, 1, 'SAMSUNG', 'TV Samsung Neo QLED 4K Smart 65', 11, 12999, 15, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/o/combo-sam-2.jpg', '2021-12-03 13:19:54'),
(7, 1, 'SAMSUNG', 'TV Samsung Neo QLED 4K Smart (2021) 75', 17, 13999, 21, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/o/combo-sam-3.jpg', '2021-12-03 13:19:54'),
(8, 1, 'LG', 'TV LG LED 4K UHD ThinQ AI 55', 14, 3399, 32, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124722_3.jpg', '2021-12-03 13:19:54'),
(9, 1, 'LG', 'TV LG LED 4K UHD ThinQ AI 50', 15, 2899, 26, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124722_4.jpg', '2021-12-03 13:19:54'),
(10, 1, 'SAMSUNG', 'TV Samsung LED 4K UHD Smart 43', 16, 1999, 13, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/a/u/au7000_0_1.png', '2021-12-03 13:19:54'),
(11, 1, 'SONY', 'TV Sony LED 4K UHD Google TV Smart 55', 10, 4399, 18, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124625_1.jpg', '2021-12-03 13:19:54'),
(12, 1, 'SAMSUNG', 'TV Samsung LED 4k UHD Smart (2021) 50', 11, 2499, 14, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/a/u/au7000_0_1_4.png', '2021-12-03 13:19:54'),
(13, 1, 'SONY', 'TV Sony Full Array LED 4K UHD Google TV Smart 65', 12, 6799, 5, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124307_1_1.jpg', '2021-12-03 13:19:54'),
(14, 1, 'PANASONIC', 'TV Panasonic LED HD Smart 32', 12, 1299, 23, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/3/2/32js500-logos.jpg', '2021-12-03 13:19:54'),
(15, 1, 'LG', 'TV LG LED 8K MINI LED ThinQ AI 75', 14, 24999, 24, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/2/0/2021_75_qned99spa_1.jpg', '2021-12-03 13:19:54'),
(16, 1, 'LG', 'TV LG LED HD ThinQ AI 32', 14, 1299, 12, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/2/0/2021_32_lm637bpsb_1_1.jpg', '2021-12-03 13:19:54'),
(17, 1, 'PANASONIC', 'TV Panasonic LED Smart 32', 18, 1099, 9, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/117691-1_1.jpg', '2021-12-03 13:19:54'),
(18, 1, 'MIRAY', 'TV Miray LED Smart FHD 40', 15, 1299, 27, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/121160_ms40-e201.jpg', '2021-12-03 13:19:54'),
(19, 1, 'PHILIPS', 'TV Philips LED HD Smart 32', 20, 1199, 17, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/3/2/32phd6825_f.jpg', '2021-12-03 13:19:54'),
(20, 1, 'PANASONIC', 'TV Panasonic LCD 4K UHD Smart 43', 20, 1999, 5, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_245.jpg', '2021-12-03 13:19:54'),
(21, 1, 'PHILIPS', 'TV Philips LED FHD Smart TV 43', 11, 1699, 18, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/4/3/43phd6825_f.jpg', '2021-12-03 13:19:54'),
(22, 1, 'MIRAY', 'TV Miray LED 4K UHD Smart 43', 12, 1599, 25, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/121161_mk43-e201.jpg', '2021-12-03 13:19:54'),
(23, 1, 'MIRAY', 'TV Miray LED 4K UHD Smart 50', 11, 1899, 34, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/121402_mk50-e201_5.jpg', '2021-12-03 13:19:54'),
(24, 1, 'PHILIPS', 'TV Philips LED 4K UHD Smart 50', 18, 2499, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/5/8/58pud7625_f.jpg', '2021-12-03 13:19:54'),
(25, 1, 'AOC', 'TV AOC LED 4K UHD Smart 50', 10, 2299, 22, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/5/0/50u6305_f.jpg', '2021-12-03 13:19:54'),
(26, 1, 'PHILIPS', 'TV Philips LED 4K UHD Smart 58', 10, 2899, 21, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/5/8/58pud7625_f_1.jpg', '2021-12-03 13:19:54'),
(27, 1, 'SAMSUNG', 'TV Samsung LED 4k UHD Smart (2021) 58', 18, 3199, 25, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/2/_/2_183.jpg', '2021-12-03 13:19:54'),
(28, 1, 'SAMSUNG', 'TV Samsung LED 4K UHD Smart 55', 18, 3698, 22, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/3/c306990.jpg', '2021-12-03 13:19:54'),
(29, 1, 'PHILIPS', 'TV Philips 4K UHD LED Smart 70', 11, 3999, 25, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/7/0/70pud6774-1.jpg', '2021-12-03 13:19:54'),
(30, 1, 'LG', 'TV LG 4K UHD UP77 Smart con AI ThinQ 60', 18, 3699, 14, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124722.jpg', '2021-12-03 13:19:54'),
(31, 1, 'SAMSUNG', 'TV Samsung LED 4k UHD Smart (2021) 58', 16, 3598, 31, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_309_1.jpg', '2021-12-03 13:19:54'),
(32, 1, 'SAMSUNG', 'TV Samsung LED 4K UHD Smart 60', 16, 3898, 28, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_309.jpg', '2021-12-03 13:19:54'),
(33, 1, 'SONY', 'TV Sony Full Array LED 4K UHD Google TV Smart 55', 20, 5499, 9, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124308_1.jpg', '2021-12-03 13:19:54'),
(34, 1, 'SAMSUNG', 'TV Samsung LED 4K UHD Smart 65', 12, 4498, 33, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_307_1.jpg', '2021-12-03 13:19:54'),
(35, 1, 'LG', 'TV LG LED 4K NanoCell ThinQ AI 70', 11, 5499, 15, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_326.jpg', '2021-12-03 13:19:54'),
(36, 1, 'LG', 'TV LG LED 4K UHD ThinQ AI 75', 15, 5999, 17, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124722_5.jpg', '2021-12-03 13:19:54'),
(37, 1, 'LG', 'TV LG LED 4K NanoCell ThinQ AI 75', 18, 6499, 5, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124852.jpg', '2021-12-03 13:19:54'),
(38, 1, 'LG', 'TV LG LED 4K NanoCell ThinQ AI 50', 16, 3399, 29, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124852_1.jpg', '2021-12-03 13:19:54'),
(39, 1, 'AOC', 'TV AOC FHD Borderless Smart 43', 19, 1599, 13, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/4/3/43s5305_f.jpg', '2021-12-03 13:19:54'),
(40, 1, 'SAMSUNG', 'TV Samsung LED 4K UHD Smart 60', 17, 3499, 23, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/2/_/2_190.jpg', '2021-12-03 13:19:54'),
(41, 2, 'APPLE', 'iPhone 12 Pro Max 6.7', 13, 6299, 3, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_154.jpg', '2021-12-03 13:19:54'),
(42, 2, 'APPLE', 'iPhone 12 Pro 6.1', 12, 5699, 2, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/0/_/0_2_1.jpg', '2021-12-03 13:19:54'),
(43, 2, 'APPLE', 'iPhone SE 2020 4.7', 12, 2299, 4, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_149.jpg', '2021-12-03 13:19:54'),
(44, 2, 'APPLE', 'iPhone 12 Mini 5.4', 10, 3999, 3, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_317.jpg', '2021-12-03 13:19:54'),
(45, 2, 'APPLE', 'iPhone 12 6.1', 13, 5199, 4, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_152.jpg', '2021-12-03 13:19:54'),
(46, 2, 'APPLE', 'iPhone 12 6.1', 11, 5199, 4, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_151.jpg', '2021-12-03 13:19:54'),
(47, 2, 'APPLE', 'iPhone 12 Pro 6.1', 19, 5699, 2, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_153.jpg', '2021-12-03 13:19:54'),
(48, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy M22 6.4', 20, 919, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_324.jpg', '2021-12-03 13:19:54'),
(49, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy A03S 6.5', 18, 649, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_319.jpg', '2021-12-03 13:19:54'),
(50, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy A12 6.5', 13, 799, 13, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_321.jpg', '2021-12-03 13:19:54'),
(51, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy Z Flip 3 5G 6.7', 17, 4499, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_316_3.jpg', '2021-12-03 13:19:54'),
(52, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy A52S 5G 6.5', 10, 1999, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_323.jpg', '2021-12-03 13:19:54'),
(53, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy A32 6.5', 15, 1199, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_318.jpg', '2021-12-03 13:19:54'),
(54, 2, 'SAMSUNG', 'Celular Libre Samsung A32 6.4', 13, 1199, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/g/a/galaxy-a32-negro-sm-a325mzkmltp---0.jpg', '2021-12-03 13:19:54'),
(55, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy A22 6.4', 11, 949, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/a/2/a22-64gb.jpg', '2021-12-03 13:19:54'),
(56, 2, 'SAMSUNG', 'Celular Libre Samsung S20 FE Lavanda 6.5', 14, 2499, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_228.jpg', '2021-12-03 13:19:54'),
(57, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy M22 6.4', 13, 919, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_325.jpg', '2021-12-03 13:19:54'),
(58, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy A12 6.5', 18, 799, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_320.jpg', '2021-12-03 13:19:54'),
(59, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy Z Fold 3 5G 7.6', 10, 7999, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/s/a/samsung-93126295-pe-galaxy-z-fold3-f926-5g-sm-f926bzkapeo-478414120download-source.jpg', '2021-12-03 13:19:54'),
(60, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy A22 6.4', 17, 1049, 7, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_322.jpg', '2021-12-03 13:19:54'),
(61, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy S21+ 5G 6.7', 14, 4599, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/123191.jpg', '2021-12-03 13:19:54'),
(62, 2, 'SAMSUNG', 'Celular Libre Samsung Galaxy S21+ 5G 6.7', 18, 4599, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/123190.jpg', '2021-12-03 13:19:54'),
(63, 2, 'XIAOMI', 'Kit Celular Libre Xiaomi 11 Lite 5G 256GB 8GB RAM Negr..', 15, 2199, 18, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/b/u/bundle_11lite5g_256gb_black_1500x1500px.jpg', '2021-12-03 13:19:54'),
(64, 2, 'XIAOMI', 'Kit Celular Libre Xiaomi 11 Lite 5G 256GB 8GB RAM Azul..', 17, 2199, 18, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/b/u/bundle_11lite5g_256gb_blue_1500x1500px.jpg', '2021-12-03 13:19:54'),
(65, 2, 'XIAOMI', 'Celular Libre Xiaomi 11 Lite 5G 6.55', 15, 1999, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/i/m/img-1-pink.jpg', '2021-12-03 13:19:54'),
(66, 2, 'XIAOMI', 'Celular Libre Xiaomi Redmi 10 6.5', 20, 959, 6, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/i/m/img-1.jpg', '2021-12-03 13:19:54'),
(67, 2, 'XIAOMI', 'Celular Libre Xiaomi Redmi 9C 6.53', 10, 599, 8, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/8/1835184-0.jpg', '2021-12-03 13:19:54'),
(68, 2, 'XIAOMI', 'Celular Libre Xiaomi Poco X3 NFC 6.67', 18, 1199, 3, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/123000.jpg', '2021-12-03 13:19:54'),
(69, 2, 'XIAOMI', 'Celular Libre Xiaomi Poco X3 Pro 6.67', 18, 1499, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124191_1_.jpg', '2021-12-03 13:19:54'),
(70, 2, 'XIAOMI', 'Celular Libre Xiaomi Poco X3 Pro 6.67', 18, 1499, 3, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124186_6.jpg', '2021-12-03 13:19:54'),
(71, 2, 'XIAOMI', 'Celular Libre Xiaomi Mi 11 Lite 6.55', 14, 1499, 7, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/123532_3_1.jpg', '2021-12-03 13:19:54'),
(72, 2, 'XIAOMI', 'Celular Libre Xiaomi Redmi 9T 6.53', 18, 959, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_271_1.jpg', '2021-12-03 13:19:54'),
(73, 2, 'XIAOMI', 'Celular Libre Xiaomi Poco X3 GT 5G 6.6', 14, 1899, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/k/1/k10a-white.jpg', '2021-12-03 13:19:54'),
(74, 2, 'XIAOMI', 'Celular Libre Xiaomi Redmi Note 10S 64GB 6GB RAM Gri', 20, 1199, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/r/e/redmi-note-10s-gray-_2_.jpg', '2021-12-03 13:19:54'),
(75, 2, 'XIAOMI', 'Celular Libre Xiaomi Redmi Note 8 2021 6.3', 14, 829, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_210.jpg', '2021-12-03 13:19:54'),
(76, 2, 'XIAOMI', 'Celular Libre Xiaomi Poco X3 6.67', 19, 1159, 14, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_211.jpg', '2021-12-03 13:19:54'),
(77, 2, 'XIAOMI', 'Celular Libre Xiaomi Redmi 9 6.53', 12, 759, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/120996_3_.jpg', '2021-12-03 13:19:54'),
(78, 2, 'XIAOMI', 'Celular Libre Poco X3 NFC 6.67', 12, 1159, 14, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/p/o/poco_x3_nfc-3.jpg', '2021-12-03 13:19:54'),
(79, 2, 'XIAOMI', 'Celular Libre Xiaomi Poco X3 Pro 6.67', 11, 1499, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124185.jpg', '2021-12-03 13:19:54'),
(80, 2, 'XIAOMI', 'Celular Libre Poco X3 Pro 6.67', 19, 1299, 8, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/p/o/poco_x3_pro_black.jpg', '2021-12-03 13:19:54'),
(81, 4, 'SONY', 'Videojuego Medievil Remastered PS', 18, 169, 71, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/118714-1.jpg', '2021-12-03 13:19:54'),
(82, 4, 'ACER', 'Laptop Acer AN515-55-58WZ 15.6', 19, 3999, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/a/n/an515-55-58wz_1.jpg', '2021-12-03 13:19:54'),
(83, 4, 'ASUS', 'Laptop Asus ROG Zephyrus G14 GA401QM 14', 17, 10199, 15, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c170648.jpg', '2021-12-03 13:19:54'),
(84, 4, 'ASUS', 'Laptop Asus ROG Flow X13 GV301QH 13.4', 10, 15199, 13, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/w/h/whatsapp_image_2021-10-07_at_6.57.29_pm.jpeg', '2021-12-03 13:19:54'),
(85, 4, 'TRUST', 'Audífonos Gaming Trust Radiu', 13, 89, 22, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/125482_1.jpg', '2021-12-03 13:19:54'),
(86, 4, 'ASUS', 'Laptop Gamer Asus ROG Strix SCAR 17 G733QS 17.3', 12, 16999, 12, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c176832.jpg', '2021-12-03 13:19:54'),
(87, 4, 'ASUS', 'Laptop Asus ROG Flow X13 GV301QH 13.4', 15, 15199, 13, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c176834.jpg', '2021-12-03 13:19:54'),
(88, 4, 'ASUS', 'Laptop Asus ROG Zephyrus G14 GA401QM 14', 16, 10199, 15, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c176836.jpg', '2021-12-03 13:19:54'),
(89, 4, 'ASUS', 'Laptop Gamer Asus ROG Zephyrus Duo 15 SE 15.6', 17, 11499, 6, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c176838_1.jpg', '2021-12-03 13:19:54'),
(90, 4, 'ASUS', 'Laptop Gamer Asus ROG Zephyrus Duo 15 SE 15.6', 11, 11499, 6, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c176839_1.jpg', '2021-12-03 13:19:54'),
(91, 4, 'ASUS', 'Laptop Gamer Asus ROG Zephyrus Duo 15 SE 15.6', 10, 20799, 9, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c176840.jpg', '2021-12-03 13:19:54'),
(92, 4, 'ASUS', 'Laptop Gamer Asus ROG Zephyrus Duo 15 SE 15.6', 18, 20799, 9, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c176841.jpg', '2021-12-03 13:19:54'),
(93, 4, 'LOGITECH', 'Audífono Gamer con Micrófono Logitech G335 Blanc', 11, 259, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/125523.jpg', '2021-12-03 13:19:54'),
(94, 4, 'SONY', 'Videojuego Until Dawn PS', 16, 99, 30, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/104120_1.jpg', '2021-12-03 13:19:54'),
(95, 4, 'SONY', 'Videojuego God of War 4 PS', 11, 99, 30, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/113521-1.jpg', '2021-12-03 13:19:54'),
(96, 4, 'SONY', 'Videojuego Infamous Second Son PS', 12, 99, 30, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/0/9/096746.jpg', '2021-12-03 13:19:54'),
(97, 4, 'SONY', 'Videojuego Uncharted: The Nathan Drake Collection PS4 ..', 18, 89, 22, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/104121.jpg', '2021-12-03 13:19:54'),
(98, 4, 'SONY', 'Videojuego Ratchet y Clank PS', 13, 99, 30, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/106143-1.jpg', '2021-12-03 13:19:54'),
(99, 4, 'SONY', 'Videojuego Uncharted 4 PS', 11, 99, 30, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/105944_1.jpg', '2021-12-03 13:19:54'),
(100, 4, 'SONY', 'Videojuego The Last of Us 2 PS', 11, 269, 56, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/120559.jpg', '2021-12-03 13:19:54'),
(101, 4, 'MICRONICS', 'Silla Gamer Micronics Mirage MIC GC500 Re', 16, 799, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/115519.jpg', '2021-12-03 13:19:54'),
(102, 4, 'MICRONICS', 'Silla Gamer Micronics Mirage MIC GC500 Blu', 16, 799, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/115518.jpg', '2021-12-03 13:19:54'),
(103, 4, 'COOLER MASTER', 'Silla Gamer Cooler Master Caliber R', 19, 1259, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/m/cmi-gcr2-2019-min.jpg', '2021-12-03 13:19:54'),
(104, 4, 'ANTRYX', 'Audífono Gaming con Micrófono Antryx Xtreme GH-350 A..', 12, 72, 11, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/-/1-min_1.jpg', '2021-12-03 13:19:54'),
(105, 4, 'ANTRYX', 'Audífono Gaming con Micrófono Antryx Xtreme GH-350 N..', 19, 72, 11, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/-/1-min.jpg', '2021-12-03 13:19:54'),
(106, 4, 'ANTRYX', 'Audífono Gaming Antryx Thunder Black AGH-7800K7V RG', 13, 215, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/-/1-min_5_1.jpg', '2021-12-03 13:19:54'),
(107, 4, 'ANTRYX', 'Audífono Gaming Antryx Thunder Silver AGH-7800S7V RG', 12, 215, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/-/1-min_6.jpg', '2021-12-03 13:19:54'),
(108, 4, 'COOLER MASTER', 'Audífono Gamer Cooler Master - MH630 2.', 14, 279, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/m/h/mh630-min.jpg', '2021-12-03 13:19:54'),
(109, 4, 'LOGITECH', 'Audifono Logitech G733 Lightspeed Azu', 20, 719, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124008.jpg', '2021-12-03 13:19:54'),
(110, 4, 'MICRONICS', 'Teclado Gamer Micronics Xforce MIC K82', 16, 75, 11, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/f/r/frontal-1000-x-1000.jpg', '2021-12-03 13:19:54'),
(111, 4, 'COOLER MASTER', 'Teclado Gamer Cooler Master Keyboard MK11', 12, 199, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/121277_1_.jpg', '2021-12-03 13:19:54'),
(112, 4, 'COOLER MASTER', 'Teclado Cooler Master - CK550 V', 18, 469, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/k/ck-550-gktr1-us_1-min.jpg', '2021-12-03 13:19:54'),
(113, 4, 'MICRONICS', 'Teclado Gamer Micronics Neon+ K709', 13, 59, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/f/r/frontal-1000-x1000_4.jpg', '2021-12-03 13:19:54'),
(114, 4, 'MICRONICS', 'Teclado Gamer Micronics Vanquish FK1003 RG', 19, 259, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/f/r/frontal--2--1000-x1000_1.jpg', '2021-12-03 13:19:54'),
(115, 4, 'COOLER MASTER', 'Teclado Cooler Master CK530 V', 15, 419, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/k/ck-530-gktr1-us_1-min.jpg', '2021-12-03 13:19:54'),
(116, 4, 'COOLER MASTER', 'Cooler para Laptop Cooler Master Notepal L', 11, 99, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/n/o/notepal_l2-min.jpg', '2021-12-03 13:19:54'),
(117, 4, 'SONY', 'Videojuego The Last of Us Remasterizado PS4 201', 16, 99, 30, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/0/9/099313.jpg', '2021-12-03 13:19:54'),
(118, 4, 'SONY', 'Videojuego Returnal PS', 16, 389, 28, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/p/s/ps5_returnal_sw_pkg_packshot_2d_la.jpg', '2021-12-03 13:19:54'),
(119, 4, 'SONY', 'Videojuego Resident Evil Village PS', 20, 279, 29, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/r/e/resident_evil_village_packshot_ps5.jpg', '2021-12-03 13:19:54'),
(120, 4, 'COOLER MASTER', 'Mouse gamer Cooler Master MM711 Dorad', 16, 239, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/m/m/mm-711-grol1_1-min.jpg', '2021-12-03 13:19:54'),
(121, 3, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX15AP Rosad..', 15, 49, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116145.jpg', '2021-12-03 13:19:54'),
(122, 3, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX15AP Blanc..', 13, 49, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116143_1.jpg', '2021-12-03 13:19:54'),
(123, 3, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX15AP Negr', 17, 49, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/108282.jpg', '2021-12-03 13:19:54'),
(124, 3, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX15AP Azu', 17, 49, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116146.jpg', '2021-12-03 13:19:54'),
(125, 3, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX15AP Morad..', 16, 49, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116144_1_.jpg', '2021-12-03 13:19:54'),
(126, 3, 'CASIO', 'Organo Casio CT-S200RDC2 + Adaptador Miray AM-9', 12, 738, 12, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/119097.jpg', '2021-12-03 13:19:54'),
(127, 3, 'CASIO', 'Órgano Casio CT-S200WEC2 + Adaptador Miray AM-9', 20, 738, 12, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/119098.jpg', '2021-12-03 13:19:54'),
(128, 3, 'BOSE', 'Parlante Bluetooth Bose SoundLink Micro Orang', 16, 559, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116461-1.jpg', '2021-12-03 13:19:54'),
(129, 3, 'KORG', 'Piano Digital Korg B2-SP Negr', 11, 3199, 7, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/b/2/b2sp_0.jpg', '2021-12-03 13:19:54'),
(130, 3, 'SONY', 'Audífonos Deportivos In Ear con Micrófono Sony MDR-A..', 13, 79, 13, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/108280.jpg', '2021-12-03 13:19:54'),
(131, 3, 'SONY', 'Audífonos Deportivos In Ear con Micrófono Sony MDR-A..', 15, 79, 13, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116147_2.jpg', '2021-12-03 13:19:54'),
(132, 3, 'SONY', 'Audífonos In Ear Sony MDR-E9LP Gri', 17, 29, 14, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/0/8/084290.jpg', '2021-12-03 13:19:54'),
(133, 3, 'SONY', 'Audífonos In Ear Sony MDR-E9LP Azu', 20, 29, 14, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/0/8/084291.jpg', '2021-12-03 13:19:54'),
(134, 3, 'SONY', 'Audífonos In Ear Sony MDR-E9LP Rosad', 11, 29, 14, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/118337.jpg', '2021-12-03 13:19:54'),
(135, 3, 'SONY', 'Audífonos In Ear Sony con Micrófono MDR-EX110AP Negr..', 18, 99, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/105545_1.jpg', '2021-12-03 13:19:54'),
(136, 3, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX110AP Azu', 12, 99, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116140.jpg', '2021-12-03 13:19:54'),
(137, 3, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX110AP Viol..', 12, 99, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/118338.jpg', '2021-12-03 13:19:54'),
(138, 3, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX110AP Blan..', 17, 99, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116139.jpg', '2021-12-03 13:19:54'),
(139, 3, 'SONY', 'Audífonos Over Ear Sony MDR-ZX110 Negr', 14, 59, 17, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/0/9/099575_1_1.jpg', '2021-12-03 13:19:54'),
(140, 3, 'SONY', 'Audífonos Over Ear Sony MDR-ZX110 Rosad', 16, 59, 17, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116136_1.jpg', '2021-12-03 13:19:54'),
(141, 3, 'SONY', 'Audífonos Over Ear Sony MDR-ZX110 Blanc', 20, 59, 17, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116185_1.jpg', '2021-12-03 13:19:54'),
(142, 3, 'SONY', 'Audífonos Over Ear con Micrófono Sony MDR-ZX110AP Ne..', 14, 69, 14, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/107834-1.jpg', '2021-12-03 13:19:54'),
(143, 3, 'SONY', 'Audífonos Over Ear con Micrófono Sony MDR-ZX110AP Bl..', 11, 69, 14, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116149_1.jpg', '2021-12-03 13:19:54'),
(144, 3, 'SONY', 'Audífonos Over Ear con Micrófono Sony MDR-ZX310AP Ne..', 20, 79, 13, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/103881-1.jpg', '2021-12-03 13:19:54'),
(145, 3, 'SONY', 'Audífonos Over Ear con Micrófono Sony MDR-ZX310AP Ro..', 18, 79, 13, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116137-1.jpg', '2021-12-03 13:19:54'),
(146, 3, 'SONY', 'Audífonos In Ear Sony MDR-E9LP Blanc', 19, 29, 14, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/0/8/084293.jpg', '2021-12-03 13:19:54'),
(147, 3, 'SONY', 'Audífonos Over Ear con Micrófono Sony MDR-ZX310AP Az..', 16, 79, 13, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116186-1.jpg', '2021-12-03 13:19:54'),
(148, 3, 'SONY', 'Audífonos Over Ear con Micrófono Sony MDR-ZX310AP Bl..', 16, 99, 30, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116138-1.jpg', '2021-12-03 13:19:54'),
(149, 3, 'SONY', 'Audífonos Noise Cancelling Truly Bluetooth Sony WF-10..', 11, 899, 33, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/119392-2.jpg', '2021-12-03 13:19:54'),
(150, 3, 'SONY', 'Audífonos In Ear Bluetooth Sony WI C200 Blanc', 17, 149, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/119028_1.jpg', '2021-12-03 13:19:54'),
(151, 3, 'SONY', 'Audífonos In Ear Bluetooth Sony WI C310 Azu', 19, 169, 12, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/118683-1.jpg', '2021-12-03 13:19:54'),
(152, 3, 'SONY', 'Audífonos In Ear Bluetooth Sony WI C310 Dorad', 12, 169, 12, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/118684-1.jpg', '2021-12-03 13:19:54'),
(153, 3, 'SONY', 'Audífonos In Ear Bluetooth Sony WI C310 Blanc', 19, 169, 12, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/118682-1.jpg', '2021-12-03 13:19:54'),
(154, 3, 'SONY', 'Audífonos In Ear Bluetooth Sony WI-C400 Negr', 16, 199, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/112629-1.jpg', '2021-12-03 13:19:54'),
(155, 3, 'SONY', 'Audífonos In Ear Bluetooth Sony WI-C400 Blanc', 14, 199, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116154-1.jpg', '2021-12-03 13:19:54'),
(156, 3, 'SONY', 'Equipo de Sonido Sony M80D Bluetooth Karaoke DVD HDMI ..', 15, 1599, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/113479_1_1.jpg', '2021-12-03 13:19:54'),
(157, 3, 'SONY', 'Grabadora de voz digital portátil Sony ICD-PX24', 17, 199, 15, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/102350_1.jpg', '2021-12-03 13:19:54'),
(158, 3, 'SONY', 'Equipo de Sonido Sony SHAKEX30 DVD Karaok', 11, 2299, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/110101_1.jpg', '2021-12-03 13:19:54'),
(159, 3, 'SONY', 'Equipo de Sonido Sony SHAKEX10 DVD Karaok', 10, 2099, 5, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/110100_2_1.jpg', '2021-12-03 13:19:54'),
(160, 3, 'PANASONIC', 'Audífono Panasonic TCM115E', 20, 54, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/118399.jpg', '2021-12-03 13:19:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `dni` char(8) NOT NULL,
  `celular` varchar(11) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido_paterno`, `dni`, `celular`, `email`, `password`) VALUES
(1, 'Angelo Patrick', 'Rios', '75942730', '923929304', 'angelopatrickriosnolasco@gmail.com', 'ANGELOpatrick123'),
(2, 'Joel', 'Ferrer Escobal', '74589621', '963258741', 'ferrer@gmail.com', 'JOELferrer123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `opinion`
--
ALTER TABLE `opinion`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `R_5` (`id_producto`),
  ADD KEY `R_6` (`id_usuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `R_2` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `opinion`
--
ALTER TABLE `opinion`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `opinion`
--
ALTER TABLE `opinion`
  ADD CONSTRAINT `R_5` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  ADD CONSTRAINT `R_6` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `R_2` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
