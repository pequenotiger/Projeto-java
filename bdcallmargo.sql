-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 08-Nov-2018 às 13:49
-- Versão do servidor: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdcallmargo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cliente`
--

CREATE TABLE `tb_cliente` (
  `idClient` int(11) NOT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `telefone` char(12) DEFAULT NULL,
  `telefone2` char(12) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `rg` char(12) DEFAULT NULL,
  `cpf` char(12) DEFAULT NULL,
  `endereco` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produtos`
--

CREATE TABLE `tb_produtos` (
  `id_produto` int(60) NOT NULL,
  `nome_produto` varchar(120) NOT NULL,
  `valor_produto` varchar(10) NOT NULL,
  `dt_validade` varchar(10) NOT NULL,
  `descricao` varchar(270) NOT NULL,
  `alias` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_produtos`
--

INSERT INTO `tb_produtos` (`id_produto`, `nome_produto`, `valor_produto`, `dt_validade`, `descricao`, `alias`) VALUES
(1, 'Cereal Nescaul 300g', '10,00', '01/02/2020', 'Cereal para se comer no café da manhã, te da energia e é muito radical!', NULL),
(2, 'Cereal 300g ', '10,00', '01/03/2012', 'Cereal muito gostoso !', 'alias:'),
(3, 'Banana prata 200g', '5,00', '20/03/2019', 'Banana normal muito madura', 'alias:'),
(5, 'Pêra', '10,00', '01/04/2019', 'Pêra verde', 'pera');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `idUser` int(11) NOT NULL,
  `usuario` varchar(40) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `senha` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`idUser`, `usuario`, `email`, `senha`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin'),
(4, 'Viniciusk', '', ''),
(5, 'igorzao', 'igor@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD PRIMARY KEY (`idClient`);

--
-- Indexes for table `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD PRIMARY KEY (`id_produto`);

--
-- Indexes for table `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_cliente`
--
ALTER TABLE `tb_cliente`
  MODIFY `idClient` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_produtos`
--
ALTER TABLE `tb_produtos`
  MODIFY `id_produto` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
