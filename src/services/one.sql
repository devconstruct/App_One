SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `departamentos` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `gasto_inicial` decimal(10,2) NOT NULL DEFAULT '1000.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `departamentos` (`id`, `nombre`, `gasto_inicial`) VALUES
(1, 'Gerencia General', '1000.00'),
(2, 'Contraloría', '1000.00'),
(3, 'Compras', '1000.00'),
(4, 'Ama de Llaves', '1000.00'),
(5, 'Sistemas', '1000.00'),
(6, 'Mantenimiento', '1000.00');



CREATE TABLE `historial_gastos` (
  `id` bigint(20) NOT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  `departamento_id` bigint(20) DEFAULT NULL,
  `numero_ticket` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `articulo` varchar(255) NOT NULL,
  `importe` decimal(10,2) NOT NULL,
  `forma_pago` enum('Efectivo','Tarjeta','Transferencia','Otro') NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `historial_gastos` (`id`, `usuario_id`, `departamento_id`, `numero_ticket`, `fecha`, `hora`, `articulo`, `importe`, `forma_pago`, `total`) VALUES
(1, 5, 6, 'TICKET1', '2024-08-14', '19:43:21', 'Articulo 1', '100.00', 'Efectivo', '100.00'),
(2, 2, 2, 'TICKET2', '2024-08-14', '19:43:21', 'Articulo 2', '100.00', 'Efectivo', '100.00'),
(3, 1, 2, 'TICKET3', '2024-08-14', '19:43:21', 'Articulo 3', '100.00', 'Efectivo', '100.00'),
(4, 6, 1, 'TICKET4', '2024-08-14', '19:43:21', 'Articulo 4', '100.00', 'Efectivo', '100.00'),
(5, 1, 2, 'TICKET5', '2024-08-14', '19:43:21', 'Articulo 5', '100.00', 'Efectivo', '100.00'),
(6, 1, 4, 'TICKET6', '2024-08-14', '19:43:21', 'Articulo 6', '100.00', 'Efectivo', '100.00'),
(7, 4, 3, 'TICKET7', '2024-08-14', '19:43:21', 'Articulo 7', '100.00', 'Efectivo', '100.00'),
(8, 5, 2, 'TICKET8', '2024-08-14', '19:43:21', 'Articulo 8', '100.00', 'Efectivo', '100.00'),
(9, 2, 5, 'TICKET9', '2024-08-14', '19:43:21', 'Articulo 9', '100.00', 'Efectivo', '100.00'),
(10, 1, 4, 'TICKET10', '2024-08-14', '19:43:21', 'Articulo 10', '100.00', 'Efectivo', '100.00'),
(11, 4, 3, 'TICKET11', '2024-08-14', '19:43:21', 'Articulo 11', '100.00', 'Efectivo', '100.00'),
(12, 4, 1, 'TICKET12', '2024-08-14', '19:43:21', 'Articulo 12', '100.00', 'Efectivo', '100.00'),
(13, 6, 2, 'TICKET13', '2024-08-14', '19:43:21', 'Articulo 13', '100.00', 'Efectivo', '100.00'),
(14, 5, 5, 'TICKET14', '2024-08-14', '19:43:21', 'Articulo 14', '100.00', 'Efectivo', '100.00'),
(15, 3, 5, 'TICKET15', '2024-08-14', '19:43:21', 'Articulo 15', '100.00', 'Efectivo', '100.00'),
(16, 5, 6, 'TICKET16', '2024-08-14', '19:43:21', 'Articulo 16', '100.00', 'Efectivo', '100.00'),
(17, 2, 5, 'TICKET17', '2024-08-14', '19:43:21', 'Articulo 17', '100.00', 'Efectivo', '100.00'),
(18, 4, 1, 'TICKET18', '2024-08-14', '19:43:21', 'Articulo 18', '100.00', 'Efectivo', '100.00'),
(19, 2, 5, 'TICKET19', '2024-08-14', '19:43:21', 'Articulo 19', '100.00', 'Efectivo', '100.00'),
(20, 2, 4, 'TICKET20', '2024-08-14', '19:43:21', 'Articulo 20', '100.00', 'Efectivo', '100.00'),
(21, 5, 6, 'TICKET21', '2024-08-14', '19:43:21', 'Articulo 21', '100.00', 'Efectivo', '100.00'),
(22, 3, 5, 'TICKET22', '2024-08-14', '19:43:21', 'Articulo 22', '100.00', 'Efectivo', '100.00'),
(23, 4, 3, 'TICKET23', '2024-08-14', '19:43:21', 'Articulo 23', '100.00', 'Efectivo', '100.00'),
(24, 4, 5, 'TICKET24', '2024-08-14', '19:43:21', 'Articulo 24', '100.00', 'Efectivo', '100.00'),
(25, 2, 6, 'TICKET25', '2024-08-14', '19:43:21', 'Articulo 25', '100.00', 'Efectivo', '100.00'),
(26, 2, 4, 'TICKET26', '2024-08-14', '19:43:21', 'Articulo 26', '100.00', 'Efectivo', '100.00'),
(27, 1, 1, 'TICKET27', '2024-08-14', '19:43:21', 'Articulo 27', '100.00', 'Efectivo', '100.00'),
(28, 3, 3, 'TICKET28', '2024-08-14', '19:43:21', 'Articulo 28', '100.00', 'Efectivo', '100.00'),
(29, 1, 1, 'TICKET29', '2024-08-14', '19:43:21', 'Articulo 29', '100.00', 'Efectivo', '100.00'),
(30, 2, 5, 'TICKET30', '2024-08-14', '19:43:21', 'Articulo 30', '100.00', 'Efectivo', '100.00'),
(31, 5, 3, 'TICKET31', '2024-08-14', '19:43:21', 'Articulo 31', '100.00', 'Efectivo', '100.00'),
(32, 1, 3, 'TICKET32', '2024-08-14', '19:43:21', 'Articulo 32', '100.00', 'Efectivo', '100.00'),
(33, 6, 5, 'TICKET33', '2024-08-14', '19:43:21', 'Articulo 33', '100.00', 'Efectivo', '100.00'),
(34, 2, 4, 'TICKET34', '2024-08-14', '19:43:21', 'Articulo 34', '100.00', 'Efectivo', '100.00'),
(35, 4, 3, 'TICKET35', '2024-08-14', '19:43:21', 'Articulo 35', '100.00', 'Efectivo', '100.00'),
(36, 1, 6, 'TICKET36', '2024-08-14', '19:43:21', 'Articulo 36', '100.00', 'Efectivo', '100.00'),
(37, 4, 1, 'TICKET37', '2024-08-14', '19:43:21', 'Articulo 37', '100.00', 'Efectivo', '100.00'),
(38, 6, 6, 'TICKET38', '2024-08-14', '19:43:21', 'Articulo 38', '100.00', 'Efectivo', '100.00'),
(39, 6, 4, 'TICKET39', '2024-08-14', '19:43:21', 'Articulo 39', '100.00', 'Efectivo', '100.00'),
(40, 2, 5, 'TICKET40', '2024-08-14', '19:43:21', 'Articulo 40', '100.00', 'Efectivo', '100.00'),
(41, 1, 3, 'TICKET41', '2024-08-14', '19:43:21', 'Articulo 41', '100.00', 'Efectivo', '100.00'),
(42, 3, 5, 'TICKET42', '2024-08-14', '19:43:21', 'Articulo 42', '100.00', 'Efectivo', '100.00'),
(43, 3, 4, 'TICKET43', '2024-08-14', '19:43:21', 'Articulo 43', '100.00', 'Efectivo', '100.00'),
(44, 5, 4, 'TICKET44', '2024-08-14', '19:43:21', 'Articulo 44', '100.00', 'Efectivo', '100.00'),
(45, 2, 3, 'TICKET45', '2024-08-14', '19:43:21', 'Articulo 45', '100.00', 'Efectivo', '100.00'),
(46, 6, 4, 'TICKET46', '2024-08-14', '19:43:21', 'Articulo 46', '100.00', 'Efectivo', '100.00'),
(47, 4, 2, 'TICKET47', '2024-08-14', '19:43:21', 'Articulo 47', '100.00', 'Efectivo', '100.00'),
(48, 4, 3, 'TICKET48', '2024-08-14', '19:43:21', 'Articulo 48', '100.00', 'Efectivo', '100.00'),
(49, 6, 5, 'TICKET49', '2024-08-14', '19:43:21', 'Articulo 49', '100.00', 'Efectivo', '100.00'),
(50, 6, 3, 'TICKET50', '2024-08-14', '19:43:21', 'Articulo 50', '100.00', 'Efectivo', '100.00'),
(51, 1, 1, 'TICKET51', '2024-08-14', '19:43:21', 'Articulo 51', '100.00', 'Efectivo', '100.00'),
(52, 6, 4, 'TICKET52', '2024-08-14', '19:43:21', 'Articulo 52', '100.00', 'Efectivo', '100.00'),
(53, 1, 3, 'TICKET53', '2024-08-14', '19:43:21', 'Articulo 53', '100.00', 'Efectivo', '100.00'),
(54, 4, 2, 'TICKET54', '2024-08-14', '19:43:21', 'Articulo 54', '100.00', 'Efectivo', '100.00'),
(55, 3, 1, 'TICKET55', '2024-08-14', '19:43:21', 'Articulo 55', '100.00', 'Efectivo', '100.00'),
(56, 4, 6, 'TICKET56', '2024-08-14', '19:43:21', 'Articulo 56', '100.00', 'Efectivo', '100.00'),
(57, 4, 6, 'TICKET57', '2024-08-14', '19:43:21', 'Articulo 57', '100.00', 'Efectivo', '100.00'),
(58, 2, 6, 'TICKET58', '2024-08-14', '19:43:21', 'Articulo 58', '100.00', 'Efectivo', '100.00'),
(59, 5, 6, 'TICKET59', '2024-08-14', '19:43:21', 'Articulo 59', '100.00', 'Efectivo', '100.00'),
(60, 5, 6, 'TICKET60', '2024-08-14', '19:43:21', 'Articulo 60', '100.00', 'Efectivo', '100.00'),
(61, 4, 6, 'TICKET61', '2024-08-14', '19:43:21', 'Articulo 61', '100.00', 'Efectivo', '100.00'),
(62, 6, 1, 'TICKET62', '2024-08-14', '19:43:21', 'Articulo 62', '100.00', 'Efectivo', '100.00'),
(63, 1, 6, 'TICKET63', '2024-08-14', '19:43:21', 'Articulo 63', '100.00', 'Efectivo', '100.00'),
(64, 4, 5, 'TICKET64', '2024-08-14', '19:43:21', 'Articulo 64', '100.00', 'Efectivo', '100.00'),
(65, 3, 4, 'TICKET65', '2024-08-14', '19:43:21', 'Articulo 65', '100.00', 'Efectivo', '100.00'),
(66, 4, 3, 'TICKET66', '2024-08-14', '19:43:21', 'Articulo 66', '100.00', 'Efectivo', '100.00'),
(67, 1, 3, 'TICKET67', '2024-08-14', '19:43:21', 'Articulo 67', '100.00', 'Efectivo', '100.00'),
(68, 4, 2, 'TICKET68', '2024-08-14', '19:43:21', 'Articulo 68', '100.00', 'Efectivo', '100.00'),
(69, 3, 1, 'TICKET69', '2024-08-14', '19:43:21', 'Articulo 69', '100.00', 'Efectivo', '100.00'),
(70, 6, 3, 'TICKET70', '2024-08-14', '19:43:21', 'Articulo 70', '100.00', 'Efectivo', '100.00'),
(71, 6, 5, 'TICKET71', '2024-08-14', '19:43:21', 'Articulo 71', '100.00', 'Efectivo', '100.00'),
(72, 3, 3, 'TICKET72', '2024-08-14', '19:43:21', 'Articulo 72', '100.00', 'Efectivo', '100.00'),
(73, 3, 4, 'TICKET73', '2024-08-14', '19:43:21', 'Articulo 73', '100.00', 'Efectivo', '100.00'),
(74, 6, 4, 'TICKET74', '2024-08-14', '19:43:21', 'Articulo 74', '100.00', 'Efectivo', '100.00'),
(75, 2, 5, 'TICKET75', '2024-08-14', '19:43:21', 'Articulo 75', '100.00', 'Efectivo', '100.00'),
(76, 6, 6, 'TICKET76', '2024-08-14', '19:43:21', 'Articulo 76', '100.00', 'Efectivo', '100.00'),
(77, 6, 2, 'TICKET77', '2024-08-14', '19:43:21', 'Articulo 77', '100.00', 'Efectivo', '100.00'),
(78, 4, 6, 'TICKET78', '2024-08-14', '19:43:21', 'Articulo 78', '100.00', 'Efectivo', '100.00'),
(79, 4, 4, 'TICKET79', '2024-08-14', '19:43:21', 'Articulo 79', '100.00', 'Efectivo', '100.00'),
(80, 4, 1, 'TICKET80', '2024-08-14', '19:43:21', 'Articulo 80', '100.00', 'Efectivo', '100.00'),
(81, 6, 5, 'TICKET81', '2024-08-14', '19:43:21', 'Articulo 81', '100.00', 'Efectivo', '100.00'),
(82, 3, 4, 'TICKET82', '2024-08-14', '19:43:21', 'Articulo 82', '100.00', 'Efectivo', '100.00'),
(83, 5, 4, 'TICKET83', '2024-08-14', '19:43:21', 'Articulo 83', '100.00', 'Efectivo', '100.00'),
(84, 4, 6, 'TICKET84', '2024-08-14', '19:43:21', 'Articulo 84', '100.00', 'Efectivo', '100.00'),
(85, 5, 5, 'TICKET85', '2024-08-14', '19:43:21', 'Articulo 85', '100.00', 'Efectivo', '100.00'),
(86, 6, 1, 'TICKET86', '2024-08-14', '19:43:21', 'Articulo 86', '100.00', 'Efectivo', '100.00'),
(87, 6, 2, 'TICKET87', '2024-08-14', '19:43:21', 'Articulo 87', '100.00', 'Efectivo', '100.00'),
(88, 1, 4, 'TICKET88', '2024-08-14', '19:43:21', 'Articulo 88', '100.00', 'Efectivo', '100.00'),
(89, 4, 1, 'TICKET89', '2024-08-14', '19:43:21', 'Articulo 89', '100.00', 'Efectivo', '100.00'),
(90, 3, 4, 'TICKET90', '2024-08-14', '19:43:21', 'Articulo 90', '100.00', 'Efectivo', '100.00'),
(91, 2, 5, 'TICKET91', '2024-08-14', '19:43:21', 'Articulo 91', '100.00', 'Efectivo', '100.00'),
(92, 1, 1, 'TICKET92', '2024-08-14', '19:43:21', 'Articulo 92', '100.00', 'Efectivo', '100.00'),
(93, 4, 1, 'TICKET93', '2024-08-14', '19:43:21', 'Articulo 93', '100.00', 'Efectivo', '100.00'),
(94, 5, 3, 'TICKET94', '2024-08-14', '19:43:21', 'Articulo 94', '100.00', 'Efectivo', '100.00'),
(95, 4, 3, 'TICKET95', '2024-08-14', '19:43:21', 'Articulo 95', '100.00', 'Efectivo', '100.00'),
(96, 4, 3, 'TICKET96', '2024-08-14', '19:43:21', 'Articulo 96', '100.00', 'Efectivo', '100.00'),
(97, 3, 6, 'TICKET97', '2024-08-14', '19:43:21', 'Articulo 97', '100.00', 'Efectivo', '100.00'),
(98, 1, 2, 'TICKET98', '2024-08-14', '19:43:21', 'Articulo 98', '100.00', 'Efectivo', '100.00'),
(99, 6, 3, 'TICKET99', '2024-08-14', '19:43:21', 'Articulo 99', '100.00', 'Efectivo', '100.00'),
(100, 3, 4, 'TICKET100', '2024-08-14', '19:43:21', 'Articulo 100', '100.00', 'Efectivo', '100.00'),
(101, 5, 3, 'TICKET101', '2024-08-14', '19:43:21', 'Articulo 101', '100.00', 'Efectivo', '100.00'),
(102, 3, 2, 'TICKET102', '2024-08-14', '19:43:21', 'Articulo 102', '100.00', 'Efectivo', '100.00'),
(103, 3, 6, 'TICKET103', '2024-08-14', '19:43:21', 'Articulo 103', '100.00', 'Efectivo', '100.00'),
(104, 2, 1, 'TICKET104', '2024-08-14', '19:43:21', 'Articulo 104', '100.00', 'Efectivo', '100.00'),
(105, 4, 3, 'TICKET105', '2024-08-14', '19:43:21', 'Articulo 105', '100.00', 'Efectivo', '100.00'),
(106, 1, 1, 'TICKET106', '2024-08-14', '19:43:21', 'Articulo 106', '100.00', 'Efectivo', '100.00'),
(107, 3, 4, 'TICKET107', '2024-08-14', '19:43:21', 'Articulo 107', '100.00', 'Efectivo', '100.00'),
(108, 5, 3, 'TICKET108', '2024-08-14', '19:43:21', 'Articulo 108', '100.00', 'Efectivo', '100.00'),
(109, 5, 3, 'TICKET109', '2024-08-14', '19:43:21', 'Articulo 109', '100.00', 'Efectivo', '100.00'),
(110, 6, 6, 'TICKET110', '2024-08-14', '19:43:21', 'Articulo 110', '100.00', 'Efectivo', '100.00'),
(111, 5, 4, 'TICKET111', '2024-08-14', '19:43:21', 'Articulo 111', '100.00', 'Efectivo', '100.00'),
(112, 6, 2, 'TICKET112', '2024-08-14', '19:43:21', 'Articulo 112', '100.00', 'Efectivo', '100.00'),
(113, 6, 6, 'TICKET113', '2024-08-14', '19:43:21', 'Articulo 113', '100.00', 'Efectivo', '100.00'),
(114, 5, 1, 'TICKET114', '2024-08-14', '19:43:21', 'Articulo 114', '100.00', 'Efectivo', '100.00'),
(115, 5, 5, 'TICKET115', '2024-08-14', '19:43:21', 'Articulo 115', '100.00', 'Efectivo', '100.00'),
(116, 3, 3, 'TICKET116', '2024-08-14', '19:43:21', 'Articulo 116', '100.00', 'Efectivo', '100.00'),
(117, 6, 4, 'TICKET117', '2024-08-14', '19:43:21', 'Articulo 117', '100.00', 'Efectivo', '100.00'),
(118, 5, 1, 'TICKET118', '2024-08-14', '19:43:21', 'Articulo 118', '100.00', 'Efectivo', '100.00'),
(119, 3, 3, 'TICKET119', '2024-08-14', '19:43:21', 'Articulo 119', '100.00', 'Efectivo', '100.00'),
(120, 1, 3, 'TICKET120', '2024-08-14', '19:43:21', 'Articulo 120', '100.00', 'Efectivo', '100.00'),
(121, 4, 2, 'TICKET121', '2024-08-14', '19:43:21', 'Articulo 121', '100.00', 'Efectivo', '100.00'),
(122, 5, 3, 'TICKET122', '2024-08-14', '19:43:21', 'Articulo 122', '100.00', 'Efectivo', '100.00'),
(123, 3, 4, 'TICKET123', '2024-08-14', '19:43:21', 'Articulo 123', '100.00', 'Efectivo', '100.00'),
(124, 2, 5, 'TICKET124', '2024-08-14', '19:43:21', 'Articulo 124', '100.00', 'Efectivo', '100.00'),
(125, 1, 3, 'TICKET125', '2024-08-14', '19:43:21', 'Articulo 125', '100.00', 'Efectivo', '100.00'),
(126, 3, 4, 'TICKET126', '2024-08-14', '19:43:21', 'Articulo 126', '100.00', 'Efectivo', '100.00'),
(127, 1, 4, 'TICKET127', '2024-08-14', '19:43:21', 'Articulo 127', '100.00', 'Efectivo', '100.00'),
(128, 5, 5, 'TICKET128', '2024-08-14', '19:43:21', 'Articulo 128', '100.00', 'Efectivo', '100.00'),
(129, 2, 1, 'TICKET129', '2024-08-14', '19:43:21', 'Articulo 129', '100.00', 'Efectivo', '100.00'),
(130, 4, 4, 'TICKET130', '2024-08-14', '19:43:21', 'Articulo 130', '100.00', 'Efectivo', '100.00'),
(131, 4, 3, 'TICKET131', '2024-08-14', '19:43:21', 'Articulo 131', '100.00', 'Efectivo', '100.00'),
(132, 5, 6, 'TICKET132', '2024-08-14', '19:43:21', 'Articulo 132', '100.00', 'Efectivo', '100.00'),
(133, 3, 4, 'TICKET133', '2024-08-14', '19:43:21', 'Articulo 133', '100.00', 'Efectivo', '100.00'),
(134, 4, 2, 'TICKET134', '2024-08-14', '19:43:21', 'Articulo 134', '100.00', 'Efectivo', '100.00'),
(135, 4, 5, 'TICKET135', '2024-08-14', '19:43:21', 'Articulo 135', '100.00', 'Efectivo', '100.00'),
(136, 6, 2, 'TICKET136', '2024-08-14', '19:43:21', 'Articulo 136', '100.00', 'Efectivo', '100.00'),
(137, 2, 2, 'TICKET137', '2024-08-14', '19:43:21', 'Articulo 137', '100.00', 'Efectivo', '100.00'),
(138, 5, 3, 'TICKET138', '2024-08-14', '19:43:21', 'Articulo 138', '100.00', 'Efectivo', '100.00'),
(139, 5, 2, 'TICKET139', '2024-08-14', '19:43:21', 'Articulo 139', '100.00', 'Efectivo', '100.00'),
(140, 6, 1, 'TICKET140', '2024-08-14', '19:43:21', 'Articulo 140', '100.00', 'Efectivo', '100.00'),
(141, 6, 6, 'TICKET141', '2024-08-14', '19:43:21', 'Articulo 141', '100.00', 'Efectivo', '100.00'),
(142, 6, 3, 'TICKET142', '2024-08-14', '19:43:21', 'Articulo 142', '100.00', 'Efectivo', '100.00'),
(143, 5, 4, 'TICKET143', '2024-08-14', '19:43:21', 'Articulo 143', '100.00', 'Efectivo', '100.00'),
(144, 5, 6, 'TICKET144', '2024-08-14', '19:43:21', 'Articulo 144', '100.00', 'Efectivo', '100.00'),
(145, 6, 3, 'TICKET145', '2024-08-14', '19:43:21', 'Articulo 145', '100.00', 'Efectivo', '100.00'),
(146, 2, 2, 'TICKET146', '2024-08-14', '19:43:21', 'Articulo 146', '100.00', 'Efectivo', '100.00'),
(147, 6, 6, 'TICKET147', '2024-08-14', '19:43:21', 'Articulo 147', '100.00', 'Efectivo', '100.00'),
(148, 6, 4, 'TICKET148', '2024-08-14', '19:43:21', 'Articulo 148', '100.00', 'Efectivo', '100.00'),
(149, 2, 6, 'TICKET149', '2024-08-14', '19:43:21', 'Articulo 149', '100.00', 'Efectivo', '100.00'),
(150, 2, 6, 'TICKET150', '2024-08-14', '19:43:21', 'Articulo 150', '100.00', 'Efectivo', '100.00'),
(151, 3, 4, 'TICKET151', '2024-08-14', '19:43:21', 'Articulo 151', '100.00', 'Efectivo', '100.00'),
(152, 1, 1, 'TICKET152', '2024-08-14', '19:43:21', 'Articulo 152', '100.00', 'Efectivo', '100.00'),
(153, 1, 2, 'TICKET153', '2024-08-14', '19:43:21', 'Articulo 153', '100.00', 'Efectivo', '100.00'),
(154, 6, 6, 'TICKET154', '2024-08-14', '19:43:21', 'Articulo 154', '100.00', 'Efectivo', '100.00'),
(155, 1, 6, 'TICKET155', '2024-08-14', '19:43:21', 'Articulo 155', '100.00', 'Efectivo', '100.00'),
(156, 6, 6, 'TICKET156', '2024-08-14', '19:43:21', 'Articulo 156', '100.00', 'Efectivo', '100.00'),
(157, 5, 3, 'TICKET157', '2024-08-14', '19:43:21', 'Articulo 157', '100.00', 'Efectivo', '100.00'),
(158, 1, 5, 'TICKET158', '2024-08-14', '19:43:21', 'Articulo 158', '100.00', 'Efectivo', '100.00'),
(159, 6, 6, 'TICKET159', '2024-08-14', '19:43:21', 'Articulo 159', '100.00', 'Efectivo', '100.00'),
(160, 5, 1, 'TICKET160', '2024-08-14', '19:43:21', 'Articulo 160', '100.00', 'Efectivo', '100.00'),
(161, 3, 4, 'TICKET161', '2024-08-14', '19:43:21', 'Articulo 161', '100.00', 'Efectivo', '100.00'),
(162, 5, 4, 'TICKET162', '2024-08-14', '19:43:21', 'Articulo 162', '100.00', 'Efectivo', '100.00'),
(163, 3, 2, 'TICKET163', '2024-08-14', '19:43:21', 'Articulo 163', '100.00', 'Efectivo', '100.00'),
(164, 5, 1, 'TICKET164', '2024-08-14', '19:43:21', 'Articulo 164', '100.00', 'Efectivo', '100.00'),
(165, 1, 1, 'TICKET165', '2024-08-14', '19:43:21', 'Articulo 165', '100.00', 'Efectivo', '100.00'),
(166, 1, 6, 'TICKET166', '2024-08-14', '19:43:21', 'Articulo 166', '100.00', 'Efectivo', '100.00'),
(167, 4, 6, 'TICKET167', '2024-08-14', '19:43:21', 'Articulo 167', '100.00', 'Efectivo', '100.00'),
(168, 5, 1, 'TICKET168', '2024-08-14', '19:43:21', 'Articulo 168', '100.00', 'Efectivo', '100.00'),
(169, 1, 3, 'TICKET169', '2024-08-14', '19:43:21', 'Articulo 169', '100.00', 'Efectivo', '100.00'),
(170, 1, 6, 'TICKET170', '2024-08-14', '19:43:21', 'Articulo 170', '100.00', 'Efectivo', '100.00'),
(171, 3, 2, 'TICKET171', '2024-08-14', '19:43:21', 'Articulo 171', '100.00', 'Efectivo', '100.00'),
(172, 2, 1, 'TICKET172', '2024-08-14', '19:43:21', 'Articulo 172', '100.00', 'Efectivo', '100.00'),
(173, 1, 2, 'TICKET173', '2024-08-14', '19:43:21', 'Articulo 173', '100.00', 'Efectivo', '100.00'),
(174, 4, 3, 'TICKET174', '2024-08-14', '19:43:21', 'Articulo 174', '100.00', 'Efectivo', '100.00'),
(175, 1, 5, 'TICKET175', '2024-08-14', '19:43:21', 'Articulo 175', '100.00', 'Efectivo', '100.00'),
(176, 3, 4, 'TICKET176', '2024-08-14', '19:43:21', 'Articulo 176', '100.00', 'Efectivo', '100.00'),
(177, 4, 3, 'TICKET177', '2024-08-14', '19:43:21', 'Articulo 177', '100.00', 'Efectivo', '100.00'),
(178, 2, 1, 'TICKET178', '2024-08-14', '19:43:21', 'Articulo 178', '100.00', 'Efectivo', '100.00'),
(179, 5, 2, 'TICKET179', '2024-08-14', '19:43:21', 'Articulo 179', '100.00', 'Efectivo', '100.00'),
(180, 5, 1, 'TICKET180', '2024-08-14', '19:43:21', 'Articulo 180', '100.00', 'Efectivo', '100.00'),
(181, 6, 2, 'TICKET181', '2024-08-14', '19:43:21', 'Articulo 181', '100.00', 'Efectivo', '100.00'),
(182, 5, 3, 'TICKET182', '2024-08-14', '19:43:21', 'Articulo 182', '100.00', 'Efectivo', '100.00'),
(183, 5, 2, 'TICKET183', '2024-08-14', '19:43:21', 'Articulo 183', '100.00', 'Efectivo', '100.00'),
(184, 3, 3, 'TICKET184', '2024-08-14', '19:43:21', 'Articulo 184', '100.00', 'Efectivo', '100.00'),
(185, 2, 6, 'TICKET185', '2024-08-14', '19:43:21', 'Articulo 185', '100.00', 'Efectivo', '100.00'),
(186, 1, 3, 'TICKET186', '2024-08-14', '19:43:21', 'Articulo 186', '100.00', 'Efectivo', '100.00'),
(187, 1, 2, 'TICKET187', '2024-08-14', '19:43:21', 'Articulo 187', '100.00', 'Efectivo', '100.00'),
(188, 5, 2, 'TICKET188', '2024-08-14', '19:43:21', 'Articulo 188', '100.00', 'Efectivo', '100.00'),
(189, 2, 5, 'TICKET189', '2024-08-14', '19:43:21', 'Articulo 189', '100.00', 'Efectivo', '100.00'),
(190, 6, 1, 'TICKET190', '2024-08-14', '19:43:21', 'Articulo 190', '100.00', 'Efectivo', '100.00'),
(191, 2, 3, 'TICKET191', '2024-08-14', '19:43:21', 'Articulo 191', '100.00', 'Efectivo', '100.00'),
(192, 2, 4, 'TICKET192', '2024-08-14', '19:43:21', 'Articulo 192', '100.00', 'Efectivo', '100.00'),
(193, 6, 5, 'TICKET193', '2024-08-14', '19:43:21', 'Articulo 193', '100.00', 'Efectivo', '100.00'),
(194, 2, 6, 'TICKET194', '2024-08-14', '19:43:21', 'Articulo 194', '100.00', 'Efectivo', '100.00'),
(195, 6, 5, 'TICKET195', '2024-08-14', '19:43:21', 'Articulo 195', '100.00', 'Efectivo', '100.00'),
(196, 2, 4, 'TICKET196', '2024-08-14', '19:43:21', 'Articulo 196', '100.00', 'Efectivo', '100.00'),
(197, 6, 5, 'TICKET197', '2024-08-14', '19:43:21', 'Articulo 197', '100.00', 'Efectivo', '100.00'),
(198, 2, 5, 'TICKET198', '2024-08-14', '19:43:21', 'Articulo 198', '100.00', 'Efectivo', '100.00'),
(199, 1, 5, 'TICKET199', '2024-08-14', '19:43:21', 'Articulo 199', '100.00', 'Efectivo', '100.00'),
(200, 3, 3, 'TICKET200', '2024-08-14', '19:43:21', 'Articulo 200', '100.00', 'Efectivo', '100.00'),
(201, 4, 1, 'TICKET201', '2024-08-14', '19:43:21', 'Articulo 201', '100.00', 'Efectivo', '100.00'),
(202, 3, 2, 'TICKET202', '2024-08-14', '19:43:21', 'Articulo 202', '100.00', 'Efectivo', '100.00'),
(203, 6, 2, 'TICKET203', '2024-08-14', '19:43:21', 'Articulo 203', '100.00', 'Efectivo', '100.00'),
(204, 6, 5, 'TICKET204', '2024-08-14', '19:43:21', 'Articulo 204', '100.00', 'Efectivo', '100.00'),
(205, 2, 2, 'TICKET205', '2024-08-14', '19:43:21', 'Articulo 205', '100.00', 'Efectivo', '100.00'),
(206, 4, 5, 'TICKET206', '2024-08-14', '19:43:21', 'Articulo 206', '100.00', 'Efectivo', '100.00'),
(207, 1, 5, 'TICKET207', '2024-08-14', '19:43:21', 'Articulo 207', '100.00', 'Efectivo', '100.00'),
(208, 1, 3, 'TICKET208', '2024-08-14', '19:43:21', 'Articulo 208', '100.00', 'Efectivo', '100.00'),
(209, 1, 1, 'TICKET209', '2024-08-14', '19:43:21', 'Articulo 209', '100.00', 'Efectivo', '100.00'),
(210, 3, 6, 'TICKET210', '2024-08-14', '19:43:21', 'Articulo 210', '100.00', 'Efectivo', '100.00'),
(211, 2, 1, 'TICKET211', '2024-08-14', '19:43:21', 'Articulo 211', '100.00', 'Efectivo', '100.00'),
(212, 2, 3, 'TICKET212', '2024-08-14', '19:43:21', 'Articulo 212', '100.00', 'Efectivo', '100.00'),
(213, 3, 1, 'TICKET213', '2024-08-14', '19:43:21', 'Articulo 213', '100.00', 'Efectivo', '100.00'),
(214, 3, 2, 'TICKET214', '2024-08-14', '19:43:21', 'Articulo 214', '100.00', 'Efectivo', '100.00'),
(215, 1, 3, 'TICKET215', '2024-08-14', '19:43:21', 'Articulo 215', '100.00', 'Efectivo', '100.00'),
(216, 5, 6, 'TICKET216', '2024-08-14', '19:43:21', 'Articulo 216', '100.00', 'Efectivo', '100.00'),
(217, 4, 5, 'TICKET217', '2024-08-14', '19:43:21', 'Articulo 217', '100.00', 'Efectivo', '100.00'),
(218, 3, 6, 'TICKET218', '2024-08-14', '19:43:21', 'Articulo 218', '100.00', 'Efectivo', '100.00'),
(219, 4, 2, 'TICKET219', '2024-08-14', '19:43:21', 'Articulo 219', '100.00', 'Efectivo', '100.00'),
(220, 6, 5, 'TICKET220', '2024-08-14', '19:43:21', 'Articulo 220', '100.00', 'Efectivo', '100.00'),
(221, 1, 1, 'TICKET221', '2024-08-14', '19:43:21', 'Articulo 221', '100.00', 'Efectivo', '100.00'),
(222, 2, 4, 'TICKET222', '2024-08-14', '19:43:21', 'Articulo 222', '100.00', 'Efectivo', '100.00'),
(223, 3, 5, 'TICKET223', '2024-08-14', '19:43:21', 'Articulo 223', '100.00', 'Efectivo', '100.00'),
(224, 6, 2, 'TICKET224', '2024-08-14', '19:43:21', 'Articulo 224', '100.00', 'Efectivo', '100.00'),
(225, 3, 4, 'TICKET225', '2024-08-14', '19:43:21', 'Articulo 225', '100.00', 'Efectivo', '100.00'),
(226, 1, 6, 'TICKET226', '2024-08-14', '19:43:21', 'Articulo 226', '100.00', 'Efectivo', '100.00'),
(227, 4, 5, 'TICKET227', '2024-08-14', '19:43:21', 'Articulo 227', '100.00', 'Efectivo', '100.00'),
(228, 3, 3, 'TICKET228', '2024-08-14', '19:43:21', 'Articulo 228', '100.00', 'Efectivo', '100.00'),
(229, 1, 6, 'TICKET229', '2024-08-14', '19:43:21', 'Articulo 229', '100.00', 'Efectivo', '100.00'),
(230, 5, 5, 'TICKET230', '2024-08-14', '19:43:21', 'Articulo 230', '100.00', 'Efectivo', '100.00'),
(231, 3, 2, 'TICKET231', '2024-08-14', '19:43:21', 'Articulo 231', '100.00', 'Efectivo', '100.00'),
(232, 1, 3, 'TICKET232', '2024-08-14', '19:43:21', 'Articulo 232', '100.00', 'Efectivo', '100.00'),
(233, 2, 4, 'TICKET233', '2024-08-14', '19:43:21', 'Articulo 233', '100.00', 'Efectivo', '100.00'),
(234, 1, 6, 'TICKET234', '2024-08-14', '19:43:21', 'Articulo 234', '100.00', 'Efectivo', '100.00'),
(235, 1, 4, 'TICKET235', '2024-08-14', '19:43:21', 'Articulo 235', '100.00', 'Efectivo', '100.00'),
(236, 6, 6, 'TICKET236', '2024-08-14', '19:43:21', 'Articulo 236', '100.00', 'Efectivo', '100.00'),
(237, 6, 5, 'TICKET237', '2024-08-14', '19:43:21', 'Articulo 237', '100.00', 'Efectivo', '100.00'),
(238, 4, 2, 'TICKET238', '2024-08-14', '19:43:21', 'Articulo 238', '100.00', 'Efectivo', '100.00'),
(239, 2, 2, 'TICKET239', '2024-08-14', '19:43:21', 'Articulo 239', '100.00', 'Efectivo', '100.00'),
(240, 3, 3, 'TICKET240', '2024-08-14', '19:43:21', 'Articulo 240', '100.00', 'Efectivo', '100.00'),
(241, 3, 6, 'TICKET241', '2024-08-14', '19:43:21', 'Articulo 241', '100.00', 'Efectivo', '100.00'),
(242, 2, 6, 'TICKET242', '2024-08-14', '19:43:21', 'Articulo 242', '100.00', 'Efectivo', '100.00'),
(243, 6, 6, 'TICKET243', '2024-08-14', '19:43:21', 'Articulo 243', '100.00', 'Efectivo', '100.00'),
(244, 5, 3, 'TICKET244', '2024-08-14', '19:43:21', 'Articulo 244', '100.00', 'Efectivo', '100.00'),
(245, 4, 2, 'TICKET245', '2024-08-14', '19:43:21', 'Articulo 245', '100.00', 'Efectivo', '100.00'),
(246, 3, 3, 'TICKET246', '2024-08-14', '19:43:21', 'Articulo 246', '100.00', 'Efectivo', '100.00'),
(247, 1, 2, 'TICKET247', '2024-08-14', '19:43:21', 'Articulo 247', '100.00', 'Efectivo', '100.00'),
(248, 1, 2, 'TICKET248', '2024-08-14', '19:43:21', 'Articulo 248', '100.00', 'Efectivo', '100.00'),
(249, 6, 1, 'TICKET249', '2024-08-14', '19:43:21', 'Articulo 249', '100.00', 'Efectivo', '100.00'),
(250, 1, 3, 'TICKET250', '2024-08-14', '19:43:21', 'Articulo 250', '100.00', 'Efectivo', '100.00'),
(251, 3, 2, 'TICKET251', '2024-08-14', '19:43:21', 'Articulo 251', '100.00', 'Efectivo', '100.00'),
(252, 4, 2, 'TICKET252', '2024-08-14', '19:43:21', 'Articulo 252', '100.00', 'Efectivo', '100.00'),
(253, 3, 1, 'TICKET253', '2024-08-14', '19:43:21', 'Articulo 253', '100.00', 'Efectivo', '100.00'),
(254, 3, 5, 'TICKET254', '2024-08-14', '19:43:21', 'Articulo 254', '100.00', 'Efectivo', '100.00'),
(255, 5, 5, 'TICKET255', '2024-08-14', '19:43:21', 'Articulo 255', '100.00', 'Efectivo', '100.00'),
(256, 2, 2, 'TICKET256', '2024-08-14', '19:43:21', 'Articulo 256', '100.00', 'Efectivo', '100.00'),
(257, 3, 2, 'TICKET257', '2024-08-14', '19:43:21', 'Articulo 257', '100.00', 'Efectivo', '100.00'),
(258, 6, 5, 'TICKET258', '2024-08-14', '19:43:21', 'Articulo 258', '100.00', 'Efectivo', '100.00'),
(259, 1, 2, 'TICKET259', '2024-08-14', '19:43:21', 'Articulo 259', '100.00', 'Efectivo', '100.00'),
(260, 3, 4, 'TICKET260', '2024-08-14', '19:43:21', 'Articulo 260', '100.00', 'Efectivo', '100.00'),
(261, 3, 1, 'TICKET261', '2024-08-14', '19:43:21', 'Articulo 261', '100.00', 'Efectivo', '100.00'),
(262, 1, 2, 'TICKET262', '2024-08-14', '19:43:21', 'Articulo 262', '100.00', 'Efectivo', '100.00'),
(263, 6, 1, 'TICKET263', '2024-08-14', '19:43:21', 'Articulo 263', '100.00', 'Efectivo', '100.00'),
(264, 2, 3, 'TICKET264', '2024-08-14', '19:43:21', 'Articulo 264', '100.00', 'Efectivo', '100.00'),
(265, 6, 2, 'TICKET265', '2024-08-14', '19:43:21', 'Articulo 265', '100.00', 'Efectivo', '100.00'),
(266, 1, 5, 'TICKET266', '2024-08-14', '19:43:21', 'Articulo 266', '100.00', 'Efectivo', '100.00'),
(267, 3, 1, 'TICKET267', '2024-08-14', '19:43:21', 'Articulo 267', '100.00', 'Efectivo', '100.00'),
(268, 5, 4, 'TICKET268', '2024-08-14', '19:43:21', 'Articulo 268', '100.00', 'Efectivo', '100.00'),
(269, 5, 6, 'TICKET269', '2024-08-14', '19:43:21', 'Articulo 269', '100.00', 'Efectivo', '100.00'),
(270, 1, 3, 'TICKET270', '2024-08-14', '19:43:21', 'Articulo 270', '100.00', 'Efectivo', '100.00');



CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `f_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `usuarios` (`id`, `email`, `password`, `token`, `f_registro`) VALUES
(1, 'gerente@hotel.com', 'password123', 'token1', '2024-08-15 07:43:21'),
(2, 'contralor@hotel.com', 'password123', 'token2', '2024-08-15 07:43:21'),
(3, 'compras@hotel.com', 'password123', 'token3', '2024-08-15 07:43:21'),
(4, 'ama@hotel.com', 'password123', 'token4', '2024-08-15 07:43:21'),
(5, 'sistemas@hotel.com', 'password123', 'token5', '2024-08-15 07:43:21'),
(6, 'mantenimiento@hotel.com', 'password123', 'token6', '2024-08-15 07:43:21');



CREATE TABLE `usuarios_departamentos` (
  `id` bigint(20) NOT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  `departamento_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `usuarios_departamentos` (`id`, `usuario_id`, `departamento_id`) VALUES
(4, 1, 1),
(3, 2, 2),
(2, 3, 3),
(1, 4, 4),
(6, 5, 5),
(5, 6, 6);


ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);


ALTER TABLE `historial_gastos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero_ticket` (`numero_ticket`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `departamento_id` (`departamento_id`),
  ADD KEY `idx_historial_ticket` (`numero_ticket`);


ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `idx_usuarios_email` (`email`);


ALTER TABLE `usuarios_departamentos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_id` (`usuario_id`,`departamento_id`),
  ADD KEY `departamento_id` (`departamento_id`),
  ADD KEY `idx_usuario_departamento` (`usuario_id`,`departamento_id`);


ALTER TABLE `departamentos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `historial_gastos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;


ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `usuarios_departamentos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `historial_gastos`
  ADD CONSTRAINT `historial_gastos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `historial_gastos_ibfk_2` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`);


ALTER TABLE `usuarios_departamentos`
  ADD CONSTRAINT `usuarios_departamentos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `usuarios_departamentos_ibfk_2` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`);
COMMIT;

