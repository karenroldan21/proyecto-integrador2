-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 28-09-2023 a las 03:51:44
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_integrador1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_carrito`
--

CREATE TABLE `tb_carrito` (
  `id_carrito` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `estado` bit(1) DEFAULT b'1',
  `id_pedido` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_carrito`
--

INSERT INTO `tb_carrito` (`id_carrito`, `id_usuario`, `estado`, `id_pedido`, `create_at`, `update_at`, `id_producto`) VALUES
(1, 1, b'1', 2, '2023-09-28 01:37:28', '2023-09-28 01:37:28', 1),
(2, 4, b'1', 1, '2023-09-28 01:37:28', '2023-09-28 01:37:28', 3),
(3, 2, b'1', 3, '2023-09-28 01:37:28', '2023-09-28 01:37:28', 2),
(4, 3, b'1', 4, '2023-09-28 01:37:28', '2023-09-28 01:37:28', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_categorias`
--

CREATE TABLE `tb_categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(45) NOT NULL,
  `descripcion` varchar(40) NOT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1',
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_categorias`
--

INSERT INTO `tb_categorias` (`id_categoria`, `nombre_categoria`, `descripcion`, `estado`, `create_at`, `update_at`) VALUES
(1, 'Alimentos', 'Comida', b'1', '2023-09-28 01:20:10', '2023-09-28 01:20:10'),
(2, 'Electrodomésticos', 'Electrodoméstico', b'1', '2023-09-28 01:20:10', '2023-09-28 01:20:10'),
(3, 'Aseo', 'Aseo personal', b'1', '2023-09-28 01:20:10', '2023-09-28 01:20:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ciudad`
--

CREATE TABLE `tb_ciudad` (
  `id_ciudad` int(4) NOT NULL,
  `nombre_ciudad` varchar(45) NOT NULL,
  `cobertura` bit(1) DEFAULT b'1',
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_ciudad`
--

INSERT INTO `tb_ciudad` (`id_ciudad`, `nombre_ciudad`, `cobertura`, `create_at`, `update_at`) VALUES
(1, 'Medellín', b'1', '2023-09-28 00:50:24', '2023-09-28 00:50:24'),
(2, 'Popayán', b'1', '2023-09-28 00:50:24', '2023-09-28 00:50:24'),
(3, 'Montería', b'1', '2023-09-28 00:50:24', '2023-09-28 00:50:24'),
(4, 'Cali', b'1', '2023-09-28 00:50:24', '2023-09-28 00:50:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_oferta`
--

CREATE TABLE `tb_oferta` (
  `id_oferta` int(11) NOT NULL,
  `nombre_oferta` varchar(45) NOT NULL,
  `descripcion` varchar(40) NOT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1',
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_oferta`
--

INSERT INTO `tb_oferta` (`id_oferta`, `nombre_oferta`, `descripcion`, `estado`, `fecha_inicio`, `fecha_fin`, `create_at`, `update_at`) VALUES
(1, 'Aseo', '10% en productos de aseo', b'1', '2023-08-01', '2023-10-01', '2023-09-28 01:24:32', '2023-09-28 01:24:32'),
(2, 'Electrodomésticos', '20% en electrodomésticos', b'1', '2023-07-20', '2023-09-30', '2023-09-28 01:24:32', '2023-09-28 01:24:32'),
(3, 'Verduras', '50% en todas las verduras', b'0', '2023-07-20', '2023-08-20', '2023-09-28 01:26:04', '2023-09-28 01:26:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pedido`
--

CREATE TABLE `tb_pedido` (
  `id_pedido` int(11) NOT NULL,
  `fecha_pago` date NOT NULL,
  `metodo_pago` varchar(45) NOT NULL,
  `estado` varchar(40) NOT NULL DEFAULT '1',
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_pedido`
--

INSERT INTO `tb_pedido` (`id_pedido`, `fecha_pago`, `metodo_pago`, `estado`, `create_at`, `update_at`) VALUES
(1, '2023-09-30', 'efectivo', '1', '2023-09-28 01:36:14', '2023-09-28 01:36:14'),
(2, '2023-10-05', 'transferencia', '1', '2023-09-28 01:36:14', '2023-09-28 01:36:14'),
(3, '2023-09-28', 'efectivo', '1', '2023-09-28 01:36:14', '2023-09-28 01:36:14'),
(4, '2023-09-28', 'transferencia', '1', '2023-09-28 01:36:14', '2023-09-28 01:36:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_productos`
--

CREATE TABLE `tb_productos` (
  `id_producto` int(11) NOT NULL,
  `descripcion_producto` varchar(45) NOT NULL,
  `id_categoria` int(4) NOT NULL,
  `precio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_oferta` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_productos`
--

INSERT INTO `tb_productos` (`id_producto`, `descripcion_producto`, `id_categoria`, `precio`, `cantidad`, `id_oferta`, `create_at`, `update_at`) VALUES
(1, 'Nevera', 2, 1000000, 1, 2, '2023-09-28 01:24:50', '2023-09-28 01:24:50'),
(2, 'Cepillo de dientes', 3, 8000, 4, 1, '2023-09-28 01:24:50', '2023-09-28 01:24:50'),
(3, 'Verduras', 1, 50000, 1, 3, '2023-09-28 01:26:37', '2023-09-28 01:26:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_rol`
--

CREATE TABLE `tb_rol` (
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_rol`
--

INSERT INTO `tb_rol` (`id_rol`, `nombre`, `descripcion`, `create_at`, `update_at`) VALUES
(1, 'Gerente', 'direccion', '2023-09-28 01:10:24', '2023-09-28 01:10:24'),
(2, 'Contador', 'finanzas', '2023-09-28 01:10:24', '2023-09-28 01:10:24'),
(3, 'RRHH', 'personas', '2023-09-28 01:10:48', '2023-09-28 01:10:48'),
(4, 'Empleado', 'produccion', '2023-09-28 01:11:08', '2023-09-28 01:11:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `id_usuario` int(10) NOT NULL,
  `nombre_usuario` varchar(60) NOT NULL,
  `id_ciudad` int(4) NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `id_refiere` int(10) DEFAULT NULL,
  `estado` bit(1) DEFAULT b'1',
  `contraseña_usuario` varchar(10) NOT NULL,
  `correo_usuario` varchar(45) NOT NULL,
  `telefono_usuario` varchar(13) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id_usuario`, `nombre_usuario`, `id_ciudad`, `direccion`, `id_refiere`, `estado`, `contraseña_usuario`, `correo_usuario`, `telefono_usuario`, `create_at`, `update_at`) VALUES
(1, 'Natalia', 3, 'calle 1', NULL, b'1', '1233', 'nat01@gmail.com', '1234567809', '2023-09-28 00:57:10', '2023-09-28 00:59:13'),
(2, 'Liz', 1, 'calle 2', NULL, b'1', '8765', 'lizm@enyoi.com', '8976567890', '2023-09-28 01:02:11', '2023-09-28 01:02:28'),
(3, 'Isabela', 2, 'calle 3', 2, b'1', '7654', 'imm@gmail.com', '5647382910', '2023-09-28 01:07:45', '2023-09-28 01:07:55'),
(4, 'Mariana', 2, 'calle 4', 1, b'1', '7584', 'mma@enyoi.com', '2039485764', '2023-09-28 01:08:50', '2023-09-28 01:08:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuario_rol`
--

CREATE TABLE `tb_usuario_rol` (
  `id_usuario` int(10) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `estado` bit(1) DEFAULT b'1',
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_usuario_rol`
--

INSERT INTO `tb_usuario_rol` (`id_usuario`, `id_rol`, `estado`, `create_at`, `update_at`) VALUES
(1, 1, b'1', '2023-09-28 01:12:50', '2023-09-28 01:12:50'),
(2, 4, b'1', '2023-09-28 01:12:50', '2023-09-28 01:12:50'),
(3, 2, b'1', '2023-09-28 01:12:50', '2023-09-28 01:12:50'),
(4, 3, b'1', '2023-09-28 01:12:50', '2023-09-28 01:12:50');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_carrito`
--
ALTER TABLE `tb_carrito`
  ADD PRIMARY KEY (`id_carrito`),
  ADD KEY `tb_carrito_FK` (`id_usuario`),
  ADD KEY `tb_carrito_FK_1` (`id_pedido`),
  ADD KEY `tb_carrito_FK_2` (`id_producto`);

--
-- Indices de la tabla `tb_categorias`
--
ALTER TABLE `tb_categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `tb_ciudad`
--
ALTER TABLE `tb_ciudad`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `tb_oferta`
--
ALTER TABLE `tb_oferta`
  ADD PRIMARY KEY (`id_oferta`);

--
-- Indices de la tabla `tb_pedido`
--
ALTER TABLE `tb_pedido`
  ADD PRIMARY KEY (`id_pedido`);

--
-- Indices de la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `tb_productos_FK` (`id_categoria`),
  ADD KEY `tb_productos_FK_1` (`id_oferta`);

--
-- Indices de la tabla `tb_rol`
--
ALTER TABLE `tb_rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `tb_usuarios_FK` (`id_ciudad`);

--
-- Indices de la tabla `tb_usuario_rol`
--
ALTER TABLE `tb_usuario_rol`
  ADD KEY `tb_usuario_rol_FK` (`id_usuario`),
  ADD KEY `tb_usuario_rol_FK_1` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_carrito`
--
ALTER TABLE `tb_carrito`
  MODIFY `id_carrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tb_categorias`
--
ALTER TABLE `tb_categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tb_ciudad`
--
ALTER TABLE `tb_ciudad`
  MODIFY `id_ciudad` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tb_oferta`
--
ALTER TABLE `tb_oferta`
  MODIFY `id_oferta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tb_pedido`
--
ALTER TABLE `tb_pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tb_rol`
--
ALTER TABLE `tb_rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_carrito`
--
ALTER TABLE `tb_carrito`
  ADD CONSTRAINT `tb_carrito_FK` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuarios` (`id_usuario`),
  ADD CONSTRAINT `tb_carrito_FK_1` FOREIGN KEY (`id_pedido`) REFERENCES `tb_pedido` (`id_pedido`),
  ADD CONSTRAINT `tb_carrito_FK_2` FOREIGN KEY (`id_producto`) REFERENCES `tb_productos` (`id_producto`);

--
-- Filtros para la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  ADD CONSTRAINT `tb_productos_FK` FOREIGN KEY (`id_categoria`) REFERENCES `tb_categorias` (`id_categoria`),
  ADD CONSTRAINT `tb_productos_FK_1` FOREIGN KEY (`id_oferta`) REFERENCES `tb_oferta` (`id_oferta`);

--
-- Filtros para la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD CONSTRAINT `tb_usuarios_FK` FOREIGN KEY (`id_ciudad`) REFERENCES `tb_ciudad` (`id_ciudad`);

--
-- Filtros para la tabla `tb_usuario_rol`
--
ALTER TABLE `tb_usuario_rol`
  ADD CONSTRAINT `tb_usuario_rol_FK` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuarios` (`id_usuario`),
  ADD CONSTRAINT `tb_usuario_rol_FK_1` FOREIGN KEY (`id_rol`) REFERENCES `tb_rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
