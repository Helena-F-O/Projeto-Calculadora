-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Abr-2021 às 03:43
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `idcategorias` int(11) NOT NULL,
  `dscategoria` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`idcategorias`, `dscategoria`) VALUES
(1, 'Roupas'),
(2, 'Calçados'),
(3, 'Acessórios'),
(4, 'Cosméticos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `idclientes` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`idclientes`, `nome`, `email`, `senha`) VALUES
(1, 'Ana Clara', 'abc@cba.com', '123'),
(2, 'João Roberto', 'def@fed.com', '321'),
(3, 'Maria Andrade', 'ghi@ihg.com', '456'),
(4, 'Gabriel Santos', 'a123@a321.com', '654'),
(5, 'Elisa Maria', 'b123@b321.com', '789'),
(6, 'Olivia Silveira', 'c123@c321.com', '987'),
(7, 'Luciana Souza', 'd123@d321.com', '890'),
(8, 'Rodrigo Nunes', 'e123@e321.com', '098'),
(9, 'Dora Silva', 'f123@f321.com', '1010'),
(10, 'Sofia Ferreira', 'g123.g321.com', '0101');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidoitens`
--

CREATE TABLE `pedidoitens` (
  `idpedidoitens` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `preco` float NOT NULL,
  `total` float NOT NULL,
  `pedidos_idpedidos` int(11) NOT NULL,
  `produtos_idprodutos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedidoitens`
--

INSERT INTO `pedidoitens` (`idpedidoitens`, `quantidade`, `preco`, `total`, `pedidos_idpedidos`, `produtos_idprodutos`) VALUES
(1, 2, 30, 60, 1, 1),
(2, 1, 99, 99, 1, 5),
(3, 4, 8, 32, 12, 20),
(4, 1, 120, 120, 13, 4),
(5, 1, 89, 89, 5, 6),
(6, 2, 160, 320, 19, 8),
(7, 1, 480, 480, 16, 14),
(8, 2, 150, 300, 8, 18),
(9, 1, 260, 260, 14, 9),
(10, 2, 100, 100, 4, 3),
(11, 1, 580, 580, 10, 13),
(12, 1, 450, 450, 20, 12),
(13, 2, 240, 480, 8, 7),
(14, 2, 160, 320, 14, 8),
(15, 2, 30, 60, 13, 1),
(16, 2, 120, 240, 14, 4),
(17, 1, 150, 150, 18, 18),
(18, 1, 80, 80, 19, 15),
(19, 1, 130, 130, 15, 11),
(20, 1, 60, 60, 11, 16),
(21, 1, 30, 30, 2, 1),
(22, 1, 30, 30, 3, 1),
(23, 1, 60, 60, 6, 2),
(24, 1, 240, 240, 7, 7),
(25, 1, 450, 450, 9, 12),
(26, 1, 240, 240, 17, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `idpedidos` int(11) NOT NULL,
  `data` date NOT NULL,
  `status` varchar(45) NOT NULL,
  `sessao` varchar(45) NOT NULL,
  `clientes_idclientes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`idpedidos`, `data`, `status`, `sessao`, `clientes_idclientes`) VALUES
(1, '2021-04-04', '', '', 1),
(2, '2021-04-04', '', '', 9),
(3, '2021-04-05', '', '', 5),
(4, '2021-04-06', '', '', 4),
(5, '2021-03-24', '', '', 2),
(6, '2021-03-25', '', '', 7),
(7, '2021-03-31', '', '', 3),
(8, '2021-03-31', '', '', 6),
(9, '2021-02-28', '', '', 8),
(10, '2021-03-18', '', '', 10),
(11, '2021-02-14', '', '', 10),
(12, '2021-02-20', '', '', 8),
(13, '2021-04-13', '', '', 1),
(14, '2021-02-26', '', '', 7),
(15, '2021-01-28', '', '', 2),
(16, '2021-04-04', '', '', 2),
(17, '2021-03-16', '', '', 4),
(18, '2021-03-18', '', '', 9),
(19, '2021-04-02', '', '', 5),
(20, '2021-04-04', '', '', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idprodutos` int(11) NOT NULL,
  `dsproduto` varchar(45) DEFAULT NULL,
  `preco` float DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `categorias_idcategorias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idprodutos`, `dsproduto`, `preco`, `quantidade`, `foto`, `categorias_idcategorias`) VALUES
(1, 'Camiseta', 30, 100, '123', 1),
(2, 'Casaco', 60, 250, '321', 1),
(3, 'Jaqueta', 100, 150, '456', 1),
(4, 'Vestido', 120, 340, '654', 1),
(5, 'Calça', 99, 250, '789', 1),
(6, 'Saia', 89, 413, '987', 1),
(7, 'Tênis', 240, 150, '1234', 2),
(8, 'Scarpin', 160, 230, '4321', 2),
(9, 'Bota', 260, 190, '5678', 2),
(10, 'Sandália', 140, 280, '7890', 2),
(11, 'Sapatilha', 130, 230, '4567', 2),
(12, 'Brinco', 450, 200, '7654', 3),
(13, 'Colar', 580, 100, '3456', 3),
(14, 'Óculos', 480, 50, '0987', 3),
(15, 'Chapéu', 80, 40, '3467', 3),
(16, 'Cinto', 60, 80, '12345', 3),
(17, 'Relógio', 260, 180, '56789', 3),
(18, 'Perfume', 150, 213, '567689', 4),
(19, 'Batom', 40, 80, '456788', 4),
(20, 'Esmalte', 8, 140, '12344', 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idcategorias`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idclientes`);

--
-- Índices para tabela `pedidoitens`
--
ALTER TABLE `pedidoitens`
  ADD PRIMARY KEY (`idpedidoitens`),
  ADD KEY `fk_pedidoitens_pedidos1` (`pedidos_idpedidos`),
  ADD KEY `fk_pedidoitens_produtos1` (`produtos_idprodutos`);

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idpedidos`),
  ADD KEY `fk_pedidos_clientes1` (`clientes_idclientes`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idprodutos`),
  ADD KEY `fk_produtos_categorias` (`categorias_idcategorias`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `pedidoitens`
--
ALTER TABLE `pedidoitens`
  ADD CONSTRAINT `fk_pedidoitens_pedidos1` FOREIGN KEY (`pedidos_idpedidos`) REFERENCES `pedidos` (`idpedidos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pedidoitens_produtos1` FOREIGN KEY (`produtos_idprodutos`) REFERENCES `produtos` (`idprodutos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_pedidos_clientes1` FOREIGN KEY (`clientes_idclientes`) REFERENCES `clientes` (`idclientes`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `fk_produtos_categorias` FOREIGN KEY (`categorias_idcategorias`) REFERENCES `categorias` (`idcategorias`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;