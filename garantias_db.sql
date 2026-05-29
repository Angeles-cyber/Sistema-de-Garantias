-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-07-2025 a las 22:29:57
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
-- Base de datos: `garantias_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `garantias`
--

CREATE TABLE `garantias` (
  `id` int(11) NOT NULL,
  `producto` varchar(255) DEFAULT NULL,
  `entidad` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `contacto` varchar(255) DEFAULT NULL,
  `TecCargo` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `garantias`
--

INSERT INTO `garantias` (`id`, `producto`, `entidad`, `descripcion`, `contacto`, `TecCargo`, `fecha`) VALUES
(7, 'Laptop Lenovo', 'Ministerio de Salud', 'Pantalla con fallas', 'Carlos Ríos', 'Técnico A', '2025-06-01'),
(8, 'Impresora HP', 'Escuela Nacional', 'Atascamiento de papel', 'Lucía Gómez', 'Técnico B', '2025-06-02'),
(9, 'Monitor Samsung', 'Empresa X', 'No enciende', 'Pedro Alva', 'Técnico C', '2025-06-03'),
(10, 'Router TP-Link', 'Red Perú', 'Se reinicia solo', 'Marta Díaz', 'Técnico D', '2025-06-04'),
(11, 'CPU Dell', 'Oficina Central', 'Ruido excesivo', 'Sergio Vega', 'Técnico E', '2025-06-05'),
(12, 'Tablet Huawei', 'Colegio San Marcos', 'No carga batería', 'Ana Torres', 'Técnico A', '2025-06-06'),
(13, 'Proyector Epson', 'Municipalidad Surco', 'Luz tenue', 'Javier Ramos', 'Técnico B', '2025-06-07'),
(14, 'Switch Cisco', 'Compañía Minera', 'Puertos inactivos', 'Valeria Peña', 'Técnico C', '2025-06-08'),
(15, 'PC Acer', 'Banco Nacional', 'Se congela', 'Raúl Soto', 'Técnico D', '2025-06-09'),
(16, 'Servidor IBM', 'SUNAT', 'Arranque lento', 'Elena Zúñiga', 'Técnico E', '2025-06-10'),
(17, 'Laptop HP', 'Universidad Lima', 'Teclado inoperativo', 'Jorge Lazo', 'Técnico A', '2025-06-11'),
(18, 'Monitor LG', 'Hospital Central', 'Fallas de color', 'Mariela Vera', 'Técnico B', '2025-06-12'),
(19, 'Router Huawei', 'Ministerio de Educación', 'Sin conexión', 'Luis Chávez', 'Técnico C', '2025-06-13'),
(20, 'Impresora Canon', 'Escuela Nacional', 'Tinta borrosa', 'Natalia Silva', 'Técnico D', '2025-06-14'),
(21, 'CPU ASUS', 'Corporación ABC', 'No enciende', 'Fernando Díaz', 'Técnico E', '2025-06-15'),
(22, 'Tablet Lenovo', 'Universidad Andina', 'Pantalla quebrada', 'Daniela Ruiz', 'Técnico A', '2025-06-16'),
(23, 'Proyector BenQ', 'Cámara de Comercio', 'Sin imagen', 'Gustavo Ortega', 'Técnico B', '2025-06-17'),
(24, 'Switch TP-Link', 'Red Global', 'Falla intermitente', 'Rosa Mena', 'Técnico C', '2025-06-18'),
(25, 'PC HP', 'INEI', 'Se apaga solo', 'Carlos Milla', 'Técnico D', '2025-06-19'),
(26, 'Servidor Dell', 'Ministerio de Justicia', 'Overheating', 'Paola Reyes', 'Técnico E', '2025-06-20'),
(27, 'Laptop Toshiba', 'Colegio El Bosque', 'Pantalla blanca', 'Álvaro Prado', 'Técnico A', '2025-06-21'),
(28, 'Monitor AOC', 'SUNARP', 'No reconoce señal', 'Liliana Ramos', 'Técnico B', '2025-06-22'),
(29, 'Router D-Link', 'Telecom', 'Lentitud de red', 'Héctor León', 'Técnico C', '2025-06-23'),
(30, 'Impresora Brother', 'Fiscalía General', 'No imprime', 'Violeta Arévalo', 'Técnico D', '2025-06-24'),
(31, 'CPU MSI', 'Ministerio del Interior', 'Luz roja encendida', 'Edgar Córdova', 'Técnico E', '2025-06-25'),
(32, 'Tablet Samsung', 'Región Callao', 'Se reinicia', 'Lucía Ramos', 'Técnico A', '2025-06-26'),
(33, 'Proyector Sony', 'Municipalidad Miraflores', 'No responde', 'Renzo Velásquez', 'Técnico B', '2025-06-27'),
(34, 'Switch Netgear', 'Seguridad Nacional', 'Sin energía', 'Gloria Aguirre', 'Técnico C', '2025-06-28'),
(35, 'PC Lenovo', 'Ministerio del Ambiente', 'Pantalla azul', 'Roberto Salas', 'Técnico D', '2025-06-29'),
(36, 'Servidor HP', 'AgroPerú', 'Sin respuesta BIOS', 'Camila Paredes', 'Técnico E', '2025-06-30'),
(37, 'Laptop Dell', 'Universidad Nacional', 'Batería inflada', 'Esteban Franco', 'Técnico A', '2025-07-01'),
(38, 'Monitor ViewSonic', 'Ministerio de Cultura', 'Pantalla borrosa', 'Julia Mendoza', 'Técnico B', '2025-07-02'),
(39, 'Router Cisco', 'MTC', 'No detecta red WAN', 'César Bravo', 'Técnico C', '2025-07-03'),
(40, 'Impresora Epson', 'Dirección Regional', 'No reconoce cartucho', 'Sandra Meza', 'Técnico D', '2025-07-04'),
(41, 'CPU HP', 'Oficina Regional', 'Zumbido interno', 'Iván Pacheco', 'Técnico E', '2025-07-05'),
(42, 'Tablet Apple', 'Congreso del Perú', 'Pantalla congelada', 'Verónica Tapia', 'Técnico A', '2025-07-06'),
(43, 'Proyector LG', 'Museo Nacional', 'No sincroniza HDMI', 'Rodrigo Vidal', 'Técnico B', '2025-07-07'),
(44, 'Switch Ubiquiti', 'INABIF', 'Red inestable', 'Laura Montenegro', 'Técnico C', '2025-07-08'),
(45, 'PC ASUS', 'Ministerio de Economía', 'Error al iniciar', 'Tomás Reinoso', 'Técnico D', '2025-07-09'),
(46, 'Servidor Lenovo', 'Región Sur', 'Falla RAID', 'Brenda Arrieta', 'Técnico E', '2025-07-10'),
(47, 'Laptop Acer', 'Municipalidad Centro', 'No reconoce teclado', 'Kevin Sánchez', 'Técnico A', '2025-07-11'),
(48, 'Monitor Philips', 'Ministerio de Producción', 'Brillo inestable', 'Marina Camargo', 'Técnico B', '2025-07-12'),
(49, 'Router Mikrotik', 'Empresa Telefónica', 'No levanta IP', 'Gino Vega', 'Técnico C', '2025-07-13'),
(50, 'Impresora Lexmark', 'Jurado Nacional', 'Atasco doble hoja', 'Karla Zeballos', 'Técnico D', '2025-07-14'),
(51, 'CPU Intel', 'Centro de Innovación', 'Falla disco duro', 'Dante Molina', 'Técnico E', '2025-07-15'),
(52, 'Tablet Amazon', 'Dirección Educativa', 'No carga apps', 'Sofía Granda', 'Técnico A', '2025-07-16'),
(53, 'Proyector Panasonic', 'Cine Nacional', 'Imagen distorsionada', 'Óscar Landa', 'Técnico B', '2025-07-17'),
(54, 'Switch D-Link', 'Fuerzas Armadas', 'Problema PoE', 'Adriana Pino', 'Técnico C', '2025-07-18'),
(55, 'PC Gateway', 'Ministerio de Defensa', 'Falla gráfica', 'Julián Navarro', 'Técnico D', '2025-07-19'),
(56, 'Servidor Supermicro', 'INEI', 'Ventilador detenido', 'Estela Rivas', 'Técnico E', '2025-07-20'),
(57, 'Memoria Ram de 16GB Sansung', 'Universidad del Pacifico', 'La computadora no da imagen se estima que este error debe ser debido a la Ram ', 'Ing Collar', 'Luis Angeles ', '2025-07-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `garantias_clic`
--

CREATE TABLE `garantias_clic` (
  `id` int(11) NOT NULL,
  `producto` varchar(255) DEFAULT NULL,
  `entidad` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `contacto` varchar(255) DEFAULT NULL,
  `TecCargo` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `garantias_clic`
--

INSERT INTO `garantias_clic` (`id`, `producto`, `entidad`, `descripcion`, `contacto`, `TecCargo`, `fecha`) VALUES
(7, 'Laptop Lenovo', 'Ministerio de Salud', 'Pantalla con fallas', 'Carlos Ríos', 'Técnico A', '2025-06-01'),
(8, 'Impresora HP', 'Escuela Nacional', 'Atascamiento de papel', 'Lucía Gómez', 'Técnico B', '2025-06-02'),
(9, 'Monitor Samsung', 'Empresa X', 'No enciende', 'Pedro Alva', 'Técnico C', '2025-06-03'),
(10, 'Router TP-Link', 'Red Perú', 'Se reinicia solo', 'Marta Díaz', 'Técnico D', '2025-06-04'),
(11, 'CPU Dell', 'Oficina Central', 'Ruido excesivo', 'Sergio Vega', 'Técnico E', '2025-06-05'),
(12, 'Tablet Huawei', 'Colegio San Marcos', 'No carga batería', 'Ana Torres', 'Técnico A', '2025-06-06'),
(13, 'Proyector Epson', 'Municipalidad Surco', 'Luz tenue', 'Javier Ramos', 'Técnico B', '2025-06-07'),
(14, 'Switch Cisco', 'Compañía Minera', 'Puertos inactivos', 'Valeria Peña', 'Técnico C', '2025-06-08'),
(16, 'Servidor IBM', 'SUNAT', 'Arranque lento', 'Elena Zúñiga', 'Técnico E', '2025-06-10'),
(17, 'Laptop HP', 'Universidad Lima', 'Teclado inoperativo', 'Jorge Lazo', 'Técnico A', '2025-06-11'),
(18, 'Monitor LG', 'Hospital Central', 'Fallas de color', 'Mariela Vera', 'Técnico B', '2025-06-12'),
(19, 'Router Huawei', 'Ministerio de Educación', 'Sin conexión', 'Luis Chávez', 'Técnico C', '2025-06-13'),
(20, 'Impresora Canon', 'Escuela Nacional', 'Tinta borrosa', 'Natalia Silva', 'Técnico D', '2025-06-14'),
(21, 'CPU ASUS', 'Corporación ABC', 'No enciende', 'Fernando Díaz', 'Técnico E', '2025-06-15'),
(22, 'Tablet Lenovo', 'Universidad Andina', 'Pantalla quebrada', 'Daniela Ruiz', 'Técnico A', '2025-06-16'),
(23, 'Proyector BenQ', 'Cámara de Comercio', 'Sin imagen', 'Gustavo Ortega', 'Técnico B', '2025-06-17'),
(24, 'Switch TP-Link', 'Red Global', 'Falla intermitente', 'Rosa Mena', 'Técnico C', '2025-06-18'),
(25, 'PC HP', 'INEI', 'Se apaga solo', 'Carlos Milla', 'Técnico D', '2025-06-19'),
(26, 'Servidor Dell', 'Ministerio de Justicia', 'Overheating', 'Paola Reyes', 'Técnico E', '2025-06-20'),
(27, 'Laptop Toshiba', 'Colegio El Bosque', 'Pantalla blanca', 'Álvaro Prado', 'Técnico A', '2025-06-21'),
(28, 'Monitor AOC', 'SUNARP', 'No reconoce señal', 'Liliana Ramos', 'Técnico B', '2025-06-22'),
(29, 'Router D-Link', 'Telecom', 'Lentitud de red', 'Héctor León', 'Técnico C', '2025-06-23'),
(30, 'Impresora Brother', 'Fiscalía General', 'No imprime', 'Violeta Arévalo', 'Técnico D', '2025-06-24'),
(31, 'CPU MSI', 'Ministerio del Interior', 'Luz roja encendida', 'Edgar Córdova', 'Técnico E', '2025-06-25'),
(32, 'Tablet Samsung', 'Región Callao', 'Se reinicia', 'Lucía Ramos', 'Técnico A', '2025-06-26'),
(33, 'Proyector Sony', 'Municipalidad Miraflores', 'No responde', 'Renzo Velásquez', 'Técnico B', '2025-06-27'),
(34, 'Switch Netgear', 'Seguridad Nacional', 'Sin energía', 'Gloria Aguirre', 'Técnico C', '2025-06-28'),
(35, 'PC Lenovo', 'Ministerio del Ambiente', 'Pantalla azul', 'Roberto Salas', 'Técnico D', '2025-06-29'),
(36, 'Servidor HP', 'AgroPerú', 'Sin respuesta BIOS', 'Camila Paredes', 'Técnico E', '2025-06-30'),
(37, 'Laptop Dell', 'Universidad Nacional', 'Batería inflada', 'Esteban Franco', 'Técnico A', '2025-07-01'),
(38, 'Monitor ViewSonic', 'Ministerio de Cultura', 'Pantalla borrosa', 'Julia Mendoza', 'Técnico B', '2025-07-02'),
(39, 'Router Cisco', 'MTC', 'No detecta red WAN', 'César Bravo', 'Técnico C', '2025-07-03'),
(40, 'Impresora Epson', 'Dirección Regional', 'No reconoce cartucho', 'Sandra Meza', 'Técnico D', '2025-07-04'),
(41, 'CPU HP', 'Oficina Regional', 'Zumbido interno', 'Iván Pacheco', 'Técnico E', '2025-07-05'),
(42, 'Tablet Apple', 'Congreso del Perú', 'Pantalla congelada', 'Verónica Tapia', 'Técnico A', '2025-07-06'),
(43, 'Proyector LG', 'Museo Nacional', 'No sincroniza HDMI', 'Rodrigo Vidal', 'Técnico B', '2025-07-07'),
(44, 'Switch Ubiquiti', 'INABIF', 'Red inestable', 'Laura Montenegro', 'Técnico C', '2025-07-08'),
(45, 'PC ASUS', 'Ministerio de Economía', 'Error al iniciar', 'Tomás Reinoso', 'Técnico D', '2025-07-09'),
(46, 'Servidor Lenovo', 'Región Sur', 'Falla RAID', 'Brenda Arrieta', 'Técnico E', '2025-07-10'),
(47, 'Laptop Acer', 'Municipalidad Centro', 'No reconoce teclado', 'Kevin Sánchez', 'Técnico A', '2025-07-11'),
(48, 'Monitor Philips', 'Ministerio de Producción', 'Brillo inestable', 'Marina Camargo', 'Técnico B', '2025-07-12'),
(49, 'Router Mikrotik', 'Empresa Telefónica', 'No levanta IP', 'Gino Vega', 'Técnico C', '2025-07-13'),
(50, 'Impresora Lexmark', 'Jurado Nacional', 'Atasco doble hoja', 'Karla Zeballos', 'Técnico D', '2025-07-14'),
(51, 'CPU Intel', 'Centro de Innovación', 'Falla disco duro', 'Dante Molina', 'Técnico E', '2025-07-15'),
(52, 'Tablet Amazon', 'Dirección Educativa', 'No carga apps', 'Sofía Granda', 'Técnico A', '2025-07-16'),
(53, 'Proyector Panasonic', 'Cine Nacional', 'Imagen distorsionada', 'Óscar Landa', 'Técnico B', '2025-07-17'),
(55, 'PC Gateway', 'Ministerio de Defensa', 'Falla gráfica', 'Julián Navarro', 'Técnico D', '2025-07-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `garantias_rios`
--

CREATE TABLE `garantias_rios` (
  `id` int(11) NOT NULL,
  `producto` varchar(255) DEFAULT NULL,
  `entidad` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `contacto` varchar(255) DEFAULT NULL,
  `TecCargo` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `garantias_rios`
--

INSERT INTO `garantias_rios` (`id`, `producto`, `entidad`, `descripcion`, `contacto`, `TecCargo`, `fecha`) VALUES
(7, 'Laptop Lenovo', 'Ministerio de Salud', 'Pantalla con fallas', 'Carlos Ríos', 'Técnico A', '2025-06-01'),
(8, 'Impresora HP', 'Escuela Nacional', 'Atascamiento de papel', 'Lucía Gómez', 'Técnico B', '2025-06-02'),
(9, 'Monitor Samsung', 'Empresa X', 'No enciende', 'Pedro Alva', 'Técnico C', '2025-06-03'),
(10, 'Router TP-Link', 'Red Perú', 'Se reinicia solo', 'Marta Díaz', 'Técnico D', '2025-06-04'),
(11, 'CPU Dell', 'Oficina Central', 'Ruido excesivo', 'Sergio Vega', 'Técnico E', '2025-06-05'),
(12, 'Tablet Huawei', 'Colegio San Marcos', 'No carga batería', 'Ana Torres', 'Técnico A', '2025-06-06'),
(13, 'Proyector Epson', 'Municipalidad Surco', 'Luz tenue', 'Javier Ramos', 'Técnico B', '2025-06-07'),
(14, 'Switch Cisco', 'Compañía Minera', 'Puertos inactivos', 'Valeria Peña', 'Técnico C', '2025-06-08'),
(15, 'PC Acer', 'Banco Nacional', 'Se congela', 'Raúl Soto', 'Técnico D', '2025-06-09'),
(16, 'Servidor IBM', 'SUNAT', 'Arranque lento', 'Elena Zúñiga', 'Técnico E', '2025-06-10'),
(17, 'Laptop HP', 'Universidad Lima', 'Teclado inoperativo', 'Jorge Lazo', 'Técnico A', '2025-06-11'),
(18, 'Monitor LG', 'Hospital Central', 'Fallas de color', 'Mariela Vera', 'Técnico B', '2025-06-12'),
(19, 'Router Huawei', 'Ministerio de Educación', 'Sin conexión', 'Luis Chávez', 'Técnico C', '2025-06-13'),
(20, 'Impresora Canon', 'Escuela Nacional', 'Tinta borrosa', 'Natalia Silva', 'Técnico D', '2025-06-14'),
(21, 'CPU ASUS', 'Corporación ABC', 'No enciende', 'Fernando Díaz', 'Técnico E', '2025-06-15'),
(22, 'Tablet Lenovo', 'Universidad Andina', 'Pantalla quebrada', 'Daniela Ruiz', 'Técnico A', '2025-06-16'),
(23, 'Proyector BenQ', 'Cámara de Comercio', 'Sin imagen', 'Gustavo Ortega', 'Técnico B', '2025-06-17'),
(24, 'Switch TP-Link', 'Red Global', 'Falla intermitente', 'Rosa Mena', 'Técnico C', '2025-06-18'),
(25, 'PC HP', 'INEI', 'Se apaga solo', 'Carlos Milla', 'Técnico D', '2025-06-19'),
(26, 'Servidor Dell', 'Ministerio de Justicia', 'Overheating', 'Paola Reyes', 'Técnico E', '2025-06-20'),
(27, 'Laptop Toshiba', 'Colegio El Bosque', 'Pantalla blanca', 'Álvaro Prado', 'Técnico A', '2025-06-21'),
(28, 'Monitor AOC', 'SUNARP', 'No reconoce señal', 'Liliana Ramos', 'Técnico B', '2025-06-22'),
(29, 'Router D-Link', 'Telecom', 'Lentitud de red', 'Héctor León', 'Técnico C', '2025-06-23'),
(30, 'Impresora Brother', 'Fiscalía General', 'No imprime', 'Violeta Arévalo', 'Técnico D', '2025-06-24'),
(31, 'CPU MSI', 'Ministerio del Interior', 'Luz roja encendida', 'Edgar Córdova', 'Técnico E', '2025-06-25'),
(32, 'Tablet Samsung', 'Región Callao', 'Se reinicia', 'Lucía Ramos', 'Técnico A', '2025-06-26'),
(33, 'Proyector Sony', 'Municipalidad Miraflores', 'No responde', 'Renzo Velásquez', 'Técnico B', '2025-06-27'),
(34, 'Switch Netgear', 'Seguridad Nacional', 'Sin energía', 'Gloria Aguirre', 'Técnico C', '2025-06-28'),
(35, 'PC Lenovo', 'Ministerio del Ambiente', 'Pantalla azul', 'Roberto Salas', 'Técnico D', '2025-06-29'),
(36, 'Servidor HP', 'AgroPerú', 'Sin respuesta BIOS', 'Camila Paredes', 'Técnico E', '2025-06-30'),
(37, 'Laptop Dell', 'Universidad Nacional', 'Batería inflada', 'Esteban Franco', 'Técnico A', '2025-07-01'),
(38, 'Monitor ViewSonic', 'Ministerio de Cultura', 'Pantalla borrosa', 'Julia Mendoza', 'Técnico B', '2025-07-02'),
(39, 'Router Cisco', 'MTC', 'No detecta red WAN', 'César Bravo', 'Técnico C', '2025-07-03'),
(40, 'Impresora Epson', 'Dirección Regional', 'No reconoce cartucho', 'Sandra Meza', 'Técnico D', '2025-07-04'),
(41, 'CPU HP', 'Oficina Regional', 'Zumbido interno', 'Iván Pacheco', 'Técnico E', '2025-07-05'),
(42, 'Tablet Apple', 'Congreso del Perú', 'Pantalla congelada', 'Verónica Tapia', 'Técnico A', '2025-07-06'),
(43, 'Proyector LG', 'Museo Nacional', 'No sincroniza HDMI', 'Rodrigo Vidal', 'Técnico B', '2025-07-07'),
(44, 'Switch Ubiquiti', 'INABIF', 'Red inestable', 'Laura Montenegro', 'Técnico C', '2025-07-08'),
(45, 'PC ASUS', 'Ministerio de Economía', 'Error al iniciar', 'Tomás Reinoso', 'Técnico D', '2025-07-09'),
(46, 'Servidor Lenovo', 'Región Sur', 'Falla RAID', 'Brenda Arrieta', 'Técnico E', '2025-07-10'),
(47, 'Laptop Acer', 'Municipalidad Centro', 'No reconoce teclado', 'Kevin Sánchez', 'Técnico A', '2025-07-11'),
(48, 'Monitor Philips', 'Ministerio de Producción', 'Brillo inestable', 'Marina Camargo', 'Técnico B', '2025-07-12'),
(49, 'Router Mikrotik', 'Empresa Telefónica', 'No levanta IP', 'Gino Vega', 'Técnico C', '2025-07-13'),
(50, 'Impresora Lexmark', 'Jurado Nacional', 'Atasco doble hoja', 'Karla Zeballos', 'Técnico D', '2025-07-14'),
(51, 'CPU Intel', 'Centro de Innovación', 'Falla disco duro', 'Dante Molina', 'Técnico E', '2025-07-15'),
(52, 'Tablet Amazon', 'Dirección Educativa', 'No carga apps', 'Sofía Granda', 'Técnico A', '2025-07-16'),
(53, 'Proyector Panasonic', 'Cine Nacional', 'Imagen distorsionada', 'Óscar Landa', 'Técnico B', '2025-07-17'),
(54, 'Switch D-Link', 'Fuerzas Armadas', 'Problema PoE', 'Adriana Pino', 'Técnico C', '2025-07-18'),
(55, 'PC Gateway', 'Ministerio de Defensa', 'Falla gráfica', 'Julián Navarro', 'Técnico D', '2025-07-19'),
(56, 'Servidor Supermicro', 'INEI', 'Ventilador detenido', 'Estela Rivas', 'Técnico E', '2025-07-20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `garantias`
--
ALTER TABLE `garantias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `garantias_clic`
--
ALTER TABLE `garantias_clic`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `garantias_rios`
--
ALTER TABLE `garantias_rios`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `garantias`
--
ALTER TABLE `garantias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `garantias_clic`
--
ALTER TABLE `garantias_clic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `garantias_rios`
--
ALTER TABLE `garantias_rios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
