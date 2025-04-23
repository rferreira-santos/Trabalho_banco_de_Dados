-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 23-Abr-2025 às 22:37
-- Versão do servidor: 5.7.36
-- versão do PHP: 8.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `eventos_universidade`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `certificado`
--

CREATE TABLE `certificado` (
  `data_hora` varchar(18) NOT NULL,
  `cpf_participante` varchar(15) NOT NULL,
  `nome_local` varchar(30) NOT NULL,
  `nome_evento` varchar(30) NOT NULL,
  `cpf_palestrante` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `certificado`
--

INSERT INTO `certificado` (`data_hora`, `cpf_participante`, `nome_local`, `nome_evento`, `cpf_palestrante`) VALUES
('23/05/2025 10:00', '06425964782', 'auditório São Paulo', 'Business Intelligence', '50956446574'),
('23/05/2025 10:00', '12344532597', 'auditório Rio De Janeiro', 'Saúde Mental', '85217356421'),
('23/05/2025 10:00', '06258466900', 'auditório Bahia', 'Direito do trabalho', '88023461273'),
('23/05/2025 10:00', '06812547899', 'auditório Acre', 'Aquecimento global', '81951656130'),
('23/05/2025 10:00', '12865899720', 'auditório Minas Gerais', 'Mídias Sociais', '57774473173');

-- --------------------------------------------------------

--
-- Estrutura da tabela `evento`
--

CREATE TABLE `evento` (
  `nome_evento` varchar(30) NOT NULL,
  `data_hora` varchar(20) NOT NULL,
  `nome_local` varchar(30) NOT NULL,
  `cpf_palestrante` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `evento`
--

INSERT INTO `evento` (`nome_evento`, `data_hora`, `nome_local`, `cpf_palestrante`) VALUES
('Aquecimento global', '20/05/2025 10:00', 'auditório Acre', '81951656130'),
('Business Intelligence', '20/05/2025 10:00', 'auditório São Paulo', '50956446574'),
('Direito do trabalho', '20/05/2025 10:00', 'auditório Bahia', '88023461273'),
('Mídias Sociais', '20/05/2025 10:00', 'auditório Minas Gerais', '57774473173'),
('Saúde Mental', '20/05/2025 10:00', 'auditório Rio De Janeiro', '85217356421');

-- --------------------------------------------------------

--
-- Estrutura da tabela `inscricao`
--

CREATE TABLE `inscricao` (
  `id_inscricao` int(11) NOT NULL,
  `nome_evento` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `data_hora` varchar(18) NOT NULL,
  `cpf_participante` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `inscricao`
--

INSERT INTO `inscricao` (`id_inscricao`, `nome_evento`, `status`, `data_hora`, `cpf_participante`) VALUES
(1, 'Business Intelligence', 'Inscrito', '20/05/2025 10:00', '06425964782'),
(2, 'Saúde Mental', 'Pendente', '20/05/2025 10:00', '12344532597'),
(3, 'Direito do trabalho', 'Inscrito', '20/05/2025 10:00', '06258466900'),
(4, 'Aquecimento global', 'Inscrito', '20/05/2025 10:00', '06812547899'),
(5, 'Mídias Sociais', 'Pendente', '20/05/2025 10:00', '12865899720');

-- --------------------------------------------------------

--
-- Estrutura da tabela `locais`
--

CREATE TABLE `locais` (
  `capacidade` varchar(10) NOT NULL,
  `Recursos` varchar(300) NOT NULL,
  `nome_local` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `locais`
--

INSERT INTO `locais` (`capacidade`, `Recursos`, `nome_local`) VALUES
('50', 'microfone com fio e ar condicionado', 'auditório Acre'),
('100', 'microfone, jogo de luzes e ar condicionado', 'auditório Bahia'),
('300', '2 microfone sem fio, ar condicionado, banco acolchoado e camarim e ar quente', 'auditório Minas Gerais'),
('150', 'microfone sem fio, ar condicionado e banco acolchoado', 'auditório Rio De Janeiro'),
('250', 'microfone sem fio, ar condicionado, banco acolchoado e camarim', 'auditório São Paulo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `palestrante`
--

CREATE TABLE `palestrante` (
  `cpf_palestrante` varchar(15) NOT NULL,
  `mini_curriculo` varchar(400) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `telefone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `palestrante`
--

INSERT INTO `palestrante` (`cpf_palestrante`, `mini_curriculo`, `nome`, `telefone`) VALUES
('50956446574', 'Especialista em tecnologia da informação com ampla experiência em cloud computing. De perfil dinâmico e analítico', 'Cauê Heitor Ryan Mendes', '21992080548'),
('57774473173', 'Profissional de marketing com +8 anos de experiência em estratégias de branding, marketing digital e crescimento de marcas', 'Severino Marcos Vinicius Levi Costa', '21986367116'),
('81951656130', 'Geógrafo e pesquisador com expertise em mudanças climáticas e gestão ambiental', 'Rafael Joaquim Heitor Cavalcanti', '2198798-6716'),
('85217356421', 'Psicólogo responsável com mais de 4 anos de experiência em psicologia clínica e educacional', 'Otávio Daniel Moura', '87995240348'),
('88023461273', 'advogado e professor de direito da Universidade Presbiteriana Mackenzie. Em seus mais de 30 anos atuando no setor jurídico', 'Daniel Mário Moreira', '35983662320');

-- --------------------------------------------------------

--
-- Estrutura da tabela `participante`
--

CREATE TABLE `participante` (
  `nome` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `instituicao` varchar(25) NOT NULL,
  `cpf_participante` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `participante`
--

INSERT INTO `participante` (`nome`, `email`, `telefone`, `instituicao`, `cpf_participante`) VALUES
('Maicon de Araujo', 'mmaicon@gmail.com', '2199984528', 'UFRJ', '06258466900'),
('Fernando Alberto', 'fernando@gmail.com', '21975159402', 'UVA', '06425964782'),
('Michele Maria da Silva', 'michele_maria@gmail.com', '62989862554', 'UFRJ', '06812547899'),
('Rogerio dos Santos', 'rogerio@gmail.com', '219785412569', 'UVA', '12344532597'),
('Fernanda Santos dos Santos', 'fernandas@gmail.com', '11966102556', 'ESTACIO', '12865899720');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `certificado`
--
ALTER TABLE `certificado`
  ADD KEY `cpf_participante` (`cpf_participante`),
  ADD KEY `nome_local` (`nome_local`),
  ADD KEY `nome_evento` (`nome_evento`),
  ADD KEY `cpf_palestrante` (`cpf_palestrante`);

--
-- Índices para tabela `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`nome_evento`),
  ADD KEY `nome_local` (`nome_local`),
  ADD KEY `cpf_palestrante` (`cpf_palestrante`);

--
-- Índices para tabela `inscricao`
--
ALTER TABLE `inscricao`
  ADD PRIMARY KEY (`id_inscricao`),
  ADD KEY `cpf_participante` (`cpf_participante`);

--
-- Índices para tabela `locais`
--
ALTER TABLE `locais`
  ADD PRIMARY KEY (`nome_local`);

--
-- Índices para tabela `palestrante`
--
ALTER TABLE `palestrante`
  ADD PRIMARY KEY (`cpf_palestrante`);

--
-- Índices para tabela `participante`
--
ALTER TABLE `participante`
  ADD PRIMARY KEY (`cpf_participante`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `inscricao`
--
ALTER TABLE `inscricao`
  MODIFY `id_inscricao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `certificado`
--
ALTER TABLE `certificado`
  ADD CONSTRAINT `certificado_ibfk_1` FOREIGN KEY (`cpf_participante`) REFERENCES `participante` (`cpf_participante`),
  ADD CONSTRAINT `certificado_ibfk_2` FOREIGN KEY (`nome_local`) REFERENCES `locais` (`nome_local`),
  ADD CONSTRAINT `certificado_ibfk_3` FOREIGN KEY (`nome_evento`) REFERENCES `evento` (`nome_evento`),
  ADD CONSTRAINT `certificado_ibfk_4` FOREIGN KEY (`cpf_palestrante`) REFERENCES `palestrante` (`cpf_palestrante`);

--
-- Limitadores para a tabela `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`nome_local`) REFERENCES `locais` (`nome_local`),
  ADD CONSTRAINT `evento_ibfk_2` FOREIGN KEY (`cpf_palestrante`) REFERENCES `palestrante` (`cpf_palestrante`);

--
-- Limitadores para a tabela `inscricao`
--
ALTER TABLE `inscricao`
  ADD CONSTRAINT `inscricao_ibfk_1` FOREIGN KEY (`cpf_participante`) REFERENCES `participante` (`cpf_participante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
