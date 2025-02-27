-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/02/2025 às 16:00
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
-- Banco de dados: `catalogo_de_filmes`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `detalhes`
--

CREATE TABLE `detalhes` (
  `id` int(11) NOT NULL,
  `duracao` int(11) NOT NULL,
  `sinopse` text NOT NULL,
  `bilheteria` decimal(16,2) DEFAULT NULL,
  `orcamento` decimal(16,2) DEFAULT NULL,
  `filme_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `detalhes`
--

INSERT INTO `detalhes` (`id`, `duracao`, `sinopse`, `bilheteria`, `orcamento`, `filme_id`) VALUES
(1, 154, 'Ano de 2004. Maria e Henry (Naomi Watts e Ewan McGregor) decidem passar as férias de Natal na Tailândia com os três filhos de ambos', NULL, 45000000.00, 5),
(2, 120, 'Spencer volta ao mundo fantástico de Jumanji. Os amigos Martha, Fridge e Bethany entram no jogo e tentam trazê-lo para casa. A turma descobre ainda mais obstáculos e perigos a serem superados.', NULL, 950000000.00, 4),
(3, 180, 'Após Thanos eliminar metade das criaturas vivas, os Vingadores têm de lidar com a perda de amigos e entes queridos.', NULL, 3560000000.00, 6),
(4, 81, 'Vinte mil anos atrás, num mundo coberto de gelo, o mamute Manfred e a preguiça Sid resgatam um bebê humano órfão.', NULL, 600000000.00, 2),
(5, 110, 'O traficante David precisa ir ao México pegar um carregamento de maconha.', NULL, 370000000.00, 3),
(6, 112, 'Os investigadores paranormais Ed e Lorraine Warren trabalham para ajudar a família aterrorizada.', NULL, 200000000.00, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `filmes`
--

CREATE TABLE `filmes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `lancamento` date NOT NULL,
  `genero_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `filmes`
--

INSERT INTO `filmes` (`id`, `titulo`, `lancamento`, `genero_id`) VALUES
(1, 'Familia Do Bagulho', '2013-09-27', 3),
(2, 'Invocação do mal ', '2013-09-13', 1),
(3, 'Era Do gelo', '2002-03-22', 2),
(4, 'Vingadores O Ultimato', '2019-04-25', 6),
(5, 'Jumanji', '2019-12-05', 4),
(6, 'O impossivel', '2012-12-21', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `generos`
--

INSERT INTO `generos` (`id`, `nome`) VALUES
(1, 'Terror'),
(2, 'Animação'),
(3, 'Comédia'),
(4, 'Aventura'),
(5, 'Suspense'),
(6, 'Ficção Cientifica'),
(7, 'Suspense Infantil');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `detalhes`
--
ALTER TABLE `detalhes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filme_id` (`filme_id`);

--
-- Índices de tabela `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_filmes_generos` (`genero_id`);

--
-- Índices de tabela `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `detalhes`
--
ALTER TABLE `detalhes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `detalhes`
--
ALTER TABLE `detalhes`
  ADD CONSTRAINT `fk_filme_detalhes` FOREIGN KEY (`filme_id`) REFERENCES `filmes` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `filmes`
--
ALTER TABLE `filmes`
  ADD CONSTRAINT `fk_filmes_generos` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
