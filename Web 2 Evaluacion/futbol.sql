-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-01-2019 a las 20:06:39
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `futbol`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equips`
--

CREATE TABLE `equips` (
  `codi` int(10) NOT NULL,
  `nom` varchar(30) COLLATE utf8_bin NOT NULL,
  `localitat` varchar(30) COLLATE utf8_bin NOT NULL,
  `web` varchar(100) COLLATE utf8_bin NOT NULL,
  `escut` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `equips`
--

INSERT INTO `equips` (`codi`, `nom`, `localitat`, `web`, `escut`) VALUES
(1, 'FC Barcelona', 'Barcelona ', 'https://www.fcbarcelona.cat/ca/', 'https://logodownload.org/wp-content/uploads/2015/05/Barcelona-logo-escudo-3.png'),
(2, 'Real Madrid CF', 'Madrid', 'https://www.realmadrid.com', 'https://i.pinimg.com/originals/bd/dd/f7/bdddf7694eb71ca5b5abc01a74629df7.png'),
(3, 'Atlético de Madrid', 'Madrid', 'https://www.atleticodemadrid.com', 'https://upload.wikimedia.org/wikipedia/an/4/4d/Atletico_Madrid.png'),
(4, 'Sevilla FC', 'Sevilla', 'https://www.sevillafc.es', 'http://as00.epimg.net/img/comunes/fotos/fichas/equipos/large/53.png'),
(5, 'Getafe FC', 'Getafe', 'https://www.getafefc.es', 'http://as00.epimg.net/img/comunes/fotos/fichas/equipos/large/172.png'),
(6, 'RCD Betis', 'Sevilla', 'https://www.realbetisbalompie.es', 'http://viniloslowcost.es/2436/vinilo-escudo-betis.jpg'),
(7, 'Real Valladolid CF', 'Valladolid', 'https://www.realvalladolid.es', 'http://as00.epimg.net/img/comunes/fotos/fichas/equipos/large/18.png'),
(8, 'Real Sociedad', 'Sant Sebastià', 'https://www.realsociedad.eus', 'http://as00.epimg.net/img/comunes/fotos/fichas/equipos/large/16.png'),
(9, 'Athletic Club', 'Bilbao', 'https://www.athletic-club.eus', 'http://as00.epimg.net/img/comunes/fotos/fichas/equipos/large/5.png'),
(10, 'Rayo Vallecano', 'Madrid', 'www.rayovallecano.es', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/EscudoRayo.svg/240px-EscudoRayo.svg.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titols`
--

CREATE TABLE `titols` (
  `codi` int(10) NOT NULL,
  `nom` varchar(50) COLLATE utf8_bin NOT NULL,
  `codiequip` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `titols`
--

INSERT INTO `titols` (`codi`, `nom`, `codiequip`) VALUES
(1, 'Ligas: 8', 9),
(2, 'Copas: 24', 9),
(3, 'Supercopas: 2', 9),
(4, 'Ligas: 10', 3),
(5, 'Copas: 10', 3),
(6, 'Supercopas: 3', 3),
(7, 'UEFA Cup / Europa League: 3', 3),
(8, 'Ligas: 25', 1),
(9, 'Copas: 35', 1),
(10, 'Supercopas: 12', 1),
(11, 'Ligas: 1', 6),
(12, 'Copas: 2', 6),
(13, 'Ligas: 2', 8),
(14, 'Copas: 3', 8),
(15, 'Ligas: 1', 7),
(16, 'Copas: 3', 7),
(17, 'Ligas: 33', 2),
(18, 'Copas: 35', 2),
(19, 'Supercopas: 15', 2),
(20, 'Ligas: 1', 4),
(21, 'Copas: 6', 4),
(22, 'UEFA Cup: 3', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equips`
--
ALTER TABLE `equips`
  ADD PRIMARY KEY (`codi`);

--
-- Indices de la tabla `titols`
--
ALTER TABLE `titols`
  ADD PRIMARY KEY (`codi`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equips`
--
ALTER TABLE `equips`
  MODIFY `codi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `titols`
--
ALTER TABLE `titols`
  MODIFY `codi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
