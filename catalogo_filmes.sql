-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Tempo de geração: 06/06/2026 às 21:04
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
-- Banco de dados: `catalogo_filmes`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `filmes`
--

CREATE TABLE `filmes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `genero` varchar(100) NOT NULL,
  `ano` int(11) NOT NULL,
  `sinopse` text DEFAULT NULL,
  `data_criacao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `filmes`
--

INSERT INTO `filmes` (`id`, `titulo`, `genero`, `ano`, `sinopse`, `data_criacao`) VALUES
(1, 'O Poderoso Chefão', 'Drama', 1972, 'A família Corleone...', '2026-06-05 15:56:45'),
(2, 'Matrix', 'Ficção Científica', 1999, 'Um programador descobre a verdade...', '2026-06-05 15:56:45'),
(3, 'Interestelar', 'Ficção Científica', 2014, 'Um grupo de exploradores viaja por um buraco de minhoca...', '2026-06-05 15:56:45'),
(4, 'O Poderoso Chefão', 'Drama', 1972, 'A história da família Corleone, uma das mais poderosas famílias da máfia italiana em Nova York.', '2026-06-05 18:15:56'),
(5, 'Matrix', 'Ficção Científica', 1999, 'Um programador descobre que a realidade é uma simulação criada por máquinas para controlar a humanidade.', '2026-06-05 18:15:56'),
(6, 'Interestelar', 'Ficção Científica', 2014, 'Um grupo de exploradores viaja por um buraco de minhoca em busca de um novo lar para a humanidade.', '2026-06-05 18:15:56'),
(7, 'O Poderoso Chefão', 'Drama', 1972, 'A família Corleone...', '2026-06-05 22:40:47'),
(8, 'Matrix', 'Ficção Científica', 1999, 'Um programador descobre a verdade...', '2026-06-05 22:40:47'),
(9, 'Interestelar', 'Ficção Científica', 2014, 'Um grupo de exploradores viaja...', '2026-06-05 22:40:47'),
(10, 'Vingadores Ultimato', 'Ação', 2019, 'Filme da Marvel', '2026-06-06 18:28:25'),
(11, 'Interestelar', 'Ficção Científica', 2014, 'Viagem pelo espaço', '2026-06-06 18:28:25'),
(12, 'Batman Begins', 'Ação', 2005, 'Origem do Batman', '2026-06-06 18:28:25');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `data_criacao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `data_criacao`) VALUES
(1, 'Admin', 'admin@email.com', '2026-06-05 15:56:45'),
(2, 'João Silva', 'joao@email.com', '2026-06-05 18:15:56'),
(3, 'Maria Souza', 'maria@email.com', '2026-06-05 18:15:56');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
