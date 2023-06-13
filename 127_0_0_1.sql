-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 30-Jan-2022 às 16:32
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lazariniautocenter`
--
DROP DATABASE IF EXISTS `lazariniautocenter`;
CREATE DATABASE IF NOT EXISTS `lazariniautocenter` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lazariniautocenter`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `cdclie` varchar(14) NOT NULL,
  `declie` varchar(100) DEFAULT NULL,
  `cdtipo` varchar(15) DEFAULT NULL,
  `nrinsc` varchar(20) DEFAULT NULL,
  `nrccm` varchar(20) DEFAULT NULL,
  `nrrg` varchar(20) DEFAULT NULL,
  `deende` varchar(100) DEFAULT NULL,
  `nrende` int(11) DEFAULT NULL,
  `decomp` varchar(50) DEFAULT NULL,
  `debair` varchar(50) DEFAULT NULL,
  `decida` varchar(50) DEFAULT NULL,
  `cdesta` varchar(50) DEFAULT NULL,
  `nrcepi` varchar(8) DEFAULT NULL,
  `nrtele` varchar(20) DEFAULT NULL,
  `nrcelu` varchar(20) DEFAULT NULL,
  `demail` varchar(255) DEFAULT NULL,
  `deobse` varchar(500) DEFAULT NULL,
  `flativ` varchar(10) DEFAULT NULL,
  `dtcada` date DEFAULT NULL,
  PRIMARY KEY (`cdclie`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`cdclie`, `declie`, `cdtipo`, `nrinsc`, `nrccm`, `nrrg`, `deende`, `nrende`, `decomp`, `debair`, `decida`, `cdesta`, `nrcepi`, `nrtele`, `nrcelu`, `demail`, `deobse`, `flativ`, `dtcada`) VALUES
('26812855000100', 'AILTON F SILVA', 'Jurídica', 'Isento', 'asasa', '26812855000100', 'Rua São Francisco', 12, 'Sala 2, Conjunto A', 'São Geraldo', 'Juazeiro', 'BA', '48905660', '11 1234-9876', '(12) 2-2222-2222', '11.com', 'asasa', 'S', '2021-03-10'),
('89264306005', 'Marco Aurélio Mira', 'Física', '', '', '00.000.000-6', 'Rua Serra de Parima', 984, '', 'Jardim Bela Vista', 'Itapevi', 'SP', '06656050', '11991373086', '11991373086', 'marcomira28@gmail.com', 'Advogado', 'S', '2021-09-23'),
('42242512803', 'FRANCISCO ARLEM DE SOUSA MOTA', 'Física', '', '', '', 'Rua Caranaíba', 62, 'viela 3', 'Jardim Jacy', 'Guarulhos', 'SP', '07262600', '', '11975828490', 'francisco.arlem@hotmail.com', '', 'S', '2021-05-24'),
('09004590854', 'Ederson Lazarini', 'Física', '', '', '182584446', 'Rua do Esporte', 138, 'Estrada velha do itaim', 'Jardim Guaracy', 'Guarulhos', 'SP', '07262208', '', '11989385143', 'wilsonlzarini23@gmail.com', '', 'S', '2021-04-23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contas`
--

DROP TABLE IF EXISTS `contas`;
CREATE TABLE IF NOT EXISTS `contas` (
  `cdcont` bigint(20) NOT NULL AUTO_INCREMENT,
  `decont` varchar(50) DEFAULT NULL,
  `dtcont` date DEFAULT NULL,
  `vlcont` decimal(15,2) DEFAULT NULL,
  `cdtipo` varchar(15) DEFAULT NULL,
  `vlpago` decimal(15,2) DEFAULT NULL,
  `dtpago` date DEFAULT NULL,
  `cdquem` varchar(100) DEFAULT NULL,
  `cdorig` varchar(100) DEFAULT NULL,
  `deobse` varchar(500) DEFAULT NULL,
  `flativ` varchar(15) DEFAULT NULL,
  `dtcada` date DEFAULT NULL,
  PRIMARY KEY (`cdcont`),
  KEY `icontas1` (`decont`,`dtcont`),
  KEY `icontas2` (`dtcont`,`cdquem`),
  KEY `icontas3` (`dtcont`,`cdorig`)
) ENGINE=MyISAM AUTO_INCREMENT=230 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contas`
--

INSERT INTO `contas` (`cdcont`, `decont`, `dtcont`, `vlcont`, `cdtipo`, `vlpago`, `dtpago`, `cdquem`, `cdorig`, `deobse`, `flativ`, `dtcada`) VALUES
(220, 'Cliente a Receber', '2021-06-24', '948.40', 'Receber', NULL, NULL, '09004590854 - Ederson Lazarini', '25', NULL, 'Sim', '2021-05-24'),
(210, 'Cliente a Receber', '2021-05-23', '109.29', 'Receber', NULL, NULL, '09004590854 - Ederson Lazarini', '25', NULL, 'Sim', '2021-04-23'),
(223, 'Cliente a Receber', '2021-06-24', '948.40', 'Receber', NULL, NULL, '09004590854 - Ederson Lazarini', '25', NULL, 'Sim', '2021-05-24'),
(224, 'Cliente a Receber', '2021-06-24', '119.00', 'Receber', NULL, NULL, '42242512803 - FRANCISCO ARLEM DE SOUSA MOTA', '26', NULL, 'Sim', '2021-05-24'),
(225, 'Cliente a Receber', '2021-06-24', '119.00', 'Receber', NULL, NULL, '42242512803 - FRANCISCO ARLEM DE SOUSA MOTA', '26', NULL, 'Sim', '2021-05-24'),
(226, 'Cliente a Receber', '2021-10-23', '1097.73', 'Receber', NULL, NULL, 'OAB/SP 164230 - Marco Aurélio Mira', '27', NULL, 'Sim', '2021-09-23'),
(227, 'Cliente a Receber', '2021-10-23', '2687.73', 'Receber', NULL, NULL, 'OAB/SP 164230 - Marco Aurélio Mira', '27', NULL, 'Sim', '2021-09-23'),
(228, 'Cliente a Receber', '2021-10-23', '2747.73', 'Receber', NULL, NULL, 'OAB/SP 164230 - Marco Aurélio Mira', '27', NULL, 'Sim', '2021-09-23'),
(229, 'Cliente a Receber', '2021-10-23', '3826.35', 'Receber', NULL, NULL, 'OAB/SP 164230 - Marco Aurélio Mira', '27', NULL, 'Sim', '2021-09-23'),
(222, 'Cliente a Receber', '2021-06-24', '119.00', 'Receber', NULL, NULL, '42242512803 - FRANCISCO ARLEM DE SOUSA MOTA', '26', NULL, 'Sim', '2021-05-24'),
(221, 'Cliente a Receber', '2021-06-24', '119.00', 'Receber', NULL, NULL, '42242512803 - FRANCISCO ARLEM DE SOUSA MOTA', '26', NULL, 'Sim', '2021-05-24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

DROP TABLE IF EXISTS `estados`;
CREATE TABLE IF NOT EXISTS `estados` (
  `cdesta` char(2) NOT NULL,
  `deesta` char(35) DEFAULT NULL,
  PRIMARY KEY (`cdesta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estados`
--

INSERT INTO `estados` (`cdesta`, `deesta`) VALUES
('AC', 'Acre'),
('AL', 'Alagoas'),
('AM', 'Amazonas'),
('AP', 'Amapá'),
('BA', 'Bahia'),
('CE', 'Ceará'),
('DF', 'Distrito Federal'),
('ES', 'Espírito Santo'),
('GO', 'Goiás'),
('MA', 'Maranhão'),
('MG', 'Minas Gerais'),
('MS', 'Mato Grosso do Sul'),
('MT', 'Mato Grosso'),
('PA', 'Pará'),
('PB', 'Paraíba'),
('PE', 'Pernambuco'),
('PI', 'Piauí'),
('PR', 'Paraná'),
('RJ', 'Rio de Janeiro'),
('RN', 'Rio Grande do Norte'),
('RO', 'Rondônia'),
('RR', 'Roraima'),
('RS', 'Rio Grande do Sul'),
('SC', 'Santa Catarina'),
('SE', 'Sergipe'),
('SP', 'São Paulo'),
('TO', 'Tocantins');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
CREATE TABLE IF NOT EXISTS `fornecedores` (
  `cdforn` varchar(14) NOT NULL,
  `deforn` varchar(100) DEFAULT NULL,
  `cdtipo` varchar(15) DEFAULT NULL,
  `nrinsc` varchar(20) DEFAULT NULL,
  `nrccm` varchar(20) DEFAULT NULL,
  `nrrg` varchar(20) DEFAULT NULL,
  `deende` varchar(100) DEFAULT NULL,
  `nrende` int(11) DEFAULT NULL,
  `decomp` varchar(50) DEFAULT NULL,
  `debair` varchar(50) DEFAULT NULL,
  `decida` varchar(50) DEFAULT NULL,
  `cdesta` varchar(50) DEFAULT NULL,
  `nrcepi` varchar(8) DEFAULT NULL,
  `nrtele` varchar(20) DEFAULT NULL,
  `nrcelu` varchar(20) DEFAULT NULL,
  `demail` varchar(255) DEFAULT NULL,
  `deobse` varchar(500) DEFAULT NULL,
  `flativ` varchar(10) DEFAULT NULL,
  `dtcada` date DEFAULT NULL,
  PRIMARY KEY (`cdforn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`cdforn`, `deforn`, `cdtipo`, `nrinsc`, `nrccm`, `nrrg`, `deende`, `nrende`, `decomp`, `debair`, `decida`, `cdesta`, `nrcepi`, `nrtele`, `nrcelu`, `demail`, `deobse`, `flativ`, `dtcada`) VALUES
('08846438000105', 'Teste Oficina', 'Jurídica', '', '', '', 'Rua Caranaíba', 62, '', 'Jardim Jacy', 'Guarulhos', 'SP', '07262600', '', '', '', '', 'S', '2021-03-10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ordem`
--

DROP TABLE IF EXISTS `ordem`;
CREATE TABLE IF NOT EXISTS `ordem` (
  `cdorde` bigint(20) NOT NULL AUTO_INCREMENT,
  `cdclie` varchar(100) DEFAULT NULL,
  `veplac` char(7) DEFAULT NULL,
  `vemarc` varchar(30) DEFAULT NULL,
  `vemode` varchar(30) DEFAULT NULL,
  `veanom` char(4) DEFAULT NULL,
  `veanof` char(4) DEFAULT NULL,
  `vecorv` varchar(15) DEFAULT NULL,
  `cdsitu` varchar(30) DEFAULT NULL,
  `dtorde` date DEFAULT NULL,
  `vlorde` decimal(15,2) DEFAULT NULL,
  `cdform` varchar(30) DEFAULT NULL,
  `qtform` int(11) DEFAULT NULL,
  `vlpago` decimal(15,2) DEFAULT NULL,
  `dtpago` date DEFAULT NULL,
  `deobse` varchar(500) DEFAULT NULL,
  `flativ` varchar(15) DEFAULT NULL,
  `dtcada` date NOT NULL,
  PRIMARY KEY (`cdorde`),
  KEY `iordem1` (`cdclie`,`dtorde`),
  KEY `iordem2` (`cdform`,`dtorde`),
  KEY `iordem3` (`cdclie`,`dtpago`),
  KEY `iordem4` (`cdform`,`dtpago`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ordem`
--

INSERT INTO `ordem` (`cdorde`, `cdclie`, `veplac`, `vemarc`, `vemode`, `veanom`, `veanof`, `vecorv`, `cdsitu`, `dtorde`, `vlorde`, `cdform`, `qtform`, `vlpago`, `dtpago`, `deobse`, `flativ`, `dtcada`) VALUES
(27, '89264306005 - Marco Aurélio Mira', 'DNS8618', 'Toyota', 'Corolla Xei 1.8 16v ', '2004', '2004', 'Prata', 'Orçamento', '2021-09-23', '3826.35', 'Dinheiro', 1, '0.00', '2021-09-23', '', 'Sim', '2021-09-23'),
(25, '09004590854 - Ederson Lazarini', 'QOB5B68', 'Fiat', 'Strada fire 1.4', '2011', '2010', '', 'Concluído', '2021-05-24', '948.40', 'Dinheiro', 1, '0.00', '2021-04-23', 'Peças com 10% de desconto já aplicado pelo fornecedor.', 'Sim', '2021-05-24'),
(26, '42242512803 - FRANCISCO ARLEM DE SOUSA MOTA', 'elj7891', 'volks', 'fox', '2010', '2010', 'azul', 'Entregue', '2021-05-24', '119.00', 'Crédito', 1, '0.00', '2021-05-27', 'troca de óleo', 'Sim', '2021-05-24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ordemi`
--

DROP TABLE IF EXISTS `ordemi`;
CREATE TABLE IF NOT EXISTS `ordemi` (
  `cdorde` bigint(20) DEFAULT NULL,
  `nritem` int(11) DEFAULT NULL,
  `cdpeca` varchar(100) DEFAULT NULL,
  `qtpeca` int(11) DEFAULT NULL,
  `vlpeca` decimal(15,2) DEFAULT NULL,
  `vltota` decimal(15,2) DEFAULT NULL,
  KEY `iordemi1` (`cdorde`,`nritem`,`cdpeca`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ordemi`
--

INSERT INTO `ordemi` (`cdorde`, `nritem`, `cdpeca`, `qtpeca`, `vlpeca`, `vltota`) VALUES
(27, 7, '11 - Descarbonizaste spray - Tecbond', 2, '21.90', '43.80'),
(27, 8, '10 - Bronzina de mancal STD - Frontier', 1, '118.59', '118.59'),
(27, 9, '3 - Aditivo Radiador - 1 litro', 2, '11.00', '22.00'),
(27, 10, '2 - Óleo de motor Semi-sintetico - Havoline', 4, '29.90', '119.60'),
(27, 11, '1 - Água desmineralizada - 1 litro', 5, '4.20', '21.00'),
(27, 12, '18 - Kit Embreagem Corolla 2004/ 1.6 1.8 Luk 622305900', 1, '1590.00', '1590.00'),
(27, 13, '22 - Filtro de combustível - Wega', 1, '60.00', '60.00'),
(27, 5, '4 - Cola Loctite 598', 1, '55.90', '55.90'),
(27, 6, '12 - Coxim Motor LD - Mobensani', 1, '221.27', '221.27'),
(27, 4, '19 - Cola Loctite 242 10g - Trava Rosca Torque Médio', 1, '68.24', '68.24'),
(27, 3, '14 - Filtro de ar - Fran', 1, '27.90', '27.90'),
(27, 2, '13 - Filtro de Óleo do motor - Fran', 1, '39.90', '39.90'),
(27, 1, '7 - Pistão de motor - KS', 4, '359.54', '1438.16'),
(25, 6, '5 - Jogo de pistão Completo', 1, '635.00', '635.00'),
(26, 1, '2 - Óleo de motor - 1 litro', 4, '29.75', '119.00'),
(25, 2, '1 - Água desmineralizada - 1 litro', 5, '3.98', '19.90'),
(25, 3, '4 - Cola Loctite 598', 2, '35.70', '71.40'),
(25, 4, '2 - Óleo de motor - 1 litro', 4, '29.75', '119.00'),
(25, 5, '6 - Jogo de junta Completo', 1, '85.10', '85.10'),
(25, 1, '3 - Aditivo Radiador - 1 litro', 2, '9.00', '18.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `parametros`
--

DROP TABLE IF EXISTS `parametros`;
CREATE TABLE IF NOT EXISTS `parametros` (
  `cdprop` varchar(14) NOT NULL,
  `deprop` varchar(100) DEFAULT NULL,
  `nrinsc` varchar(20) DEFAULT NULL,
  `nrccm` varchar(20) DEFAULT NULL,
  `deende` varchar(100) DEFAULT NULL,
  `nrende` int(11) DEFAULT NULL,
  `decomp` varchar(50) DEFAULT NULL,
  `debair` varchar(50) DEFAULT NULL,
  `decida` varchar(100) DEFAULT NULL,
  `cdesta` varchar(50) DEFAULT NULL,
  `nrcepi` varchar(8) DEFAULT NULL,
  `nrtele` varchar(20) DEFAULT NULL,
  `nrcelu` varchar(20) DEFAULT NULL,
  `demail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cdprop`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `parametros`
--

INSERT INTO `parametros` (`cdprop`, `deprop`, `nrinsc`, `nrccm`, `deende`, `nrende`, `decomp`, `debair`, `decida`, `cdesta`, `nrcepi`, `nrtele`, `nrcelu`, `demail`) VALUES
('40378837000193', 'WELLV - Mecânica Automotiva', 'Isento', '', 'Rua do Esporte', 138, '', 'Jardim Guaracy', 'São Paulo', 'SP - São Paulo', '07262208', '', '11989385143', 'wilsonlzarini23@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pecas`
--

DROP TABLE IF EXISTS `pecas`;
CREATE TABLE IF NOT EXISTS `pecas` (
  `cdpeca` varchar(30) NOT NULL,
  `depeca` varchar(100) DEFAULT NULL,
  `vlpeca` decimal(15,2) DEFAULT NULL,
  `qtpeca` int(11) DEFAULT NULL,
  `flativ` varchar(15) DEFAULT NULL,
  `dtcada` date DEFAULT NULL,
  PRIMARY KEY (`cdpeca`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pecas`
--

INSERT INTO `pecas` (`cdpeca`, `depeca`, `vlpeca`, `qtpeca`, `flativ`, `dtcada`) VALUES
('15', 'Esticador da correia do ar-condicionado - INA ', '325.96', 1, NULL, NULL),
('1', 'Água desmineralizada - 1 litro', '4.20', 1, NULL, NULL),
('7', 'Pistão de motor - KS', '359.54', 1, NULL, NULL),
('8', 'Pistão de motor - MotorBest', '275.10', 1, NULL, NULL),
('9', 'Jogo de Bronzina de biela STD - Metal Leve', '181.93', 1, NULL, NULL),
('10', 'Bronzina de mancal STD - Frontier', '118.59', 1, NULL, NULL),
('11', 'Descarbonizaste spray - Tecbond', '21.90', 1, NULL, NULL),
('2', 'Óleo de motor Semi-sintetico - Havoline', '29.90', 1, NULL, NULL),
('3', 'Aditivo Radiador - 1 litro', '11.00', 1, NULL, NULL),
('4', 'Cola Loctite 598', '55.90', 1, NULL, NULL),
('6', 'Jogo de junta Completo', '85.10', 2, NULL, NULL),
('12', 'Coxim Motor LD - Mobensani', '221.27', 1, NULL, NULL),
('13', 'Filtro de Óleo do motor - Fran', '39.90', 1, NULL, NULL),
('14', 'Filtro de ar - Fran', '27.90', 1, NULL, NULL),
('16', 'Kit Embreagem Sachs Corolla 1.8 2004', '1162.00', 1, NULL, NULL),
('18', 'Kit Embreagem Corolla 2004/ 1.6 1.8 Luk 622305900', '1590.00', 1, NULL, NULL),
('19', 'Cola Loctite 242 10g - Trava Rosca Torque Médio', '68.24', 1, NULL, NULL),
('22', 'Filtro de combustível - Wega', '60.00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `cdpedi` bigint(20) NOT NULL AUTO_INCREMENT,
  `cdforn` varchar(100) DEFAULT NULL,
  `dtpedi` date DEFAULT NULL,
  `vlpedi` decimal(15,2) DEFAULT NULL,
  `vlpago` decimal(15,2) DEFAULT NULL,
  `dtpago` date DEFAULT NULL,
  `cdform` varchar(30) DEFAULT NULL,
  `qtform` int(11) DEFAULT NULL,
  `decont` varchar(100) DEFAULT NULL,
  `dtentr` date DEFAULT NULL,
  `deobse` varchar(500) DEFAULT NULL,
  `flativ` varchar(15) DEFAULT NULL,
  `dtcada` date DEFAULT NULL,
  PRIMARY KEY (`cdpedi`),
  KEY `ipedidos1` (`cdforn`,`cdpedi`,`dtpedi`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`cdpedi`, `cdforn`, `dtpedi`, `vlpedi`, `vlpago`, `dtpago`, `cdform`, `qtform`, `decont`, `dtentr`, `deobse`, `flativ`, `dtcada`) VALUES
(15, '11111111111111 - 1111111111111111111111111111111', '2016-10-31', '36775.00', '0.00', '0000-00-00', 'Dinheiro', 3, 'Ailton Almeida Nobre', '0000-00-00', '', 'Sim', '2016-10-31'),
(16, '11111111111111 - 1111111111111111111111111111111', '2016-10-31', '58018.00', '0.00', '0000-00-00', 'Dinheiro', 3, 'Ailton Almeida Nobre', '0000-00-00', '', 'Sim', '2016-10-31'),
(17, '1 - 2', '2016-10-31', '241108.70', '0.00', '0000-00-00', 'Dinheiro', 3, 'Pedido Ailton Dois', '0000-00-00', 'Pedido Ailton Dois Produção', 'Sim', '2016-10-31'),
(18, '11111111111111 - 1111111111111111111111111111111', '2016-10-31', '110122.32', '0.00', '0000-00-00', 'Dinheiro', 20, '', '0000-00-00', 'teste', 'Sim', '2016-10-31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidosi`
--

DROP TABLE IF EXISTS `pedidosi`;
CREATE TABLE IF NOT EXISTS `pedidosi` (
  `cdpedi` bigint(20) DEFAULT NULL,
  `nritem` int(11) DEFAULT NULL,
  `cdpeca` varchar(100) DEFAULT NULL,
  `qtpeca` int(11) DEFAULT NULL,
  `vlpeca` decimal(15,2) DEFAULT NULL,
  `vltota` decimal(15,2) DEFAULT NULL,
  KEY `ipedidosi1` (`cdpedi`,`nritem`,`cdpeca`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedidosi`
--

INSERT INTO `pedidosi` (`cdpedi`, `nritem`, `cdpeca`, `qtpeca`, `vlpeca`, `vltota`) VALUES
(15, 1, '10 - 10', 10000, '2.58', '25800.00'),
(15, 2, '5 - 5', 5000, '1.29', '6450.00'),
(15, 3, '7 - 7', 2500, '1.81', '4525.00'),
(16, 1, '10 - 10', 10000, '2.58', '25800.00'),
(16, 2, '5 - 5', 5000, '1.29', '6450.00'),
(16, 3, '7 - 7', 2500, '1.81', '4525.00'),
(16, 4, '7 - 7', 1765, '7.00', '12355.00'),
(16, 5, '8 - 8', 1111, '8.00', '8888.00'),
(17, 1, '10 - 10', 11111, '2.58', '28666.38'),
(17, 2, '5 - 5', 55555, '1.29', '71665.95'),
(17, 3, '7 - 7', 77777, '1.81', '140776.37'),
(18, 1, '4 - 4', 4444, '4.00', '17776.00'),
(18, 2, '5 - 5', 5555, '1.29', '7165.95'),
(18, 3, '7 - 7', 7777, '1.81', '14076.37'),
(18, 4, '8 - 8', 8888, '8.00', '71104.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

DROP TABLE IF EXISTS `servicos`;
CREATE TABLE IF NOT EXISTS `servicos` (
  `cdserv` varchar(30) NOT NULL,
  `deserv` varchar(100) DEFAULT NULL,
  `vlserv` decimal(15,2) DEFAULT NULL,
  `qtserv` int(11) DEFAULT NULL,
  `flativ` varchar(15) DEFAULT NULL,
  `dtcada` date DEFAULT NULL,
  PRIMARY KEY (`cdserv`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`cdserv`, `deserv`, `vlserv`, `qtserv`, `flativ`, `dtcada`) VALUES
('1', 'Alinhamento', '100.00', 1, NULL, NULL),
('10', '10', '10.00', 10, NULL, NULL),
('2', 'reparo geral', '2000.00', 1, NULL, NULL),
('0001', 'hora de serviços mínimo', '60.00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `cdusua` char(14) NOT NULL,
  `deusua` varchar(100) DEFAULT NULL,
  `demail` varchar(255) DEFAULT NULL,
  `nrtele` varchar(20) DEFAULT NULL,
  `cdtipo` varchar(30) DEFAULT NULL,
  `defoto` varchar(500) DEFAULT NULL,
  `desenh` varchar(500) DEFAULT NULL,
  `flativ` varchar(15) DEFAULT NULL,
  `dtcada` date DEFAULT NULL,
  PRIMARY KEY (`cdusua`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`cdusua`, `deusua`, `demail`, `nrtele`, `cdtipo`, `defoto`, `desenh`, `flativ`, `dtcada`) VALUES
('1', 'Wilson', 'wilsonlzarini23@gmail.com', '11989385243', 'Administrador', 'img/1_WIN_20210315_21_18_18_Pro.jpg', 'e39622164d485c2dc8970f518b0189cd', 'Sim', '2021-03-16'),
('admin', 'Arlem Sousa ', 'francisco.arlem@hotmail.com', '11975828290', 'Administrador', 'img/admin_90987172_2427152840719307_2712222747357872128_o.jpg', '15e76f8904e69d0ada402c3d7401518d', 'S', '2021-03-10'),
('60464366054', 'Mecanico1', 'mecanico@mecanico.com.br', '1111111111', 'Funcionário', 'img/semfoto.jpg', '15d6426563381c7eca0c321abf131401', 'S', '2021-03-11');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
