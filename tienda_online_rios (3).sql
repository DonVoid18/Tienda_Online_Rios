-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2021 a las 23:53:36
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
(4, 'gaming'),
(5, 'sexo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `marca` varchar(40) NOT NULL,
  `descripcion` varchar(70) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `precio` float NOT NULL,
  `descuento` float NOT NULL,
  `imagen_producto` varchar(300) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `marca`, `descripcion`, `cantidad`, `categoria`, `precio`, `descuento`, `imagen_producto`, `fecha_registro`) VALUES
(1, 'LG', 'TV LG OLED 4K ThinQ AI 48', 12, 1, 5999, 25, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124102.jpg', '2021-11-27 14:53:19'),
(2, 'AOC', 'TV AOC LED HD Smart 32', 16, 1, 1199, 17, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/3/2/32s5305_f.jpg', '2021-11-27 14:53:19'),
(3, 'PHILIPS', 'TV Philips LED 4K UHD Smart 55', 17, 1, 2899, 24, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/5/5/55pud7625_f_-.jpg', '2021-11-27 14:53:19'),
(4, 'PHILIPS', 'TV Philips LED 4K UHD Smart 70', 12, 1, 4199, 21, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/7/0/70pud7625_1_1500x1500_smart.jpg', '2021-11-27 14:53:19'),
(5, 'SAMSUNG', 'TV Samsung QLED 8K Smart 65', 11, 1, 15999, 31, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/o/combo-sam-1.jpg', '2021-11-27 14:53:19'),
(6, 'SAMSUNG', 'TV Samsung Neo QLED 4K Smart 65', 11, 1, 12999, 15, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/o/combo-sam-2.jpg', '2021-11-27 14:53:19'),
(7, 'SAMSUNG', 'TV Samsung Neo QLED 4K Smart (2021) 75', 20, 1, 13999, 21, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/o/combo-sam-3.jpg', '2021-11-27 14:53:19'),
(8, 'LG', 'TV LG LED 4K UHD ThinQ AI 55', 16, 1, 3399, 32, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124722_3.jpg', '2021-11-27 14:53:19'),
(9, 'LG', 'TV LG LED 4K UHD ThinQ AI 50', 12, 1, 2899, 26, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124722_4.jpg', '2021-11-27 14:53:19'),
(10, 'SAMSUNG', 'TV Samsung LED 4K UHD Smart 43', 13, 1, 1999, 13, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/a/u/au7000_0_1.png', '2021-11-27 14:53:19'),
(11, 'SONY', 'TV Sony LED 4K UHD Google TV Smart 55', 12, 1, 4399, 18, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124625_1.jpg', '2021-11-27 14:53:19'),
(12, 'SAMSUNG', 'TV Samsung LED 4k UHD Smart (2021) 50', 11, 1, 2499, 14, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/a/u/au7000_0_1_4.png', '2021-11-27 14:53:19'),
(13, 'SONY', 'TV Sony Full Array LED 4K UHD Google TV Smart 65', 17, 1, 6799, 5, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124307_1_1.jpg', '2021-11-27 14:53:19'),
(14, 'PANASONIC', 'TV Panasonic LED HD Smart 32', 16, 1, 1299, 23, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/3/2/32js500-logos.jpg', '2021-11-27 14:53:19'),
(15, 'LG', 'TV LG LED 8K MINI LED ThinQ AI 75', 10, 1, 24999, 24, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/2/0/2021_75_qned99spa_1.jpg', '2021-11-27 14:53:19'),
(16, 'LG', 'TV LG LED HD ThinQ AI 32', 18, 1, 1299, 12, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/2/0/2021_32_lm637bpsb_1_1.jpg', '2021-11-27 14:53:19'),
(17, 'PANASONIC', 'TV Panasonic LED Smart 32', 12, 1, 1099, 9, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/117691-1_1.jpg', '2021-11-27 14:53:19'),
(18, 'MIRAY', 'TV Miray LED Smart FHD 40', 15, 1, 1299, 27, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/121160_ms40-e201.jpg', '2021-11-27 14:53:19'),
(19, 'PHILIPS', 'TV Philips LED HD Smart 32', 18, 1, 1199, 17, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/3/2/32phd6825_f.jpg', '2021-11-27 14:53:19'),
(20, 'PANASONIC', 'TV Panasonic LCD 4K UHD Smart 43', 12, 1, 1999, 5, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_245.jpg', '2021-11-27 14:53:19'),
(21, 'PHILIPS', 'TV Philips LED FHD Smart TV 43', 17, 1, 1699, 18, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/4/3/43phd6825_f.jpg', '2021-11-27 14:53:19'),
(22, 'MIRAY', 'TV Miray LED 4K UHD Smart 43', 14, 1, 1599, 25, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/121161_mk43-e201.jpg', '2021-11-27 14:53:19'),
(23, 'MIRAY', 'TV Miray LED 4K UHD Smart 50', 16, 1, 1899, 34, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/121402_mk50-e201_5.jpg', '2021-11-27 14:53:19'),
(24, 'PHILIPS', 'TV Philips LED 4K UHD Smart 50', 17, 1, 2499, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/5/8/58pud7625_f.jpg', '2021-11-27 14:53:19'),
(25, 'AOC', 'TV AOC LED 4K UHD Smart 50', 11, 1, 2299, 22, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/5/0/50u6305_f.jpg', '2021-11-27 14:53:19'),
(26, 'PHILIPS', 'TV Philips LED 4K UHD Smart 58', 16, 1, 2899, 21, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/5/8/58pud7625_f_1.jpg', '2021-11-27 14:53:19'),
(27, 'SAMSUNG', 'TV Samsung LED 4k UHD Smart (2021) 58', 11, 1, 3199, 25, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/2/_/2_183.jpg', '2021-11-27 14:53:19'),
(28, 'SAMSUNG', 'TV Samsung LED 4K UHD Smart 55', 12, 1, 3698, 22, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/3/c306990.jpg', '2021-11-27 14:53:19'),
(29, 'PHILIPS', 'TV Philips 4K UHD LED Smart 70', 13, 1, 3999, 25, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/7/0/70pud6774-1.jpg', '2021-11-27 14:53:19'),
(30, 'LG', 'TV LG 4K UHD UP77 Smart con AI ThinQ 60', 13, 1, 3699, 14, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124722.jpg', '2021-11-27 14:53:19'),
(31, 'SAMSUNG', 'TV Samsung LED 4k UHD Smart (2021) 58', 17, 1, 3598, 31, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_309_1.jpg', '2021-11-27 14:53:19'),
(32, 'SAMSUNG', 'TV Samsung LED 4K UHD Smart 60', 20, 1, 3898, 28, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_309.jpg', '2021-11-27 14:53:19'),
(33, 'SONY', 'TV Sony Full Array LED 4K UHD Google TV Smart 55', 19, 1, 5499, 9, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124308_1.jpg', '2021-11-27 14:53:19'),
(34, 'SAMSUNG', 'TV Samsung LED 4K UHD Smart 65', 15, 1, 4498, 33, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_307_1.jpg', '2021-11-27 14:53:19'),
(35, 'LG', 'TV LG LED 4K NanoCell ThinQ AI 70', 18, 1, 5499, 15, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_326.jpg', '2021-11-27 14:53:19'),
(36, 'LG', 'TV LG LED 4K UHD ThinQ AI 75', 11, 1, 5999, 17, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124722_5.jpg', '2021-11-27 14:53:19'),
(37, 'LG', 'TV LG LED 4K NanoCell ThinQ AI 75', 16, 1, 6499, 5, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124852.jpg', '2021-11-27 14:53:19'),
(38, 'LG', 'TV LG LED 4K NanoCell ThinQ AI 50', 19, 1, 3399, 29, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124852_1.jpg', '2021-11-27 14:53:19'),
(39, 'AOC', 'TV AOC FHD Borderless Smart 43', 20, 1, 1599, 13, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/4/3/43s5305_f.jpg', '2021-11-27 14:53:19'),
(40, 'SAMSUNG', 'TV Samsung LED 4K UHD Smart 60', 17, 1, 3499, 23, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/2/_/2_190.jpg', '2021-11-27 14:53:19'),
(41, 'APPLE', 'iPhone 12 Pro Max 6.7', 18, 2, 6299, 3, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_154.jpg', '2021-11-27 14:53:19'),
(42, 'APPLE', 'iPhone 12 Pro 6.1', 11, 2, 5699, 2, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/0/_/0_2_1.jpg', '2021-11-27 14:53:19'),
(43, 'APPLE', 'iPhone SE 2020 4.7', 11, 2, 2299, 4, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_149.jpg', '2021-11-27 14:53:19'),
(44, 'APPLE', 'iPhone 12 Mini 5.4', 18, 2, 3999, 3, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_317.jpg', '2021-11-27 14:53:19'),
(45, 'APPLE', 'iPhone 12 6.1', 12, 2, 5199, 4, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_152.jpg', '2021-11-27 14:53:19'),
(46, 'APPLE', 'iPhone 12 6.1', 18, 2, 5199, 4, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_151.jpg', '2021-11-27 14:53:19'),
(47, 'APPLE', 'iPhone 12 Pro 6.1', 10, 2, 5699, 2, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_153.jpg', '2021-11-27 14:53:19'),
(48, 'SAMSUNG', 'Celular Libre Samsung Galaxy M22 6.4', 15, 2, 919, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_324.jpg', '2021-11-27 14:53:19'),
(49, 'SAMSUNG', 'Celular Libre Samsung Galaxy A03S 6.5', 14, 2, 649, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_319.jpg', '2021-11-27 14:53:19'),
(50, 'SAMSUNG', 'Celular Libre Samsung Galaxy A12 6.5', 16, 2, 799, 13, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_321.jpg', '2021-11-27 14:53:19'),
(51, 'SAMSUNG', 'Celular Libre Samsung Galaxy Z Flip 3 5G 6.7', 18, 2, 4499, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_316_3.jpg', '2021-11-27 14:53:19'),
(52, 'SAMSUNG', 'Celular Libre Samsung Galaxy A52S 5G 6.5', 19, 2, 1999, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_323.jpg', '2021-11-27 14:53:19'),
(53, 'SAMSUNG', 'Celular Libre Samsung Galaxy A32 6.5', 15, 2, 1199, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_318.jpg', '2021-11-27 14:53:19'),
(54, 'SAMSUNG', 'Celular Libre Samsung A32 6.4', 11, 2, 1199, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/g/a/galaxy-a32-negro-sm-a325mzkmltp---0.jpg', '2021-11-27 14:53:19'),
(55, 'SAMSUNG', 'Celular Libre Samsung Galaxy A22 6.4', 17, 2, 949, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/a/2/a22-64gb.jpg', '2021-11-27 14:53:19'),
(56, 'SAMSUNG', 'Celular Libre Samsung S20 FE Lavanda 6.5', 19, 2, 2499, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_228.jpg', '2021-11-27 14:53:19'),
(57, 'SAMSUNG', 'Celular Libre Samsung Galaxy M22 6.4', 14, 2, 919, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_325.jpg', '2021-11-27 14:53:19'),
(58, 'SAMSUNG', 'Celular Libre Samsung Galaxy A12 6.5', 15, 2, 799, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_320.jpg', '2021-11-27 14:53:19'),
(59, 'SAMSUNG', 'Celular Libre Samsung Galaxy Z Fold 3 5G 7.6', 13, 2, 7999, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/s/a/samsung-93126295-pe-galaxy-z-fold3-f926-5g-sm-f926bzkapeo-478414120download-source.jpg', '2021-11-27 14:53:19'),
(60, 'SAMSUNG', 'Celular Libre Samsung Galaxy A22 6.4', 12, 2, 1049, 7, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_322.jpg', '2021-11-27 14:53:19'),
(61, 'SAMSUNG', 'Celular Libre Samsung Galaxy S21+ 5G 6.7', 20, 2, 4599, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/123191.jpg', '2021-11-27 14:53:19'),
(62, 'SAMSUNG', 'Celular Libre Samsung Galaxy S21+ 5G 6.7', 18, 2, 4599, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/123190.jpg', '2021-11-27 14:53:19'),
(63, 'XIAOMI', 'Kit Celular Libre Xiaomi 11 Lite 5G 256GB 8GB RAM Negr..', 15, 2, 2199, 18, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/b/u/bundle_11lite5g_256gb_black_1500x1500px.jpg', '2021-11-27 14:53:19'),
(64, 'XIAOMI', 'Kit Celular Libre Xiaomi 11 Lite 5G 256GB 8GB RAM Azul..', 20, 2, 2199, 18, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/b/u/bundle_11lite5g_256gb_blue_1500x1500px.jpg', '2021-11-27 14:53:19'),
(65, 'XIAOMI', 'Celular Libre Xiaomi 11 Lite 5G 6.55', 10, 2, 1999, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/i/m/img-1-pink.jpg', '2021-11-27 14:53:19'),
(66, 'XIAOMI', 'Celular Libre Xiaomi Redmi 10 6.5', 14, 2, 959, 6, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/i/m/img-1.jpg', '2021-11-27 14:53:19'),
(67, 'XIAOMI', 'Celular Libre Xiaomi Redmi 9C 6.53', 11, 2, 599, 8, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/8/1835184-0.jpg', '2021-11-27 14:53:19'),
(68, 'XIAOMI', 'Celular Libre Xiaomi Poco X3 NFC 6.67', 13, 2, 1199, 3, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/123000.jpg', '2021-11-27 14:53:19'),
(69, 'XIAOMI', 'Celular Libre Xiaomi Poco X3 Pro 6.67', 13, 2, 1499, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124191_1_.jpg', '2021-11-27 14:53:19'),
(70, 'XIAOMI', 'Celular Libre Xiaomi Poco X3 Pro 6.67', 11, 2, 1499, 3, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124186_6.jpg', '2021-11-27 14:53:19'),
(71, 'XIAOMI', 'Celular Libre Xiaomi Mi 11 Lite 6.55', 14, 2, 1499, 7, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/123532_3_1.jpg', '2021-11-27 14:53:19'),
(72, 'XIAOMI', 'Celular Libre Xiaomi Redmi 9T 6.53', 13, 2, 959, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_271_1.jpg', '2021-11-27 14:53:19'),
(73, 'XIAOMI', 'Celular Libre Xiaomi Poco X3 GT 5G 6.6', 16, 2, 1899, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/k/1/k10a-white.jpg', '2021-11-27 14:53:19'),
(74, 'XIAOMI', 'Celular Libre Xiaomi Redmi Note 10S 64GB 6GB RAM Gri', 11, 2, 1199, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/r/e/redmi-note-10s-gray-_2_.jpg', '2021-11-27 14:53:19'),
(75, 'XIAOMI', 'Celular Libre Xiaomi Redmi Note 8 2021 6.3', 12, 2, 829, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_210.jpg', '2021-11-27 14:53:19'),
(76, 'XIAOMI', 'Celular Libre Xiaomi Poco X3 6.67', 16, 2, 1159, 14, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/_/1_211.jpg', '2021-11-27 14:53:19'),
(77, 'XIAOMI', 'Celular Libre Xiaomi Redmi 9 6.53', 12, 2, 759, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/120996_3_.jpg', '2021-11-27 14:53:19'),
(78, 'XIAOMI', 'Celular Libre Poco X3 NFC 6.67', 10, 2, 1159, 14, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/p/o/poco_x3_nfc-3.jpg', '2021-11-27 14:53:19'),
(79, 'XIAOMI', 'Celular Libre Xiaomi Poco X3 Pro 6.67', 12, 2, 1499, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124185.jpg', '2021-11-27 14:53:19'),
(80, 'XIAOMI', 'Celular Libre Poco X3 Pro 6.67', 11, 2, 1299, 8, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/p/o/poco_x3_pro_black.jpg', '2021-11-27 14:53:19'),
(81, 'SONY', 'Videojuego Medievil Remastered PS', 17, 4, 169, 71, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/118714-1.jpg', '2021-11-27 14:53:19'),
(82, 'ACER', 'Laptop Acer AN515-55-58WZ 15.6', 14, 4, 3999, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/a/n/an515-55-58wz_1.jpg', '2021-11-27 14:53:19'),
(83, 'ASUS', 'Laptop Asus ROG Zephyrus G14 GA401QM 14', 19, 4, 10199, 15, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c170648.jpg', '2021-11-27 14:53:19'),
(84, 'ASUS', 'Laptop Asus ROG Flow X13 GV301QH 13.4', 19, 4, 15199, 13, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/w/h/whatsapp_image_2021-10-07_at_6.57.29_pm.jpeg', '2021-11-27 14:53:19'),
(85, 'TRUST', 'Audífonos Gaming Trust Radiu', 18, 4, 89, 22, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/125482_1.jpg', '2021-11-27 14:53:19'),
(86, 'ASUS', 'Laptop Gamer Asus ROG Strix SCAR 17 G733QS 17.3', 14, 4, 16999, 12, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c176832.jpg', '2021-11-27 14:53:19'),
(87, 'ASUS', 'Laptop Asus ROG Flow X13 GV301QH 13.4', 20, 4, 15199, 13, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c176834.jpg', '2021-11-27 14:53:19'),
(88, 'ASUS', 'Laptop Asus ROG Zephyrus G14 GA401QM 14', 14, 4, 10199, 15, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c176836.jpg', '2021-11-27 14:53:19'),
(89, 'ASUS', 'Laptop Gamer Asus ROG Zephyrus Duo 15 SE 15.6', 13, 4, 11499, 6, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c176838_1.jpg', '2021-11-27 14:53:19'),
(90, 'ASUS', 'Laptop Gamer Asus ROG Zephyrus Duo 15 SE 15.6', 11, 4, 11499, 6, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c176839_1.jpg', '2021-11-27 14:53:19'),
(91, 'ASUS', 'Laptop Gamer Asus ROG Zephyrus Duo 15 SE 15.6', 11, 4, 20799, 9, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c176840.jpg', '2021-11-27 14:53:19'),
(92, 'ASUS', 'Laptop Gamer Asus ROG Zephyrus Duo 15 SE 15.6', 18, 4, 20799, 9, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/1/c176841.jpg', '2021-11-27 14:53:19'),
(93, 'LOGITECH', 'Audífono Gamer con Micrófono Logitech G335 Blanc', 10, 4, 259, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/125523.jpg', '2021-11-27 14:53:19'),
(94, 'SONY', 'Videojuego Until Dawn PS', 14, 4, 99, 30, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/104120_1.jpg', '2021-11-27 14:53:19'),
(95, 'SONY', 'Videojuego God of War 4 PS', 17, 4, 99, 30, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/113521-1.jpg', '2021-11-27 14:53:19'),
(96, 'SONY', 'Videojuego Infamous Second Son PS', 11, 4, 99, 30, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/0/9/096746.jpg', '2021-11-27 14:53:19'),
(97, 'SONY', 'Videojuego Uncharted: The Nathan Drake Collection PS4 ..', 10, 4, 89, 22, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/104121.jpg', '2021-11-27 14:53:19'),
(98, 'SONY', 'Videojuego Ratchet y Clank PS', 17, 4, 99, 30, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/106143-1.jpg', '2021-11-27 14:53:19'),
(99, 'SONY', 'Videojuego Uncharted 4 PS', 17, 4, 99, 30, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/105944_1.jpg', '2021-11-27 14:53:19'),
(100, 'SONY', 'Videojuego The Last of Us 2 PS', 12, 4, 269, 56, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/120559.jpg', '2021-11-27 14:53:19'),
(101, 'MICRONICS', 'Silla Gamer Micronics Mirage MIC GC500 Re', 16, 4, 799, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/115519.jpg', '2021-11-27 14:53:19'),
(102, 'MICRONICS', 'Silla Gamer Micronics Mirage MIC GC500 Blu', 16, 4, 799, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/115518.jpg', '2021-11-27 14:53:19'),
(103, 'COOLER MASTER', 'Silla Gamer Cooler Master Caliber R', 19, 4, 1259, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/m/cmi-gcr2-2019-min.jpg', '2021-11-27 14:53:19'),
(104, 'ANTRYX', 'Audífono Gaming con Micrófono Antryx Xtreme GH-350 A..', 16, 4, 72, 11, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/-/1-min_1.jpg', '2021-11-27 14:53:19'),
(105, 'ANTRYX', 'Audífono Gaming con Micrófono Antryx Xtreme GH-350 N..', 19, 4, 72, 11, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/-/1-min.jpg', '2021-11-27 14:53:19'),
(106, 'ANTRYX', 'Audífono Gaming Antryx Thunder Black AGH-7800K7V RG', 11, 4, 215, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/-/1-min_5_1.jpg', '2021-11-27 14:53:19'),
(107, 'ANTRYX', 'Audífono Gaming Antryx Thunder Silver AGH-7800S7V RG', 11, 4, 215, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/-/1-min_6.jpg', '2021-11-27 14:53:19'),
(108, 'COOLER MASTER', 'Audífono Gamer Cooler Master - MH630 2.', 17, 4, 279, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/m/h/mh630-min.jpg', '2021-11-27 14:53:19'),
(109, 'LOGITECH', 'Audifono Logitech G733 Lightspeed Azu', 19, 4, 719, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/124008.jpg', '2021-11-27 14:53:19'),
(110, 'MICRONICS', 'Teclado Gamer Micronics Xforce MIC K82', 20, 4, 75, 11, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/f/r/frontal-1000-x-1000.jpg', '2021-11-27 14:53:19'),
(111, 'COOLER MASTER', 'Teclado Gamer Cooler Master Keyboard MK11', 13, 4, 199, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/2/121277_1_.jpg', '2021-11-27 14:53:19'),
(112, 'COOLER MASTER', 'Teclado Cooler Master - CK550 V', 10, 4, 469, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/k/ck-550-gktr1-us_1-min.jpg', '2021-11-27 14:53:19'),
(113, 'MICRONICS', 'Teclado Gamer Micronics Neon+ K709', 17, 4, 59, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/f/r/frontal-1000-x1000_4.jpg', '2021-11-27 14:53:19'),
(114, 'MICRONICS', 'Teclado Gamer Micronics Vanquish FK1003 RG', 10, 4, 259, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/f/r/frontal--2--1000-x1000_1.jpg', '2021-11-27 14:53:19'),
(115, 'COOLER MASTER', 'Teclado Cooler Master CK530 V', 12, 4, 419, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/c/k/ck-530-gktr1-us_1-min.jpg', '2021-11-27 14:53:19'),
(116, 'COOLER MASTER', 'Cooler para Laptop Cooler Master Notepal L', 12, 4, 99, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/n/o/notepal_l2-min.jpg', '2021-11-27 14:53:19'),
(117, 'SONY', 'Videojuego The Last of Us Remasterizado PS4 201', 13, 4, 99, 30, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/0/9/099313.jpg', '2021-11-27 14:53:19'),
(118, 'SONY', 'Videojuego Returnal PS', 17, 4, 389, 28, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/p/s/ps5_returnal_sw_pkg_packshot_2d_la.jpg', '2021-11-27 14:53:19'),
(119, 'SONY', 'Videojuego Resident Evil Village PS', 11, 4, 279, 29, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/r/e/resident_evil_village_packshot_ps5.jpg', '2021-11-27 14:53:19'),
(120, 'COOLER MASTER', 'Mouse gamer Cooler Master MM711 Dorad', 18, 4, 239, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/m/m/mm-711-grol1_1-min.jpg', '2021-11-27 14:53:19'),
(121, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX15AP Rosad..', 12, 3, 49, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116145.jpg', '2021-11-27 14:53:19'),
(122, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX15AP Blanc..', 12, 3, 49, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116143_1.jpg', '2021-11-27 14:53:19'),
(123, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX15AP Negr', 14, 3, 49, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/108282.jpg', '2021-11-27 14:53:19'),
(124, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX15AP Azu', 18, 3, 49, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116146.jpg', '2021-11-27 14:53:19'),
(125, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX15AP Morad..', 15, 3, 49, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116144_1_.jpg', '2021-11-27 14:53:19'),
(126, 'CASIO', 'Organo Casio CT-S200RDC2 + Adaptador Miray AM-9', 19, 3, 738, 12, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/119097.jpg', '2021-11-27 14:53:19'),
(127, 'CASIO', 'Órgano Casio CT-S200WEC2 + Adaptador Miray AM-9', 13, 3, 738, 12, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/119098.jpg', '2021-11-27 14:53:19'),
(128, 'BOSE', 'Parlante Bluetooth Bose SoundLink Micro Orang', 14, 3, 559, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116461-1.jpg', '2021-11-27 14:53:19'),
(129, 'KORG', 'Piano Digital Korg B2-SP Negr', 14, 3, 3199, 7, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/b/2/b2sp_0.jpg', '2021-11-27 14:53:19'),
(130, 'SONY', 'Audífonos Deportivos In Ear con Micrófono Sony MDR-A..', 15, 3, 79, 13, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/108280.jpg', '2021-11-27 14:53:19'),
(131, 'SONY', 'Audífonos Deportivos In Ear con Micrófono Sony MDR-A..', 16, 3, 79, 13, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116147_2.jpg', '2021-11-27 14:53:19'),
(132, 'SONY', 'Audífonos In Ear Sony MDR-E9LP Gri', 10, 3, 29, 14, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/0/8/084290.jpg', '2021-11-27 14:53:19'),
(133, 'SONY', 'Audífonos In Ear Sony MDR-E9LP Azu', 14, 3, 29, 14, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/0/8/084291.jpg', '2021-11-27 14:53:19'),
(134, 'SONY', 'Audífonos In Ear Sony MDR-E9LP Rosad', 14, 3, 29, 14, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/118337.jpg', '2021-11-27 14:53:19'),
(135, 'SONY', 'Audífonos In Ear Sony con Micrófono MDR-EX110AP Negr..', 18, 3, 99, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/105545_1.jpg', '2021-11-27 14:53:19'),
(136, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX110AP Azu', 15, 3, 99, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116140.jpg', '2021-11-27 14:53:19'),
(137, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX110AP Viol..', 19, 3, 99, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/118338.jpg', '2021-11-27 14:53:19'),
(138, 'SONY', 'Audífonos In Ear con Micrófono Sony MDR-EX110AP Blan..', 18, 3, 99, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116139.jpg', '2021-11-27 14:53:19'),
(139, 'SONY', 'Audífonos Over Ear Sony MDR-ZX110 Negr', 14, 3, 59, 17, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/0/9/099575_1_1.jpg', '2021-11-27 14:53:19'),
(140, 'SONY', 'Audífonos Over Ear Sony MDR-ZX110 Rosad', 11, 3, 59, 17, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116136_1.jpg', '2021-11-27 14:53:19'),
(141, 'SONY', 'Audífonos Over Ear Sony MDR-ZX110 Blanc', 12, 3, 59, 17, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116185_1.jpg', '2021-11-27 14:53:19'),
(142, 'SONY', 'Audífonos Over Ear con Micrófono Sony MDR-ZX110AP Ne..', 11, 3, 69, 14, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/107834-1.jpg', '2021-11-27 14:53:19'),
(143, 'SONY', 'Audífonos Over Ear con Micrófono Sony MDR-ZX110AP Bl..', 15, 3, 69, 14, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116149_1.jpg', '2021-11-27 14:53:19'),
(144, 'SONY', 'Audífonos Over Ear con Micrófono Sony MDR-ZX310AP Ne..', 20, 3, 79, 13, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/103881-1.jpg', '2021-11-27 14:53:19'),
(145, 'SONY', 'Audífonos Over Ear con Micrófono Sony MDR-ZX310AP Ro..', 13, 3, 79, 13, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116137-1.jpg', '2021-11-27 14:53:19'),
(146, 'SONY', 'Audífonos In Ear Sony MDR-E9LP Blanc', 16, 3, 29, 14, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/0/8/084293.jpg', '2021-11-27 14:53:19'),
(147, 'SONY', 'Audífonos Over Ear con Micrófono Sony MDR-ZX310AP Az..', 13, 3, 79, 13, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116186-1.jpg', '2021-11-27 14:53:19'),
(148, 'SONY', 'Audífonos Over Ear con Micrófono Sony MDR-ZX310AP Bl..', 14, 3, 99, 30, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116138-1.jpg', '2021-11-27 14:53:19'),
(149, 'SONY', 'Audífonos Noise Cancelling Truly Bluetooth Sony WF-10..', 13, 3, 899, 33, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/119392-2.jpg', '2021-11-27 14:53:19'),
(150, 'SONY', 'Audífonos In Ear Bluetooth Sony WI C200 Blanc', 15, 3, 149, 20, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/119028_1.jpg', '2021-11-27 14:53:19'),
(151, 'SONY', 'Audífonos In Ear Bluetooth Sony WI C310 Azu', 13, 3, 169, 12, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/118683-1.jpg', '2021-11-27 14:53:19'),
(152, 'SONY', 'Audífonos In Ear Bluetooth Sony WI C310 Dorad', 11, 3, 169, 12, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/118684-1.jpg', '2021-11-27 14:53:19'),
(153, 'SONY', 'Audífonos In Ear Bluetooth Sony WI C310 Blanc', 12, 3, 169, 12, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/118682-1.jpg', '2021-11-27 14:53:19'),
(154, 'SONY', 'Audífonos In Ear Bluetooth Sony WI-C400 Negr', 18, 3, 199, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/112629-1.jpg', '2021-11-27 14:53:19'),
(155, 'SONY', 'Audífonos In Ear Bluetooth Sony WI-C400 Blanc', 16, 3, 199, 10, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/116154-1.jpg', '2021-11-27 14:53:19'),
(156, 'SONY', 'Equipo de Sonido Sony M80D Bluetooth Karaoke DVD HDMI ..', 16, 3, 1599, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/113479_1_1.jpg', '2021-11-27 14:53:19'),
(157, 'SONY', 'Grabadora de voz digital portátil Sony ICD-PX24', 18, 3, 199, 15, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/0/102350_1.jpg', '2021-11-27 14:53:19'),
(158, 'SONY', 'Equipo de Sonido Sony SHAKEX30 DVD Karaok', 10, 3, 2299, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/110101_1.jpg', '2021-11-27 14:53:19'),
(159, 'SONY', 'Equipo de Sonido Sony SHAKEX10 DVD Karaok', 17, 3, 2099, 5, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/110100_2_1.jpg', '2021-11-27 14:53:19'),
(160, 'PANASONIC', 'Audífono Panasonic TCM115E', 19, 3, 54, 0, 'https://hiraoka.com.pe/media/catalog/product/cache/48567fcfb4ecc28ec659b7fb30522c5f/1/1/118399.jpg', '2021-11-27 14:53:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `fecha_nacimiento` varchar(50) NOT NULL,
  `dni` int(11) NOT NULL,
  `celular` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido_paterno`, `fecha_nacimiento`, `dni`, `celular`, `email`, `password`) VALUES
(1, 'Angelo Patrick', 'Nolasco', '09/05/2003', 75942730, 923929304, 'angelopatrickriosnolasco@gmail.com', 'ANGELOpatrick123'),
(2, 'Josue', 'Rios', '09/05/2001', 12345678, 913720366, 'josue@gmail.com', 'josue123');

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
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `categoria` (`categoria`);

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
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
