-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 27, 2019 at 07:26 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libreria`
--

--
-- Table structure for table `autor`
--

CREATE TABLE `autor` (
  `idAutor` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `apellido` varchar(50) COLLATE utf8_bin NOT NULL,
  `pais` varchar(50) COLLATE utf8_bin NOT NULL,
  `img` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `autor`
--

INSERT INTO `autor` (`idAutor`, `nombre`, `apellido`, `pais`, `img`) VALUES
(1, 'Jojoj', 'Moyes', 'Estados Unidos', ''),
(2, 'John Luissac', 'Green', 'Australia', ''),
(3, 'Lauren', 'Kate', 'Estados Unidos', ''),
(4, 'Karen', 'Oliver', 'España', ''),
(5, 'Suzanne', 'Collins', 'Estados Unidos', ''),
(7, 'steven', 'Diaz Flores', 'Mexico', '../img/steven.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bitacora`
--

CREATE TABLE `bitacora` (
  `idBitacora` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `accion` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `bitacora`
--

INSERT INTO `bitacora` (`idBitacora`, `idUsuario`, `fecha`, `accion`) VALUES
(1, 1, '2019-02-20 08:23:44', 'se fresio'),
(2, 1, '2019-02-20 08:33:36', 'Eliminó un libro'),
(3, 1, '2019-02-20 08:36:54', 'Actualizó información en un libro'),
(4, 1, '2019-02-20 09:34:10', 'Actualizó información en un libro'),
(5, 1, '2019-02-20 09:59:28', 'Actualizó información en un libro'),
(6, 1, '2019-02-20 09:59:39', 'Actualizó información en un libro'),
(7, 1, '2019-02-20 09:59:47', 'Actualizó información en un libro'),
(8, 1, '2019-02-20 09:59:58', 'Actualizó información en un libro'),
(9, 1, '2019-02-20 10:00:07', 'Actualizó información en un libro'),
(10, 1, '2019-02-20 10:00:16', 'Actualizó información en un libro'),
(11, 1, '2019-02-20 10:01:22', 'Actualizó información en un libro'),
(12, 1, '2019-02-20 10:05:33', 'Actualizó información en un libro'),
(13, 1, '2019-02-20 10:10:20', 'Insertó un libro'),
(14, 1, '2019-02-20 10:10:50', 'Eliminó un libro'),
(15, 1, '2019-02-20 10:11:05', 'Actualizó información en un libro'),
(16, 1, '2019-02-20 10:11:10', 'Actualizó información en un libro'),
(17, 1, '2019-02-20 10:11:16', 'Actualizó información en un libro'),
(18, 1, '2019-02-20 10:11:22', 'Actualizó información en un libro'),
(19, 1, '2019-02-20 10:11:37', 'Actualizó información en un libro'),
(20, 1, '2019-02-20 10:11:43', 'Actualizó información en un libro'),
(21, 1, '2019-02-20 10:12:00', 'Insertó un libro'),
(22, 1, '2019-02-20 10:15:49', 'Actualizó información en un libro'),
(23, 1, '2019-02-27 08:38:58', 'Insertó un autor'),
(24, 1, '2019-02-27 09:10:58', 'Inserto un libro'),
(25, 1, '2019-02-27 10:14:01', 'Actualizó información en un libro'),
(26, 1, '2019-02-28 09:41:10', 'Actualizó información en un libro'),
(27, 1, '2019-02-28 09:41:10', 'Actualizó información en un libro'),
(28, 1, '2019-02-28 09:54:45', 'Actualizó información en un libro'),
(29, 1, '2019-02-28 09:55:43', 'Actualizó información en un libro'),
(30, 1, '2019-02-28 09:55:43', 'Actualizó información en un libro'),
(31, 1, '2019-02-28 09:57:13', 'Actualizó información en un libro'),
(32, 1, '2019-02-28 09:57:13', 'Actualizó información en un libro'),
(33, 1, '2019-02-28 09:57:28', 'Actualizó información en un libro'),
(34, 1, '2019-02-28 09:57:34', 'Actualizó información en un libro'),
(35, 1, '2019-02-28 09:57:37', 'Actualizó información en un libro'),
(36, 1, '2019-02-28 09:57:42', 'Actualizó información en un libro'),
(37, 1, '2019-02-28 09:57:44', 'Actualizó información en un libro'),
(38, 1, '2019-02-28 10:25:59', 'Actualizó información en un libro'),
(39, 1, '2019-02-28 10:27:46', 'Insertó un libro'),
(40, 1, '2019-02-28 10:28:06', 'Eliminó un libro'),
(41, 1, '2019-02-28 10:30:40', 'Insertó un libro'),
(42, 1, '2019-02-28 10:55:23', 'Insertó un autor'),
(43, 1, '2019-03-28 19:18:45', 'Insertó un autor'),
(44, 1, '2019-03-28 20:15:25', 'Insertó un autor'),
(45, 1, '2019-04-04 08:15:37', 'Insertó un autor'),
(46, 1, '2019-04-04 08:32:53', 'Insertó un autor'),
(47, 1, '2019-04-04 08:35:43', 'Insertó un autor'),
(48, 1, '2019-04-04 08:35:50', 'Insertó un autor'),
(49, 1, '2019-04-04 08:35:58', 'Insertó un autor'),
(50, 1, '2019-04-04 08:36:07', 'Insertó un autor'),
(51, 1, '2019-04-04 08:36:35', 'Insertó un autor'),
(52, 1, '2019-04-11 09:20:45', 'Insertó una categoría'),
(53, 1, '2019-04-11 09:57:31', 'Actualizó información en una categoría'),
(54, 1, '2019-04-11 09:57:38', 'Eliminó una categoría'),
(55, 1, '2019-04-22 16:46:53', 'Insertó una categoría'),
(56, 1, '2019-04-22 16:47:17', 'Eliminó una categoría'),
(57, 1, '2019-04-22 21:42:30', 'Actualizó información en una categoría'),
(58, 1, '2019-04-23 17:53:49', 'Actualizó información en una categoría'),
(59, 1, '2019-04-23 17:54:45', 'Actualizó información en una categoría'),
(60, 1, '2019-04-23 17:54:47', 'Actualizó información en una categoría'),
(61, 1, '2019-04-23 17:54:52', 'Actualizó información en una categoría'),
(62, 1, '2019-04-23 17:54:58', 'Actualizó información en una categoría'),
(63, 1, '2019-04-23 18:33:32', 'Eliminó un libro'),
(64, 1, '2019-04-23 18:33:35', 'Eliminó una categoría'),
(65, 1, '2019-04-23 18:43:03', 'Insertó una categoría'),
(66, 1, '2019-04-23 18:44:39', 'Eliminó una categoría'),
(67, 1, '2019-04-23 18:44:48', 'Insertó una categoría'),
(68, 1, '2019-04-23 18:45:26', 'Eliminó una categoría'),
(69, 1, '2019-04-23 18:48:01', 'Insertó una categoría'),
(70, 1, '2019-04-23 18:48:58', 'Insertó una categoría'),
(71, 1, '2019-04-23 18:50:33', 'Insertó una categoría'),
(72, 1, '2019-04-23 18:50:41', 'Insertó una categoría'),
(73, 1, '2019-04-23 18:52:25', 'Insertó una categoría'),
(74, 1, '2019-04-23 18:52:35', 'Insertó una categoría'),
(75, 1, '2019-04-23 18:52:53', 'Eliminó una categoría'),
(76, 1, '2019-04-23 18:52:56', 'Eliminó una categoría'),
(77, 1, '2019-04-23 18:52:59', 'Eliminó una categoría'),
(78, 1, '2019-04-23 18:53:02', 'Eliminó una categoría'),
(79, 1, '2019-04-23 18:53:04', 'Eliminó una categoría'),
(80, 1, '2019-04-23 18:53:12', 'Insertó una categoría'),
(81, 1, '2019-04-23 18:53:33', 'Insertó una categoría'),
(82, 1, '2019-04-23 18:53:51', 'Eliminó una categoría'),
(83, 1, '2019-04-23 18:53:55', 'Eliminó una categoría'),
(84, 1, '2019-04-23 18:54:03', 'Insertó una categoría'),
(85, 1, '2019-04-23 18:54:08', 'Insertó una categoría'),
(86, 1, '2019-04-23 18:54:15', 'Eliminó una categoría'),
(87, 1, '2019-04-23 18:54:18', 'Eliminó una categoría'),
(88, 1, '2019-04-23 18:54:20', 'Eliminó una categoría'),
(89, 1, '2019-04-23 18:55:48', 'Insertó una categoría'),
(90, 1, '2019-04-23 18:55:59', 'Insertó una categoría'),
(91, 1, '2019-04-23 18:57:12', 'Eliminó una categoría'),
(92, 1, '2019-04-23 18:57:14', 'Eliminó una categoría'),
(93, 1, '2019-04-23 18:57:21', 'Insertó una categoría'),
(94, 1, '2019-04-23 19:02:15', 'Actualizó información en una categoría'),
(95, 1, '2019-04-23 19:04:54', 'Insertó una categoría'),
(96, 1, '2019-04-23 19:06:45', 'Insertó una categoría'),
(97, 1, '2019-04-23 19:07:47', 'Insertó una categoría'),
(98, 1, '2019-04-23 19:08:15', 'Insertó una categoría'),
(99, 1, '2019-04-23 19:09:25', 'Insertó una categoría'),
(100, 1, '2019-04-23 19:09:47', 'Insertó una categoría'),
(101, 1, '2019-04-23 19:09:59', 'Insertó una categoría'),
(102, 1, '2019-04-23 19:10:35', 'Insertó una categoría'),
(103, 1, '2019-04-23 19:10:42', 'Insertó una categoría'),
(104, 1, '2019-04-23 19:11:18', 'Insertó una categoría'),
(105, 1, '2019-04-23 19:11:33', 'Insertó una categoría'),
(106, 1, '2019-04-23 19:11:56', 'Eliminó una categoría'),
(107, 1, '2019-04-23 19:11:56', 'Eliminó una categoría'),
(108, 1, '2019-04-23 19:11:56', 'Eliminó una categoría'),
(109, 1, '2019-04-23 19:11:56', 'Eliminó una categoría'),
(110, 1, '2019-04-23 19:11:56', 'Eliminó una categoría'),
(111, 1, '2019-04-23 19:11:56', 'Eliminó una categoría'),
(112, 1, '2019-04-23 19:11:56', 'Eliminó una categoría'),
(113, 1, '2019-04-23 19:11:56', 'Eliminó una categoría'),
(114, 1, '2019-04-23 19:11:56', 'Eliminó una categoría'),
(115, 1, '2019-04-23 19:11:56', 'Eliminó una categoría'),
(116, 1, '2019-04-23 19:11:56', 'Eliminó una categoría'),
(117, 1, '2019-04-23 19:11:56', 'Eliminó una categoría'),
(118, 1, '2019-04-23 19:12:54', 'Insertó una categoría'),
(119, 1, '2019-04-23 19:40:06', 'Actualizó información en una categoría'),
(120, 1, '2019-04-23 19:53:51', 'Actualizó información en una categoría'),
(121, 1, '2019-04-23 19:54:05', 'Actualizó información en una categoría'),
(122, 1, '2019-04-23 19:54:13', 'Actualizó información en una categoría'),
(123, 1, '2019-04-23 19:54:53', 'Actualizó información en una categoría'),
(124, 1, '2019-04-23 19:54:59', 'Actualizó información en una categoría'),
(125, 1, '2019-04-23 19:59:53', 'Actualizó información en una categoría'),
(126, 1, '2019-04-23 20:00:23', 'Actualizó información en una categoría'),
(127, 1, '2019-04-23 20:00:38', 'Actualizó información en una categoría'),
(128, 1, '2019-04-23 20:01:00', 'Actualizó información en una categoría'),
(129, 1, '2019-04-23 20:09:44', 'Actualizó información en una categoría'),
(130, 1, '2019-04-23 20:09:50', 'Actualizó información en una categoría'),
(131, 1, '2019-04-23 20:10:16', 'Actualizó información en una categoría'),
(132, 1, '2019-04-23 20:10:21', 'Actualizó información en una categoría'),
(133, 1, '2019-04-23 20:12:36', 'Actualizó información en una categoría'),
(134, 1, '2019-04-23 20:13:19', 'Actualizó información en una categoría'),
(135, 1, '2019-04-23 20:15:55', 'Actualizó información en una categoría'),
(136, 1, '2019-04-23 20:19:47', 'Actualizó información en una categoría'),
(137, 1, '2019-04-23 20:22:02', 'Actualizó información en una categoría'),
(138, 1, '2019-04-23 20:25:07', 'Actualizó información en una categoría'),
(139, 1, '2019-04-23 20:26:04', 'Actualizó información en una categoría'),
(140, 1, '2019-04-23 20:26:10', 'Actualizó información en una categoría'),
(141, 1, '2019-04-23 20:29:57', 'Actualizó información en una categoría'),
(142, 1, '2019-04-23 20:32:08', 'Eliminó una categoría'),
(143, 1, '2019-04-23 20:32:38', 'Insertó una categoría'),
(144, 1, '2019-04-23 20:32:44', 'Eliminó una categoría'),
(145, 1, '2019-04-23 20:34:51', 'Actualizó información en una categoría'),
(146, 1, '2019-04-23 20:38:24', 'Actualizó información en una categoría'),
(147, 1, '2019-04-23 20:39:03', 'Actualizó información en una categoría'),
(148, 1, '2019-04-23 20:41:01', 'Actualizó información en una categoría'),
(149, 1, '2019-04-23 20:41:13', 'Actualizó información en una categoría'),
(150, 1, '2019-04-23 21:27:57', 'Actualizó información en una categoría'),
(151, 1, '2019-04-23 21:29:44', 'Insertó una categoría'),
(152, 1, '2019-04-23 21:30:05', 'Actualizó información en una categoría'),
(153, 1, '2019-04-23 21:32:20', 'Actualizó información en una categoría'),
(154, 1, '2019-04-23 21:32:27', 'Actualizó información en una categoría'),
(155, 1, '2019-04-23 21:32:47', 'Actualizó información en una categoría'),
(156, 1, '2019-04-23 21:32:54', 'Actualizó información en una categoría'),
(157, 1, '2019-04-23 21:33:06', 'Actualizó información en una categoría'),
(158, 1, '2019-04-23 21:33:19', 'Actualizó información en una categoría'),
(159, 1, '2019-04-23 21:35:33', 'Insertó una categoría'),
(160, 1, '2019-04-23 21:35:56', 'Actualizó información en una categoría'),
(161, 1, '2019-04-23 21:36:05', 'Actualizó información en una categoría'),
(162, 1, '2019-04-23 21:36:12', 'Actualizó información en una categoría'),
(163, 1, '2019-04-23 21:44:42', 'Actualizó información en una categoría'),
(164, 1, '2019-04-23 21:44:51', 'Actualizó información en una categoría'),
(165, 1, '2019-04-23 21:44:59', 'Actualizó información en una categoría'),
(166, 1, '2019-04-23 21:45:16', 'Actualizó información en una categoría'),
(167, 1, '2019-04-23 21:45:30', 'Actualizó información en una categoría'),
(168, 1, '2019-04-23 21:47:03', 'Actualizó información en una categoría'),
(169, 1, '2019-04-23 21:47:23', 'Actualizó información en una categoría'),
(170, 1, '2019-04-23 21:50:20', 'Actualizó información en una categoría'),
(171, 1, '2019-04-23 21:54:45', 'Actualizó información en una categoría');

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL,
  `nombreCat` varchar(30) COLLATE utf8_bin NOT NULL,
  `descripcion` text COLLATE utf8_bin NOT NULL,
  `descuento` float NOT NULL,
  `img` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`idCategoria`, `nombreCat`, `descripcion`, `descuento`, `img`) VALUES
(1, 'Comics', 'Marvel Comics, DC Comics, todos tus super heroes favoritos reunidos en una sola libreria.', 75, '5cbfcb4b08370.jpg'),
(2, 'Drama', 'Novelas para egancharte en las noches...', 0, '5cbfcc477641b.jpg'),
(3, 'Ciencia Ficción', 'Viaja a traves de las ingeniosas aventuras en el espacio viajes en el tiempo alienigenas y mas.', 0, '5cbfcc20e36cc.jpg'),
(4, 'Aventura', 'Genero que relata travesías de sus héroes principales y antagonistas.', 25, '5cbfc6db81147.jpg'),
(34, 'Poesía', 'Composición literaria que se concibe como expresión artística de la belleza por medio de la palabra', 25, '5cbfd8288d450.jpg'),
(35, 'Policíaca', 'La novela policíaca es un genero literario dentro de la novela.', 2, '5cbfd985a70b8.jpg');


-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nombreCliente` varchar(50) COLLATE utf8_bin NOT NULL,
  `apellidoCliente` varchar(50) COLLATE utf8_bin NOT NULL,
  `correo` varchar(70) COLLATE utf8_bin NOT NULL,
  `contrasena` varchar(70) COLLATE utf8_bin NOT NULL,
  `direccion` text COLLATE utf8_bin NOT NULL,
  `img` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nombreCliente`, `apellidoCliente`, `correo`, `contrasena`, `direccion`, `img`) VALUES
(1, 'Fabiola Nicole', 'Martínez Ramírez', 'fabiolamartinez190201@gmail.com', 'passwor1234', '', ''),
(2, 'Steven Benjamín', 'Díaz Flores', 'steven_123@gmail.com', 'password1234', '', ''),
(3, 'Allison Stefany ', 'Cartagena Cárcamo', 'alli_12@gmail.com', 'pass1222', '', ''),
(4, 'Ana Melisa', 'Ramírez', 'melisaramirez_25@hotmail.com', 'pass1234', '', ''),
(5, 'Herbert Williams', 'Cornejo Mardonado', 'herbert_cornejo@ricaldone.edu.sv', 'password12', '', ''),
(6, 'Daniel', 'Carranza', 'dncarr@outlook.com', '$2y$10$a99SpvC3oZY0YTXurd6fOu.KDYbKBneNG9Z2Rin7lJLA71SoG.F1O', 'san salvador', ''),
(8, 'sdfsdfs', 'dfsdfsdf', 'sdfsdf@gmail.com', '$2y$10$g3jDSak9FbQIH4sAtkUq/ex2x9zUu3xw3mWKLxmYaCGHJYflQR10C', 'adssad', '');

-- --------------------------------------------------------

--
-- Table structure for table `comentlibro`
--

CREATE TABLE `comentlibro` (
  `idComent` int(11) NOT NULL,
  `idLibro` int(100) NOT NULL,
  `comentario` text COLLATE utf8_bin NOT NULL,
  `hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fecha` date NOT NULL,
  `idClient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `comentlibro`
--

INSERT INTO `comentlibro` (`idComent`, `idLibro`, `comentario`, `hora`, `fecha`, `idClient`) VALUES
(1, 2, 'Muy buen libro me hizo llorar', '2019-02-28 15:43:25', '2019-02-20', 1),
(2, 1, 'Es un libro demasiado infantil...', '2019-02-28 15:43:25', '2019-02-13', 5),
(3, 5, 'Que miedoooooo', '2019-02-28 15:43:50', '2019-02-20', 4);

-- --------------------------------------------------------

--
-- Table structure for table `comentnoticia`
--

CREATE TABLE `comentnoticia` (
  `idComentN` int(11) NOT NULL,
  `idNoticia` int(11) NOT NULL,
  `comentario` text COLLATE utf8_bin NOT NULL,
  `hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fecha` date NOT NULL,
  `idClient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `comentnoticia`
--

INSERT INTO `comentnoticia` (`idComentN`, `idNoticia`, `comentario`, `hora`, `fecha`, `idClient`) VALUES
(1, 4, 'Muy buena noticia, realmente intersante', '2019-02-28 15:41:45', '2019-02-20', 4),
(2, 1, 'No me gusto para nada...', '2019-02-28 15:42:16', '2019-02-20', 5),
(3, 1, 'Excelente noticia', '2019-02-28 15:42:16', '2019-02-27', 3),
(4, 1, 'Nice new gentleman', '2019-02-28 15:42:51', '2019-02-20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `detallepedido`
--

CREATE TABLE `detallepedido` (
  `idDetalle` int(11) NOT NULL,
  `idPedido` int(11) NOT NULL,
  `idLibro` int(20) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precioVenta` float(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `detallepedido`
--

INSERT INTO `detallepedido` (`idDetalle`, `idPedido`, `idLibro`, `cantidad`, `precioVenta`) VALUES
(3, 2, 2, 2, 56.89),
(4, 5, 3, 2, 15.50),
(5, 4, 7, 2, 15.50),
(6, 4, 4, 1, 10.20),
(7, 3, 3, 2, 56.89),
(8, 5, 7, 2, 10.99),
(9, 5, 3, 1, 14.50),
(10, 4, 7, 1, 14.50),
(11, 2, 1, 2, 56.89);


-- --------------------------------------------------------

--
-- Table structure for table `editorial`
--

CREATE TABLE `editorial` (
  `idEditorial` int(11) NOT NULL,
  `nombreEdit` varchar(50) COLLATE utf8_bin NOT NULL,
  `direccion` text COLLATE utf8_bin NOT NULL,
  `pais` varchar(15) COLLATE utf8_bin NOT NULL,
  `tel` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `editorial`
--

INSERT INTO `editorial` (`idEditorial`, `nombreEdit`, `direccion`, `pais`, `tel`) VALUES
(1, 'Nube de Tinta', 'Travessera de Gracia', 'Chile', '933660300'),
(2, 'Debolsillo', 'Blvd Miguel de Cervantes Saavedra 301 piso 1Col Granada CP 11520 Miguel Hidalgo Ciudad de México', 'México', '(55) 3067 8441'),
(3, 'Santillana El Salvador', '87 avenida norte 311 Colonia Escalón San Salvador', 'El Salvador', '+503 2505-8920'),
(4, 'Editorial Planeta', 'Av. Diagonal, 662-664\r\n08034 Barcelona', 'España', '662-664 08034 ');

-- --------------------------------------------------------

--
-- Table structure for table `empleado`
--

CREATE TABLE `empleado` (
  `idEmpleado` int(11) NOT NULL,
  `nombreEmpleado` varchar(50) COLLATE utf8_bin NOT NULL,
  `apellidoEmpleado` varchar(50) COLLATE utf8_bin NOT NULL,
  `correo` varchar(50) COLLATE utf8_bin NOT NULL,
  `contrasena` varchar(70) COLLATE utf8_bin NOT NULL,
  `DUI` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `empleado`
--

INSERT INTO `empleado` (`idEmpleado`, `nombreEmpleado`, `apellidoEmpleado`, `correo`, `contrasena`, `DUI`) VALUES
(1, 'Steven Benjamin', 'Diaz Flores', 'stevenbdf@gmail.com', '$2y$10$83HkFW63USkaRjx.Up7byuB8NH3rsSK5bzjNt4WvQ/OePQ8lnpZcS', '01805710'),
(2, 'Gabriela Michelle', 'Oporto Gil', 'gab.oporto@outlook.es', '$2y$10$g3jDSak9FbQIH4sAtkUq/ex2x9zUu3xw3mWKLxmYaCGHJYflQR10C', '15634234'),
(3, 'Stephanie Gisselle', 'Zetino Rodríguez', 'gis.zet_12@icloud.com', '$2y$10$g3jDSak9FbQIH4sAtkUq/ex2x9zUu3xw3mWKLxmYaCGHJYflQR10C', '345216763');

-- --------------------------------------------------------

--
-- Table structure for table `libro`
--

CREATE TABLE `libro` (
  `idLibro` int(11) NOT NULL,
  `idAutor` int(11) NOT NULL,
  `idEditorial` int(11) NOT NULL,
  `NombreL` varchar(40) COLLATE utf8_bin NOT NULL,
  `Idioma` varchar(30) COLLATE utf8_bin NOT NULL,
  `NoPag` int(5) NOT NULL,
  `encuadernacion` varchar(50) COLLATE utf8_bin NOT NULL,
  `resena` text COLLATE utf8_bin NOT NULL,
  `precio` float NOT NULL,
  `idCat` int(11) NOT NULL,
  `img` varchar(100) COLLATE utf8_bin NOT NULL,
  `likes` int(11) NOT NULL,
  `dislikes` int(11) NOT NULL,
  `cant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `libro`
--

INSERT INTO `libro` (`idLibro`, `idAutor`, `idEditorial`, `NombreL`, `Idioma`, `NoPag`, `encuadernacion`, `resena`, `precio`, `idCat`, `img`, `likes`, `dislikes`, `cant`) VALUES
(1, 1, 1, 'El teorema de katherine', 'Español', 18, 'Tapa blanda', 'Según Colin Singleton existen dos tipos de persona: los que dejan y los que son dejados. Él, sin duda, pertenece al segundo. Su última ex, Katherine XIX, no es una reina, sino la Katherine número diecinueve que le ha roto el corazón.\r\n\r\nPara escapar de su mal de amores, y con el propósito de hallar un teorema que explique su maldición de las Katherines, Colin emprende junto a su amigo Hassan una aventura que le llevará a Gutshot, un pueblecito de Tennessee, y a la sospecha de que en la vida la inteligencia no siempre es la mejor compañera de viaje.', 1, 3, '.jpg', 4, 5, 8),
(2, 3, 3, 'Bajo la Misma Estrella', 'Español', 304, 'Tapa blanda', 'A Hazel y a Gus les gustaría tener vidas más corrientes. Algunos dirían que no han nacido con estrella, que su mundo es injusto. Hazel y Gus son solo adolescentes, pero si algo les ha enseñado el cáncer que ambos padecen es que no hay tiempo para lamentaciones, porque, nos guste o no, solo existe el hoy y el ahora. Y por ello, con la intención de hacer realidad el mayor deseo de Hazel - conocer a su escritor favorito -, cruzarán juntos el Atlántico para vivir una aventura contrarreloj, tan catártica como desgarradora. ', 10.99, 4, '', 0, 0, 15),
(3, 1, 1, 'Yo ntes de ti', 'Español', 496, 'Tapa blanda', 'ouisa Clark sabe muchas cosas. Sabe cuántos pasos hay entre la parada del autobús y su casa. Sabe que le gusta trabajar en el café The Buttered Bun y sabe que quizá no quiera a su novio Patrick.Lo que Lou no sabe es que está a punto de perder su trabajo o que son sus pequeñas rutinas las que la mantienen en su sano juicio.Will Traynor sabe que un accidente de moto se llevó sus ganas de vivir. Sabe que ahora todo le parece insignificante y triste y sabe exactamente cómo va a ponerle fin.Lo que Will no sabe es que Lou está a punto de irrumpir en su mundo con una explosión de color.Y ninguno de los dos sabe queva a cambiar al otro para siempre.Yo antes de ti reúne a dos personas que no podrían tener menos en común en una novela conmovedoramente romántica con una pregunta: ¿qué decidirías cuando hacer feliz a la persona a la que amas significa también destrozarte el corazón?', 10.6, 1, '.jpg', 9, 3, 4),
(4, 3, 4, 'Lo mejor de mí', 'Español', 398, 'Tapa blanda', 'Durante la primavera de 1984, cuando todavía iban al instituto, Amanda Collier y Dawson Cole se enamoraron para siempre. Aunque pertenecían a estratos sociales muy diferentes, el amor que sentían el uno por el otro parecía capaz de desafiar cualquier impedimento que la realidad en la vida de la pequeña ciudad de Oriental en Carolina del Norte quisiera ponerles por delante. Pero el verano después de su graduación una serie de acontecimientos imprevistos separaría a la pareja y los llevaría por caminos radicalmente opuestos.', 30, 2, '', 0, 0, 50),
(5, 2, 2, 'Oscuros', 'Español', 416, 'Tapa blanda', 'Helstone, Inglaterra, 1854.Es noche cerrada y dos jóvenes conversan en una remota casa de campo. Se sienten irresistiblemente atraídos el uno por el otro, pero él insiste en que no pueden estar juntos. Ella obvia sus advertencias y se acerca a él, con paso lento y desafiante.Cuando se besan, una furiosa llamarada lo inunda todo.\r\n', 11.5, 2, '', 0, 0, 14),
(7, 1, 1, 'Yo ntes de ti', 'a', 496, 'a', 'a', 1, 1, '', 0, 0, 20),
(9, 2, 3, 'uhuhu', 'uhu', 4, 'iugyygyu', 'ugyu', 5, 1, 'yhgy', 1, 1, 21);


-- --------------------------------------------------------

--
-- Table structure for table `noticia`
--

CREATE TABLE `noticia` (
  `idNoticia` int(11) NOT NULL,
  `idEmpleado` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `titulo` varchar(100) COLLATE utf8_bin NOT NULL,
  `descripcion` text COLLATE utf8_bin NOT NULL,
  `img` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `noticia`
--

INSERT INTO `noticia` (`idNoticia`, `idEmpleado`, `fecha`, `titulo`, `descripcion`, `img`) VALUES
(1, 3, '2019-02-13', 'La paradoja del bibliotecario ciego', '<p>Porque<strong><em> todos, absolutamente todos </em></strong>los personajes de esta novela tienen algo que ocultar, son lobos con piel de cordero, verdugos de manos inocentes, y todos, absolutamente todos son v&iacute;ctimas de una atm&oacute;sfera de violencia, de un tr&aacute;gico efecto domin&oacute; que les convierte irremisiblemente en victimarios, haciendo que uno tras otro, ficha tras ficha, todos vayan cayendo bajo el yugo del eros y el thanatos, ante las pulsiones de amor por lo prohibido y odio por los que les rodean, llegando incluso a estar dispuestos a la mayor de las bajezas, a verter la sangre de su sangre. Y todo esto y mucho m&aacute;s es este apabullante thriller costumbrista, que gracias a su continuo cambio de personajes no da respiro al lector durante sus 400 p&aacute;ginas. Una actualizaci&oacute;n de las m&aacute;s demoledoras tragedias griegas con la que los ganadores del premio Amazon Indie 2016 Ana Ballabriga y David Zaplana han logrado entretejer magistralmente los destinos de tantos y tan variados, complejos y atormentados antih&eacute;roes como solo V&iacute;ctor del &Aacute;rbol hab&iacute;a conseguido, regal&aacute;ndonos una novela impactante e inc&oacute;moda como pocas, que sorprender&aacute; y dar&aacute; mucho que pensar a lectores de toda la familia y todas las familias.</p>', '5cbe80098b1b5.jpg'),
(2, 3, '2019-02-06', 'Llega el true crime literario llega la nueva Serie Negra', '<p>Saben, los amantes de lo criminal literario, que el pen&uacute;ltimo auge del g&eacute;nero en Espa&ntilde;a lo lider&oacute; la colecci&oacute;n que por entonces, hace m&aacute;s de una d&eacute;cada, dirig&iacute;a Anik Lapointe: la Serie Negra, de RBA. La primera novela negra que se edit&oacute; en RBA fue una novela de Ian Rankin, Black &amp; Blue. Se public&oacute; el a&ntilde;o 2001. Por entonces no exist&iacute;a una colecci&oacute;n de novela negra, si no que las novelas negras se publicaban en la colecci&oacute;n literaria, &ldquo;porque son literatura&rdquo;, recuerda su directora editorial, Luisa Guti&eacute;rrez. Seis a&ntilde;os despu&eacute;s, se decide crear un premio de novela negra, el mejor dotado del mundo, el RBA de Novela Polic&iacute;aca, y decididos a apostar por el g&eacute;nero, en un momento en que justo se asist&iacute;a a su definitivo despegue en Espa&ntilde;a, un a&ntilde;o m&aacute;s tarde, en 2008, se creaba la colecci&oacute;n Serie Negra. Su primer t&iacute;tulo, La muerte de Amalia Sacerdote, de Andrea Camilleri, coincid&iacute;a en librer&iacute;as con el primero de Stieg Larsson, Los hombres que no amaban a las mujeres (Destino), la novela llamada a poner de moda el crimen n&oacute;rdico, y a devolver la fe a un mercado maltratado por la sensaci&oacute;n de que el lector de g&eacute;nero no era un lector literario. As&iacute;, desde 2008 hasta 2014, y con la colecci&oacute;n noir de la prestigiosa Gallimard en mente, se publicaron cl&aacute;sicos, pero tambi&eacute;n autores contempor&aacute;neos, recuerda Guti&eacute;rrez, con la idea de crear &ldquo;un mapa de lo m&aacute;s completo posible&rdquo; en lo que a novela negra se refer&iacute;a. Conviv&iacute;an, en la colecci&oacute;n, La jungla de asfalto, de William Riley Burnett, con La mala mujer, de Marc Pastor; los cl&aacute;sicos de Raymond Chandler con los musculosos noirs hist&oacute;rico-germ&aacute;nicos de Philip Kerr.</p>', '5cbfc6bab769b.jpg'),
(4, 2, '2019-01-03', 'El Cervantes de Egido 2017', '<p>En Cervantes se superponen muchos gustos. Por ejemplo, el placer con que el caballero lee libros de caballer&iacute;as, el que experimenta reinvent&aacute;ndose y renombrando a su amada, su caballo o incluso a s&iacute; mismo; el que trasluce el autor narrando ese proceso al tiempo que su protagonista lo desarrolla; el que tiene el lector leyendo las aventuras de uno y prendi&eacute;ndose en la escritura del otro, y por &uacute;ltimo el gusto de Aurora Egido por su autor y el de los lectores de este libro al recorrerlo. Aurora Egido es una especialista en Graci&aacute;n un&aacute;nimemente reconocida, pero ha dedicado muchas p&aacute;ginas tambi&eacute;n a Cervantes. Este libro re&uacute;ne casi una veintena de estudios aparecidos a lo largo de los &uacute;ltimos a&ntilde;os.&nbsp;</p>', '5cbe7f97e41a8.png'),
(11, 1, '2019-04-22', 'Fallece Francisca Aguirre a sus 60 años', '<p>La poetisa alicantina <strong>Francisca Aguirre</strong>, m&aacute;s conocida como Paca Aguirre, <strong>ha fallecido en Madrid a los 88</strong> a&ntilde;os. Perteneciente a la denominada &laquo;<strong>otra generaci&oacute;n de los 50</strong>&raquo;, era de las pocas autoras que a&uacute;n segu&iacute;an en activo.</p><h2><strong>Francisca Aguirre</strong></h2><p>Fue hija del pintor <strong>Lorenzo Aguirre</strong> y estuvo casada con <strong>F&eacute;lix Grande, otro importante poeta</strong>, con el que tuvo a una <strong>hija</strong> tambi&eacute;n poetisa, <strong>Guadalupe Grande.</strong></p><p>Tard&oacute; mucho en publicar y se consider&oacute; muy <strong>influida por Antonio Machado</strong> respecto al proceso de creaci&oacute;n literaria, que debe ser un <strong>reflejo de la propia existencia</strong> m&aacute;s que de esa labor creativa. Esa influencia machadiana fue lo que m&aacute;s destacaron tambi&eacute;n cuando recibi&oacute; el <strong>Premio Nacional de las Letras</strong> el a&ntilde;o pasado.</p>', '5cbe5fcb864c4.jpg'),
(12, 1, '2019-04-22', 'Entrevista a R G Wittener', '<p>Hoy tenemos el placer de entrevistar a <strong>R. G. Wittener</strong> (Witten, Alemania, 1973), escritor espa&ntilde;ol de<strong>&nbsp;relatos y novelas de ciencia ficci&oacute;n, fantas&iacute;a, y terror</strong>;.</p><h4>R. G. Wittener, el autor y su obra</h4><p>Actualidad Literatura: Antes de nada, y para el que no te conozca.</p><p><strong>R. G. Wittener</strong>: <em>Me llamo <strong>Rafael Gonz&aacute;lez Wittener</strong>, nac&iacute; en Alemania a mediados de los setenta y, a muy corta edad, mi familia se traslad&oacute; a Madrid, donde he crecido y vivido.</em></p><p><em>Mi contacto con la literatura fue a edad temprana, pues empec&eacute; a leer con cuatro a&ntilde;os, me atrev&iacute; a escribir mi primera novela con unos quince y logr&eacute; ser <strong>finalista del premio de relatos&nbsp;</strong></em><strong>El Fungible</strong><em>, que otorga el ayuntamiento de Alcobendas, con 25 a&ntilde;os.</em></p>', '5cbe60b347d95.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pagvisitada`
--

CREATE TABLE `pagvisitada` (
  `idRegistro` int(11) NOT NULL,
  `nombrePaginas` varchar(120) COLLATE utf8_bin NOT NULL,
  `Visitantes` int(11) NOT NULL,
  `usuariosUnicos` int(11) NOT NULL,
  `clasificacion` float NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `pagvisitada`
--

INSERT INTO `pagvisitada` (`idRegistro`, `nombrePaginas`, `Visitantes`, `usuariosUnicos`, `clasificacion`, `fecha`) VALUES
(1, 'index.php', 150, 85, 0.15, '2019-02-13'),
(2, 'news.php', 100, 99, 0.52, '2019-02-27'),
(3, 'categories.php', 300, 300, 0.7, '2019-02-20'),
(4, 'product.php?id=1', 15, 10, 0.01, '2019-02-13');

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `estado` char(2) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `pedido`
--

INSERT INTO `pedido` (`idPedido`, `idCliente`, `fecha`, `estado`) VALUES
(1, 1, '2019-02-13', '1'),
(2, 2, '2019-02-11', '0'),
(3, 3, '2019-02-09', '1'),
(4, 4, '2019-02-09', '0'),
(5, 5, '2019-02-11', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`idAutor`);

--
-- Indexes for table `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`idBitacora`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indexes for table `comentlibro`
--
ALTER TABLE `comentlibro`
  ADD PRIMARY KEY (`idComent`),
  ADD KEY `idLibro` (`idLibro`),
  ADD KEY `idClient` (`idClient`);

--
-- Indexes for table `comentnoticia`
--
ALTER TABLE `comentnoticia`
  ADD PRIMARY KEY (`idComentN`),
  ADD KEY `idClient` (`idClient`),
  ADD KEY `idNoticia` (`idNoticia`);

--
-- Indexes for table `detallepedido`
--
ALTER TABLE `detallepedido`
  ADD PRIMARY KEY (`idDetalle`),
  ADD KEY `idPedido` (`idPedido`),
  ADD KEY `idLibro` (`idLibro`);

--
-- Indexes for table `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`idEditorial`);

--
-- Indexes for table `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`idEmpleado`);

--
-- Indexes for table `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`idLibro`),
  ADD KEY `idAutor` (`idAutor`),
  ADD KEY `idCat` (`idCat`),
  ADD KEY `idEditorial` (`idEditorial`);

--
-- Indexes for table `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`idNoticia`),
  ADD KEY `idEmpleado` (`idEmpleado`);

--
-- Indexes for table `pagvisitada`
--
ALTER TABLE `pagvisitada`
  ADD PRIMARY KEY (`idRegistro`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `idCliente` (`idCliente`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `idAutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `idBitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comentlibro`
--
ALTER TABLE `comentlibro`
  MODIFY `idComent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comentnoticia`
--
ALTER TABLE `comentnoticia`
  MODIFY `idComentN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `detallepedido`
--
ALTER TABLE `detallepedido`
  MODIFY `idDetalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `editorial`
--
ALTER TABLE `editorial`
  MODIFY `idEditorial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `empleado`
--
ALTER TABLE `empleado`
  MODIFY `idEmpleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `libro`
--
ALTER TABLE `libro`
  MODIFY `idLibro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `noticia`
--
ALTER TABLE `noticia`
  MODIFY `idNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pagvisitada`
--
ALTER TABLE `pagvisitada`
  MODIFY `idRegistro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bitacora`
--
ALTER TABLE `bitacora`
  ADD CONSTRAINT `bitacora_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `empleado` (`idEmpleado`);

--
-- Constraints for table `comentlibro`
--
ALTER TABLE `comentlibro`
  ADD CONSTRAINT `comentlibro_ibfk_1` FOREIGN KEY (`idLibro`) REFERENCES `libro` (`idLibro`),
  ADD CONSTRAINT `comentlibro_ibfk_2` FOREIGN KEY (`idClient`) REFERENCES `cliente` (`idCliente`);

--
-- Constraints for table `comentnoticia`
--
ALTER TABLE `comentnoticia`
  ADD CONSTRAINT `comentnoticia_ibfk_1` FOREIGN KEY (`idClient`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `comentnoticia_ibfk_2` FOREIGN KEY (`idNoticia`) REFERENCES `noticia` (`idNoticia`);

--
-- Constraints for table `detallepedido`
--
ALTER TABLE `detallepedido`
  ADD CONSTRAINT `detallepedido_ibfk_1` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`),
  ADD CONSTRAINT `detallepedido_ibfk_2` FOREIGN KEY (`idLibro`) REFERENCES `libro` (`idLibro`);

--
-- Constraints for table `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`idAutor`) REFERENCES `autor` (`idAutor`),
  ADD CONSTRAINT `libro_ibfk_2` FOREIGN KEY (`idCat`) REFERENCES `categoria` (`idCategoria`),
  ADD CONSTRAINT `libro_ibfk_3` FOREIGN KEY (`idEditorial`) REFERENCES `editorial` (`idEditorial`);

--
-- Constraints for table `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`);

--
-- Constraints for table `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
