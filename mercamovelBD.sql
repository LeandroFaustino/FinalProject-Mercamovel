-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Ago-2024 às 00:05
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mercamovel`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `inventario`
--

CREATE TABLE `inventario` (
  `IDvendedor` int(11) DEFAULT NULL,
  `NomeProduto` varchar(50) DEFAULT NULL,
  `preco` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `inventario`
--

INSERT INTO `inventario` (`IDvendedor`, `NomeProduto`, `preco`) VALUES
(6, 'Acém', 10.49),
(7, 'Acém', 11.95),
(8, 'Acém', 12.99),
(9, 'Acém', 13.45),
(10, 'Acém', 14.96),
(6, 'Asa de Galinha', 1.88),
(7, 'Asa de Galinha', 2.34),
(8, 'Asa de Galinha', 2.8),
(9, 'Asa de Galinha', 3.18),
(10, 'Asa de Galinha', 3.59),
(6, 'Bife do Vazio', 16.75),
(7, 'Bife do Vazio', 14.98),
(8, 'Bife do Vazio', 18.98),
(9, 'Bife do Vazio', 15.99),
(10, 'Bife do Vazio', 17.5),
(6, 'Carré', 7.45),
(7, 'Carré', 8.5),
(8, 'Carré', 7.89),
(9, 'Carré', 6.98),
(10, 'Carré', 8.2),
(6, 'Costoleta', 9.3),
(7, 'Costoleta', 7.9),
(8, 'Costoleta', 9.9),
(9, 'Costoleta', 8.75),
(10, 'Costoleta', 8.2),
(6, 'Coxa de Galinha', 2.75),
(7, 'Coxa de Galinha', 3.29),
(8, 'Coxa de Galinha', 2.2),
(9, 'Coxa de Galinha', 2.95),
(10, 'Coxa de Galinha', 2.5),
(6, 'Entrecosto', 6.45),
(7, 'Entrecosto', 7.5),
(8, 'Entrecosto', 5.9),
(9, 'Entrecosto', 6.75),
(10, 'Entrecosto', 6.1),
(6, 'Frango Inteiro', 3.9),
(7, 'Frango Inteiro', 3.1),
(8, 'Frango Inteiro', 3.75),
(9, 'Frango Inteiro', 2.83),
(10, 'Frango Inteiro', 3.45),
(6, 'Lagarto', 10.2),
(7, 'Lagarto', 9.5),
(8, 'Lagarto', 8.75),
(9, 'Lagarto', 10),
(10, 'Lagarto', 8.49),
(6, 'Lombo de Porco', 6.8),
(7, 'Lombo de Porco', 7.1),
(8, 'Lombo de Porco', 6.2),
(9, 'Lombo de Porco', 5.98),
(10, 'Lombo de Porco', 6.5),
(6, 'Maminha', 7.8),
(7, 'Maminha', 6.9),
(8, 'Maminha', 8.5),
(9, 'Maminha', 7.2),
(10, 'Maminha', 8.98),
(6, 'Peito de Frango', 3.5),
(7, 'Peito de Frango', 3.1),
(8, 'Peito de Frango', 3.8),
(9, 'Peito de Frango', 4),
(10, 'Peito de Frango', 3.3),
(6, 'Pernil', 4.8),
(7, 'Pernil', 3.89),
(8, 'Pernil', 5),
(9, 'Pernil', 4.2),
(10, 'Pernil', 4.95),
(6, 'Picanha', 9.2),
(7, 'Picanha', 8.99),
(8, 'Picanha', 8.8),
(9, 'Picanha', 8.5),
(10, 'Picanha', 9.75),
(16, 'Ananás', 1.91),
(17, 'Ananás', 1.98),
(18, 'Ananás', 2.05),
(19, 'Ananás', 2.12),
(20, 'Ananás', 2.19),
(21, 'Ananás', 2.26),
(22, 'Ananás', 2.33),
(23, 'Ananás', 2.4),
(16, 'Banana', 2.12),
(17, 'Banana', 2.06),
(18, 'Banana', 2),
(19, 'Banana', 1.94),
(20, 'Banana', 1.88),
(21, 'Banana', 1.82),
(22, 'Banana', 1.86),
(23, 'Banana', 1.8),
(16, 'Kiwi', 3.92),
(17, 'Kiwi', 3.82),
(18, 'Kiwi', 3.72),
(19, 'Kiwi', 3.62),
(20, 'Kiwi', 3.52),
(21, 'Kiwi', 3.42),
(22, 'Kiwi', 3.32),
(23, 'Kiwi', 3.22),
(16, 'Laranja', 1.75),
(17, 'Laranja', 1.55),
(18, 'Laranja', 1.85),
(19, 'Laranja', 1.6),
(20, 'Laranja', 1.7),
(21, 'Laranja', 1.5),
(22, 'Laranja', 1.8),
(23, 'Laranja', 1.65),
(16, 'Maçã', 3),
(17, 'Maçã', 2.95),
(18, 'Maçã', 3.07),
(19, 'Maçã', 2.86),
(20, 'Maçã', 3.02),
(21, 'Maçã', 2.9),
(22, 'Maçã', 2.99),
(23, 'Maçã', 2.93),
(16, 'Manga', 2.15),
(17, 'Manga', 2.5),
(18, 'Manga', 2),
(19, 'Manga', 2.73),
(20, 'Manga', 1.96),
(21, 'Manga', 2.35),
(22, 'Manga', 2.1),
(23, 'Manga', 2.6),
(16, 'Melancia', 1.95),
(17, 'Melancia', 2.3),
(18, 'Melancia', 2),
(19, 'Melancia', 2.15),
(20, 'Melancia', 1.85),
(21, 'Melancia', 2.39),
(22, 'Melancia', 1.8),
(23, 'Melancia', 2.1),
(16, 'Morango', 3.5),
(17, 'Morango', 3.8),
(18, 'Morango', 3.3),
(19, 'Morango', 3.9),
(20, 'Morango', 3.15),
(21, 'Morango', 4),
(22, 'Morango', 3.2),
(23, 'Morango', 3.7),
(16, 'Pêssego', 2.6),
(17, 'Pêssego', 2.15),
(18, 'Pêssego', 3),
(19, 'Pêssego', 2.2),
(20, 'Pêssego', 2.9),
(21, 'Pêssego', 2.1),
(22, 'Pêssego', 2.8),
(23, 'Pêssego', 3.05),
(16, 'Uva', 3.98),
(17, 'Uva', 3.5),
(18, 'Uva', 3.75),
(19, 'Uva', 3.25),
(20, 'Uva', 3.6),
(21, 'Uva', 3.2),
(22, 'Uva', 3.8),
(23, 'Uva', 3.4),
(24, 'Ameixa Seca', 15.5),
(25, 'Ameixa Seca', 14.2),
(26, 'Ameixa Seca', 13.99),
(27, 'Ameixa Seca', 15),
(28, 'Ameixa Seca', 13.5),
(29, 'Ameixa Seca', 15.75),
(30, 'Ameixa Seca', 12.99),
(31, 'Ameixa Seca', 14.8),
(24, 'Amêndoa', 6),
(25, 'Amêndoa', 5.4),
(26, 'Amêndoa', 6.3),
(27, 'Amêndoa', 5.2),
(28, 'Amêndoa', 6.45),
(29, 'Amêndoa', 5.1),
(30, 'Amêndoa', 6.2),
(31, 'Amêndoa', 5.8),
(24, 'Amendoim', 6.2),
(25, 'Amendoim', 5.95),
(26, 'Amendoim', 6),
(27, 'Amendoim', 6.3),
(28, 'Amendoim', 5.98),
(29, 'Amendoim', 6.5),
(30, 'Amendoim', 5.9),
(31, 'Amendoim', 6.1),
(24, 'Avelã', 14.2),
(25, 'Avelã', 13.9),
(26, 'Avelã', 14.5),
(27, 'Avelã', 13.95),
(28, 'Avelã', 14.75),
(29, 'Avelã', 14),
(30, 'Avelã', 13.8),
(31, 'Avelã', 14.3),
(24, 'Caju', 7.8),
(25, 'Caju', 7.2),
(26, 'Caju', 7.95),
(27, 'Caju', 7.1),
(28, 'Caju', 7.6),
(29, 'Caju', 7.3),
(30, 'Caju', 7.5),
(31, 'Caju', 7),
(24, 'Figo Seco', 10.5),
(25, 'Figo Seco', 9.8),
(26, 'Figo Seco', 11.1),
(27, 'Figo Seco', 9.9),
(28, 'Figo Seco', 11),
(29, 'Figo Seco', 9.5),
(30, 'Figo Seco', 10.9),
(31, 'Figo Seco', 10),
(24, 'Noz', 3.7),
(25, 'Noz', 3.5),
(26, 'Noz', 3.9),
(27, 'Noz', 3.65),
(28, 'Noz', 3.85),
(29, 'Noz', 3.55),
(30, 'Noz', 3.8),
(31, 'Noz', 3.6),
(24, 'Pêssego Seco', 13),
(25, 'Pêssego Seco', 12.95),
(26, 'Pêssego Seco', 13.3),
(27, 'Pêssego Seco', 12.9),
(28, 'Pêssego Seco', 13.2),
(29, 'Pêssego Seco', 13.1),
(30, 'Pêssego Seco', 13.35),
(31, 'Pêssego Seco', 13.05),
(24, 'Pinhão', 90),
(25, 'Pinhão', 85.5),
(26, 'Pinhão', 79.8),
(27, 'Pinhão', 92),
(28, 'Pinhão', 81.2),
(29, 'Pinhão', 88.75),
(30, 'Pinhão', 80.9),
(31, 'Pinhão', 89.5),
(24, 'Pistachio', 17.2),
(25, 'Pistachio', 16.95),
(26, 'Pistachio', 17.35),
(27, 'Pistachio', 17),
(28, 'Pistachio', 16.9),
(29, 'Pistachio', 17.45),
(30, 'Pistachio', 17.1),
(31, 'Pistachio', 17.25),
(48, 'Atum', 8.6),
(49, 'Atum', 8.2),
(50, 'Atum', 8.9),
(51, 'Atum', 8.3),
(52, 'Atum', 9),
(53, 'Atum', 8.1),
(48, 'Bacalhau', 11),
(49, 'Bacalhau', 10.8),
(50, 'Bacalhau', 10.35),
(51, 'Bacalhau', 11.1),
(52, 'Bacalhau', 10.6),
(53, 'Bacalhau', 11.2),
(48, 'Camarão', 15),
(49, 'Camarão', 14.5),
(50, 'Camarão', 15.6),
(51, 'Camarão', 14.7),
(52, 'Camarão', 15.3),
(53, 'Camarão', 14.15),
(48, 'Lagosta', 42),
(49, 'Lagosta', 41.2),
(50, 'Lagosta', 40.7),
(51, 'Lagosta', 42.5),
(52, 'Lagosta', 41.8),
(53, 'Lagosta', 42.9),
(48, 'Linguado', 29.5),
(49, 'Linguado', 28.8),
(50, 'Linguado', 29.95),
(51, 'Linguado', 28.9),
(52, 'Linguado', 29.7),
(53, 'Linguado', 28.7),
(48, 'Mexilhão', 2.6),
(49, 'Mexilhão', 2.3),
(50, 'Mexilhão', 2.9),
(51, 'Mexilhão', 2.2),
(52, 'Mexilhão', 3),
(53, 'Mexilhão', 2.1),
(48, 'Polvo', 12.5),
(49, 'Polvo', 11.8),
(50, 'Polvo', 13),
(51, 'Polvo', 11.3),
(52, 'Polvo', 12.9),
(53, 'Polvo', 11),
(48, 'Robalo', 24),
(49, 'Robalo', 23.4),
(50, 'Robalo', 23.9),
(51, 'Robalo', 23.2),
(52, 'Robalo', 24.5),
(53, 'Robalo', 23.15),
(48, 'Salmão', 10.2),
(49, 'Salmão', 9.7),
(50, 'Salmão', 10.8),
(51, 'Salmão', 9.6),
(52, 'Salmão', 10.95),
(53, 'Salmão', 9.5),
(48, 'Sardinha', 5.1),
(49, 'Sardinha', 5),
(50, 'Sardinha', 5.4),
(51, 'Sardinha', 5.2),
(52, 'Sardinha', 5.3),
(53, 'Sardinha', 4.98),
(40, 'Abóbora', 1.3),
(41, 'Abóbora', 1.2),
(42, 'Abóbora', 1.49),
(43, 'Abóbora', 1.1),
(44, 'Abóbora', 1.4),
(45, 'Abóbora', 1.09),
(46, 'Abóbora', 1.35),
(47, 'Abóbora', 1.25),
(40, 'Alface', 1.7),
(41, 'Alface', 1.55),
(42, 'Alface', 1.9),
(43, 'Alface', 1.6),
(44, 'Alface', 2),
(45, 'Alface', 1.5),
(46, 'Alface', 1.85),
(47, 'Alface', 1.65),
(40, 'Batata', 2.5),
(41, 'Batata', 2.2),
(42, 'Batata', 2.8),
(43, 'Batata', 2.3),
(44, 'Batata', 2.9),
(45, 'Batata', 2.1),
(46, 'Batata', 2.7),
(47, 'Batata', 2.4),
(40, 'Brócolos', 2.3),
(41, 'Brócolos', 2.2),
(42, 'Brócolos', 2.35),
(43, 'Brócolos', 2.25),
(44, 'Brócolos', 2.4),
(45, 'Brócolos', 2.15),
(46, 'Brócolos', 2.3),
(47, 'Brócolos', 2.2),
(40, 'Cenouras', 1.3),
(41, 'Cenouras', 1.2),
(42, 'Cenouras', 1.35),
(43, 'Cenouras', 1.1),
(44, 'Cenouras', 1.4),
(45, 'Cenouras', 1.09),
(46, 'Cenouras', 1.25),
(47, 'Cenouras', 1.15),
(40, 'Couve-Flor', 2.4),
(41, 'Couve-Flor', 2.3),
(42, 'Couve-Flor', 2.45),
(43, 'Couve-Flor', 2.25),
(44, 'Couve-Flor', 2.49),
(45, 'Couve-Flor', 2.2),
(46, 'Couve-Flor', 2.35),
(47, 'Couve-Flor', 2.28),
(40, 'Ervilha', 3.8),
(41, 'Ervilha', 3.7),
(42, 'Ervilha', 3.95),
(43, 'Ervilha', 3.65),
(44, 'Ervilha', 4),
(45, 'Ervilha', 3.66),
(46, 'Ervilha', 3.85),
(47, 'Ervilha', 3.72),
(40, 'Espinafre', 1.9),
(41, 'Espinafre', 1.75),
(42, 'Espinafre', 2.05),
(43, 'Espinafre', 1.7),
(44, 'Espinafre', 2.15),
(45, 'Espinafre', 1.6),
(46, 'Espinafre', 2),
(47, 'Espinafre', 1.8),
(40, 'Grelos', 3.2),
(41, 'Grelos', 3.1),
(42, 'Grelos', 3.3),
(43, 'Grelos', 3.05),
(44, 'Grelos', 3.5),
(45, 'Grelos', 3),
(46, 'Grelos', 3.4),
(47, 'Grelos', 3.15),
(40, 'Nabo', 1.8),
(41, 'Nabo', 1.7),
(42, 'Nabo', 1.85),
(43, 'Nabo', 1.65),
(44, 'Nabo', 1.95),
(45, 'Nabo', 1.6),
(46, 'Nabo', 1.9),
(47, 'Nabo', 1.75),
(40, 'Pepino', 1.2),
(41, 'Pepino', 1.1),
(42, 'Pepino', 1.25),
(43, 'Pepino', 1.05),
(44, 'Pepino', 1.3),
(45, 'Pepino', 1.04),
(46, 'Pepino', 1.15),
(47, 'Pepino', 1.18),
(40, 'Tomate', 1.85),
(41, 'Tomate', 1.8),
(42, 'Tomate', 1.9),
(43, 'Tomate', 1.78),
(44, 'Tomate', 1.98),
(45, 'Tomate', 1.75),
(46, 'Tomate', 1.88),
(47, 'Tomate', 1.82),
(54, 'Ração: Canários', 2.6),
(55, 'Ração: Canários', 2.2),
(56, 'Ração: Canários', 2.75),
(57, 'Ração: Canários', 2.3),
(58, 'Ração: Canários', 2.5),
(54, 'Ração: Cão Adulto', 8.9),
(55, 'Ração: Cão Adulto', 8.4),
(56, 'Ração: Cão Adulto', 8.7),
(57, 'Ração: Cão Adulto', 9),
(58, 'Ração: Cão Adulto', 8.2),
(54, 'Ração: Cão Júnior', 6.5),
(55, 'Ração: Cão Júnior', 6.3),
(56, 'Ração: Cão Júnior', 6.4),
(57, 'Ração: Cão Júnior', 6.55),
(58, 'Ração: Cão Júnior', 6.25),
(54, 'Ração: Cão Sênior', 4.8),
(55, 'Ração: Cão Sênior', 4.3),
(56, 'Ração: Cão Sênior', 5.1),
(57, 'Ração: Cão Sênior', 4.5),
(58, 'Ração: Cão Sênior', 5.4),
(54, 'Ração: Gato Adulto', 4.8),
(55, 'Ração: Gato Adulto', 4.2),
(56, 'Ração: Gato Adulto', 4.9),
(57, 'Ração: Gato Adulto', 4.1),
(58, 'Ração: Gato Adulto', 5),
(54, 'Ração: Gato Castrado', 5.9),
(55, 'Ração: Gato Castrado', 5.35),
(56, 'Ração: Gato Castrado', 6.2),
(57, 'Ração: Gato Castrado', 5.45),
(58, 'Ração: Gato Castrado', 6.43),
(54, 'Ração: Gato Júnior', 6.5),
(55, 'Ração: Gato Júnior', 6.3),
(56, 'Ração: Gato Júnior', 6.4),
(57, 'Ração: Gato Júnior', 6.2),
(58, 'Ração: Gato Júnior', 6.7),
(54, 'Ração: Pássaro Exótico', 6.95),
(55, 'Ração: Pássaro Exótico', 7.1),
(56, 'Ração: Pássaro Exótico', 6.8),
(57, 'Ração: Pássaro Exótico', 7.25),
(58, 'Ração: Pássaro Exótico', 6.7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `NomeProduto` varchar(50) NOT NULL,
  `nomeTipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`NomeProduto`, `nomeTipo`) VALUES
('Acém', 'Carnes'),
('Asa de Galinha', 'Carnes'),
('Bife do Vazio', 'Carnes'),
('Carré', 'Carnes'),
('Costoleta', 'Carnes'),
('Coxa de Galinha', 'Carnes'),
('Entrecosto', 'Carnes'),
('Frango Inteiro', 'Carnes'),
('Joelho', 'Carnes'),
('Lagarto', 'Carnes'),
('Lombo de Porco', 'Carnes'),
('Maminha', 'Carnes'),
('Peito de Frango', 'Carnes'),
('Pernil', 'Carnes'),
('Picanha', 'Carnes'),
('Cravo', 'Flores'),
('Girassol', 'Flores'),
('Lírio', 'Flores'),
('Margarida', 'Flores'),
('Orquídea', 'Flores'),
('Rosa', 'Flores'),
('Tulipa', 'Flores'),
('Ananás', 'Fruta'),
('Banana', 'Fruta'),
('Kiwi', 'Fruta'),
('Laranja', 'Fruta'),
('Maçã', 'Fruta'),
('Manga', 'Fruta'),
('Melancia', 'Fruta'),
('Morango', 'Fruta'),
('Pêssego', 'Fruta'),
('Uva', 'Fruta'),
('Ameixa Seca', 'Frutos Secos'),
('Amêndoa', 'Frutos Secos'),
('Amendoim', 'Frutos Secos'),
('Avelã', 'Frutos Secos'),
('Caju', 'Frutos Secos'),
('Figo Seco', 'Frutos Secos'),
('Noz', 'Frutos Secos'),
('Pêssego Seco', 'Frutos Secos'),
('Pinhão', 'Frutos Secos'),
('Pistachio', 'Frutos Secos'),
('Abóbora', 'Horticulas'),
('Alface', 'Horticulas'),
('Batata', 'Horticulas'),
('Brócolos', 'Horticulas'),
('Cenouras', 'Horticulas'),
('Couve-Flor', 'Horticulas'),
('Ervilha', 'Horticulas'),
('Espinafre', 'Horticulas'),
('Grelos', 'Horticulas'),
('Nabo', 'Horticulas'),
('Pepino', 'Horticulas'),
('Tomate', 'Horticulas'),
('Atum', 'Peixe'),
('Bacalhau', 'Peixe'),
('Camarão', 'Peixe'),
('Lagosta', 'Peixe'),
('Linguado', 'Peixe'),
('Mexilhão', 'Peixe'),
('Polvo', 'Peixe'),
('Robalo', 'Peixe'),
('Salmão', 'Peixe'),
('Sardinha', 'Peixe'),
('Ração: Canários', 'Ração'),
('Ração: Cão Adulto', 'Ração'),
('Ração: Cão Júnior', 'Ração'),
('Ração: Cão Sênior', 'Ração'),
('Ração: Gato Adulto', 'Ração'),
('Ração: Gato Castrado', 'Ração'),
('Ração: Gato Júnior', 'Ração'),
('Ração: Pássaro Exótico', 'Ração');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoproduto`
--

CREATE TABLE `tipoproduto` (
  `nomeTipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tipoproduto`
--

INSERT INTO `tipoproduto` (`nomeTipo`) VALUES
('Carnes'),
('Flores'),
('Fruta'),
('Frutos Secos'),
('Horticulas'),
('Peixe'),
('Ração');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor`
--

CREATE TABLE `vendedor` (
  `id` int(11) NOT NULL,
  `nomeVendedor` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `TipoVendedor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `vendedor`
--

INSERT INTO `vendedor` (`id`, `nomeVendedor`, `senha`, `TipoVendedor`) VALUES
(6, 'João Silva', 'senha123', 'Carnes'),
(7, 'Maria Santos', 'senha456', 'Carnes'),
(8, 'Carlos Oliveira', 'senha789', 'Carnes'),
(9, 'Ana Pereira', 'senhaabc', 'Carnes'),
(10, 'Pedro Costa', 'senhadef', 'Carnes'),
(11, 'Luís Fernandes', 'senha987', 'Flores'),
(12, 'Carla Ribeiro', 'senha654', 'Flores'),
(13, 'Ricardo Alves', 'senha321', 'Flores'),
(14, 'Sofia Martins', 'senhaxyz', 'Flores'),
(15, 'Tiago Gomes', 'senhaopq', 'Flores'),
(16, 'Paulo Sousa', 'fruta123', 'Fruta'),
(17, 'Rita Nunes', 'fruta456', 'Fruta'),
(18, 'Miguel Costa', 'fruta789', 'Fruta'),
(19, 'Ana Dias', 'frutaabc', 'Fruta'),
(20, 'João Almeida', 'frutadef', 'Fruta'),
(21, 'Marta Lopes', 'frutaghij', 'Fruta'),
(22, 'Carlos Silva', 'frutaklm', 'Fruta'),
(23, 'Fernanda Rocha', 'frutanop', 'Fruta'),
(24, 'Sandro Sousa', 'secos123', 'Frutos Secos'),
(25, 'Susana Nunes', 'secos456', 'Frutos Secos'),
(26, 'Paulo Costa', 'secos789', 'Frutos Secos'),
(27, 'Teresa Dias', 'secosabc', 'Frutos Secos'),
(28, 'Joel Almeida', 'secosdef', 'Frutos Secos'),
(29, 'Mariana Lopes', 'secosghij', 'Frutos Secos'),
(30, 'Edgar Silva', 'secosklm', 'Frutos Secos'),
(31, 'Fernanda Carvalho', 'secosnop', 'Frutos Secos'),
(40, 'Ana Silva', 'horticulas123', 'Horticulas'),
(41, 'Pedro Santos', 'horticulas456', 'Horticulas'),
(42, 'Marta Oliveira', 'horticulas789', 'Horticulas'),
(43, 'Rui Fernandes', 'horticulasabc', 'Horticulas'),
(44, 'Sofia Costa', 'horticulasdef', 'Horticulas'),
(45, 'Carlos Pereira', 'horticulasghij', 'Horticulas'),
(46, 'Inês Rodrigues', 'horticulasklm', 'Horticulas'),
(47, 'Hugo Martins', 'horticulasnop', 'Horticulas'),
(48, 'Ricardo Pereira', 'peixe123', 'Peixe'),
(49, 'Carla Santos', 'peixe456', 'Peixe'),
(50, 'Luís Costa', 'peixe789', 'Peixe'),
(51, 'Mónica Ferreira', 'peixeabc', 'Peixe'),
(52, 'Jorge Martins', 'peixedef', 'Peixe'),
(53, 'Andreia Silva', 'peixeghi', 'Peixe'),
(54, 'Patrícia Oliveira', 'racao123', 'Ração'),
(55, 'Hélder Sousa', 'racao456', 'Ração'),
(56, 'Andreia Mendes', 'racao789', 'Ração'),
(57, 'Bruno Santos', 'racaoabc', 'Ração'),
(58, 'Margarida Ferreira', 'racaodef', 'Ração');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `inventario`
--
ALTER TABLE `inventario`
  ADD KEY `IDvendedor` (`IDvendedor`),
  ADD KEY `NomeProduto` (`NomeProduto`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`NomeProduto`),
  ADD KEY `nomeTipo` (`nomeTipo`);

--
-- Índices para tabela `tipoproduto`
--
ALTER TABLE `tipoproduto`
  ADD PRIMARY KEY (`nomeTipo`);

--
-- Índices para tabela `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tipovendedor` (`TipoVendedor`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`IDvendedor`) REFERENCES `vendedor` (`id`),
  ADD CONSTRAINT `inventario_ibfk_2` FOREIGN KEY (`NomeProduto`) REFERENCES `produto` (`NomeProduto`);

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`nomeTipo`) REFERENCES `tipoproduto` (`nomeTipo`);

--
-- Limitadores para a tabela `vendedor`
--
ALTER TABLE `vendedor`
  ADD CONSTRAINT `fk_tipovendedor` FOREIGN KEY (`TipoVendedor`) REFERENCES `tipoproduto` (`nomeTipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
