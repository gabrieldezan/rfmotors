-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Mar-2021 às 18:59
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.3.26

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
-- Estrutura da tabela `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(11) NOT NULL,
  `imagem` longtext DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blog_categorias`
--

CREATE TABLE `blog_categorias` (
  `id_blog_categorias` int(11) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `posicao` int(11) DEFAULT NULL,
  `url_amigavel` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blog_comentario`
--

CREATE TABLE `blog_comentario` (
  `id_blog_comentario` int(11) NOT NULL,
  `comentario` longtext DEFAULT NULL,
  `data_horario` datetime DEFAULT NULL,
  `id_blog_postagem` int(11) NOT NULL,
  `id_usuario_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blog_imagens`
--

CREATE TABLE `blog_imagens` (
  `id_blog_imagens` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blog_postagem`
--

CREATE TABLE `blog_postagem` (
  `id_blog_postagem` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `texto` longtext DEFAULT NULL,
  `imagem` longtext DEFAULT NULL,
  `data_criacao` datetime DEFAULT NULL,
  `data_publicacao` datetime DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `url_amigavel` varchar(255) DEFAULT NULL,
  `visualizacoes` int(11) DEFAULT 0,
  `id_usuarios` int(11) NOT NULL,
  `id_blog_subcategorias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blog_postagem_galeria`
--

CREATE TABLE `blog_postagem_galeria` (
  `id_blog_postagem_galeria` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `imagem` longtext DEFAULT NULL,
  `id_blog_postagem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blog_subcategorias`
--

CREATE TABLE `blog_subcategorias` (
  `id_blog_subcategorias` int(11) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `posicao` int(11) DEFAULT NULL,
  `url_amigavel` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `id_blog_categorias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cases`
--

CREATE TABLE `cases` (
  `id_cases` int(11) NOT NULL,
  `servico` varchar(255) DEFAULT NULL,
  `arquivo` longtext DEFAULT NULL,
  `imagem` longtext DEFAULT NULL,
  `id_clientes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_clientes` int(11) NOT NULL,
  `imagem` longtext DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `telefone` varchar(100) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id_clientes`, `imagem`, `descricao`, `endereco`, `cidade`, `estado`, `telefone`, `link`, `status`) VALUES
(3, 'jennifer-silva-202103031929.jpg', 'Jennifer Silva', '', '', '', '', '', 1),
(4, 'patricia-lima-202103031936.jpg', 'Patricia Lima', '', '', '', '', '', 1),
(5, 'alexandra-souza-202103031936.jpg', 'Alexandra Souza', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos_recebidos`
--

CREATE TABLE `contatos_recebidos` (
  `id_contatos_recebidos` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `mensagem` longtext DEFAULT NULL,
  `data_recebimento` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1-Novo\n2-Lido'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contatos_recebidos`
--

INSERT INTO `contatos_recebidos` (`id_contatos_recebidos`, `nome`, `email`, `telefone`, `mensagem`, `data_recebimento`, `status`) VALUES
(1, 'aaa', 'fernandoalan003@gmail.com', '(45) 99991-5931', 'aaaa', '2021-03-04 10:22:37', 1),
(2, 'aaa', 'fernandoalan003@gmail.com', '(45) 99991-5931', 'aaaa', '2021-03-04 10:22:40', 1),
(3, 'aaa', 'fernandoalan003@gmail.com', '(45) 99991-5931', 'aaaaaa', '2021-03-04 10:23:57', 1),
(4, 'aaa', 'fernandoalan003@gmail.com', '(45) 99991-5931', 'aaaaaaaaaaaaaaaaaaa', '2021-03-04 10:29:20', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudo_personalizado`
--

CREATE TABLE `conteudo_personalizado` (
  `id_conteudo_personalizado` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `icone` int(11) DEFAULT NULL COMMENT '0-Não\n1-Sim',
  `imagem` int(11) DEFAULT NULL COMMENT '0-Não\n1-Sim',
  `imagem_largura` varchar(45) DEFAULT NULL,
  `imagem_altura` varchar(45) DEFAULT NULL,
  `texto` int(11) DEFAULT NULL COMMENT '0-Não\n1-Sim',
  `link` int(11) DEFAULT NULL COMMENT '0-Não\n1-Sim',
  `data` int(11) DEFAULT NULL COMMENT '0-Não\n1-Sim',
  `hora` int(11) DEFAULT NULL COMMENT '0-Não\n1-Sim',
  `numero` int(11) DEFAULT NULL COMMENT '0-Não\n1-Sim'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `conteudo_personalizado`
--

INSERT INTO `conteudo_personalizado` (`id_conteudo_personalizado`, `titulo`, `icone`, `imagem`, `imagem_largura`, `imagem_altura`, `texto`, `link`, `data`, `hora`, `numero`) VALUES
(1, 'Venda seu carro em 1h', 0, 1, '635', '423', 1, 1, 0, 0, 0),
(2, 'Como Funciona', 0, 1, '350', '233', 1, 0, 0, 0, 0),
(3, 'Vantagens', 1, 0, '0', '0', 1, 0, 0, 0, 0),
(4, 'Sobre', 0, 1, '540', '425', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `depoimentos`
--

CREATE TABLE `depoimentos` (
  `id_depoimentos` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `texto` longtext DEFAULT NULL,
  `imagem` longtext DEFAULT NULL,
  `id_clientes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `depoimentos`
--

INSERT INTO `depoimentos` (`id_depoimentos`, `nome`, `texto`, `imagem`, `id_clientes`) VALUES
(1, 'Alexandra Souza', 'The attention of a traveller, should be particularly turned to the various works of nature, to mark the distinctions of the climates he may explore, and to offer such useful observations on the different productions as may occur.', '', 5),
(2, 'Jennifer Silva', 'The attention of a traveller, should be particularly turned to the various works of nature, to mark the distinctions of the climates he may explore, and to offer such useful observations on the different productions as may occur.', '', 3),
(3, 'Patricia Lima', 'The attention of a traveller, should be particularly turned to the various works of nature, to mark the distinctions of the climates he may explore, and to offer such useful observations on the different productions as may occur.', '', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `enderecos`
--

CREATE TABLE `enderecos` (
  `id_enderecos` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `mapa` longtext DEFAULT NULL,
  `horario_atendimento` varchar(255) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `enderecos`
--

INSERT INTO `enderecos` (`id_enderecos`, `titulo`, `endereco`, `cidade`, `estado`, `mapa`, `horario_atendimento`, `telefone`) VALUES
(1, 'Cascavel', 'Rua Washinton Luis, 750 Pq. São Paulo', 'Cascavel', 'PR', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3616.7289467454407!2d-53.460952984994925!3d-24.97533508399986!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94f3d4376c7e65a1%3A0xaad2c4cbff5c5d79!2sRua%20Washington%20Lu%C3%ADz%2C%20750%20-%20Parque%20S%C3%A3o%20Paulo%2C%20Cascavel%20-%20PR%2C%2085803-670!5e0!3m2!1spt-BR!2sbr!4v1613154441711!5m2!1spt-BR!2sbr\" width=\"600\" height=\"400\" style=\"border:0\" allowfullscreen></iframe>', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipe`
--

CREATE TABLE `equipe` (
  `id_equipe` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `informacao_adicional` varchar(255) DEFAULT NULL,
  `resumo` varchar(255) DEFAULT NULL,
  `detalhes` longtext DEFAULT NULL,
  `imagem` longtext DEFAULT NULL,
  `destaque` int(11) DEFAULT NULL COMMENT '1-Sim\n0-Não',
  `url_amigavel` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1-Ativo\n0-Inativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipe_contato`
--

CREATE TABLE `equipe_contato` (
  `id_equipe_contato` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `icone` varchar(255) DEFAULT NULL,
  `link` longtext DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL COMMENT '1-Telefônico\n2-E-mail\n3-Redes Sociais\n4-Outros',
  `id_equipe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
--

CREATE TABLE `eventos` (
  `id_eventos` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `detalhes` longtext NOT NULL,
  `mais_informacoes` longtext NOT NULL,
  `mapa` longtext NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `valor_adicional` decimal(10,2) NOT NULL DEFAULT 0.00,
  `data_evento` datetime NOT NULL,
  `imagem` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `url_amigavel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `galeria_grupo`
--

CREATE TABLE `galeria_grupo` (
  `id_galeria_grupo` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `galeria_grupo`
--

INSERT INTO `galeria_grupo` (`id_galeria_grupo`, `descricao`, `status`) VALUES
(1, 'Clientes', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `galeria_imagem`
--

CREATE TABLE `galeria_imagem` (
  `id_galeria_imagem` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `imagem1` longtext DEFAULT NULL,
  `imagem2` longtext DEFAULT NULL,
  `imagem3` longtext DEFAULT NULL,
  `imagem4` longtext DEFAULT NULL,
  `imagem5` longtext DEFAULT NULL,
  `descricao` longtext DEFAULT NULL,
  `detalhes` longtext DEFAULT NULL,
  `link1` longtext DEFAULT NULL,
  `link2` longtext DEFAULT NULL,
  `youtube` longtext DEFAULT NULL,
  `url_amigavel` varchar(255) DEFAULT NULL,
  `id_galeria_grupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `galeria_imagem`
--

INSERT INTO `galeria_imagem` (`id_galeria_imagem`, `titulo`, `imagem1`, `imagem2`, `imagem3`, `imagem4`, `imagem5`, `descricao`, `detalhes`, `link1`, `link2`, `youtube`, `url_amigavel`, `id_galeria_grupo`) VALUES
(1, 'Cliente 1', 'cliente-1-1-202103031840.png', '', '', '', '', '', '', '', '', '', 'cliente-1', 1),
(2, 'Cliente 2', 'cliente-2-1-202103031840.png', '', '', '', '', '', '', '', '', '', 'cliente-2', 1),
(3, 'Cliente 3', 'cliente-3-1-202103031843.png', '', '', '', '', '', '', '', '', '', 'cliente-3', 1),
(4, 'Cliente 4', 'cliente-4-1-202103031844.png', '', '', '', '', '', '', '', '', '', 'cliente-4', 1),
(5, 'Cliente 5', 'cliente-5-1-202103031844.png', '', '', '', '', '', '', '', '', '', 'cliente-5', 1),
(6, 'Cliente 6', 'cliente-6-1-202103031845.png', '', '', '', '', '', '', '', '', '', 'cliente-6', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `informacoes`
--

CREATE TABLE `informacoes` (
  `id_informacoes` int(11) NOT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `icone` varchar(45) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `texto` longtext DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `id_conteudo_personalizado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `informacoes`
--

INSERT INTO `informacoes` (`id_informacoes`, `titulo`, `icone`, `imagem`, `texto`, `link`, `data`, `hora`, `numero`, `id_conteudo_personalizado`) VALUES
(1, 'Venda seu carro em 1h', '', 'venda-seu-carro-em-1h-venda-seu-carro-em-1h-202103041255.png', '<p>Receba &agrave; vista a melhor oferta pelo seu ve&iacute;culo, com comodidade e seguran&ccedil;a!</p>', '#contato', '0000-00-00', '00:00:00', 0, 1),
(2, '01', '', 'como-funciona-01-202103031757.png', '<p>Voc&ecirc; agenda uma avalia&ccedil;&atilde;o gratuitamente com nossa equipe. Vamos at&eacute; voc&ecirc; ou voc&ecirc; vem at&eacute; n&oacute;s, como preferir.</p>', '', '0000-00-00', '00:00:00', 0, 2),
(3, '02', '', 'como-funciona-02-202103031757.png', '<p>Anunciamos seu carro em nossa plataforma com centenas de lojistas parceiros, para que assim possam realizar as melhores propostas.</p>', '', '0000-00-00', '00:00:00', 0, 2),
(4, '03', '', 'como-funciona-03-202103031759.png', '<p>Em at&eacute; 60 minutos fechamos a venda de seu ve&iacute;culo, e voc&ecirc; Recebe seu dinheiro no ato.</p>', '', '0000-00-00', '00:00:00', 0, 2),
(5, 'Agilidade', 'fas fa-tachometer-alt', '', '<p>A maneira r&aacute;pida e segura de vender seu ve&iacute;culo.</p>', '', '0000-00-00', '00:00:00', 0, 3),
(6, 'Comodidade', 'fas fa-chart-line', '', '<p>Conte com todo o suporte de nossa equipe, e o melhor cuidamos de toda parte burocr&aacute;tica do inicio ao fim.</p>', '', '0000-00-00', '00:00:00', 0, 3),
(7, 'Segurança', 'fas fa-bell', '', '<p>Na RF Motors seu ve&iacute;culo tem valor. Aqui voc&ecirc; vende.</p>', '', '0000-00-00', '00:00:00', 0, 3),
(8, 'Processo garantido', 'fas fa-hand-holding-usd', '', '<p>A gente vende e voc&ecirc; recebe seu dinheiro em at&eacute; 1h</p>', '', '0000-00-00', '00:00:00', 0, 3),
(9, 'Conheça mais sobre a RF Motors', '', 'sobre-conheca-mais-sobre-a-rf-motors-202103041226.jpg', '<p>Mais de 16 anos no mercado automobil&iacute;stico. Com essa experi&ecirc;ncia, Fernando, Osnir e Ot&aacute;vio, amigos e companheiros profissionais de longa data, fizeram a Carro Vendido acontecer. Atendendo &agrave;s necessidades do mercado desde 2018, a plataforma nasceu para simplificar o processo de compra e venda de ve&iacute;culos.</p>\r\n<ul>\r\n<li><i class=\"fa fa-check\"></i> Rápido.</li>\r\n                            <li><i class=\"fa fa-check\"></i> Fácil.</li>\r\n                            <li><i class=\"fa fa-check\"></i> Transparente.</li>\r\n</ul>', '#contato', '0000-00-00', '00:00:00', 0, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `informacoes_gerais`
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
-- Extraindo dados da tabela `informacoes_gerais`
--

INSERT INTO `informacoes_gerais` (`nome_empresa`, `titulo`, `descricao`, `whatsapp`, `celular1`, `celular2`, `email`, `email_contato`, `envio_host`, `envio_porta`, `envio_email`, `envio_senha`, `favicon`, `logo_principal`, `logo_secundaria`) VALUES
('RF Motors - Consultoria Automotiva', 'RF Motors - Consultoria Automotiva', 'RF Motors - Consultoria Automotiva', '(45) 99934-3288', '', '', 'alan@webdezan.com.br', 'alan@webdezan.com.br', '', '', 'webdezan', '!@#gd94!@#', 'favicon-rf-motors-consultoria-automotiva-202103031716.png', 'logo-rf-motors-consultoria-automotiva-202103031716.png', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `missao_visao_valores`
--

CREATE TABLE `missao_visao_valores` (
  `icone_missao` varchar(255) DEFAULT NULL,
  `imagem_missao` longtext DEFAULT NULL,
  `texto_missao` longtext DEFAULT NULL,
  `icone_visao` varchar(255) DEFAULT NULL,
  `imagem_visao` longtext DEFAULT NULL,
  `texto_visao` longtext DEFAULT NULL,
  `icone_valores` varchar(255) DEFAULT NULL,
  `imagem_valores` longtext DEFAULT NULL,
  `texto_valores` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `missao_visao_valores`
--

INSERT INTO `missao_visao_valores` (`icone_missao`, `imagem_missao`, `texto_missao`, `icone_visao`, `imagem_visao`, `texto_visao`, `icone_valores`, `imagem_valores`, `texto_valores`) VALUES
('', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `perguntas_frequentes`
--

CREATE TABLE `perguntas_frequentes` (
  `id_perguntas_frequentes` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `pergunta` varchar(255) DEFAULT NULL,
  `resposta` longtext DEFAULT NULL,
  `id_servicos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `redes_sociais`
--

CREATE TABLE `redes_sociais` (
  `id_redes_sociais` int(11) NOT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `link` varchar(45) DEFAULT NULL,
  `imagem` varchar(45) DEFAULT NULL,
  `icone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `redes_sociais`
--

INSERT INTO `redes_sociais` (`id_redes_sociais`, `titulo`, `link`, `imagem`, `icone`) VALUES
(1, 'Facebook', 'https://facebook.com', '', 'fab fa-facebook'),
(2, 'Instagram', 'https://instagram.com', '', 'fab fa-instagram');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `id_servicos` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `resumo` varchar(255) DEFAULT NULL,
  `descricao` longtext DEFAULT NULL,
  `icone` varchar(255) DEFAULT NULL,
  `imagem` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sobre`
--

CREATE TABLE `sobre` (
  `resumo_texto` varchar(255) DEFAULT NULL,
  `texto` longtext DEFAULT NULL,
  `imagem` longtext DEFAULT NULL,
  `link` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sobre`
--

INSERT INTO `sobre` (`resumo_texto`, `texto`, `imagem`, `link`) VALUES
('', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tamanho_imagens`
--

CREATE TABLE `tamanho_imagens` (
  `id_tamanho_imagens` int(11) NOT NULL,
  `tabela` varchar(100) DEFAULT NULL,
  `campo` varchar(100) DEFAULT NULL,
  `largura` varchar(45) DEFAULT NULL,
  `altura` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tamanho_imagens`
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
(10, 'galeria_imagem', '#inputImagem1, #inputImagem2, #inputImagem3, #inputImagem4, #inputImagem5', '480', '480'),
(11, 'vitrine_subgrupo', '#inputImagemCapa', '500', '500'),
(12, 'vitrine_produto', '#inputImagem, #inputImagem1, #inputImagem2, #inputImagem3, #inputImagem4, #inputImagem5', '500', '500'),
(13, 'eventos', '#inputImagem', '500', '500'),
(14, 'blog_postagem', '#inputImagem, #inputImagemGaleria', '800', '400'),
(15, 'informacoes_gerais', '#inputLogoPrincipal', '208', '70');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `nome` longtext DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `imagem_perfil` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nome`, `login`, `senha`, `imagem_perfil`, `status`) VALUES
(1, 'Web Dezan', 'webdezan', 'f1ccbb92591d22f719a88c5be8b1161a', 'perfil-web-dezan.jpg', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_cliente`
--

CREATE TABLE `usuario_cliente` (
  `id_usuario_cliente` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `senha` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receber_novidades_email` int(11) DEFAULT NULL COMMENT '1-Sim\n0-Não',
  `status` int(11) DEFAULT NULL COMMENT '1-Ativo\n0-Inativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `id_veiculo` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `ano_fabricacao` varchar(45) DEFAULT NULL,
  `ano_modelo` varchar(45) DEFAULT NULL,
  `km` varchar(45) DEFAULT NULL,
  `placa` varchar(45) DEFAULT NULL,
  `opcionais` varchar(255) DEFAULT NULL,
  `cambio` int(11) DEFAULT NULL COMMENT '1-Manual\n2-Automático\n3-Semi-Automático',
  `combustivel` int(11) DEFAULT NULL COMMENT '1-Gasolina\n2-Álcool\n3-Flex\n4-Gás Natural\n5-Diesel\n6-Elétrico',
  `valor_fipe` varchar(45) DEFAULT NULL,
  `valor_venda` varchar(45) DEFAULT NULL,
  `observacoes` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1-À venda\n2-Vendido\n3-Cancelado',
  `id_veiculo_marca` int(11) NOT NULL,
  `id_clientes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`id_veiculo`, `titulo`, `ano_fabricacao`, `ano_modelo`, `km`, `placa`, `opcionais`, `cambio`, `combustivel`, `valor_fipe`, `valor_venda`, `observacoes`, `status`, `id_veiculo_marca`, `id_clientes`) VALUES
(4, 'Civic LXL 1.8', '2010', '2010', '140.000', 'ABC-1A12', 'Bancos em Couro,Computador de Bordo,Direção Hidráulica', 2, 3, '34.500,00', '32.000,00', 'Veículo contem detalhe no parabrisa', 2, 38, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo_marca`
--

CREATE TABLE `veiculo_marca` (
  `id_veiculo_marca` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1-Ativo\n0-Inativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `veiculo_marca`
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
-- Estrutura da tabela `veiculo_opcionais`
--

CREATE TABLE `veiculo_opcionais` (
  `id_veiculo_opcionais` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1-Ativo\n0-Inativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `veiculo_opcionais`
--

INSERT INTO `veiculo_opcionais` (`id_veiculo_opcionais`, `descricao`, `status`) VALUES
(1, 'Direção Hidráulica', 1),
(2, 'Bancos em Couro', 1),
(3, 'Câmera de Ré', 1),
(4, 'Computador de Bordo', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vitrine_grupo`
--

CREATE TABLE `vitrine_grupo` (
  `id_vitrine_grupo` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `imagem` longtext DEFAULT NULL,
  `url_amigavel` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vitrine_produto`
--

CREATE TABLE `vitrine_produto` (
  `id_vitrine_produto` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `detalhes` longtext DEFAULT NULL,
  `garantia` varchar(45) DEFAULT NULL,
  `peso` varchar(45) DEFAULT NULL,
  `dimensoes` varchar(45) DEFAULT NULL,
  `materiais` varchar(100) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `manual` varchar(255) DEFAULT NULL,
  `informacao_adicional_1` longtext DEFAULT NULL,
  `informacao_adicional_2` longtext DEFAULT NULL,
  `informacao_adicional_3` longtext DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `valor` varchar(255) DEFAULT NULL,
  `situacao` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `url_amigavel` varchar(255) DEFAULT NULL,
  `id_vitrine_categoria` int(11) DEFAULT NULL,
  `id_vitrine_subgrupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vitrine_produto_cores`
--

CREATE TABLE `vitrine_produto_cores` (
  `id_vitrine_produto_cores` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `cor_hexadecimal` varchar(45) DEFAULT NULL,
  `referencia` varchar(45) DEFAULT NULL,
  `imagem1` varchar(255) DEFAULT NULL,
  `imagem2` varchar(255) DEFAULT NULL,
  `imagem3` varchar(255) DEFAULT NULL,
  `imagem4` varchar(255) DEFAULT NULL,
  `imagem5` varchar(255) DEFAULT NULL,
  `url_amigavel` varchar(255) DEFAULT NULL,
  `id_vitrine_produto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vitrine_subgrupo`
--

CREATE TABLE `vitrine_subgrupo` (
  `id_vitrine_subgrupo` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `nome_pagina` varchar(100) DEFAULT NULL,
  `imagem_capa` varchar(255) DEFAULT NULL,
  `url_amigavel` varchar(255) DEFAULT NULL,
  `id_vitrine_grupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Índices para tabela `blog_categorias`
--
ALTER TABLE `blog_categorias`
  ADD PRIMARY KEY (`id_blog_categorias`);

--
-- Índices para tabela `blog_comentario`
--
ALTER TABLE `blog_comentario`
  ADD PRIMARY KEY (`id_blog_comentario`),
  ADD KEY `fk_blog_comentario_blog_postagem1_idx` (`id_blog_postagem`),
  ADD KEY `fk_blog_comentario_usuario_cliente1_idx` (`id_usuario_cliente`);

--
-- Índices para tabela `blog_imagens`
--
ALTER TABLE `blog_imagens`
  ADD PRIMARY KEY (`id_blog_imagens`);

--
-- Índices para tabela `blog_postagem`
--
ALTER TABLE `blog_postagem`
  ADD PRIMARY KEY (`id_blog_postagem`),
  ADD KEY `fk_blog_postagem_usuarios1_idx` (`id_usuarios`),
  ADD KEY `fk_blog_postagem_blog_subcategorias1_idx` (`id_blog_subcategorias`);

--
-- Índices para tabela `blog_postagem_galeria`
--
ALTER TABLE `blog_postagem_galeria`
  ADD PRIMARY KEY (`id_blog_postagem_galeria`),
  ADD KEY `fk_blog_postagem_galeria_blog_postagem1_idx` (`id_blog_postagem`);

--
-- Índices para tabela `blog_subcategorias`
--
ALTER TABLE `blog_subcategorias`
  ADD PRIMARY KEY (`id_blog_subcategorias`),
  ADD KEY `fk_blog_subcategorias_blog_categorias1_idx` (`id_blog_categorias`);

--
-- Índices para tabela `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id_cases`),
  ADD KEY `fk_cases_clientes1_idx` (`id_clientes`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_clientes`);

--
-- Índices para tabela `contatos_recebidos`
--
ALTER TABLE `contatos_recebidos`
  ADD PRIMARY KEY (`id_contatos_recebidos`);

--
-- Índices para tabela `conteudo_personalizado`
--
ALTER TABLE `conteudo_personalizado`
  ADD PRIMARY KEY (`id_conteudo_personalizado`);

--
-- Índices para tabela `depoimentos`
--
ALTER TABLE `depoimentos`
  ADD PRIMARY KEY (`id_depoimentos`),
  ADD KEY `fk_depoimentos_clientes1_idx` (`id_clientes`);

--
-- Índices para tabela `enderecos`
--
ALTER TABLE `enderecos`
  ADD PRIMARY KEY (`id_enderecos`);

--
-- Índices para tabela `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id_equipe`);

--
-- Índices para tabela `equipe_contato`
--
ALTER TABLE `equipe_contato`
  ADD PRIMARY KEY (`id_equipe_contato`),
  ADD KEY `fk_equipe_contato_equipe1_idx` (`id_equipe`);

--
-- Índices para tabela `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id_eventos`);

--
-- Índices para tabela `galeria_grupo`
--
ALTER TABLE `galeria_grupo`
  ADD PRIMARY KEY (`id_galeria_grupo`);

--
-- Índices para tabela `galeria_imagem`
--
ALTER TABLE `galeria_imagem`
  ADD PRIMARY KEY (`id_galeria_imagem`),
  ADD KEY `fk_galeria_item_galeria_grupo_idx` (`id_galeria_grupo`);

--
-- Índices para tabela `informacoes`
--
ALTER TABLE `informacoes`
  ADD PRIMARY KEY (`id_informacoes`),
  ADD KEY `fk_informacoes_conteudo_personalizado1_idx` (`id_conteudo_personalizado`);

--
-- Índices para tabela `perguntas_frequentes`
--
ALTER TABLE `perguntas_frequentes`
  ADD PRIMARY KEY (`id_perguntas_frequentes`),
  ADD KEY `fk_perguntas_frequentes_servicos1_idx` (`id_servicos`);

--
-- Índices para tabela `redes_sociais`
--
ALTER TABLE `redes_sociais`
  ADD PRIMARY KEY (`id_redes_sociais`);

--
-- Índices para tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id_servicos`);

--
-- Índices para tabela `tamanho_imagens`
--
ALTER TABLE `tamanho_imagens`
  ADD PRIMARY KEY (`id_tamanho_imagens`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`);

--
-- Índices para tabela `usuario_cliente`
--
ALTER TABLE `usuario_cliente`
  ADD PRIMARY KEY (`id_usuario_cliente`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`id_veiculo`),
  ADD KEY `fk_veiculo_veiculo_marca1_idx` (`id_veiculo_marca`),
  ADD KEY `fk_veiculo_clientes1_idx` (`id_clientes`);

--
-- Índices para tabela `veiculo_marca`
--
ALTER TABLE `veiculo_marca`
  ADD PRIMARY KEY (`id_veiculo_marca`);

--
-- Índices para tabela `veiculo_opcionais`
--
ALTER TABLE `veiculo_opcionais`
  ADD PRIMARY KEY (`id_veiculo_opcionais`);

--
-- Índices para tabela `vitrine_grupo`
--
ALTER TABLE `vitrine_grupo`
  ADD PRIMARY KEY (`id_vitrine_grupo`);

--
-- Índices para tabela `vitrine_produto`
--
ALTER TABLE `vitrine_produto`
  ADD PRIMARY KEY (`id_vitrine_produto`),
  ADD KEY `fk_vitrine_produto_vitrine_subgrupo1_idx` (`id_vitrine_subgrupo`);

--
-- Índices para tabela `vitrine_produto_cores`
--
ALTER TABLE `vitrine_produto_cores`
  ADD PRIMARY KEY (`id_vitrine_produto_cores`),
  ADD KEY `fk_vitrine_produto_cores_vitrine_produto1_idx` (`id_vitrine_produto`);

--
-- Índices para tabela `vitrine_subgrupo`
--
ALTER TABLE `vitrine_subgrupo`
  ADD PRIMARY KEY (`id_vitrine_subgrupo`),
  ADD KEY `fk_vitrine_subgrupo_vitrine_grupo1_idx` (`id_vitrine_grupo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blog_categorias`
--
ALTER TABLE `blog_categorias`
  MODIFY `id_blog_categorias` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blog_comentario`
--
ALTER TABLE `blog_comentario`
  MODIFY `id_blog_comentario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blog_imagens`
--
ALTER TABLE `blog_imagens`
  MODIFY `id_blog_imagens` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blog_postagem`
--
ALTER TABLE `blog_postagem`
  MODIFY `id_blog_postagem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blog_postagem_galeria`
--
ALTER TABLE `blog_postagem_galeria`
  MODIFY `id_blog_postagem_galeria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blog_subcategorias`
--
ALTER TABLE `blog_subcategorias`
  MODIFY `id_blog_subcategorias` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cases`
--
ALTER TABLE `cases`
  MODIFY `id_cases` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_clientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `contatos_recebidos`
--
ALTER TABLE `contatos_recebidos`
  MODIFY `id_contatos_recebidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `conteudo_personalizado`
--
ALTER TABLE `conteudo_personalizado`
  MODIFY `id_conteudo_personalizado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `depoimentos`
--
ALTER TABLE `depoimentos`
  MODIFY `id_depoimentos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `enderecos`
--
ALTER TABLE `enderecos`
  MODIFY `id_enderecos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id_equipe` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `equipe_contato`
--
ALTER TABLE `equipe_contato`
  MODIFY `id_equipe_contato` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id_eventos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `galeria_grupo`
--
ALTER TABLE `galeria_grupo`
  MODIFY `id_galeria_grupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `galeria_imagem`
--
ALTER TABLE `galeria_imagem`
  MODIFY `id_galeria_imagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `informacoes`
--
ALTER TABLE `informacoes`
  MODIFY `id_informacoes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `perguntas_frequentes`
--
ALTER TABLE `perguntas_frequentes`
  MODIFY `id_perguntas_frequentes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `redes_sociais`
--
ALTER TABLE `redes_sociais`
  MODIFY `id_redes_sociais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id_servicos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tamanho_imagens`
--
ALTER TABLE `tamanho_imagens`
  MODIFY `id_tamanho_imagens` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuario_cliente`
--
ALTER TABLE `usuario_cliente`
  MODIFY `id_usuario_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `id_veiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `veiculo_marca`
--
ALTER TABLE `veiculo_marca`
  MODIFY `id_veiculo_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de tabela `veiculo_opcionais`
--
ALTER TABLE `veiculo_opcionais`
  MODIFY `id_veiculo_opcionais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `vitrine_grupo`
--
ALTER TABLE `vitrine_grupo`
  MODIFY `id_vitrine_grupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `vitrine_produto`
--
ALTER TABLE `vitrine_produto`
  MODIFY `id_vitrine_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `vitrine_produto_cores`
--
ALTER TABLE `vitrine_produto_cores`
  MODIFY `id_vitrine_produto_cores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `vitrine_subgrupo`
--
ALTER TABLE `vitrine_subgrupo`
  MODIFY `id_vitrine_subgrupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `blog_comentario`
--
ALTER TABLE `blog_comentario`
  ADD CONSTRAINT `fk_blog_comentario_blog_postagem1` FOREIGN KEY (`id_blog_postagem`) REFERENCES `blog_postagem` (`id_blog_postagem`),
  ADD CONSTRAINT `fk_blog_comentario_usuario_cliente1` FOREIGN KEY (`id_usuario_cliente`) REFERENCES `usuario_cliente` (`id_usuario_cliente`);

--
-- Limitadores para a tabela `blog_postagem`
--
ALTER TABLE `blog_postagem`
  ADD CONSTRAINT `fk_blog_postagem_blog_subcategorias1` FOREIGN KEY (`id_blog_subcategorias`) REFERENCES `blog_subcategorias` (`id_blog_subcategorias`),
  ADD CONSTRAINT `fk_blog_postagem_usuarios1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`);

--
-- Limitadores para a tabela `blog_postagem_galeria`
--
ALTER TABLE `blog_postagem_galeria`
  ADD CONSTRAINT `fk_blog_postagem_galeria_blog_postagem1` FOREIGN KEY (`id_blog_postagem`) REFERENCES `blog_postagem` (`id_blog_postagem`);

--
-- Limitadores para a tabela `blog_subcategorias`
--
ALTER TABLE `blog_subcategorias`
  ADD CONSTRAINT `fk_blog_subcategorias_blog_categorias1` FOREIGN KEY (`id_blog_categorias`) REFERENCES `blog_categorias` (`id_blog_categorias`);

--
-- Limitadores para a tabela `cases`
--
ALTER TABLE `cases`
  ADD CONSTRAINT `fk_cases_clientes1` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`);

--
-- Limitadores para a tabela `depoimentos`
--
ALTER TABLE `depoimentos`
  ADD CONSTRAINT `fk_depoimentos_clientes1` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`);

--
-- Limitadores para a tabela `equipe_contato`
--
ALTER TABLE `equipe_contato`
  ADD CONSTRAINT `fk_equipe_contato_equipe1` FOREIGN KEY (`id_equipe`) REFERENCES `equipe` (`id_equipe`);

--
-- Limitadores para a tabela `galeria_imagem`
--
ALTER TABLE `galeria_imagem`
  ADD CONSTRAINT `fk_galeria_item_galeria_grupo` FOREIGN KEY (`id_galeria_grupo`) REFERENCES `galeria_grupo` (`id_galeria_grupo`);

--
-- Limitadores para a tabela `informacoes`
--
ALTER TABLE `informacoes`
  ADD CONSTRAINT `fk_informacoes_conteudo_personalizado1` FOREIGN KEY (`id_conteudo_personalizado`) REFERENCES `conteudo_personalizado` (`id_conteudo_personalizado`);

--
-- Limitadores para a tabela `perguntas_frequentes`
--
ALTER TABLE `perguntas_frequentes`
  ADD CONSTRAINT `fk_perguntas_frequentes_servicos1` FOREIGN KEY (`id_servicos`) REFERENCES `servicos` (`id_servicos`);

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `fk_veiculo_clientes1` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`),
  ADD CONSTRAINT `fk_veiculo_veiculo_marca1` FOREIGN KEY (`id_veiculo_marca`) REFERENCES `veiculo_marca` (`id_veiculo_marca`);

--
-- Limitadores para a tabela `vitrine_produto`
--
ALTER TABLE `vitrine_produto`
  ADD CONSTRAINT `fk_vitrine_produto_vitrine_subgrupo1` FOREIGN KEY (`id_vitrine_subgrupo`) REFERENCES `vitrine_subgrupo` (`id_vitrine_subgrupo`);

--
-- Limitadores para a tabela `vitrine_produto_cores`
--
ALTER TABLE `vitrine_produto_cores`
  ADD CONSTRAINT `fk_vitrine_produto_cores_vitrine_produto1` FOREIGN KEY (`id_vitrine_produto`) REFERENCES `vitrine_produto` (`id_vitrine_produto`);

--
-- Limitadores para a tabela `vitrine_subgrupo`
--
ALTER TABLE `vitrine_subgrupo`
  ADD CONSTRAINT `fk_vitrine_subgrupo_vitrine_grupo1` FOREIGN KEY (`id_vitrine_grupo`) REFERENCES `vitrine_grupo` (`id_vitrine_grupo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
