-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 10-07-2013 a las 11:55:49
-- Versión del servidor: 5.1.41
-- Versión de PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `prueba_adodb`
--
CREATE DATABASE `prueba_adodb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `prueba_adodb`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delegados`
--

CREATE TABLE IF NOT EXISTS `delegados` (
  `id_Delegado` int(5) NOT NULL AUTO_INCREMENT,
  `Username` varchar(30) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Telefono` char(13) NOT NULL,
  `Password` varchar(30) NOT NULL,
  PRIMARY KEY (`id_Delegado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `delegados`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
