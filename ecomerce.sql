-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Jan-2023 às 23:09
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ecomerce`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `categoria` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id`, `categoria`) VALUES
(1, 'Peruca'),
(2, 'Bases'),
(3, 'Maqueagem'),
(4, 'Baton'),
(5, 'Cero');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `Pnome` varchar(80) DEFAULT NULL,
  `Unome` varchar(30) NOT NULL,
  `pais` varchar(50) DEFAULT 'Angola',
  `Nempresa` varchar(70) NOT NULL,
  `endereco` varchar(90) NOT NULL,
  `cidade` varchar(70) NOT NULL,
  `condado` varchar(80) NOT NULL,
  `cep` varchar(89) NOT NULL,
  `email` varchar(80) NOT NULL,
  `telefone` varchar(80) NOT NULL,
  `produtos` varchar(600) DEFAULT NULL,
  `preco` varchar(300) DEFAULT NULL,
  `qtd` varchar(200) DEFAULT NULL,
  `total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `id`, `Pnome`, `Unome`, `pais`, `Nempresa`, `endereco`, `cidade`, `condado`, `cep`, `email`, `telefone`, `produtos`, `preco`, `qtd`, `total`) VALUES
(1, 3, 'Abraao', 'Castelo', 'AO', 'Gtwork', 'Vuana/estalagem', 'Luanda', 'Angola', '6684556', 'abraaocastelo14@gmail.com', '944029977', ',Tv plasma LG', '140000', ',10', 140000),
(2, 3, 'Moisana', 'Castelo', 'AO', 'Gtwork', 'Vuana/estalagem', '', '', '', '', '', ',Tv plasma LG', '140000', ',10', 140000),
(3, 3, 'Paula', 'Castelo', 'AO', 'Primogenito', 'Km 14A', 'Luanda', 'Angola', '3456765', 'abraaocastelo14@gmail.com', '932292101', ',TECNO SPARK 3', '65000', ',15', 65000),
(4, 30, 'Florencia', 'guda', 'AO', 'Makeup', 'viana', 'LUANDA', 'ANGOLA', '4324243', 'florencia@gmail.com', '', ',gel', '2500', ',3', 2500),
(5, 30, 'Florencia', 'guda', 'DZ', 'gtwork', 'Viana', 'luanda', '', '2232132', 'root', '0922340091', ',serum', '8000', ',3', 8000),
(6, 3, '', '', 'AO', '', '', '', '', '', 'root', '', '', '', '', 0),
(7, 3, 'gel', 'sdf', 'AO', 'makeup', 'viana', 'luanda', 'ANGOLA', '', 'root', '930326154', '', '', '', 0),
(8, 3, 'Florencia', 'guda', 'AO', 'Makeup', 'viana', 'LUANDA', 'ANGOLA', '', 'root', '', '', '', '', 0),
(9, 3, 'Florencia', 'jota', 'AO', 'Makeup', 'viana', 'LUANDA', 'ANGOLA', '', 'florencia@gmail.com', '930326154', '', '', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `detalhesproduct`
--

CREATE TABLE `detalhesproduct` (
  `idPedido` int(11) DEFAULT NULL,
  `produto` varchar(600) DEFAULT NULL,
  `preco` varchar(300) DEFAULT NULL,
  `qtd` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL,
  `data_pedido` datetime DEFAULT NULL,
  `data_necessaria` datetime DEFAULT NULL,
  `data_envio` date DEFAULT NULL,
  `via_maritima` enum('sim','nao') DEFAULT 'nao',
  `frete` enum('sim','nao') DEFAULT 'nao',
  `nome_navio` enum('sim','nao') DEFAULT 'nao',
  `endereco_navio` enum('sim','nao') DEFAULT 'nao',
  `modo_entrega` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`id`, `idCliente`, `idFuncionario`, `data_pedido`, `data_necessaria`, `data_envio`, `via_maritima`, `frete`, `nome_navio`, `endereco_navio`, `modo_entrega`) VALUES
(1, 1, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(3, 2, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(4, 3, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(8, 4, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(13, 5, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(17, 6, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(24, 7, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(32, 8, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(41, 9, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(90) DEFAULT NULL,
  `precoUnitario` float DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `estado` varchar(90) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `supplid` int(11) DEFAULT NULL,
  `idCategoria` int(11) DEFAULT NULL,
  `descricao` varchar(289) DEFAULT NULL,
  `imagem` varchar(90) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `precoUnitario`, `qtd`, `estado`, `status`, `supplid`, `idCategoria`, `descricao`, `imagem`, `data`, `total`) VALUES
(18, 'Base', 3000, 44, 'stock', 1, 12345, 2, 'base de cor negra jebfu', '6398844ee547c', '2022-12-13 14:55:26', 132000),
(19, 'contorno', 4000, 2, 'stock', 1, 1234, 3, 'contorno para pele negra', '6398ec5c05ec5', '2022-12-13 22:19:24', 8000),
(20, 'piruca', 40000, 4, 'stock', 1, 1234, 1, 'piruca cacheada com front', '6398eff6b55fc', '2022-12-13 22:34:46', 160000),
(21, 'pinceis', 5000, 4, 'stock', 1, 12345, 3, 'pinceis para delineado', '6398f040e71c1', '2022-12-13 22:36:00', 20000),
(22, 'serum', 8000, 0, 'stock', 1, 5678, 3, 'cerum para rostos', '6398f09012aaf', '2022-12-13 22:37:20', 24000),
(23, 'gel', 2500, 0, 'stock', 1, 6789, 3, 'gel para sombracelhas', '6398f1209773f', '2022-12-13 22:39:44', 7500);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(90) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `password` varchar(90) DEFAULT NULL,
  `permissao` enum('admin','cliente','gerente') DEFAULT 'cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `password`, `permissao`) VALUES
(3, 'Ezequiel Chiemba', 'ezequiel@gmail.com', '142000', 'cliente'),
(30, 'Florencia Fernanda', 'florencia@gmail.com', '123456', 'admin'),
(31, 'Mach', 'mateuschiemba@hotmail.com', '123456', 'cliente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `idVenda` int(11) NOT NULL,
  `produto` varchar(100) NOT NULL,
  `preco` float NOT NULL,
  `data` date NOT NULL,
  `qtd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`idVenda`, `produto`, `preco`, `data`, `qtd`) VALUES
(1, 'gel', 3000, '2022-12-06', 5),
(2, 'gel', 3000, '2022-12-12', 6),
(3, 'base', 3000, '2022-12-06', 4),
(4, 'base', 3000, '2022-12-12', 2),
(5, 'serum', 8000, '2022-12-06', 10),
(6, 'serum', 8000, '2022-12-12', 1),
(7, 'pincel', 2000, '2022-10-10', 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `id` (`id`);

--
-- Índices para tabela `detalhesproduct`
--
ALTER TABLE `detalhesproduct`
  ADD KEY `idPedido` (`idPedido`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idCliente` (`idCliente`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`idVenda`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `idVenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id`) REFERENCES `usuarios` (`id`);

--
-- Limitadores para a tabela `detalhesproduct`
--
ALTER TABLE `detalhesproduct`
  ADD CONSTRAINT `detalhesProduct_ibfk_1` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`id`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
