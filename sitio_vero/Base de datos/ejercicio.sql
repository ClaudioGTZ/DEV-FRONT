-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 13-10-2024 a las 19:28:13
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
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE IF NOT EXISTS `novedades` (
  `id_nov` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `img_id` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id_nov`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id_nov`, `fecha`, `titulo`, `subtitulo`, `cuerpo`, `imagen`, `img_id`, `link`) VALUES
(1, '2024-03-08', 'EMPRENDER 2024', 'Modelos de negocios para emprendedores', 'Decidir el modelo de negocio es clave para el éxito de tu emprendimiento.  Existen diversas opciones como el modelo de suscripción, freemium (gratuito con opciones premium), marketplace, dropshipping, entre otros. Cada uno tiene sus pros y contras. Considera factores como tu producto o servicio, público objetivo y recursos disponibles. ¡Investiga y elige el que mejor se adapte a tu idea!', 'D:\\00 Claudio\\CURSOS\\Dev Front End\\TP CURSO UTN\\sitio_vero\\public\\img\\prensa_1.jpg', 'szfqjuqvx4jsqukw0cni', 'https://www.argentina.gob.ar/produccion/capacitar/como-crear-y-definir-tu-modelo-de-negocio'),
(2, '2024-06-08', 'CAME te ayuda', 'En CAME esperan por tu proyecto.', 'La Cámara Argentina de la Mediana Empresa es una entidad que representa y defiende los intereses de las pequeñas y medianas empresas en Argentina. Ofrece una amplia gama de servicios y herramientas para ayudarte a crecer tu negocio: capacitaciones, financiamiento, asesoramiento legal, acceso a mercados y mucho más. ¡Súmate a la comunidad CAME y potencia tu emprendimiento.', 'D:\\00 Claudio\\CURSOS\\Dev Front End\\TP CURSO UTN\\sitio_vero\\public\\img\\prensa_2.jpg', 'ujyliyqidzvdxuehxjuh', 'https://chequeado.com/el-explicador/caso-rainbowex-en-san-pedro-que-es-una-estafa-piramidal-como-funciona-y-en-que-se-diferencia-del-esquema-ponzi/'),
(4, '2024-05-11', 'Lo igual y lo distinto', 'El diseño en industrias duras', 'La pandemia de COVID-19 ha sido un catalizador para la transformación digital de las pequeñas y medianas empresas. Ante la necesidad de adaptarse a las nuevas restricciones y mantener sus operaciones, muchas pymes se han visto obligadas a adoptar tecnologías digitales como el comercio electrónico, el marketing digital y las herramientas de colaboración en línea.', 'D:\\00 Claudio\\CURSOS\\Dev Front End\\TP CURSO UTN\\sitio_vero\\public\\img\\prensa_3.jpg', 'sjnp4bmzgg0iax0439lr', 'https://foroalfa.org/articulos/lo-igual-y-lo-distinto'),
(5, '2024-10-09', 'GEMA 2024', 'El problema del huevo o la gallina', 'En las cocinas hay un alimento simple que conquistó su lugar en la mesa diaria: el huevo. Año tras año, este modesto producto demostró, no solo ser uno de los más versátiles a la hora de las preparaciones, sino también uno de los más nutritivos. Características que le permiten ganar cada vez más protagonismo.', 'D:\\00 Claudio\\CURSOS\\Dev Front End\\TP CURSO UTN\\sitio_vero\\public\\img\\prensa_4', NULL, 'https://www.infobae.com/salud/2024/10/11/dia-mundial-del-huevo-un-superalimento-lleno-de-nutrientes-esenciales/'),
(6, '2024-10-08', 'Economía circular', '¿Qué es la economía circular y por qué es importante?', 'La economía circular es un modelo de producción y consumo que busca minimizar el desperdicio y maximizar la reutilización de los recursos. A diferencia del modelo lineal tradicional, la economía circular se basa en cerrar los ciclos de vida de los productos, reduciendo así la generación de residuos y la demanda de materias primas.', 'D:\\00 Claudio\\CURSOS\\Dev Front End\\TP CURSO UTN\\sitio_vero\\public\\img\\prensa_5.jpg', NULL, 'https://www.mdsocialesa2030.gob.es/agenda2030/index.htm'),
(9, '2024-10-15', 'Prueba 11', 'Prueba 11', 'Prueba 11', 'Prueba 11', NULL, 'Prueba 11'),
(10, '2024-10-17', 'Prueba 12', 'Prueba 12', 'Prueba 12', 'Prueba 12', '', 'Prueba 12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonios`
--

CREATE TABLE IF NOT EXISTS `testimonios` (
  `id_test` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `testimonio` varchar(250) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id_test`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `testimonios`
--

INSERT INTO `testimonios` (`id_test`, `fecha`, `testimonio`, `nombre`) VALUES
(1, '2023-10-02', '"Me quedé dormido a los 10 minutos."', 'Pedro Bajamirano'),
(2, '2024-05-02', '"Los alumnos estuvieron 3 días hablando de tu charla."', 'Analía Scaccere'),
(3, '2023-06-25', '"Respondiste más de 150 preguntas. Gracias"', 'Susana López');

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
