-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-07-2013 a las 20:36:46
-- Versión del servidor: 5.1.41
-- Versión de PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `progra_web`
--
CREATE DATABASE `progra_web` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `progra_web`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `public.evt_actividades`
--

CREATE TABLE IF NOT EXISTS `public.evt_actividades` (
  `id_actividad` int(11) NOT NULL AUTO_INCREMENT,
  `id_evento` int(11) NOT NULL,
  `nombre_actividad` varchar(500) NOT NULL,
  `lugares` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `id_instructor` int(11) NOT NULL,
  PRIMARY KEY (`id_actividad`),
  UNIQUE KEY `id_evento` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `public.evt_actividades`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `public.evt_asistentes_eventos`
--

CREATE TABLE IF NOT EXISTS `public.evt_asistentes_eventos` (
  `id_asistente_evento` int(11) NOT NULL AUTO_INCREMENT,
  `id_actividad` int(11) NOT NULL,
  `id_asistente` int(11) NOT NULL,
  `fecha_registro` date NOT NULL,
  PRIMARY KEY (`id_asistente_evento`),
  UNIQUE KEY `id_actividad` (`id_actividad`,`id_asistente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `public.evt_asistentes_eventos`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `public.evt_asistentes_tipos_usuarios`
--

CREATE TABLE IF NOT EXISTS `public.evt_asistentes_tipos_usuarios` (
  `id_asistente_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_asistente` int(11) NOT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_asistente_tipo_usuario`),
  UNIQUE KEY `id_asistente` (`id_asistente`),
  UNIQUE KEY `id_tipo_usuario` (`id_tipo_usuario`),
  UNIQUE KEY `id_tipo_usuario_2` (`id_tipo_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `public.evt_asistentes_tipos_usuarios`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `public.evt_eventos`
--

CREATE TABLE IF NOT EXISTS `public.evt_eventos` (
  `id_evento` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_evento` varchar(200) CHARACTER SET utf8 NOT NULL,
  `contacto` text CHARACTER SET utf8 NOT NULL,
  `cuando` text CHARACTER SET utf8 NOT NULL,
  `donde` text CHARACTER SET utf8 NOT NULL,
  `informacion` text CHARACTER SET utf8 NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  PRIMARY KEY (`id_evento`),
  UNIQUE KEY `id_evento` (`id_evento`),
  UNIQUE KEY `nombre_evento_4` (`nombre_evento`),
  KEY `nombre_evento` (`nombre_evento`),
  KEY `nombre_evento_2` (`nombre_evento`),
  KEY `nombre_evento_3` (`nombre_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `public.evt_eventos`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `public.evt_eventos_tipos_usuarios`
--

CREATE TABLE IF NOT EXISTS `public.evt_eventos_tipos_usuarios` (
  `id_evento_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_evento` int(11) NOT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_evento_tipo_usuario`),
  UNIQUE KEY `id_evento` (`id_evento`,`id_tipo_usuario`),
  KEY `id_tipo_usuario` (`id_tipo_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `public.evt_eventos_tipos_usuarios`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `public.evt_tipos_usuarios`
--

CREATE TABLE IF NOT EXISTS `public.evt_tipos_usuarios` (
  `id_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_tipo_usuario`),
  UNIQUE KEY `tipo` (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `public.evt_tipos_usuarios`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `public.evt_usuarios`
--

CREATE TABLE IF NOT EXISTS `public.evt_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `apellido_paterno` varchar(120) NOT NULL,
  `apellido_materno` varchar(120) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `edad` int(2) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `rfc` varchar(20) NOT NULL,
  `no_control` varchar(20) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email` (`email`,`rfc`,`no_control`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcar la base de datos para la tabla `public.evt_usuarios`
--


--
-- Filtros para las tablas descargadas (dump)
--

--
-- Filtros para la tabla `public.evt_actividades`
--
ALTER TABLE `public.evt_actividades`
  ADD CONSTRAINT `public@002eevt_actividades_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `public.evt_eventos` (`id_evento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `public.evt_asistentes_eventos`
--
ALTER TABLE `public.evt_asistentes_eventos`
  ADD CONSTRAINT `public@002eevt_asistentes_eventos_ibfk_1` FOREIGN KEY (`id_actividad`) REFERENCES `public.evt_actividades` (`id_actividad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `public.evt_asistentes_tipos_usuarios`
--
ALTER TABLE `public.evt_asistentes_tipos_usuarios`
  ADD CONSTRAINT `public@002eevt_asistentes_tipos_usuarios_ibfk_2` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `public.evt_tipos_usuarios` (`id_tipo_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `public@002eevt_asistentes_tipos_usuarios_ibfk_1` FOREIGN KEY (`id_asistente`) REFERENCES `public.evt_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `public.evt_eventos_tipos_usuarios`
--
ALTER TABLE `public.evt_eventos_tipos_usuarios`
  ADD CONSTRAINT `public@002eevt_eventos_tipos_usuarios_ibfk_2` FOREIGN KEY (`id_evento`) REFERENCES `public.evt_eventos` (`id_evento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `public@002eevt_eventos_tipos_usuarios_ibfk_1` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `public.evt_tipos_usuarios` (`id_tipo_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
