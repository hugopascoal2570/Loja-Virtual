-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Dez-2019 às 22:53
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ht_categorias`
--

CREATE TABLE `ht_categorias` (
  `cate_id` int(11) NOT NULL,
  `cate_nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cate_slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ht_categorias`
--

INSERT INTO `ht_categorias` (`cate_id`, `cate_nome`, `cate_slug`) VALUES
(1, 'Geral', 'geral'),
(2, 'Camisas', 'categoria-camisas'),
(3, 'Calças', 'categoria-calcas'),
(4, 'Tênis', 'categoria-tenis'),
(5, 'Sapatos', 'categoria-sapatos'),
(6, 'Vestidos', 'categoria-vestidos'),
(7, 'Jaqueta', 'categoria-jaquetas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ht_clientes`
--

CREATE TABLE `ht_clientes` (
  `cli_id` int(11) NOT NULL,
  `cli_nome` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `cli_sobrenome` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `cli_endereco` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cli_numero` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cli_bairro` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `cli_cidade` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `cli_uf` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `cli_cep` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cli_cpf` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `cli_rg` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cli_ddd` int(2) NOT NULL,
  `cli_fone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cli_celular` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cli_email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `cli_pass` int(40) NOT NULL,
  `cli_data_nasc` date NOT NULL,
  `cli_data_cad` date NOT NULL,
  `cli_hora_cad` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ht_clientes`
--

INSERT INTO `ht_clientes` (`cli_id`, `cli_nome`, `cli_sobrenome`, `cli_endereco`, `cli_numero`, `cli_bairro`, `cli_cidade`, `cli_uf`, `cli_cep`, `cli_cpf`, `cli_rg`, `cli_ddd`, `cli_fone`, `cli_celular`, `cli_email`, `cli_pass`, `cli_data_nasc`, `cli_data_cad`, `cli_hora_cad`) VALUES
(1, 'Hugo', 'Pascoal', 'rua jerônimo Heráclio', '197', 'centro', 'surubim', 'PE', '55750000', '8309166', '06399765498', 81, '00000000', '997480664', 'hugo_pascoal_@hotmail.com', 258963147, '1995-04-01', '2019-11-21', '00:00:00'),
(2, 'cladeofa', 'morais', 'rua jeronimo heraclio', '197', 'centro', 'surubim', 'PE', '55750000', '33363021453', '000000000', 81, '36340000', '998582036', 'claubrito@outlook.com', 12345678, '2019-11-21', '2019-11-21', '00:00:00'),
(4, 'hugo', 'teste', 'rua jeronimo heraclio', '197', 'centro', 'surubim', 'pe', '55750000', '06399765498', '8309166', 81, '36340000', '997480664', 'hugo159hb@gmail.com', 258963147, '2019-07-03', '2019-12-03', '00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ht_imagens`
--

CREATE TABLE `ht_imagens` (
  `img_id` int(11) NOT NULL,
  `img_nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img_pro_id` int(11) NOT NULL,
  `img_pasta` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ht_imagens`
--

INSERT INTO `ht_imagens` (`img_id`, `img_nome`, `img_pro_id`, `img_pasta`) VALUES
(1, 'produto-12.jpg', 27, ''),
(2, 'produto-13.jpg', 27, ''),
(3, 'produto-14-1.jpg', 28, ''),
(4, 'produto-14-2.jpg', 28, ''),
(5, 'produto-14-3.jpg', 28, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ht_pedidos`
--

CREATE TABLE `ht_pedidos` (
  `ped_id` int(11) NOT NULL,
  `ped_data` date NOT NULL,
  `ped_hora` time NOT NULL,
  `ped_cliente` int(11) NOT NULL,
  `ped_cod` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ped_ref` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ped_pag_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ped_pag_forma` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ped_pag_tipo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ped_pag_codigo` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `ped_frete_valor` double(9,2) DEFAULT 0.00,
  `ped_frete_tipo` varchar(20) COLLATE utf8_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ht_pedidos`
--

INSERT INTO `ht_pedidos` (`ped_id`, `ped_data`, `ped_hora`, `ped_cliente`, `ped_cod`, `ped_ref`, `ped_pag_status`, `ped_pag_forma`, `ped_pag_tipo`, `ped_pag_codigo`, `ped_frete_valor`, `ped_frete_tipo`) VALUES
(1, '2019-11-21', '19:11:23', 1, '123456789', '0001', 'Não', '', '', '', NULL, NULL),
(2, '2019-11-21', '19:17:50', 1, '123456789', '0001', 'Pago', '', '', '', NULL, NULL),
(3, '2019-11-21', '19:45:27', 1, '123456789', '0001', 'Não', '', '', '', NULL, NULL),
(4, '2019-11-21', '19:53:07', 1, '123456789', '0001', 'Pago', '', '', '', NULL, NULL),
(5, '2019-11-21', '20:05:16', 1, '12345678', '0001', 'Pago', '', '', '', NULL, NULL),
(6, '2019-11-21', '20:16:11', 1, 'c005848898826f56f69b9c1b52c49bc3', '0001', 'Não', '', '', '', NULL, NULL),
(7, '2019-11-21', '20:17:03', 1, 'fbbb4d3fa453a6f238d3a2453d889e9f', '0001', 'Pago', '', '', '', NULL, NULL),
(8, '2019-11-21', '20:20:12', 1, '9287fd7d716781af3e6cb32a705e61f3', '0001', 'Pago', '', '', '', NULL, NULL),
(9, '2019-11-23', '00:06:49', 2, '174323a15af0db9f0d11ddaf40e94c80', '0001', 'Pago', '', '', '', NULL, NULL),
(10, '2019-11-23', '00:10:33', 2, '4d5cfface4a1d7bc69bd1bf5a702ccdf', '0001', 'Pago', '', '', '', NULL, NULL),
(11, '2019-11-23', '02:25:00', 2, 'e3245ffe7702eea3a6ee18a6db8ba0cf', '0001teste', 'Não', '', '', '', NULL, NULL),
(12, '2019-11-23', '03:31:15', 1, '0034dc18d69dced592c3b766574d26b9', '201911230311152', '', '', '', '', NULL, NULL),
(13, '2019-11-23', '03:34:47', 1, '201911230311472', '201911230311472', '', '', '', '', NULL, NULL),
(14, '2019-12-08', '02:30:17', 1, '123456', '0100101ref', '', '', '', '', NULL, NULL),
(15, '2019-12-08', '02:34:54', 1, '123456', '0100101ref', '', '', '', '', NULL, NULL),
(16, '2019-12-08', '02:53:20', 1, '123456', '0100101ref', '', '', '', '', NULL, NULL),
(17, '2019-12-08', '03:01:15', 1, '22222', '0100101ref', '', '', '', '', NULL, NULL),
(18, '2019-12-08', '03:01:20', 1, '22222', '0100101ref', '', '', '', '', NULL, NULL),
(19, '2019-12-09', '02:14:22', 1, '83f264c1f48723deb20b03049eec6b04', '0100101ref', '', '', '', '', NULL, NULL),
(20, '2019-12-11', '20:04:20', 1, 'b689901e6ceb5bb2a0b7ccdf261f5d38', '0100101ref', '', '', '', '', NULL, NULL),
(21, '2019-12-11', '20:05:19', 1, '74fadca5b2dbbfbe7c2dd741f78ff8c3', '0100101ref', '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ht_pedidos_itens`
--

CREATE TABLE `ht_pedidos_itens` (
  `item_id` int(11) NOT NULL,
  `item_produto` int(11) NOT NULL,
  `item_valor` double(9,2) NOT NULL,
  `item_qtd` int(6) NOT NULL,
  `item_ped_cod` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ht_pedidos_itens`
--

INSERT INTO `ht_pedidos_itens` (`item_id`, `item_produto`, `item_valor`, `item_qtd`, `item_ped_cod`) VALUES
(20, 28, 80.00, 1, '123456'),
(21, 29, 202.50, 1, '123456'),
(22, 27, 134.10, 1, '123456'),
(23, 28, 80.00, 1, '123456'),
(24, 29, 202.50, 1, '123456'),
(25, 27, 134.10, 1, '123456'),
(26, 28, 80.00, 1, '22222'),
(27, 20, 220.00, 1, '22222'),
(28, 28, 80.00, 1, '22222'),
(29, 20, 220.00, 1, '22222'),
(30, 29, 202.50, 1, '83f264c1f48723deb20b03049eec6b04'),
(31, 29, 202.50, 1, 'b689901e6ceb5bb2a0b7ccdf261f5d38'),
(32, 29, 202.50, 1, '74fadca5b2dbbfbe7c2dd741f78ff8c3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ht_produtos`
--

CREATE TABLE `ht_produtos` (
  `pro_id` int(11) NOT NULL,
  `pro_categoria` int(11) NOT NULL,
  `pro_nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_peso` double(9,3) NOT NULL,
  `pro_valor_ant` double(9,2) NOT NULL,
  `pro_valor` double(9,2) NOT NULL,
  `pro_largura` int(11) NOT NULL,
  `pro_altura` int(11) NOT NULL,
  `pro_comprimento` int(11) NOT NULL,
  `pro_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pro_estoque` int(11) NOT NULL,
  `pro_modelo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_ref` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_fabricante` int(11) NOT NULL,
  `pro_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `pro_frete_free` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Não'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ht_produtos`
--

INSERT INTO `ht_produtos` (`pro_id`, `pro_categoria`, `pro_nome`, `pro_desc`, `pro_peso`, `pro_valor_ant`, `pro_valor`, `pro_largura`, `pro_altura`, `pro_comprimento`, `pro_img`, `pro_slug`, `pro_status`, `pro_estoque`, `pro_modelo`, `pro_ref`, `pro_fabricante`, `pro_ativo`, `pro_frete_free`) VALUES
(18, 6, 'Vestido Branco', 'Lorem ipsum lacinia tellus taciti torquent ultrices eu, vitae commodo curae hendrerit nostra risus ligula, metus fringilla mi sagittis sapien dictum. interdum velit netus diam eleifend nullam interdum donec luctus habitant', 350.000, 285.00, 300.00, 50, 170, 60, 'produto-1.jpg', ' vestido-branco', '-5 OFF', 50, 'Vestido Branco', '00001', 1, '1', 'Não'),
(19, 6, 'Vestido Cinza', 'Lorem ipsum lacinia tellus taciti torquent ultrices eu, vitae commodo curae hendrerit nostra risus ligula, metus fringilla mi sagittis sapien dictum. interdum velit netus diam eleifend nullam interdum donec luctus habitant', 280.000, 250.00, 225.00, 100, 120, 180, 'produto-2.jpg', 'vestido-cinza', '-10% OFF', 50, 'Vestido Cinza', '0002', 1, '1', 'Não'),
(20, 6, 'Vestido de Manga Longa', 'Lorem ipsum lacinia tellus taciti torquent ultrices eu, vitae commodo curae hendrerit nostra risus ligula, metus fringilla mi sagittis sapien dictum. interdum velit netus diam eleifend nullam interdum donec luctus habitant', 400.000, 250.00, 220.00, 100, 170, 180, 'produto-3.jpg', 'vestido-manga-longa', '-12% OFF', 30, 'Vestido Manga Longa', '0003', 1, '1', 'Não'),
(21, 6, 'Vestido Estampado', 'Lorem ipsum lacinia tellus taciti torquent ultrices eu, vitae commodo curae hendrerit nostra risus ligula, metus fringilla mi sagittis sapien dictum. interdum velit netus diam eleifend nullam interdum donec luctus habitant', 280.000, 310.00, 300.00, 100, 50, 180, 'produto-4.jpg', 'vestido-estampado', 'Mais Vendido', 20, 'Vestido Estampado', '0004', 1, '1', 'Não'),
(22, 6, 'Vestido Laranja', 'Lorem ipsum lacinia tellus taciti torquent ultrices eu, vitae commodo curae hendrerit nostra risus ligula, metus fringilla mi sagittis sapien dictum. interdum velit netus diam eleifend nullam interdum donec luctus habitant', 280.000, 285.00, 250.00, 50, 50, 180, 'produto-5.jpg', 'vestido-laranja', 'Coleção Nova', 10, 'Vestido Laranja', '0005', 1, '1', 'Não'),
(23, 6, 'Vestido Vermelho', 'Lorem ipsum lacinia tellus taciti torquent ultrices eu, vitae commodo curae hendrerit nostra risus ligula, metus fringilla mi sagittis sapien dictum. interdum velit netus diam eleifend nullam interdum donec luctus habitant', 400.000, 280.00, 280.00, 120, 170, 180, 'produto-6.jpg\r\n', 'vestido-vermelho', 'Nova Coleção', 15, 'Vestido Vermelho', '0006', 1, '1', 'Não'),
(24, 6, 'Vestido Preto', 'Lorem ipsum lacinia tellus taciti torquent ultrices eu, vitae commodo curae hendrerit nostra risus ligula, metus fringilla mi sagittis sapien dictum. interdum velit netus diam eleifend nullam interdum donec luctus habitant', 280.000, 250.00, 260.00, 100, 200, 180, 'produto-7.jpg', 'vestido-preto', '-10 OFF', 30, 'Vestido Preto', '0007', 1, '1', 'Não'),
(25, 7, 'Jaqueta Jeans Masculina', 'Lorem ipsum lacinia tellus taciti torquent ultrices eu, vitae commodo curae hendrerit nostra risus ligula, metus fringilla mi sagittis sapien dictum. interdum velit netus diam eleifend nullam interdum donec luctus habitant', 600.000, 100.00, 85.00, 120, 170, 180, 'produto-8.jpg', 'Jaqueta Jeans', '-15 OFF', 50, 'Jaqueta Jeans', '0008', 1, '1', 'Não'),
(26, 3, 'Calça Jeans', ' Lorem ipsum risus elit dictum id eu, duis class velit sociosqu justo, litora augue donec sit suscipit. elementum rhoncus et non aliquet curae phasellus justo suscipit luctus ultrices porttitor, ac pellentesque venenatis condimentum praesent vivamus proin egestas tincidunt. phasellus nam eros etiam arcu mi tristique, fames ornare inceptos porta dictumst semper, vestibulum potenti luctus taciti dictumst.', 200.000, 250.00, 240.00, 60, 60, 100, 'produto-10.jpg', 'calça-jeans', '-4% OFF', 15, 'Calça Jeans Feminina', '00010', 1, '1', 'Não'),
(27, 4, 'TÊNIS POLO RALPH LAUREN MARINHO', 'Lorem ipsum risus elit dictum id eu, duis class velit sociosqu justo, litora augue donec sit suscipit. elementum rhoncus et non aliquet curae phasellus justo suscipit luctus ultrices porttitor, ac pellentesque venenatis condimentum praesent vivamus proin egestas tincidunt. phasellus nam eros etiam arcu mi tristique, fames ornare inceptos porta dictumst semper, vestibulum potenti luctus taciti dictumst.', 300.000, 149.00, 134.10, 100, 60, 100, 'produto-11.jpg', 'tenis-ralph-lauren', '-10% OFF', 100, 'TÊNIS POLO RALPH LAUREN MARINHO', '00011', 1, '1', 'Não'),
(28, 6, 'Vestido Quintess Jeans de Alças e Amarração', 'Lorem ipsum varius dictum fermentum tellus pretium tellus, lacus porta semper ligula morbi rhoncus porta, imperdiet hac magna egestas dictumst convallis. maecenas varius massa porta convallis luctus congue velit adipiscing ligula', 200.000, 100.00, 80.00, 100, 60, 30, 'produto-14.jpg', 'vestido-quintess', 'Nova Coleção', 20, 'Vestido Quintess Jeans de Alças e Amarração', '00014', 1, '1', 'Não'),
(29, 6, 'Vestido Bordô Assimétrico com Alças', 'dsfdfçlejfgehguigbgrfhgrejkgnefwvgjefbgjiojoygnjjiohbjrgojhnfjogbjuiohg', 280.000, 225.00, 202.50, 120, 170, 30, 'produto-15.jpg', 'Vestido-Bordô', '-10 OFF', 150, 'Vestido Bordô Assimétrico com Alças', '00016', 1, '1', 'Não');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ht_categorias`
--
ALTER TABLE `ht_categorias`
  ADD PRIMARY KEY (`cate_id`);

--
-- Índices para tabela `ht_clientes`
--
ALTER TABLE `ht_clientes`
  ADD PRIMARY KEY (`cli_id`);

--
-- Índices para tabela `ht_imagens`
--
ALTER TABLE `ht_imagens`
  ADD PRIMARY KEY (`img_id`);

--
-- Índices para tabela `ht_pedidos`
--
ALTER TABLE `ht_pedidos`
  ADD PRIMARY KEY (`ped_id`);

--
-- Índices para tabela `ht_pedidos_itens`
--
ALTER TABLE `ht_pedidos_itens`
  ADD PRIMARY KEY (`item_id`);

--
-- Índices para tabela `ht_produtos`
--
ALTER TABLE `ht_produtos`
  ADD PRIMARY KEY (`pro_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ht_categorias`
--
ALTER TABLE `ht_categorias`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `ht_clientes`
--
ALTER TABLE `ht_clientes`
  MODIFY `cli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `ht_imagens`
--
ALTER TABLE `ht_imagens`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `ht_pedidos`
--
ALTER TABLE `ht_pedidos`
  MODIFY `ped_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `ht_pedidos_itens`
--
ALTER TABLE `ht_pedidos_itens`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `ht_produtos`
--
ALTER TABLE `ht_produtos`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
