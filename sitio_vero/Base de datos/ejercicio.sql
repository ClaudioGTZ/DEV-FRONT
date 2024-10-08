-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-10-2024 a las 21:42:20
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ejercicio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE IF NOT EXISTS `alumnos` (
  `id_alu` int(6) NOT NULL AUTO_INCREMENT COMMENT 'Id de cada alumno',
  `nombre` varchar(80) NOT NULL,
  `apellido` varchar(80) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `mail` varchar(150) NOT NULL,
  `profesion` varchar(150) NOT NULL,
  `comercio` varchar(150) NOT NULL COMMENT 'Nombre del negocio o emprendimiento',
  `edad` int(3) NOT NULL,
  PRIMARY KEY (`id_alu`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alu`, `nombre`, `apellido`, `direccion`, `telefono`, `mail`, `profesion`, `comercio`, `edad`) VALUES
(1, 'Juan', 'Pirola', 'Dirección de Prueba 111, PB 0', '+54922222222222', 'inventado@gmail.com', 'Abogado', 'Estudio Pirola', 45),
(2, 'María', 'Fernández', 'Dirección de Prueba 111, PB 0', '+54922222222222', 'inventado@gmail.com', 'Médica', 'Clínica del Sol', 32),
(3, 'Pedro', 'Gómez', 'Dirección de Prueba 111, PB 0', '+54922222222222', 'inventado@gmail.com', 'Ingeniero', 'TechCorp', 28),
(4, 'Ana', 'López', 'Dirección de Prueba 111, PB 0', '+54922222222222', 'inventado@gmail.com', 'Contadora', 'Deloitte', 35),
(5, 'Lucas', 'Pérez', 'Dirección de Prueba 111, PB 0', '+54922222222222', 'inventado@gmail.com', 'Profesor', 'Escuela Normal', 25),
(6, 'Sofía', 'Martínez', 'Dirección de Prueba 111, PB 0', '+54922222222222', 'inventado@gmail.com', 'Arquitecta', 'Estudio Urbano', 30),
(8, 'Camila', 'Rodríguez', 'Dirección de Prueba 111, PB 0', '+54922222222222', 'inventado@gmail.com', 'Diseñadora Gráfica', 'Agencia Creativa', 22),
(9, 'Santiago', 'Torres', 'Dirección de Prueba 111, PB 0', '+54922222222222', 'inventado@gmail.com', 'Geólogo', 'YPF', 38),
(10, 'Valentina', 'Vidal', 'Dirección de Prueba 111, PB 0', '+54922222222222', 'inventado@gmail.com', 'Musicóloga', 'Conservatorio Municipal', 29),
(11, 'Lucas', 'Silva', 'Dirección de Prueba 111, PB 0', '+54922222222222', 'inventado@gmail.com', 'Programador', 'StartupIT', 24),
(12, 'Sofía', 'Pérez', 'Dirección de Prueba 111, PB 0', '+54922222222222', 'inventado@gmail.com', 'Nutricionista', 'Centro de Nutrición', 28),
(13, 'Alma', 'Naque', 'Dirección de Prueba 111, PB 0', '+54922222222222', 'inventado@gmail.com', 'Historiador', 'Universidad Nacional', 31),
(14, 'Camila', 'López', 'Dirección de Prueba 111, PB 0', '+54922222222222', 'inventado@gmail.com', 'Diseñadora de Interiores', 'Estudio Arquitectónico', 26),
(15, 'Benjamín', 'Rodríguez', 'Dirección de Prueba 111, PB 0', '+54922222222222', 'inventado@gmail.com', 'Músico', 'Orquesta Sinfónica', 23),
(16, 'Victoria', 'Martínez', 'Dirección de Prueba 111, PB 0', '+54922222222222', 'inventado@gmail.com', 'Abogada', 'Estudio Jurídico', 29),
(17, 'Thiago', 'Torres', 'Dirección de Prueba 111, PB 0', '+54922222222222', 'inventado@gmail.com', 'Geógrafo', 'Instituto Geográfico Nacional', 30),
(18, 'Pedro', 'Darian', 'Dirección de Prueba 111, PB 0', '+54922222222222', 'inventado@gmail.com', 'Diseñador Gráfico', 'Hispano Bar', 51);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE IF NOT EXISTS `empleados` (
  `id_emp` int(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  `apellido` varchar(80) NOT NULL,
  `trabajo` varchar(200) NOT NULL,
  `edad` int(3) NOT NULL,
  `salario` decimal(10,0) NOT NULL,
  `mail` varchar(150) NOT NULL,
  PRIMARY KEY (`id_emp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_emp`, `nombre`, `apellido`, `trabajo`, `edad`, `salario`, `mail`) VALUES
(1, 'Juan', 'Hagan', 'Programador Senior', 32, '120000', 'juan_hagan@bignet.com'),
(2, 'Gonzalo', 'Pillai', 'Programador Senior', 32, '110000', 'g_pillai@bignet.com'),
(3, 'Ana', 'Dharma', 'Desarrollador Web', 27, '90000', 'ana@bignet.com'),
(4, 'Maria', 'Anchor', 'Desarrollador Web', 26, '85000', 'mary@bignet.com'),
(5, 'Alfredo', 'Fernandez', 'Programador', 31, '75000', 'af@bignet.com'),
(6, 'Juan', 'Aguero', 'Programador', 34, '80000', 'juan@bignet.com'),
(7, 'Eduardo', 'Sacan', 'Programador', 25, '75000', 'eddie@bignet.com'),
(8, 'Alejandro', 'Nanda', 'Programador', 32, '70000', 'alenanda@bignet.com'),
(10, 'Paublo', 'Simon', 'Especialista Multimedia', 43, '85000', 'ps@bignet.com'),
(11, 'Arturo', 'Hernandez', 'Especialista Multimedia', 32, '75000', 'arturo@bignet.com'),
(12, 'Jimena', 'Cazado', 'Dise ador Web Senior', 32, '110000', 'jimena@bignet.com'),
(13, 'Roberto', 'Luis', 'Administrador de Sistemas', 35, '100000', 'roberto@bignet.com'),
(14, 'Daniel', 'Gutierrez', 'Administrador de Sistemas', 34, '90000', 'daniel@bignet.com'),
(15, 'Miguel', 'Harper', 'Ejecutivo de Ventas Senior', 36, '120000', 'miguel@bignet.com'),
(16, 'Monica', 'Sanchez', 'Ejecutivo de Ventas', 30, '90000', 'monica@bignet.com'),
(17, 'Alicia', 'Simlai', 'Ejecutivo de Ventas', 27, '70000', 'alicia@bignet.com'),
(18, 'Jose', 'Iriarte', 'Ejecutivo de Ventas', 27, '72000', 'jose@bignet.com'),
(19, 'Sabrina', 'Allende', 'Gerente de Soporte Tecnico', 32, '200000', 'sabrina@bignet.com'),
(21, 'Mariano', 'Dharma', 'Presidente', 28, '300000', 'mariano@bignet.com'),
(22, 'Francisco', 'Pérez', 'Programador', 26, '300000', 'mariano@bignet.com'),
(23, 'Alma', 'Naque', 'Diseñador Gráfico', 31, '100000', 'elviolento@bignet.com'),
(24, 'Elvio', 'lento', 'Diseñador Gráfico', 31, '100000', 'elviolento@bignet.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_user`, `usuario`, `password`) VALUES
(1, 'Claudio', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Veronica', '2fc4a68635c26db1019047965180ce1b'),
(3, 'Agustina', '81dc9bdb52d04dc20036dbd8313ed055');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
