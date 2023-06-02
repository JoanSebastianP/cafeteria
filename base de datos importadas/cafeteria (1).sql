-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 02-06-2023 a las 02:07:42
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cafeteria`
--
CREATE DATABASE IF NOT EXISTS `cafeteria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `cafeteria`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `referencia` varchar(255) NOT NULL,
  `precio` int NOT NULL,
  `peso` int NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `stock` int NOT NULL,
  `fecha_creacion` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `referencia`, `precio`, `peso`, `categoria`, `stock`, `fecha_creacion`) VALUES
(1, 'empanada', 'emp1', 2000, 2, 'comida', 4, '2023-06-01'),
(4, 'cafe', 'caf1', 1200, 5, 'bebida', 7, '2023-06-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE IF NOT EXISTS `ventas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `producto_id` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `fecha_venta` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `producto_id` (`producto_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `producto_id`, `cantidad`, `fecha_venta`) VALUES
(1, 1, 2, '2023-06-02'),
(2, 1, 2, '2023-06-02'),
(3, 1, 2, '2023-06-02'),
(4, 1, 2, '2023-06-02'),
(5, 1, 2, '2023-06-02'),
(6, 4, 1, '2023-06-02'),
(7, 4, 1, '2023-06-02'),
(8, 4, 1, '2023-06-02'),
(9, 1, 1, '2023-06-02'),
(10, 1, 1, '2023-06-02'),
(11, 1, 1, '2023-06-02'),
(12, 1, 1, '2023-06-02'),
(13, 1, 1, '2023-06-02'),
(14, 4, 1, '2023-06-02'),
(15, 1, 1, '2023-06-02');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
