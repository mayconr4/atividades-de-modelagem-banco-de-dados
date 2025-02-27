-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/02/2025 às 13:31
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `vendas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `detalhes` text DEFAULT NULL,
  `preco` decimal(6,2) NOT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `fabricante_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `detalhes`, `preco`, `quantidade`, `fabricante_id`) VALUES
(1, 'Ultrabook', 'Equipamento de última geração cheio de recursos, e ect e tal...', 3999.45, 7, 2),
(2, 'Tablet Android', 'Tablet com aversão 16 do sistema operacional Android, possui tela de 10 polegadas e armazenamento de 128 GB. Estou sem ideias do que escrever aqui.', 900.00, 10, 5),
(3, 'geladeira', 'Refrigerador frost-free com acessoa á internet', 1999.00, 12, 7),
(5, 'Ipad mini', 'Tablet Apple com tela retina display e bla bla bla e mó bunitinha', 4999.12, 5, 3),
(6, 'Xbox Series S', 'Velocidade e desempenho de ultimá geração', 1999.00, 5, 7),
(7, 'Notebook Motion', 'Intel Dual Core $g8 de RAM, 128GB SSD e Tela 14,1 polegadas', 1213.65, 10, 8),
(8, 'Teclado Gamer', 'Teclado bom pra caramba para jogar.', 300.00, 3, 3),
(9, 'Garrafa Térmica', 'Gela igual o Polo Norte', 156.45, 25, 9),
(10, 'Smartphone Poco X7', 'Celular chique com inteligência artificial chei do bagui chique', 1999.99, 7, 6),
(11, 'SmartTV', 'TV curvada tela de 50 polegadas e acesso ao Netlix.', 1587.12, 15, 6);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_produtos_fabricantes` (`fabricante_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `fk_produtos_fabricantes` FOREIGN KEY (`fabricante_id`) REFERENCES `fabricantes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
