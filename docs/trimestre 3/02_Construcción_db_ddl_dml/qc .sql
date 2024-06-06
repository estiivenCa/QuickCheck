-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2024 a las 23:10:51
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `qc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `IdAsistencia` int(11) NOT NULL,
  `FechaAsistencia` datetime DEFAULT NULL,
  `IdAsistio` int(11) DEFAULT NULL,
  `IdUsuario` int(11) DEFAULT NULL,
  `IdPrograma` int(11) DEFAULT NULL,
  `IdJornada` int(11) DEFAULT NULL,
  `IdSede` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_programa`
--

CREATE TABLE `asistencia_programa` (
  `IdAsistencia` int(11) DEFAULT NULL,
  `IdPrograma` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_reporte`
--

CREATE TABLE `asistencia_reporte` (
  `IdAsistencia` int(11) DEFAULT NULL,
  `IdReporte` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistio`
--

CREATE TABLE `asistio` (
  `IdAsistio` int(11) NOT NULL,
  `Asistio` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornada`
--

CREATE TABLE `jornada` (
  `IdJornada` int(11) NOT NULL,
  `Jornada` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `IdPrograma` int(11) NOT NULL,
  `Programa` varchar(45) DEFAULT NULL,
  `Ficha` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `IdReporte` int(11) NOT NULL,
  `Reporte` text DEFAULT NULL,
  `FechaReporte` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `IdRol` int(11) NOT NULL,
  `Rol` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_usuario`
--

CREATE TABLE `rol_usuario` (
  `IdRol` int(11) DEFAULT NULL,
  `IdUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `IdSede` int(11) NOT NULL,
  `Sede` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IdUsuario` int(11) NOT NULL,
  `Documento` int(11) DEFAULT NULL,
  `Nombres` varchar(45) DEFAULT NULL,
  `Apellidos` varchar(45) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_asistencia`
--

CREATE TABLE `usuario_asistencia` (
  `IdUsuario` int(11) DEFAULT NULL,
  `IdAsistencia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_recordatorio`
--

CREATE TABLE `usuario_recordatorio` (
  `id_recordatorio` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `programa` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`IdAsistencia`),
  ADD KEY `IdFicha` (`IdPrograma`),
  ADD KEY `IdJornada` (`IdJornada`),
  ADD KEY `IdSede` (`IdSede`),
  ADD KEY `IdAsistio` (`IdAsistio`);

--
-- Indices de la tabla `asistencia_programa`
--
ALTER TABLE `asistencia_programa`
  ADD KEY `IdAsistencia` (`IdAsistencia`),
  ADD KEY `IdPrograma` (`IdPrograma`);

--
-- Indices de la tabla `asistencia_reporte`
--
ALTER TABLE `asistencia_reporte`
  ADD KEY `IdAsistencia` (`IdAsistencia`),
  ADD KEY `IdReporte` (`IdReporte`);

--
-- Indices de la tabla `asistio`
--
ALTER TABLE `asistio`
  ADD PRIMARY KEY (`IdAsistio`);

--
-- Indices de la tabla `jornada`
--
ALTER TABLE `jornada`
  ADD PRIMARY KEY (`IdJornada`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`IdPrograma`);

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`IdReporte`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`IdRol`);

--
-- Indices de la tabla `rol_usuario`
--
ALTER TABLE `rol_usuario`
  ADD KEY `IdRol` (`IdRol`),
  ADD KEY `IdUsuario` (`IdUsuario`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`IdSede`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IdUsuario`);

--
-- Indices de la tabla `usuario_asistencia`
--
ALTER TABLE `usuario_asistencia`
  ADD KEY `IdUsuario` (`IdUsuario`),
  ADD KEY `IdAsistencia` (`IdAsistencia`);

--
-- Indices de la tabla `usuario_recordatorio`
--
ALTER TABLE `usuario_recordatorio`
  ADD PRIMARY KEY (`id_recordatorio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `IdAsistencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asistio`
--
ALTER TABLE `asistio`
  MODIFY `IdAsistio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jornada`
--
ALTER TABLE `jornada`
  MODIFY `IdJornada` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `programa`
--
ALTER TABLE `programa`
  MODIFY `IdPrograma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `IdReporte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `IdRol` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sede`
--
ALTER TABLE `sede`
  MODIFY `IdSede` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IdUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `asistencia_ibfk_1` FOREIGN KEY (`IdJornada`) REFERENCES `jornada` (`IdJornada`),
  ADD CONSTRAINT `asistencia_ibfk_2` FOREIGN KEY (`IdSede`) REFERENCES `sede` (`IdSede`),
  ADD CONSTRAINT `asistencia_ibfk_3` FOREIGN KEY (`IdAsistio`) REFERENCES `asistio` (`IdAsistio`);

--
-- Filtros para la tabla `asistencia_programa`
--
ALTER TABLE `asistencia_programa`
  ADD CONSTRAINT `asistencia_programa_ibfk_1` FOREIGN KEY (`IdAsistencia`) REFERENCES `asistencia` (`IdAsistencia`),
  ADD CONSTRAINT `asistencia_programa_ibfk_2` FOREIGN KEY (`IdPrograma`) REFERENCES `programa` (`IdPrograma`);

--
-- Filtros para la tabla `asistencia_reporte`
--
ALTER TABLE `asistencia_reporte`
  ADD CONSTRAINT `asistencia_reporte_ibfk_1` FOREIGN KEY (`IdAsistencia`) REFERENCES `asistencia` (`IdAsistencia`),
  ADD CONSTRAINT `asistencia_reporte_ibfk_2` FOREIGN KEY (`IdReporte`) REFERENCES `reportes` (`IdReporte`);

--
-- Filtros para la tabla `rol_usuario`
--
ALTER TABLE `rol_usuario`
  ADD CONSTRAINT `rol_usuario_ibfk_1` FOREIGN KEY (`IdRol`) REFERENCES `rol` (`IdRol`),
  ADD CONSTRAINT `rol_usuario_ibfk_2` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`);

--
-- Filtros para la tabla `usuario_asistencia`
--
ALTER TABLE `usuario_asistencia`
  ADD CONSTRAINT `usuario_asistencia_ibfk_1` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`),
  ADD CONSTRAINT `usuario_asistencia_ibfk_2` FOREIGN KEY (`IdAsistencia`) REFERENCES `asistencia` (`IdAsistencia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
