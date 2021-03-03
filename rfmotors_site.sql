-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 03/03/2021 às 14:39
-- Versão do servidor: 8.0.22
-- Versão do PHP: 7.3.24-(to be removed in future macOS)

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `rfmotors_site`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `banner`
--

CREATE TABLE `banner` (
  `id_banner` int NOT NULL,
  `imagem` longtext,
  `titulo` varchar(100) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `blog_categorias`
--

CREATE TABLE `blog_categorias` (
  `id_blog_categorias` int NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `posicao` int DEFAULT NULL,
  `url_amigavel` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `blog_comentario`
--

CREATE TABLE `blog_comentario` (
  `id_blog_comentario` int NOT NULL,
  `comentario` longtext,
  `data_horario` datetime DEFAULT NULL,
  `id_blog_postagem` int NOT NULL,
  `id_usuario_cliente` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `blog_imagens`
--

CREATE TABLE `blog_imagens` (
  `id_blog_imagens` int NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `blog_postagem`
--

CREATE TABLE `blog_postagem` (
  `id_blog_postagem` int NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `texto` longtext,
  `imagem` longtext,
  `data_criacao` datetime DEFAULT NULL,
  `data_publicacao` datetime DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `url_amigavel` varchar(255) DEFAULT NULL,
  `visualizacoes` int DEFAULT '0',
  `id_usuarios` int NOT NULL,
  `id_blog_subcategorias` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `blog_postagem_galeria`
--

CREATE TABLE `blog_postagem_galeria` (
  `id_blog_postagem_galeria` int NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `imagem` longtext,
  `id_blog_postagem` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `blog_subcategorias`
--

CREATE TABLE `blog_subcategorias` (
  `id_blog_subcategorias` int NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `posicao` int DEFAULT NULL,
  `url_amigavel` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `id_blog_categorias` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cases`
--

CREATE TABLE `cases` (
  `id_cases` int NOT NULL,
  `servico` varchar(255) DEFAULT NULL,
  `arquivo` longtext,
  `imagem` longtext,
  `id_clientes` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_clientes` int NOT NULL,
  `imagem` longtext,
  `descricao` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `telefone` varchar(100) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id_clientes`, `imagem`, `descricao`, `endereco`, `cidade`, `estado`, `telefone`, `link`, `status`) VALUES
(3, '', 'Gabriel Dezan', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `contatos_recebidos`
--

CREATE TABLE `contatos_recebidos` (
  `id_contatos_recebidos` int NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `mensagem` longtext,
  `data_recebimento` datetime DEFAULT NULL,
  `status` int DEFAULT NULL COMMENT '1-Novo\n2-Lido'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `conteudo_personalizado`
--

CREATE TABLE `conteudo_personalizado` (
  `id_conteudo_personalizado` int NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `icone` int DEFAULT NULL COMMENT '0-Não\n1-Sim',
  `imagem` int DEFAULT NULL COMMENT '0-Não\n1-Sim',
  `imagem_largura` varchar(45) DEFAULT NULL,
  `imagem_altura` varchar(45) DEFAULT NULL,
  `texto` int DEFAULT NULL COMMENT '0-Não\n1-Sim',
  `link` int DEFAULT NULL COMMENT '0-Não\n1-Sim',
  `data` int DEFAULT NULL COMMENT '0-Não\n1-Sim',
  `hora` int DEFAULT NULL COMMENT '0-Não\n1-Sim',
  `numero` int DEFAULT NULL COMMENT '0-Não\n1-Sim'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `depoimentos`
--

CREATE TABLE `depoimentos` (
  `id_depoimentos` int NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `texto` longtext,
  `imagem` longtext,
  `id_clientes` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `enderecos`
--

CREATE TABLE `enderecos` (
  `id_enderecos` int NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `mapa` longtext,
  `horario_atendimento` varchar(255) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipe`
--

CREATE TABLE `equipe` (
  `id_equipe` int NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `informacao_adicional` varchar(255) DEFAULT NULL,
  `resumo` varchar(255) DEFAULT NULL,
  `detalhes` longtext,
  `imagem` longtext,
  `destaque` int DEFAULT NULL COMMENT '1-Sim\n0-Não',
  `url_amigavel` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL COMMENT '1-Ativo\n0-Inativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipe_contato`
--

CREATE TABLE `equipe_contato` (
  `id_equipe_contato` int NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `icone` varchar(255) DEFAULT NULL,
  `link` longtext,
  `tipo` int DEFAULT NULL COMMENT '1-Telefônico\n2-E-mail\n3-Redes Sociais\n4-Outros',
  `id_equipe` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `eventos`
--

CREATE TABLE `eventos` (
  `id_eventos` int NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `detalhes` longtext NOT NULL,
  `mais_informacoes` longtext NOT NULL,
  `mapa` longtext NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `valor_adicional` decimal(10,2) NOT NULL DEFAULT '0.00',
  `data_evento` datetime NOT NULL,
  `imagem` longtext NOT NULL,
  `status` int NOT NULL,
  `url_amigavel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `galeria_grupo`
--

CREATE TABLE `galeria_grupo` (
  `id_galeria_grupo` int NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `galeria_imagem`
--

CREATE TABLE `galeria_imagem` (
  `id_galeria_imagem` int NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `imagem1` longtext,
  `imagem2` longtext,
  `imagem3` longtext,
  `imagem4` longtext,
  `imagem5` longtext,
  `descricao` longtext,
  `detalhes` longtext,
  `link1` longtext,
  `link2` longtext,
  `youtube` longtext,
  `url_amigavel` varchar(255) DEFAULT NULL,
  `id_galeria_grupo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `informacoes`
--

CREATE TABLE `informacoes` (
  `id_informacoes` int NOT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `icone` varchar(45) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `texto` longtext,
  `link` varchar(255) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `id_conteudo_personalizado` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `informacoes_gerais`
--

CREATE TABLE `informacoes_gerais` (
  `nome_empresa` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(45) DEFAULT NULL,
  `celular1` varchar(45) DEFAULT NULL,
  `celular2` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `email_contato` varchar(100) DEFAULT NULL,
  `envio_host` varchar(255) DEFAULT NULL,
  `envio_porta` varchar(255) DEFAULT NULL,
  `envio_email` varchar(255) DEFAULT NULL,
  `envio_senha` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `logo_principal` varchar(255) DEFAULT NULL,
  `logo_secundaria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `informacoes_gerais`
--

INSERT INTO `informacoes_gerais` (`nome_empresa`, `titulo`, `descricao`, `whatsapp`, `celular1`, `celular2`, `email`, `email_contato`, `envio_host`, `envio_porta`, `envio_email`, `envio_senha`, `favicon`, `logo_principal`, `logo_secundaria`) VALUES
('Nome da Empresa', 'Titulo do Site', '', '', '', '', '', 'gdezan94@gmail.com', NULL, NULL, NULL, NULL, '', 'logo-nome-da-empresa-201911061509.jpg', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `missao_visao_valores`
--

CREATE TABLE `missao_visao_valores` (
  `icone_missao` varchar(255) DEFAULT NULL,
  `imagem_missao` longtext,
  `texto_missao` longtext,
  `icone_visao` varchar(255) DEFAULT NULL,
  `imagem_visao` longtext,
  `texto_visao` longtext,
  `icone_valores` varchar(255) DEFAULT NULL,
  `imagem_valores` longtext,
  `texto_valores` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `missao_visao_valores`
--

INSERT INTO `missao_visao_valores` (`icone_missao`, `imagem_missao`, `texto_missao`, `icone_visao`, `imagem_visao`, `texto_visao`, `icone_valores`, `imagem_valores`, `texto_valores`) VALUES
('', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `perguntas_frequentes`
--

CREATE TABLE `perguntas_frequentes` (
  `id_perguntas_frequentes` int NOT NULL,
  `numero` int DEFAULT NULL,
  `pergunta` varchar(255) DEFAULT NULL,
  `resposta` longtext,
  `id_servicos` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `redes_sociais`
--

CREATE TABLE `redes_sociais` (
  `id_redes_sociais` int NOT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `link` varchar(45) DEFAULT NULL,
  `imagem` varchar(45) DEFAULT NULL,
  `icone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id_servicos` int NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `resumo` varchar(255) DEFAULT NULL,
  `descricao` longtext,
  `icone` varchar(255) DEFAULT NULL,
  `imagem` longtext,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sobre`
--

CREATE TABLE `sobre` (
  `resumo_texto` varchar(255) DEFAULT NULL,
  `texto` longtext,
  `imagem` longtext,
  `link` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `sobre`
--

INSERT INTO `sobre` (`resumo_texto`, `texto`, `imagem`, `link`) VALUES
('', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tamanho_imagens`
--

CREATE TABLE `tamanho_imagens` (
  `id_tamanho_imagens` int NOT NULL,
  `tabela` varchar(100) DEFAULT NULL,
  `campo` varchar(100) DEFAULT NULL,
  `largura` varchar(45) DEFAULT NULL,
  `altura` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tamanho_imagens`
--

INSERT INTO `tamanho_imagens` (`id_tamanho_imagens`, `tabela`, `campo`, `largura`, `altura`) VALUES
(1, 'banner', 'inputImagem', '500', '300'),
(2, 'sobre', '#inputImagem', '500', '500'),
(3, 'missao_visao_valores', '#inputImagemMissao, #inputImagemVisao, #inputImagemValores', '100', '100'),
(4, 'equipe', '#inputImagem', '120', '60'),
(5, 'redes_sociais', '#inputImagem', '50', '50'),
(6, 'servicos', '#inputImagem', '500', '500'),
(7, 'clientes', '#inputImagem', '200', '200'),
(8, 'cases', '#inputImagem', '200', '200'),
(9, 'depoimentos', '#inputImagem', '100', '100'),
(10, 'galeria_imagem', '#inputImagem1, #inputImagem2, #inputImagem3, #inputImagem4, #inputImagem5', '500', '400'),
(11, 'vitrine_subgrupo', '#inputImagemCapa', '500', '500'),
(12, 'vitrine_produto', '#inputImagem, #inputImagem1, #inputImagem2, #inputImagem3, #inputImagem4, #inputImagem5', '500', '500'),
(13, 'eventos', '#inputImagem', '500', '500'),
(14, 'blog_postagem', '#inputImagem, #inputImagemGaleria', '800', '400'),
(15, 'informacoes_gerais', '#inputLogoPrincipal', '200', '40');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int NOT NULL,
  `nome` longtext,
  `login` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `imagem_perfil` varchar(45) DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nome`, `login`, `senha`, `imagem_perfil`, `status`) VALUES
(1, 'Web Dezan', 'webdezan', 'f1ccbb92591d22f719a88c5be8b1161a', 'perfil-web-dezan.jpg', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario_cliente`
--

CREATE TABLE `usuario_cliente` (
  `id_usuario_cliente` int NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `senha` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receber_novidades_email` int DEFAULT NULL COMMENT '1-Sim\n0-Não',
  `status` int DEFAULT NULL COMMENT '1-Ativo\n0-Inativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `id_veiculo` int NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `ano_fabricacao` varchar(45) DEFAULT NULL,
  `ano_modelo` varchar(45) DEFAULT NULL,
  `km` varchar(45) DEFAULT NULL,
  `placa` varchar(45) DEFAULT NULL,
  `opcionais` varchar(255) DEFAULT NULL,
  `cambio` int DEFAULT NULL COMMENT '1-Manual\n2-Automático\n3-Semi-Automático',
  `combustivel` int DEFAULT NULL COMMENT '1-Gasolina\n2-Álcool\n3-Flex\n4-Gás Natural\n5-Diesel\n6-Elétrico',
  `valor_fipe` varchar(45) DEFAULT NULL,
  `valor_venda` varchar(45) DEFAULT NULL,
  `observacoes` longtext,
  `status` int DEFAULT NULL COMMENT '1-À venda\n2-Vendido\n3-Cancelado',
  `id_veiculo_marca` int NOT NULL,
  `id_clientes` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`id_veiculo`, `titulo`, `ano_fabricacao`, `ano_modelo`, `km`, `placa`, `opcionais`, `cambio`, `combustivel`, `valor_fipe`, `valor_venda`, `observacoes`, `status`, `id_veiculo_marca`, `id_clientes`) VALUES
(4, 'Civic LXL 1.8', '2010', '2010', '140.000', 'ABC-1A12', 'Bancos em Couro,Computador de Bordo,Direção Hidráulica', 2, 3, '34.500,00', '32.000,00', 'Veículo contem detalhe no parabrisa', 2, 38, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo_marca`
--

CREATE TABLE `veiculo_marca` (
  `id_veiculo_marca` int NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL COMMENT '1-Ativo\n0-Inativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `veiculo_marca`
--

INSERT INTO `veiculo_marca` (`id_veiculo_marca`, `descricao`, `status`) VALUES
(1, 'Acura', 1),
(2, 'Agrale', 1),
(3, 'Alfa Romeo', 1),
(4, 'AM Gen', 1),
(5, 'Asia Motors', 1),
(6, 'ASTON MARTIN', 1),
(7, 'Audi', 1),
(8, 'Baby', 1),
(9, 'BMW', 1),
(10, 'BRM', 1),
(11, 'Bugre', 1),
(12, 'Cadillac', 1),
(13, 'CBT Jipe', 1),
(14, 'CHANA', 1),
(15, 'CHANGAN', 1),
(16, 'CHERY', 1),
(17, 'Chrysler', 1),
(18, 'Citroën', 1),
(19, 'Cross Lander', 1),
(20, 'Daewoo', 1),
(21, 'Daihatsu', 1),
(22, 'Dodge', 1),
(23, 'EFFA', 1),
(24, 'Engesa', 1),
(25, 'Envemo', 1),
(26, 'Ferrari', 1),
(27, 'Fiat', 1),
(28, 'Fibravan', 1),
(29, 'Ford', 1),
(30, 'FOTON', 1),
(31, 'Fyber', 1),
(32, 'GEELY', 1),
(33, 'GM - Chevrolet', 1),
(34, 'GREAT WALL', 1),
(35, 'Gurgel', 1),
(36, 'HAFEI', 1),
(37, 'HITECH ELECTRIC', 1),
(38, 'Honda', 1),
(39, 'Hyundai', 1),
(40, 'Isuzu', 1),
(41, 'IVECO', 1),
(42, 'JAC', 1),
(43, 'Jaguar', 1),
(44, 'Jeep', 1),
(45, 'JINBEI', 1),
(46, 'JPX', 1),
(47, 'Kia Motors', 1),
(48, 'Lada', 1),
(49, 'LAMBORGHINI', 1),
(50, 'Land Rover', 1),
(51, 'Lexus', 1),
(52, 'LIFAN', 1),
(53, 'LOBINI', 1),
(54, 'Lotus', 1),
(55, 'Mahindra', 1),
(56, 'Maserati', 1),
(57, 'Matra', 1),
(58, 'Mazda', 1),
(59, 'Mclaren', 1),
(60, 'Mercedes-Benz', 1),
(61, 'Mercury', 1),
(62, 'MG', 1),
(63, 'MINI', 1),
(64, 'Mitsubishi', 1),
(65, 'Miura', 1),
(66, 'Nissan', 1),
(67, 'Peugeot', 1),
(68, 'Plymouth', 1),
(69, 'Pontiac', 1),
(70, 'Porsche', 1),
(71, 'RAM', 1),
(72, 'RELY', 1),
(73, 'Renault', 1),
(74, 'Rolls-Royce', 1),
(75, 'Rover', 1),
(76, 'Saab', 1),
(77, 'Saturn', 1),
(78, 'Seat', 1),
(79, 'SHINERAY', 1),
(80, 'smart', 1),
(81, 'SSANGYONG', 1),
(82, 'Subaru', 1),
(83, 'Suzuki', 1),
(84, 'TAC', 1),
(85, 'Toyota', 1),
(86, 'Troller', 1),
(87, 'Volvo', 1),
(88, 'VW - VolksWagen', 1),
(89, 'Wake', 1),
(90, 'Walk', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo_opcionais`
--

CREATE TABLE `veiculo_opcionais` (
  `id_veiculo_opcionais` int NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL COMMENT '1-Ativo\n0-Inativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `veiculo_opcionais`
--

INSERT INTO `veiculo_opcionais` (`id_veiculo_opcionais`, `descricao`, `status`) VALUES
(1, 'Direção Hidráulica', 1),
(2, 'Bancos em Couro', 1),
(3, 'Câmera de Ré', 1),
(4, 'Computador de Bordo', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vitrine_grupo`
--

CREATE TABLE `vitrine_grupo` (
  `id_vitrine_grupo` int NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `imagem` longtext,
  `url_amigavel` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vitrine_produto`
--

CREATE TABLE `vitrine_produto` (
  `id_vitrine_produto` int NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `detalhes` longtext,
  `garantia` varchar(45) DEFAULT NULL,
  `peso` varchar(45) DEFAULT NULL,
  `dimensoes` varchar(45) DEFAULT NULL,
  `materiais` varchar(100) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `manual` varchar(255) DEFAULT NULL,
  `informacao_adicional_1` longtext,
  `informacao_adicional_2` longtext,
  `informacao_adicional_3` longtext,
  `link` varchar(255) DEFAULT NULL,
  `valor` varchar(255) DEFAULT NULL,
  `situacao` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `url_amigavel` varchar(255) DEFAULT NULL,
  `id_vitrine_categoria` int DEFAULT NULL,
  `id_vitrine_subgrupo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vitrine_produto_cores`
--

CREATE TABLE `vitrine_produto_cores` (
  `id_vitrine_produto_cores` int NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `cor_hexadecimal` varchar(45) DEFAULT NULL,
  `referencia` varchar(45) DEFAULT NULL,
  `imagem1` varchar(255) DEFAULT NULL,
  `imagem2` varchar(255) DEFAULT NULL,
  `imagem3` varchar(255) DEFAULT NULL,
  `imagem4` varchar(255) DEFAULT NULL,
  `imagem5` varchar(255) DEFAULT NULL,
  `url_amigavel` varchar(255) DEFAULT NULL,
  `id_vitrine_produto` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vitrine_subgrupo`
--

CREATE TABLE `vitrine_subgrupo` (
  `id_vitrine_subgrupo` int NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `nome_pagina` varchar(100) DEFAULT NULL,
  `imagem_capa` varchar(255) DEFAULT NULL,
  `url_amigavel` varchar(255) DEFAULT NULL,
  `id_vitrine_grupo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Índices de tabela `blog_categorias`
--
ALTER TABLE `blog_categorias`
  ADD PRIMARY KEY (`id_blog_categorias`);

--
-- Índices de tabela `blog_comentario`
--
ALTER TABLE `blog_comentario`
  ADD PRIMARY KEY (`id_blog_comentario`),
  ADD KEY `fk_blog_comentario_blog_postagem1_idx` (`id_blog_postagem`),
  ADD KEY `fk_blog_comentario_usuario_cliente1_idx` (`id_usuario_cliente`);

--
-- Índices de tabela `blog_imagens`
--
ALTER TABLE `blog_imagens`
  ADD PRIMARY KEY (`id_blog_imagens`);

--
-- Índices de tabela `blog_postagem`
--
ALTER TABLE `blog_postagem`
  ADD PRIMARY KEY (`id_blog_postagem`),
  ADD KEY `fk_blog_postagem_usuarios1_idx` (`id_usuarios`),
  ADD KEY `fk_blog_postagem_blog_subcategorias1_idx` (`id_blog_subcategorias`);

--
-- Índices de tabela `blog_postagem_galeria`
--
ALTER TABLE `blog_postagem_galeria`
  ADD PRIMARY KEY (`id_blog_postagem_galeria`),
  ADD KEY `fk_blog_postagem_galeria_blog_postagem1_idx` (`id_blog_postagem`);

--
-- Índices de tabela `blog_subcategorias`
--
ALTER TABLE `blog_subcategorias`
  ADD PRIMARY KEY (`id_blog_subcategorias`),
  ADD KEY `fk_blog_subcategorias_blog_categorias1_idx` (`id_blog_categorias`);

--
-- Índices de tabela `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id_cases`),
  ADD KEY `fk_cases_clientes1_idx` (`id_clientes`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_clientes`);

--
-- Índices de tabela `contatos_recebidos`
--
ALTER TABLE `contatos_recebidos`
  ADD PRIMARY KEY (`id_contatos_recebidos`);

--
-- Índices de tabela `conteudo_personalizado`
--
ALTER TABLE `conteudo_personalizado`
  ADD PRIMARY KEY (`id_conteudo_personalizado`);

--
-- Índices de tabela `depoimentos`
--
ALTER TABLE `depoimentos`
  ADD PRIMARY KEY (`id_depoimentos`),
  ADD KEY `fk_depoimentos_clientes1_idx` (`id_clientes`);

--
-- Índices de tabela `enderecos`
--
ALTER TABLE `enderecos`
  ADD PRIMARY KEY (`id_enderecos`);

--
-- Índices de tabela `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id_equipe`);

--
-- Índices de tabela `equipe_contato`
--
ALTER TABLE `equipe_contato`
  ADD PRIMARY KEY (`id_equipe_contato`),
  ADD KEY `fk_equipe_contato_equipe1_idx` (`id_equipe`);

--
-- Índices de tabela `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id_eventos`);

--
-- Índices de tabela `galeria_grupo`
--
ALTER TABLE `galeria_grupo`
  ADD PRIMARY KEY (`id_galeria_grupo`);

--
-- Índices de tabela `galeria_imagem`
--
ALTER TABLE `galeria_imagem`
  ADD PRIMARY KEY (`id_galeria_imagem`),
  ADD KEY `fk_galeria_item_galeria_grupo_idx` (`id_galeria_grupo`);

--
-- Índices de tabela `informacoes`
--
ALTER TABLE `informacoes`
  ADD PRIMARY KEY (`id_informacoes`),
  ADD KEY `fk_informacoes_conteudo_personalizado1_idx` (`id_conteudo_personalizado`);

--
-- Índices de tabela `perguntas_frequentes`
--
ALTER TABLE `perguntas_frequentes`
  ADD PRIMARY KEY (`id_perguntas_frequentes`),
  ADD KEY `fk_perguntas_frequentes_servicos1_idx` (`id_servicos`);

--
-- Índices de tabela `redes_sociais`
--
ALTER TABLE `redes_sociais`
  ADD PRIMARY KEY (`id_redes_sociais`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id_servicos`);

--
-- Índices de tabela `tamanho_imagens`
--
ALTER TABLE `tamanho_imagens`
  ADD PRIMARY KEY (`id_tamanho_imagens`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`);

--
-- Índices de tabela `usuario_cliente`
--
ALTER TABLE `usuario_cliente`
  ADD PRIMARY KEY (`id_usuario_cliente`);

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`id_veiculo`),
  ADD KEY `fk_veiculo_veiculo_marca1_idx` (`id_veiculo_marca`),
  ADD KEY `fk_veiculo_clientes1_idx` (`id_clientes`);

--
-- Índices de tabela `veiculo_marca`
--
ALTER TABLE `veiculo_marca`
  ADD PRIMARY KEY (`id_veiculo_marca`);

--
-- Índices de tabela `veiculo_opcionais`
--
ALTER TABLE `veiculo_opcionais`
  ADD PRIMARY KEY (`id_veiculo_opcionais`);

--
-- Índices de tabela `vitrine_grupo`
--
ALTER TABLE `vitrine_grupo`
  ADD PRIMARY KEY (`id_vitrine_grupo`);

--
-- Índices de tabela `vitrine_produto`
--
ALTER TABLE `vitrine_produto`
  ADD PRIMARY KEY (`id_vitrine_produto`),
  ADD KEY `fk_vitrine_produto_vitrine_subgrupo1_idx` (`id_vitrine_subgrupo`);

--
-- Índices de tabela `vitrine_produto_cores`
--
ALTER TABLE `vitrine_produto_cores`
  ADD PRIMARY KEY (`id_vitrine_produto_cores`),
  ADD KEY `fk_vitrine_produto_cores_vitrine_produto1_idx` (`id_vitrine_produto`);

--
-- Índices de tabela `vitrine_subgrupo`
--
ALTER TABLE `vitrine_subgrupo`
  ADD PRIMARY KEY (`id_vitrine_subgrupo`),
  ADD KEY `fk_vitrine_subgrupo_vitrine_grupo1_idx` (`id_vitrine_grupo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blog_categorias`
--
ALTER TABLE `blog_categorias`
  MODIFY `id_blog_categorias` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blog_comentario`
--
ALTER TABLE `blog_comentario`
  MODIFY `id_blog_comentario` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blog_imagens`
--
ALTER TABLE `blog_imagens`
  MODIFY `id_blog_imagens` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blog_postagem`
--
ALTER TABLE `blog_postagem`
  MODIFY `id_blog_postagem` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blog_postagem_galeria`
--
ALTER TABLE `blog_postagem_galeria`
  MODIFY `id_blog_postagem_galeria` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blog_subcategorias`
--
ALTER TABLE `blog_subcategorias`
  MODIFY `id_blog_subcategorias` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cases`
--
ALTER TABLE `cases`
  MODIFY `id_cases` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_clientes` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `contatos_recebidos`
--
ALTER TABLE `contatos_recebidos`
  MODIFY `id_contatos_recebidos` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `conteudo_personalizado`
--
ALTER TABLE `conteudo_personalizado`
  MODIFY `id_conteudo_personalizado` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `depoimentos`
--
ALTER TABLE `depoimentos`
  MODIFY `id_depoimentos` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `enderecos`
--
ALTER TABLE `enderecos`
  MODIFY `id_enderecos` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id_equipe` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `equipe_contato`
--
ALTER TABLE `equipe_contato`
  MODIFY `id_equipe_contato` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id_eventos` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `galeria_grupo`
--
ALTER TABLE `galeria_grupo`
  MODIFY `id_galeria_grupo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `galeria_imagem`
--
ALTER TABLE `galeria_imagem`
  MODIFY `id_galeria_imagem` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `informacoes`
--
ALTER TABLE `informacoes`
  MODIFY `id_informacoes` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `perguntas_frequentes`
--
ALTER TABLE `perguntas_frequentes`
  MODIFY `id_perguntas_frequentes` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `redes_sociais`
--
ALTER TABLE `redes_sociais`
  MODIFY `id_redes_sociais` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id_servicos` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tamanho_imagens`
--
ALTER TABLE `tamanho_imagens`
  MODIFY `id_tamanho_imagens` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuario_cliente`
--
ALTER TABLE `usuario_cliente`
  MODIFY `id_usuario_cliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `id_veiculo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `veiculo_marca`
--
ALTER TABLE `veiculo_marca`
  MODIFY `id_veiculo_marca` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de tabela `veiculo_opcionais`
--
ALTER TABLE `veiculo_opcionais`
  MODIFY `id_veiculo_opcionais` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `vitrine_grupo`
--
ALTER TABLE `vitrine_grupo`
  MODIFY `id_vitrine_grupo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `vitrine_produto`
--
ALTER TABLE `vitrine_produto`
  MODIFY `id_vitrine_produto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `vitrine_produto_cores`
--
ALTER TABLE `vitrine_produto_cores`
  MODIFY `id_vitrine_produto_cores` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `vitrine_subgrupo`
--
ALTER TABLE `vitrine_subgrupo`
  MODIFY `id_vitrine_subgrupo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `blog_comentario`
--
ALTER TABLE `blog_comentario`
  ADD CONSTRAINT `fk_blog_comentario_blog_postagem1` FOREIGN KEY (`id_blog_postagem`) REFERENCES `blog_postagem` (`id_blog_postagem`),
  ADD CONSTRAINT `fk_blog_comentario_usuario_cliente1` FOREIGN KEY (`id_usuario_cliente`) REFERENCES `usuario_cliente` (`id_usuario_cliente`);

--
-- Restrições para tabelas `blog_postagem`
--
ALTER TABLE `blog_postagem`
  ADD CONSTRAINT `fk_blog_postagem_blog_subcategorias1` FOREIGN KEY (`id_blog_subcategorias`) REFERENCES `blog_subcategorias` (`id_blog_subcategorias`),
  ADD CONSTRAINT `fk_blog_postagem_usuarios1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`);

--
-- Restrições para tabelas `blog_postagem_galeria`
--
ALTER TABLE `blog_postagem_galeria`
  ADD CONSTRAINT `fk_blog_postagem_galeria_blog_postagem1` FOREIGN KEY (`id_blog_postagem`) REFERENCES `blog_postagem` (`id_blog_postagem`);

--
-- Restrições para tabelas `blog_subcategorias`
--
ALTER TABLE `blog_subcategorias`
  ADD CONSTRAINT `fk_blog_subcategorias_blog_categorias1` FOREIGN KEY (`id_blog_categorias`) REFERENCES `blog_categorias` (`id_blog_categorias`);

--
-- Restrições para tabelas `cases`
--
ALTER TABLE `cases`
  ADD CONSTRAINT `fk_cases_clientes1` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`);

--
-- Restrições para tabelas `depoimentos`
--
ALTER TABLE `depoimentos`
  ADD CONSTRAINT `fk_depoimentos_clientes1` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`);

--
-- Restrições para tabelas `equipe_contato`
--
ALTER TABLE `equipe_contato`
  ADD CONSTRAINT `fk_equipe_contato_equipe1` FOREIGN KEY (`id_equipe`) REFERENCES `equipe` (`id_equipe`);

--
-- Restrições para tabelas `galeria_imagem`
--
ALTER TABLE `galeria_imagem`
  ADD CONSTRAINT `fk_galeria_item_galeria_grupo` FOREIGN KEY (`id_galeria_grupo`) REFERENCES `galeria_grupo` (`id_galeria_grupo`);

--
-- Restrições para tabelas `informacoes`
--
ALTER TABLE `informacoes`
  ADD CONSTRAINT `fk_informacoes_conteudo_personalizado1` FOREIGN KEY (`id_conteudo_personalizado`) REFERENCES `conteudo_personalizado` (`id_conteudo_personalizado`);

--
-- Restrições para tabelas `perguntas_frequentes`
--
ALTER TABLE `perguntas_frequentes`
  ADD CONSTRAINT `fk_perguntas_frequentes_servicos1` FOREIGN KEY (`id_servicos`) REFERENCES `servicos` (`id_servicos`);

--
-- Restrições para tabelas `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `fk_veiculo_clientes1` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`),
  ADD CONSTRAINT `fk_veiculo_veiculo_marca1` FOREIGN KEY (`id_veiculo_marca`) REFERENCES `veiculo_marca` (`id_veiculo_marca`);

--
-- Restrições para tabelas `vitrine_produto`
--
ALTER TABLE `vitrine_produto`
  ADD CONSTRAINT `fk_vitrine_produto_vitrine_subgrupo1` FOREIGN KEY (`id_vitrine_subgrupo`) REFERENCES `vitrine_subgrupo` (`id_vitrine_subgrupo`);

--
-- Restrições para tabelas `vitrine_produto_cores`
--
ALTER TABLE `vitrine_produto_cores`
  ADD CONSTRAINT `fk_vitrine_produto_cores_vitrine_produto1` FOREIGN KEY (`id_vitrine_produto`) REFERENCES `vitrine_produto` (`id_vitrine_produto`);

--
-- Restrições para tabelas `vitrine_subgrupo`
--
ALTER TABLE `vitrine_subgrupo`
  ADD CONSTRAINT `fk_vitrine_subgrupo_vitrine_grupo1` FOREIGN KEY (`id_vitrine_grupo`) REFERENCES `vitrine_grupo` (`id_vitrine_grupo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
