-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 18, 2021 at 04:58 AM
-- Server version: 10.1.47-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 5.6.40-47+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `essentialmode`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('bank_savings', 'Bank Savings', 0),
('caution', 'Caution', 0),
('motels_bed_black_money', 'Motels Black Money Bed', 0),
('motels_black_money', 'Motels Black Money ', 0),
('property_black_money', 'Black Money', 0),
('society_ambulance', 'EMS', 1),
('society_ammu', 'ammu', 1),
('society_banker', 'Bank', 1),
('society_biker', 'Biker', 1),
('society_cardealer', 'Cardealer', 1),
('society_casino', 'Kasyno', 1),
('society_mafia', 'Mafia', 1),
('society_mafiaone', 'Mafia', 1),
('society_mafiathree', 'Mafia', 1),
('society_mafiatwo', 'Mafia', 1),
('society_mechanic', 'Mechanic', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(2108, 'society_ambulance', 0, NULL),
(2109, 'society_ammu', 0, NULL),
(2110, 'society_banker', 0, NULL),
(2111, 'society_biker', 0, NULL),
(2112, 'society_cardealer', 0, NULL),
(2113, 'society_casino', 0, NULL),
(2114, 'society_mafia', 0, NULL),
(2115, 'society_mafiaone', 0, NULL),
(2116, 'society_mafiathree', 0, NULL),
(2117, 'society_mafiatwo', 0, NULL),
(2118, 'society_mechanic', 0, NULL),
(2119, 'society_police', 182050, NULL),
(2120, 'society_taxi', 0, NULL),
(2121, 'society_unicorn', 0, NULL),
(2127, 'bank_savings', 0, 'steam:11000010ee88319'),
(2128, 'caution', 0, 'steam:11000010ee88319'),
(2129, 'motels_bed_black_money', 0, 'steam:11000010ee88319'),
(2130, 'motels_black_money', 0, 'steam:11000010ee88319'),
(2131, 'property_black_money', 0, 'steam:11000010ee88319');

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('housing', 'Housing', 0),
('motels', 'Motels Inventory', 0),
('motels_bed', 'Motels Bed Inventory', 0),
('property', 'Property', 0),
('society_ambulance', 'EMS', 1),
('society_ammu', 'Ammu', 1),
('society_biker', 'Biker', 1),
('society_cardealer', 'Cardealer', 1),
('society_casino', 'Casino', 1),
('society_casino_fridge', 'FrigorÃ­fico', 1),
('society_mafia', 'Mafia', 1),
('society_mafiaone', 'Mafia', 1),
('society_mafiathree', 'Mafia', 1),
('society_mafiatwo', 'Mafia', 1),
('society_mechanic', 'Mechanic', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_unicorn_fridge', 'Unicorn (frigo)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `baninfo`
--

CREATE TABLE `baninfo` (
  `id` int(11) NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `playername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `baninfo`
--

INSERT INTO `baninfo` (`id`, `license`, `identifier`, `liveid`, `xblid`, `discord`, `playerip`, `playername`) VALUES
(372, 'license:d67d87cd994906b153864e90af3efae3a52b7d53', 'steam:11000010ee88319', NULL, NULL, 'discord:170273623133650944', 'ip:188.83.199.52', 'Fortnyce');

-- --------------------------------------------------------

--
-- Table structure for table `banlist`
--

CREATE TABLE `banlist` (
  `license` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `expiration` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `banlisthistory`
--

CREATE TABLE `banlisthistory` (
  `id` int(11) NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` int(11) NOT NULL,
  `added` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `expiration` int(11) NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `target_type` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `bought_houses`
--

CREATE TABLE `bought_houses` (
  `houseid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` varchar(75) NOT NULL,
  `blipname` varchar(75) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `earnings` int(11) NOT NULL,
  `position` text NOT NULL,
  `stock` int(11) NOT NULL DEFAULT '0',
  `stock_price` int(11) NOT NULL DEFAULT '100',
  `employees` text NOT NULL,
  `taxrate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `cardealer_vehicles`
--

INSERT INTO `cardealer_vehicles` (`id`, `vehicle`, `price`) VALUES
(1, 'brioso', 3000),
(2, 'alpha', 64000),
(3, 'brioso', 3000),
(4, 'banshee2', 305000),
(5, 'brioso', 3000),
(6, 'brioso', 3000),
(7, 'issi2', 8000);

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `dateofbirth` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sex` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT 'M',
  `height` varchar(128) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`id`, `identifier`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`) VALUES
(356, 'steam:110000102e7c961', 'Goncalo', 'Trigo', '1995-09-24', 'm', '182'),
(473, 'steam:11000010c1dce34', 'Gusto', 'Guardiola', '1987-01-20', 'm', '170'),
(474, 'steam:1100001036757ac', 'Paulo', 'Baptista', '09-09-1996', 'm', '140');

-- --------------------------------------------------------

--
-- Table structure for table `criminal_records`
--

CREATE TABLE `criminal_records` (
  `id` int(11) NOT NULL,
  `offence` varchar(250) NOT NULL,
  `reason` varchar(250) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `officer_id` varchar(250) NOT NULL,
  `jail` int(11) DEFAULT NULL,
  `fine` varchar(250) DEFAULT NULL,
  `time` int(250) DEFAULT NULL,
  `created_at` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('housing', 'Housing', 0),
('motels', 'Motels Datastore', 0),
('motels_bed', 'Motels Bed Datastore', 0),
('property', 'Property', 0),
('society_ambulance', 'EMS', 1),
('society_biker', 'Biker', 1),
('society_mafia', 'Mafia', 1),
('society_mafiaone', 'Mafia', 1),
('society_mafiathree', 'Mafia', 1),
('society_mafiatwo', 'Mafia', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Table structure for table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(3407, 'society_ambulance', NULL, '{}'),
(3408, 'society_biker', NULL, '{}'),
(3409, 'society_mafia', NULL, '{}'),
(3410, 'society_mafiaone', NULL, '{}'),
(3411, 'society_mafiathree', NULL, '{}'),
(3412, 'society_mafiatwo', NULL, '{}'),
(3413, 'society_police', NULL, '{\"weapons\":[{\"count\":0,\"name\":\"WEAPON_COMBATPISTOL\"},{\"count\":0,\"name\":\"WEAPON_SMG\"},{\"count\":1,\"name\":\"WEAPON_STUNGUN\"},{\"count\":0,\"name\":\"WEAPON_NIGHTSTICK\"}]}'),
(3414, 'society_taxi', NULL, '{}'),
(3415, 'society_unicorn', NULL, '{}'),
(3424, 'housing', 'steam:11000010ee88319', '{}'),
(3425, 'motels', 'steam:11000010ee88319', '{}'),
(3426, 'property', 'steam:11000010ee88319', '{}'),
(3427, 'user_ears', 'steam:11000010ee88319', '{}'),
(3428, 'motels_bed', 'steam:11000010ee88319', '{}'),
(3429, 'user_glasses', 'steam:11000010ee88319', '{}'),
(3430, 'user_helmet', 'steam:11000010ee88319', '{}'),
(3431, 'user_mask', 'steam:11000010ee88319', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `dopeplants`
--

CREATE TABLE `dopeplants` (
  `owner` varchar(50) NOT NULL,
  `plant` longtext NOT NULL,
  `plantid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dpkeybinds`
--

CREATE TABLE `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dpkeybinds`
--

INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
('steam:11000010ee88319', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');

-- --------------------------------------------------------

--
-- Table structure for table `epc_bolos`
--

CREATE TABLE `epc_bolos` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `lastname` varchar(250) DEFAULT NULL,
  `apperance` varchar(250) DEFAULT NULL,
  `fine` varchar(250) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `height` varchar(250) DEFAULT NULL,
  `age` varchar(250) DEFAULT NULL,
  `type_of_crime` varchar(250) DEFAULT NULL,
  `note` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `epc_notes`
--

CREATE TABLE `epc_notes` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` varchar(250) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Homicidio Qualificado', 10000, 0),
(2, 'Homicido nao qualificado', 6000, 0),
(3, 'Homicidio de um agente/departamento de justica', 6500, 0),
(4, 'HomicÃ­dio por negligÃªncia	', 4000, 0),
(5, 'HomicÃ­dio em legitima defesa	', 2500, 0),
(6, 'Tentativa de homicÃ­dio de um agente/departamento de justiÃ§a	', 5000, 0),
(7, 'Tentativa de homicÃ­dio	', 4000, 0),
(8, 'AgressÃ£o a um agente da autoridade/departamento de justiÃ§a', 4000, 1),
(9, 'Tentativa de agressÃ£o a um agente da autoridade/departamento de justiÃ§a\r\n', 2000, 1),
(10, 'Furto qualificado	', 4000, 1),
(11, 'Assalto Ã  mÃ£o armada	', 10000, 1),
(12, 'Assalto Ã  mÃ£o desarmada	', 7500, 1),
(13, 'Tentativa de assalto Ã  mÃ£o armada	', 2000, 1),
(14, 'Tentativa de assalto Ã  mÃ£o desarmada	', 1000, 1),
(15, 'Sequestro', 3000, 1),
(16, 'AgressÃ£o Ã  integridade fÃ­sica	', 2000, 1),
(17, 'ProfanaÃ§Ã£o de cadÃ¡ver	', 10000, 1),
(18, 'MutilaÃ§Ã£o	', 5000, 1),
(19, 'TrÃ¡fico de armas ilegais	', 2500, 2),
(20, 'DistribuiÃ§Ã£o de armas ilegais	', 1500, 2),
(21, 'Posse de um dispositivo de destruiÃ§Ã£o em massa	', 2500, 2),
(22, 'Posse de uma arma de fogo ilegal	', 2250, 2),
(23, 'Posse indevida de arma de fogo	', 1000, 2),
(24, 'Posse indevida de arma legal	', 2500, 2),
(25, 'Posse de muniÃ§Ã£o	', 1400, 2),
(26, 'Fabrico de Drogas	', 4000, 3),
(27, 'TrÃ¡fico de Drogas	', 10000, 3),
(28, 'DistribuiÃ§Ã£o de Drogas	', 5000, 3),
(29, 'Suborno', 10800, 4),
(30, 'Tentativa de suborno	', 8300, 4),
(31, 'ExtorsÃ£o', 7500, 4),
(32, 'Posse de dinheiro nÃ£o declarado	', 3300, 4),
(33, 'Lavagem de dinheiro	', 13000, 4),
(34, 'OrganizaÃ§Ã£o criminosa	', 16000, 4),
(35, 'Roubo de veÃ­culos	', 1250, 5),
(36, 'Roubo violento de veÃ­culo Ã  mÃ£o armada	', 2100, 5),
(37, 'Roubo violento de veÃ­culo Ã  mÃ£o desarmada	', 1250, 5),
(38, 'Tentativa de roubo de um veÃ­culo	', 250, 5),
(39, 'Fuga Ã  polÃ­cia	', 2500, 5),
(40, 'Roubo agravado	', 2500, 6),
(41, 'Roubar em propriedade	', 2000, 6),
(42, 'Escapar Ã  custÃ³dia	', 650, 6),
(43, 'Fraude', 1500, 6),
(44, 'Posse de material roubado	', 500, 6),
(45, 'FalsificaÃ§Ã£o de documentos	', 4000, 6),
(46, 'Roubo de identidade	', 6250, 6),
(47, 'ExposiÃ§Ã£o de uma arma de fogo em pÃºblico	', 750, 7),
(48, 'AgressÃ£o', 300, 7),
(49, 'Resistir Ã  detenÃ§Ã£o	', 1250, 7),
(50, 'ObstruÃ§Ã£o de justiÃ§a	', 1000, 7),
(51, 'Perturbar a paz	', 400, 7),
(52, 'Roubo', 580, 7),
(53, 'NÃ£o informar de objetos ocultos	', 550, 7),
(54, 'AmeaÃ§as Criminosas	', 1000, 7),
(55, 'ExibiÃ§Ã£o de arma mortal (exemplo: faca, crowbar, machado, etc)	', 1250, 7),
(56, 'Sem documentos	', 250, 7),
(57, 'Falsa identificaÃ§Ã£o	', 500, 7),
(58, 'RelatÃ³rio Falso	', 400, 7),
(59, 'Recusar ordem legal	', 200, 7),
(60, 'Posse de ferramentas de roubo	', 200, 7),
(61, 'Perseguir', 500, 7),
(62, 'OmissÃ£o de um crime	', 625, 7),
(63, 'Desrespeito a um agente/departamento de justiÃ§a	', 1500, 7),
(64, 'IntoxicaÃ§Ã£o pÃºblica	', 500, 7),
(65, 'ViolÃªncia DomÃ©stica	', 1500, 7),
(66, 'Vandalismo', 575, 7),
(67, 'Vandalismo de propriedade do governo	', 1000, 7),
(68, 'SolicitaÃ§Ã£o', 425, 7),
(69, 'NÃ£o comparecer no Departamento da PolÃ­cia	', 500, 7),
(70, 'InvasÃ£o', 250, 7),
(71, 'Eventos ilegais	', 500, 7),
(72, 'ProstituiÃ§Ã£o', 150, 7),
(73, 'AssÃ©dio	', 500, 7),
(74, 'AssÃ©dio Sexual	', 1000, 7),
(75, 'Colete Balistico	', 350, 7),
(76, 'Roubo de viatura de estado	', 500, 7),
(77, 'Passar sinal vermelho/STOP	', 200, 8),
(78, 'Falha de prioridade	', 100, 8),
(79, 'Ultrapassagem Ilegal	', 85, 8),
(80, 'InversÃ£o de marcha ilegal	', 75, 8),
(81, 'Virar ilegalmente	', 50, 8),
(82, 'Conduzir em contramÃ£o	', 200, 8),
(83, 'Arranque Inseguro	', 100, 8),
(84, 'Impedir o fluxo de trÃ¡fego	', 75, 8),
(85, 'FarÃ³is apagados	', 25, 8),
(86, 'Excesso de velocidade	', 150, 8),
(87, 'NÃ£o ceder passagem a um veÃ­culo de emergÃªncia	', 500, 8),
(88, 'RuÃ­do Excessivo do VeÃ­culo	', 150, 8),
(89, 'Conduzir veÃ­culo ilegal	', 150, 8),
(90, 'Conduzir sob influÃªncia de substÃ¢ncias	', 875, 9),
(91, 'Bater e fugir	', 200, 9),
(92, 'Corridas ilegais	', 1000, 9),
(93, 'ConduÃ§Ã£o imprudente	', 350, 9),
(94, 'ConduÃ§Ã£o IrresponsÃ¡vel	', 225, 9),
(95, 'Conduzir sem carta de conduÃ§Ã£o	', 250, 9),
(96, 'Luz Neon no carro	', 150, 10),
(97, 'ViolaÃ§Ã£o da tonalidade da janela (100%)	', 1650, 10),
(98, 'PÃ¡ra-brisas partido	', 50, 10),
(99, 'VeÃ­culo sem luz	', 250, 10),
(100, 'VeÃ­culo danificado	', 250, 10),
(101, 'Luzes frontais coloridas	', 250, 10),
(102, 'Conduzir sem capacete	', 150, 11),
(103, 'Capacete de viseira escura	', 150, 11),
(104, 'Caminhar numa Via RÃ¡pida	', 300, 11),
(105, 'VeÃ­culo ilegalmente estacionado	', 600, 11),
(106, 'VeÃ­culo ilegalmente estacionado em zonas de emergÃªncia	', 1800, 11);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_biker`
--

CREATE TABLE `fine_types_biker` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine_types_biker`
--

INSERT INTO `fine_types_biker` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_mafia`
--

CREATE TABLE `fine_types_mafia` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine_types_mafia`
--

INSERT INTO `fine_types_mafia` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_mafia1`
--

CREATE TABLE `fine_types_mafia1` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine_types_mafia1`
--

INSERT INTO `fine_types_mafia1` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3),
(8, 'Raket', 3000, 0),
(9, 'Raket', 5000, 0),
(10, 'Raket', 10000, 1),
(11, 'Raket', 20000, 1),
(12, 'Raket', 50000, 2),
(13, 'Raket', 150000, 3),
(14, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_mafiaone`
--

CREATE TABLE `fine_types_mafiaone` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine_types_mafiaone`
--

INSERT INTO `fine_types_mafiaone` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_mafiathree`
--

CREATE TABLE `fine_types_mafiathree` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine_types_mafiathree`
--

INSERT INTO `fine_types_mafiathree` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_mafiatwo`
--

CREATE TABLE `fine_types_mafiatwo` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine_types_mafiatwo`
--

INSERT INTO `fine_types_mafiatwo` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `weight` int(11) NOT NULL DEFAULT '1',
  `limit` int(10) NOT NULL DEFAULT '0',
  `rare` tinyint(1) NOT NULL DEFAULT '0',
  `can_remove` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
('alive_chicken', 'Live Chicken', 0, 20, 0, 1),
('bag', 'Bag', 0, 1, 0, 1),
('bagofdope', 'Bag of Dope', 0, -1, 0, 1),
('bandage', 'Bandage', 0, 0, 0, 1),
('binoculars', 'Binoculars', 0, 0, 0, 1),
('blowpipe', 'Blowtorch', 0, 0, 0, 1),
('blowtorch', 'Blowtorch', 1, 0, 0, 1),
('bolcacahuetes', 'Miska orzeszkÃ³w ziemnych', 1, 5, 0, 1),
('bolchips', 'Miska ChipsÃ³w', 1, 5, 0, 1),
('bolnoixcajou', 'Miska orzechÃ³w nerkowca', 1, 5, 0, 1),
('bolpistache', 'Miska pistacji', 1, 5, 0, 1),
('bread', 'PÃ£o', 0, 50, 0, 1),
('bulletproof', 'Bullet-Proof Vest', 0, 0, 0, 1),
('c4_bank', 'C4', 1, 0, 0, 1),
('camera', 'Camera', 0, -1, 0, 1),
('cannabis', 'Cannabis', 0, 50, 0, 1),
('carokit', 'Body Kit', 0, 0, 0, 1),
('carotool', 'Tools', 0, 0, 0, 1),
('clip', 'Carregador', 0, 20, 0, 1),
('clothe', 'Cloth', 0, 40, 0, 1),
('coke', 'Coke (1G)', 0, 420, 0, 1),
('copper', 'Cobre', 0, 56, 0, 1),
('cracker', 'Computador Kali Linux', 0, 2, 0, 1),
('cutted_wood', 'Madeira cortada', 0, 50, 0, 1),
('darknet', 'Dark Net', 0, 0, 0, 1),
('diamond', 'Diamante', 0, 50, 0, 1),
('dopebag', 'Ziplock Bag', 0, -1, 0, 1),
('drill', 'Drill', 0, 0, 0, 1),
('drpepper', 'Dr. Pepper', 1, 5, 0, 1),
('drugscales', 'Drug Scales', 0, -1, 0, 1),
('energy', 'Energy Drink', 1, 5, 0, 1),
('essence', 'Essence', 0, 24, 0, 1),
('fabric', 'Fabric', 0, 80, 0, 1),
('firstaidkit', 'First Aid Kit', 0, 0, 0, 1),
('fish', 'Peixe', 0, 100, 0, 1),
('fishbait', 'Isca', 0, 100, 0, 1),
('fishingrod', 'Cana de Pesca', 0, 10, 0, 1),
('fixkit', 'Kit de reparaÃ§Ã£o', 0, 20, 0, 1),
('fixtool', 'Repair Tools', 0, 0, 0, 1),
('gazbottle', 'Gas Bottle', 0, 0, 0, 1),
('gold', 'Ouro', 0, 50, 0, 1),
('goldNecklace', 'Colar de ouro', 0, -1, 0, 1),
('golem', 'Golem', 1, 5, 0, 1),
('grapperaisin', 'KiÅ›Ä‡ winogron', 1, 5, 0, 1),
('handcuffs', 'Algemas', 0, -1, 0, 1),
('highgradefemaleseed', 'Female Dope Seed+', 0, -1, 0, 1),
('highgradefert', 'High-Grade Fertilizer', 0, -1, 0, 1),
('highgrademaleseed', 'Male Dope Seed+', 0, -1, 0, 1),
('hydrochloric_acid', 'HydroChloric Acid', 0, 15, 0, 1),
('ice', 'LÃ³d', 1, 5, 0, 1),
('icetea', 'Ice Tea', 1, 5, 0, 1),
('iron', 'Ferro', 0, 50, 0, 1),
('jager', 'JÃ¤germeister', 1, 5, 0, 1),
('jagerbomb', 'JÃ¤gerbomb', 1, 5, 0, 1),
('jagercerbere', 'JÃ¤ger CerbÃ¨re', 1, 3, 0, 1),
('jewels', 'JÃ³ias', 0, 0, 0, 1),
('jusfruit', 'Jus de fruits', 1, 5, 0, 1),
('keycard', 'Keycard', 1, -1, 0, 1),
('laptop', 'PortÃ¡til', 0, -1, 0, 1),
('leather', 'Couro', 0, 0, 0, 1),
('limonade', 'Lemoniada', 1, 5, 0, 1),
('lockpick', 'Gazua', 0, 0, 0, 1),
('lokalizator', 'Localizador', 0, 0, 0, 1),
('lowgradefemaleseed', 'Female Dope Seed', 0, -1, 0, 1),
('lowgradefert', 'Low-Grade Fertilizer', 0, -1, 0, 1),
('lowgrademaleseed', 'Male Dope Seed', 0, -1, 0, 1),
('maderacaoba', 'Madeira Caoba', 0, 50, 0, 1),
('maderanogal', 'Madeira Nogal', 0, 50, 0, 1),
('maderaroble', 'Madeira Roble', 0, 50, 0, 1),
('marijuana', 'Charro', 0, 50, 0, 1),
('martini', 'Martini bianco', 1, 5, 0, 1),
('meat', 'Carne', 0, 0, 0, 1),
('medikit', 'Medikit', 0, 0, 0, 1),
('menthe', 'LiÅ›Ä‡ miÄ™ty', 1, 10, 0, 1),
('meth', 'Meth (1G)', 0, 420, 0, 1),
('meth_pooch', 'Bag of meth (28G)', 0, 15, 0, 1),
('metreshooter', 'MÃ¨tre de shooter', 1, 3, 0, 1),
('mixapero', 'Mix ApÃ©ritif', 1, 3, 0, 1),
('mojito', 'Mojito', 1, 5, 0, 1),
('opium', 'Opium (1G)', 0, 420, 0, 1),
('opium_pooch', 'Bag of opium (28G)', 0, 15, 0, 1),
('oxygen_mask', 'Oxygen Mask', 0, 0, 0, 1),
('packaged_chicken', 'Packaged Chicken', 0, 100, 0, 1),
('packaged_plank', 'Packaged Plank', 0, 100, 0, 1),
('petrol', 'Petrol', 0, 24, 0, 1),
('petrol_raffin', 'Refined Petrol', 0, 24, 0, 1),
('plantpot', 'Plant Pot', 0, -1, 0, 1),
('purifiedwater', 'Purified Water', 0, -1, 0, 1),
('raspberry', 'Raspberry', 1, 0, 0, 1),
('rhum', 'Rum', 1, 5, 0, 1),
('rhumcoca', 'Rum-cola', 1, 5, 0, 1),
('rhumfruit', 'Rum-sok owocowy', 1, 5, 0, 1),
('ring', 'Anel', 0, -1, 0, 1),
('rolex', 'Rolex', 0, -1, 0, 1),
('rope', 'Corda', 0, -1, 0, 1),
('samsungS10', 'Samsung S10', 0, -1, 0, 1),
('saucisson', 'KieÅ‚basa', 1, 5, 0, 1),
('shark', 'TubarÃ£o', 0, -1, 0, 1),
('slaughtered_chicken', 'Slaughtered Chicken', 0, 20, 0, 1),
('soda', 'Woda', 1, 5, 0, 1),
('sodium_hydroxide', 'Sodium Hydroxide', 0, 15, 0, 1),
('stone', 'Pedra', 0, 50, 0, 1),
('sulfuric_acid', 'Sulfuric Acid', 0, 15, 0, 1),
('teqpaf', 'Teq\'paf', 1, 5, 0, 1),
('tequila', 'Tequila', 1, 5, 0, 1),
('thermite', 'Thermite Bomb', 1, 5, 0, 1),
('thionyl_chloride', 'Thionyl Chloride', 0, 100, 0, 1),
('trimmedweed', 'Trimmed Weed', 0, -1, 0, 1),
('turtle', 'Tartagruga', 0, 50, 0, 1),
('turtlebait', 'Isca Tartaruga', 0, 50, 0, 1),
('vodka', 'Vodka', 1, 5, 0, 1),
('vodkaenergy', 'Vodka-energetyk', 1, 5, 0, 1),
('vodkafruit', 'Vodka-sok owocowy', 1, 5, 0, 1),
('washed_stone', 'Pedra lavada', 0, 50, 0, 1),
('water', 'Ã€gua', 0, 50, 0, 1),
('wateringcan', 'Watering Can', 0, -1, 0, 1),
('weapon_piece', 'Parte de arma', 0, 50, 0, 1),
('weed', 'Erva (1G)', 0, 420, 0, 1),
('whisky', 'Whisky', 1, 5, 0, 1),
('whiskycoca', 'Whisky-cola', 1, 5, 0, 1),
('wood', 'Madeira', 0, 50, 0, 1),
('wool', 'Wool', 0, 40, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('NOTREAL1', 'Caçador', 0),
('NOTREAL2', 'Mineiro', 0),
('NOTREAL3', 'Pescador', 0),
('ambulance', 'INEM', 1),
('cardealer', 'Cardealer', 1),
('garbage', 'Lixeiro', 0),
('gopostal', 'Correios', 0),
('mafia', 'Mafia', 1),
('mafiaone', 'Groove', 1),
('mafiathree', 'Rivan\'S', 1),
('mafiatwo', 'Motoclube', 1),
('mechanic', 'Mecanico', 1),
('offambulance', 'fora de servico', 1),
('offmechanic', 'fora de servico', 1),
('offpolice', 'fora de servico', 1),
('police', 'Policia', 1),
('trucker', 'Camionista', 0),
('unemployed', 'Desempregado', 0),
('unicorn', 'Vanilla', 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8mb4_bin NOT NULL,
  `skin_female` longtext COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Civil', 300, '{}', '{}'),
(14, 'mechanic', 0, 'recrue', 'Recruta', 650, '{}', '{}'),
(15, 'mechanic', 1, 'novice', 'Novato', 850, '{}', '{}'),
(16, 'mechanic', 2, 'experimente', 'Experiente', 1100, '{}', '{}'),
(17, 'mechanic', 3, 'chief', 'Sub chefe', 1250, '{}', '{}'),
(18, 'mechanic', 4, 'boss', 'Chefe', 1500, '{}', '{}'),
(19, 'offmechanic', 0, 'recrue', 'Recruta', 650, '{}', '{}'),
(20, 'offmechanic', 1, 'novice', 'Novato', 850, '{}', '{}'),
(21, 'offmechanic', 2, 'experimente', 'Experiente', 1100, '{}', '{}'),
(22, 'offmechanic', 3, 'chief', 'Sub chefe', 1250, '{}', '{}'),
(23, 'offmechanic', 4, 'boss', 'Chefe', 1500, '{}', '{}'),
(24, 'cardealer', 0, 'recruit', 'Recruit', 650, '{}', '{}'),
(25, 'cardealer', 1, 'novice', 'Novice', 850, '{}', '{}'),
(26, 'cardealer', 2, 'experienced', 'Experienced', 1250, '{}', '{}'),
(27, 'cardealer', 3, 'boss', 'Boss', 1500, '{}', '{}'),
(28, 'ambulance', 0, 'ambulance', 'Estagiario', 1250, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(29, 'ambulance', 1, 'doctor', 'Enfermeiro', 1500, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(30, 'ambulance', 2, 'chief_doctor', 'Medico', 1750, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(31, 'ambulance', 3, 'boss', 'Diretor', 2000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(32, 'police', 0, 'recruit', 'Recruta', 1000, '{}', '{}'),
(33, 'police', 1, 'officer', 'Agente', 1250, '{}', '{}'),
(34, 'police', 2, 'sergeant', 'Sargento', 1500, '{}', '{}'),
(35, 'police', 3, 'lieutenant', 'Oficial', 1750, '{}', '{}'),
(36, 'police', 4, 'boss', 'Chefe', 2000, '{}', '{}'),
(59, 'offpolice', 0, 'recruit', 'Recruta', 1000, '{}', '{}'),
(60, 'offpolice', 1, 'officer', 'Agente', 1250, '{}', '{}'),
(61, 'offpolice', 2, 'sergeant', 'Sargento', 1500, '{}', '{}'),
(62, 'offpolice', 3, 'lieutenant', 'Oficial', 1750, '{}', '{}'),
(63, 'offpolice', 4, 'boss', 'Chefe', 2000, '{}', '{}'),
(64, 'offambulance', 0, 'ambulance', 'Estagiario', 1250, '{}', '{}'),
(65, 'offambulance', 1, 'doctor', 'Enfermeiro', 1500, '{}', '{}'),
(66, 'offambulance', 2, 'chief_doctor', 'Medico', 1750, '{}', '{}'),
(67, 'offambulance', 3, 'boss', 'Diretor', 2000, '{}', '{}'),
(69, 'garbage', 0, 'employee', 'Empregado', 500, '{\"tshirt_1\":59,\"torso_1\":89,\"arms\":31,\"pants_1\":36,\"glasses_1\":19,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":2,\"glasses_2\":0,\"torso_2\":1,\"shoes\":35,\"hair_1\":0,\"skin\":0,\"sex\":0,\"glasses_1\":19,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":36,\"torso_1\":0,\"arms\":68,\"pants_1\":30,\"glasses_1\":15,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":27,\"glasses_2\":0,\"torso_2\":11,\"shoes\":26,\"hair_1\":5,\"skin\":0,\"sex\":1,\"glasses_1\":15,\"pants_2\":2,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":19}'),
(70, 'NOTREAL1', 0, 'empregado', 'Empregado', 500, '{}', '{}'),
(71, 'NOTREAL2', 0, 'empregado', 'Empregado', 500, '{}', '{}'),
(72, 'NOTREAL3', 0, 'empregado', 'Empregado', 500, '{}', '{}'),
(396, 'unicorn', 0, 'barman', 'Barman', 500, '{}', '{}'),
(397, 'unicorn', 1, 'dancer', 'Dancarino', 500, '{}', '{}'),
(398, 'unicorn', 2, 'viceboss', 'Sub-Chefe', 500, '{}', '{}'),
(399, 'unicorn', 3, 'boss', 'Chefe', 500, '{}', '{}'),
(405, 'mafia', 0, 'soldato', 'Novato', 500, '{}', '{}'),
(406, 'mafia', 1, 'capo', 'Capo', 500, '{}', '{}'),
(407, 'mafia', 2, 'consigliere', 'Consigliere', 500, '{}', '{}'),
(408, 'mafia', 3, 'boss', 'Don', 500, '{}', '{}'),
(417, 'mafiaone', 0, 'soldato', 'Novato', 500, '{}', '{}'),
(418, 'mafiaone', 1, 'capo', 'Soldado', 500, '{}', '{}'),
(419, 'mafiaone', 2, 'consigliere', 'Lider', 500, '{}', '{}'),
(420, 'mafiaone', 3, 'boss', 'Drug Lord', 500, '{}', '{}'),
(421, 'mafiatwo', 0, 'soldato', 'Novato', 500, '{}', '{}'),
(422, 'mafiatwo', 1, 'capo', 'Membro', 500, '{}', '{}'),
(423, 'mafiatwo', 2, 'consigliere', 'Vice Presidente', 500, '{}', '{}'),
(424, 'mafiatwo', 3, 'boss', 'Presidente', 500, '{}', '{}'),
(427, 'trucker', 0, 'employee', 'Empregado', 500, '{\"tshirt_1\":59,\"torso_1\":89,\"arms\":31,\"pants_1\":36,\"glasses_1\":19,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":2,\"glasses_2\":0,\"torso_2\":1,\"shoes\":35,\"hair_1\":0,\"skin\":0,\"sex\":0,\"glasses_1\":19,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":36,\"torso_1\":0,\"arms\":68,\"pants_1\":30,\"glasses_1\":15,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":27,\"glasses_2\":0,\"torso_2\":11,\"shoes\":26,\"hair_1\":5,\"skin\":0,\"sex\":1,\"glasses_1\":15,\"pants_2\":2,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":19}'),
(429, 'gopostal', 0, 'employee', 'Empregado', 500, '{\"tshirt_1\":59,\"torso_1\":89,\"arms\":31,\"pants_1\":36,\"glasses_1\":19,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":2,\"glasses_2\":0,\"torso_2\":1,\"shoes\":35,\"hair_1\":0,\"skin\":0,\"sex\":0,\"glasses_1\":19,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":36,\"torso_1\":0,\"arms\":68,\"pants_1\":30,\"glasses_1\":15,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":27,\"glasses_2\":0,\"torso_2\":11,\"shoes\":26,\"hair_1\":5,\"skin\":0,\"sex\":1,\"glasses_1\":15,\"pants_2\":2,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":19}'),
(430, 'mafiathree', 0, 'soldato', 'Recruta', 500, '{}', '{}'),
(431, 'mafiathree', 1, 'capo', 'Membro', 500, '{}', '{}'),
(432, 'mafiathree', 2, 'consigliere', 'Sub-Chefe', 500, '{}', '{}'),
(433, 'mafiathree', 3, 'boss', 'Boss', 500, '{}', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('boat', 'Boat License'),
('dmv', 'Driving Permit'),
('drive', 'Drivers License'),
('drive_bike', 'Motorcycle License'),
('drive_truck', 'Commercial Drivers License'),
('weapon', 'Weapon Permit'),
('weed_processing', 'Weed Processing License');

-- --------------------------------------------------------

--
-- Table structure for table `liquor`
--

CREATE TABLE `liquor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `liquor`
--

INSERT INTO `liquor` (`id`, `name`, `item`, `price`) VALUES
(1, 'Liquor', 'wine', 35),
(2, 'Liquor', 'beer', 5),
(3, 'Liquor', 'vodka', 20),
(4, 'Liquor', 'tequila', 15),
(5, 'Liquor', 'whisky', 50);

-- --------------------------------------------------------

--
-- Table structure for table `owned_bags`
--

CREATE TABLE `owned_bags` (
  `identifier` varchar(50) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  `itemcount` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `owned_bag_inventory`
--

CREATE TABLE `owned_bag_inventory` (
  `id` int(11) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(22) COLLATE utf8mb4_bin NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `plate` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `vehicle` longtext COLLATE utf8mb4_bin,
  `type` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'car',
  `job` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT '0',
  `modelname` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `lasthouse` int(11) DEFAULT '0',
  `damages` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Name',
  `num` varchar(10) NOT NULL COMMENT 'Phone Number',
  `incoming` int(11) NOT NULL COMMENT 'Define Incoming Call',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accepts` int(11) NOT NULL COMMENT 'Accept Call'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `playerhousing`
--

CREATE TABLE `playerhousing` (
  `id` int(32) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `rented` tinyint(1) DEFAULT NULL,
  `price` int(32) DEFAULT NULL,
  `wardrobe` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement SÃ©duisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement SÃ©duisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement SÃ©duisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement RÃ©gal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement RÃ©gal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement RÃ©gal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000);

-- --------------------------------------------------------

--
-- Table structure for table `qalle_brottsregister`
--

CREATE TABLE `qalle_brottsregister` (
  `id` int(255) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofcrime` varchar(255) NOT NULL,
  `crime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `player_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `store` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
(1, 'TwentyFourSeven', 'bread', 1),
(2, 'TwentyFourSeven', 'water', 1),
(4, 'TwentyFourSeven', 'lockpick', 500),
(5, 'TwentyFourSeven', 'fishingrod', 50),
(6, 'TwentyFourSeven', 'fishbait', 1),
(7, 'RobsLiquor', 'bread', 1),
(8, 'RobsLiquor', 'fishingrod', 50),
(9, 'RobsLiquor', 'water', 1),
(10, 'RobsLiquor', 'fishbait', 1),
(11, 'RobsLiquor', 'lockpick', 500),
(13, 'LTDgasoline', 'water', 1),
(14, 'LTDgasoline', 'fishbait', 1),
(15, 'LTDgasoline', 'lockpick', 500),
(16, 'LTDgasoline', 'fishingrod', 50),
(17, 'LTDgasoline', 'bread', 1),
(18, 'LTDgasoline', 'lockpick', 500),
(28, 'TwentyFourSeven', 'lokalizator', 4750),
(29, 'RobsLiquor', 'lokalizator', 4750),
(30, 'LTDgasoline', 'lokalizator', 4750),
(31, 'TwentyFourSeven', 'binoculars', 180),
(32, 'RobsLiquor', 'binoculars', 180),
(33, 'LTDgasoline', 'binoculars', 180),
(40, 'TwentyFourSeven', 'oxygen_mask', 420),
(41, 'RobsLiquor', 'oxygen_mask', 420),
(42, 'LTDgasoline', 'oxygen_mask', 420),
(43, 'TwentyFourSeven', 'fixkit', 2500),
(44, 'RobsLiquor', 'fixkit', 2500),
(45, 'LTDgasoline', 'fixkit', 2500),
(46, 'TwentyFourSeven', 'clip', 1250),
(47, 'RobsLiquor', 'clip', 1250),
(48, 'LTDgasoline', 'clip', 1250);

-- --------------------------------------------------------

--
-- Table structure for table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `society` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `trunk_inventory`
--

CREATE TABLE `trunk_inventory` (
  `id` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT '0',
  `loadout` longtext COLLATE utf8mb4_bin,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `status` longtext COLLATE utf8mb4_bin,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT '0',
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `jail` int(11) NOT NULL DEFAULT '0',
  `last_motel` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `last_motel_room` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `last_house` int(11) DEFAULT '0',
  `house` varchar(1000) COLLATE utf8mb4_bin NOT NULL DEFAULT '{"owns":false,"furniture":[],"houseId":0}',
  `bought_furniture` varchar(1000) COLLATE utf8mb4_bin NOT NULL DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `status`, `last_property`, `is_dead`, `phone_number`, `jail`, `last_motel`, `last_motel_room`, `last_house`, `house`, `bought_furniture`) VALUES
('steam:110000102e7c961', 'license:a9b715e2301dd6f72e5a49d66417081a1186b5dc', 999999, 'Trigo', '{\"complexion_1\":0,\"chest_3\":0,\"beard_2\":10,\"blemishes_2\":0,\"beard_1\":10,\"ears_1\":-1,\"skin\":0,\"beard_3\":0,\"age_1\":0,\"bracelets_1\":-1,\"arms\":38,\"sex\":0,\"chain_2\":0,\"face\":0,\"shoes_2\":0,\"eye_color\":0,\"mask_2\":0,\"moles_1\":0,\"sun_1\":0,\"lipstick_1\":0,\"beard_4\":0,\"makeup_4\":0,\"helmet_2\":0,\"makeup_1\":0,\"decals_2\":0,\"blemishes_1\":0,\"makeup_2\":0,\"chest_1\":0,\"glasses_1\":0,\"blush_3\":0,\"bproof_2\":0,\"bproof_1\":0,\"tshirt_2\":0,\"chain_1\":0,\"torso_2\":0,\"ears_2\":0,\"helmet_1\":-1,\"bags_2\":0,\"eyebrows_2\":0,\"bags_1\":0,\"glasses_2\":0,\"hair_2\":0,\"tshirt_1\":32,\"lipstick_2\":0,\"mask_1\":0,\"moles_2\":0,\"watches_2\":0,\"age_2\":0,\"hair_color_2\":0,\"watches_1\":-1,\"bodyb_2\":0,\"eyebrows_3\":0,\"eyebrows_4\":0,\"bodyb_1\":0,\"torso_1\":29,\"decals_1\":0,\"pants_2\":0,\"lipstick_3\":0,\"bracelets_2\":0,\"hair_color_1\":0,\"complexion_2\":0,\"arms_2\":0,\"hair_1\":3,\"pants_1\":10,\"lipstick_4\":0,\"blush_1\":0,\"chest_2\":0,\"shoes_1\":20,\"sun_2\":0,\"makeup_3\":0,\"blush_2\":0,\"eyebrows_1\":0}', 'police', 4, '[{\"components\":[],\"name\":\"WEAPON_NIGHTSTICK\",\"label\":\"Cacetete\",\"ammo\":0},{\"components\":[\"clip_default\"],\"name\":\"WEAPON_COMBATPISTOL\",\"label\":\"Pistola de combate\",\"ammo\":192},{\"components\":[\"clip_default\"],\"name\":\"WEAPON_ASSAULTRIFLE\",\"label\":\"Assault rifle\",\"ammo\":81},{\"components\":[],\"name\":\"WEAPON_STUNGUN\",\"label\":\"Arma de choque\",\"ammo\":250},{\"components\":[],\"name\":\"WEAPON_FLASHLIGHT\",\"label\":\"Laterna\",\"ammo\":0}]', '{\"y\":-1118.2,\"z\":26.4,\"x\":-62.8}', 2000, 99, 'superadmin', 'Yuri', 'Boyka', '1995/09/24', 'm', '182', '[{\"name\":\"hunger\",\"percent\":48.22,\"val\":482200},{\"name\":\"thirst\",\"percent\":48.665,\"val\":486650},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', NULL, 0, '731-5652', 0, NULL, NULL, 0, '{\"owns\":false,\"furniture\":[],\"houseId\":326}', '{}'),
('steam:1100001036757ac', 'license:c5e2eaf5117cfb62544f27e8f2b5b26e0f27b3f9', 999999, 'PBaptista', '{\"decals_1\":0,\"beard_2\":0,\"bags_1\":0,\"blemishes_2\":0,\"helmet_1\":-1,\"hair_color_1\":0,\"blush_2\":0,\"complexion_2\":0,\"eyebrows_2\":0,\"makeup_3\":0,\"decals_2\":0,\"blush_1\":0,\"bracelets_1\":-1,\"pants_1\":0,\"sun_1\":0,\"bracelets_2\":0,\"beard_4\":0,\"moles_1\":0,\"moles_2\":0,\"chest_1\":0,\"pants_2\":0,\"skin\":0,\"age_2\":0,\"hair_1\":0,\"arms\":0,\"makeup_4\":0,\"beard_3\":0,\"watches_1\":-1,\"face\":0,\"tshirt_2\":0,\"torso_1\":0,\"chest_2\":0,\"lipstick_3\":0,\"mask_1\":0,\"makeup_1\":0,\"lipstick_1\":0,\"eye_color\":0,\"bags_2\":0,\"chain_2\":0,\"sex\":0,\"glasses_1\":0,\"torso_2\":0,\"shoes_1\":0,\"shoes_2\":0,\"sun_2\":0,\"eyebrows_1\":0,\"mask_2\":0,\"arms_2\":0,\"lipstick_2\":0,\"bodyb_1\":0,\"makeup_2\":0,\"age_1\":0,\"bproof_2\":0,\"bodyb_2\":0,\"ears_2\":0,\"hair_color_2\":0,\"chain_1\":0,\"bproof_1\":0,\"ears_1\":-1,\"complexion_1\":0,\"eyebrows_4\":0,\"helmet_2\":0,\"glasses_2\":0,\"watches_2\":0,\"eyebrows_3\":0,\"lipstick_4\":0,\"beard_1\":0,\"hair_2\":0,\"blemishes_1\":0,\"blush_3\":0,\"chest_3\":0,\"tshirt_1\":0}', 'unemployed', 0, '[{\"components\":[\"clip_default\"],\"name\":\"WEAPON_ASSAULTRIFLE\",\"label\":\"Assault rifle\",\"ammo\":240}]', '{\"y\":-438.4,\"z\":41.1,\"x\":149.2}', 3300, 0, 'user', 'Paulo', 'Baptista', '09-09-1996', 'm', '140', '[{\"name\":\"hunger\",\"percent\":99.22,\"val\":992200},{\"name\":\"thirst\",\"percent\":99.415,\"val\":994150},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', NULL, 0, '531-3502', 0, NULL, NULL, 0, '{\"owns\":false,\"furniture\":[],\"houseId\":0}', '{}'),
('steam:11000010c1dce34', 'license:5ff5f8902684a44de36d2c59c2ffc6ba88f24336', 999999, 'ggc20', '{\"hair_color_2\":0,\"eyebrows_4\":0,\"lipstick_4\":0,\"lipstick_1\":0,\"bracelets_2\":0,\"makeup_2\":0,\"bproof_1\":0,\"chain_1\":0,\"shoes_2\":0,\"sex\":0,\"age_1\":0,\"moles_2\":0,\"sun_2\":0,\"blemishes_2\":0,\"eyebrows_2\":0,\"mask_2\":0,\"chain_2\":0,\"decals_1\":0,\"arms_2\":0,\"eyebrows_3\":0,\"tshirt_2\":0,\"makeup_3\":0,\"bodyb_2\":0,\"decals_2\":0,\"arms\":0,\"complexion_1\":0,\"blush_2\":0,\"moles_1\":0,\"blemishes_1\":0,\"glasses_1\":0,\"lipstick_2\":0,\"torso_1\":0,\"bodyb_1\":0,\"makeup_4\":0,\"face\":0,\"hair_color_1\":0,\"sun_1\":0,\"bproof_2\":0,\"bracelets_1\":-1,\"beard_3\":0,\"blush_1\":0,\"hair_2\":0,\"beard_4\":0,\"makeup_1\":0,\"glasses_2\":0,\"ears_1\":-1,\"chest_3\":0,\"lipstick_3\":0,\"chest_1\":0,\"hair_1\":0,\"tshirt_1\":0,\"helmet_2\":0,\"watches_1\":-1,\"helmet_1\":-1,\"ears_2\":0,\"age_2\":0,\"shoes_1\":0,\"beard_1\":0,\"blush_3\":0,\"skin\":0,\"bags_1\":0,\"mask_1\":0,\"complexion_2\":0,\"eye_color\":0,\"eyebrows_1\":0,\"torso_2\":0,\"watches_2\":0,\"beard_2\":0,\"pants_2\":0,\"bags_2\":0,\"chest_2\":0,\"pants_1\":0}', 'mechanic', 4, '[{\"name\":\"WEAPON_COMBATPDW\",\"components\":[\"clip_default\"],\"label\":\"Combat pdw\",\"ammo\":127},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"components\":[\"clip_default\"],\"label\":\"Assault rifle\",\"ammo\":174},{\"name\":\"WEAPON_COMPACTRIFLE\",\"components\":[\"clip_default\"],\"label\":\"Compact rifle\",\"ammo\":174}]', '{\"y\":-1122.5,\"z\":25.8,\"x\":-87.7}', 0, 99, 'superadmin', 'Gusto', 'Guardiola', '1987-01-20', 'm', '170', '[{\"name\":\"hunger\",\"percent\":46.57,\"val\":465700},{\"name\":\"thirst\",\"percent\":47.4275,\"val\":474275},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', NULL, 0, '827-5849', 0, NULL, NULL, 0, '{\"owns\":false,\"furniture\":[],\"houseId\":0}', '{}'),
('steam:11000010ee88319', 'license:d67d87cd994906b153864e90af3efae3a52b7d53', 10394999, 'Fortnyce', '{\"beard_2\":0,\"torso_1\":0,\"complexion_2\":0,\"makeup_2\":0,\"chest_3\":0,\"sex\":0,\"sun_1\":0,\"eyebrows_3\":0,\"glasses_2\":0,\"hair_color_2\":0,\"complexion_1\":0,\"chain_2\":0,\"age_2\":0,\"bodyb_1\":0,\"mask_2\":0,\"bproof_1\":0,\"eye_color\":0,\"makeup_3\":0,\"chest_1\":0,\"beard_1\":0,\"helmet_2\":0,\"watches_2\":0,\"pants_1\":0,\"bodyb_2\":0,\"beard_4\":0,\"hair_2\":0,\"hair_color_1\":0,\"arms_2\":0,\"bags_1\":0,\"blemishes_1\":0,\"tshirt_2\":0,\"torso_2\":0,\"face\":0,\"tshirt_1\":0,\"lipstick_1\":0,\"moles_2\":0,\"eyebrows_1\":0,\"shoes_2\":0,\"decals_2\":0,\"chest_2\":0,\"glasses_1\":0,\"decals_1\":0,\"shoes_1\":0,\"pants_2\":0,\"helmet_1\":-1,\"lipstick_2\":0,\"moles_1\":0,\"eyebrows_2\":0,\"lipstick_4\":0,\"bproof_2\":0,\"blemishes_2\":0,\"ears_1\":-1,\"bracelets_2\":0,\"ears_2\":0,\"lipstick_3\":0,\"sun_2\":0,\"makeup_1\":0,\"chain_1\":0,\"blush_1\":0,\"blush_2\":0,\"bracelets_1\":-1,\"hair_1\":0,\"mask_1\":0,\"blush_3\":0,\"makeup_4\":0,\"arms\":0,\"watches_1\":-1,\"beard_3\":0,\"bags_2\":0,\"age_1\":0,\"eyebrows_4\":0,\"skin\":0}', 'offambulance', 0, '[{\"label\":\"Cacetete\",\"components\":[],\"name\":\"WEAPON_NIGHTSTICK\",\"ammo\":0},{\"label\":\"Pistola de combate\",\"components\":[\"clip_default\"],\"name\":\"WEAPON_COMBATPISTOL\",\"ammo\":250},{\"label\":\"Smg\",\"components\":[\"clip_default\"],\"name\":\"WEAPON_SMG\",\"ammo\":250}]', '{\"y\":-967.3999999999069,\"x\":-264.0,\"z\":31.19999999999709}', 14750, 99, 'superadmin', 'Jose', 'Trigo', '1995-01-25', 'm', '185', '[{\"name\":\"hunger\",\"percent\":17.08,\"val\":170800},{\"name\":\"thirst\",\"percent\":25.31,\"val\":253100},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', NULL, 0, '936-4499', 0, NULL, NULL, 0, '{\"owns\":false,\"furniture\":[],\"houseId\":0}', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `money` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
(445, 'steam:110000102e7c961', 'black_money', 0),
(446, 'steam:11000010c1dce34', 'black_money', 0),
(447, 'steam:1100001036757ac', 'black_money', 0),
(448, 'steam:11000010ee88319', 'black_money', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Akuma', 'AKUMA', 350000, 'motorcycles'),
('Adder', 'adder', 650000, 'super'),
('Alpha', 'alpha', 64000, 'sports'),
('Asea', 'asea', 30000, 'sedans'),
('Autarch', 'autarch', 225000, 'super'),
('Avarus', 'avarus', 8000, 'motorcycles'),
('Bagger', 'bagger', 20000, 'motorcycles'),
('Baller', 'baller2', 250000, 'suvs'),
('Banshee', 'banshee', 900000, 'sports'),
('Banshee 900R', 'banshee2', 305000, 'super'),
('Bati 801', 'bati', 700000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 90000, 'sports'),
('BF400', 'bf400', 15000, 'motorcycles'),
('Bf Injection', 'bfinjection', 80000, 'offroad'),
('Bifta', 'bifta', 250000, 'offroad'),
('Bison', 'bison', 20000, 'vans'),
('Blade', 'blade', 38000, 'muscle'),
('Blazer', 'blazer', 12000, 'offroad'),
('BMX (velo)', 'bmx', 300, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 5000, 'vans'),
('Brawler', 'brawler', 95000, 'offroad'),
('Brioso R/A', 'brioso', 3000, 'compacts'),
('Btype Hotroad', 'btype2', 200000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 30000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 45000, 'muscle'),
('Buffalo', 'buffalo', 270000, 'sports'),
('Bullet', 'bullet', 380000, 'super'),
('Burrito', 'burrito3', 12000, 'vans'),
('Camper', 'camper', 18000, 'vans'),
('Carbon RS', 'carbonrs', 280000, 'motorcycles'),
('Casco', 'casco', 275000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 150000, 'suvs'),
('Cheetah', 'cheetah', 380000, 'super'),
('Chino', 'chino', 38000, 'muscle'),
('Chino Luxe', 'chino2', 42000, 'muscle'),
('Cliffhanger', 'cliffhanger', 20000, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 170000, 'coupes'),
('Cognoscenti', 'cognoscenti', 50000, 'sedans'),
('Comet', 'comet2', 300000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('Coquette', 'coquette', 350000, 'sports'),
('Coquette Classic', 'coquette2', 370000, 'sportsclassics'),
('Cruiser (velo)', 'cruiser', 150, 'motorcycles'),
('Cyclone', 'cyclone', 195000, 'super'),
('Daemon', 'daemon', 140000, 'motorcycles'),
('Defiler', 'defiler', 30000, 'motorcycles'),
('Dominator', 'dominator', 850000, 'muscle'),
('Double T', 'double', 320000, 'motorcycles'),
('Dubsta', 'dubsta', 135000, 'suvs'),
('Dukes', 'dukes', 55000, 'muscle'),
('Dune Buggy', 'dune', 55000, 'offroad'),
('Elegy', 'elegy2', 800000, 'sports'),
('Emperor', 'emperor', 38000, 'sedans'),
('Enduro', 'enduro', 24000, 'motorcycles'),
('Esskey', 'esskey', 18000, 'motorcycles'),
('Exemplar', 'exemplar', 150000, 'coupes'),
('F620', 'f620', 130000, 'coupes'),
('Faction', 'faction', 40000, 'muscle'),
('Vespa', 'faggio2', 800, 'motorcycles'),
('Felon', 'felon', 115000, 'coupes'),
('Felon GT', 'felon2', 160000, 'coupes'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('FMJ', 'fmj', 350000, 'super'),
('Fhantom', 'fq2', 200000, 'suvs'),
('Fugitive', 'fugitive', 98000, 'sedans'),
('Furore GT', 'furoregt', 170000, 'sports'),
('Fusilade', 'fusilade', 380000, 'sports'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Gauntlet', 'gauntlet', 70000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Glendale', 'glendale', 52000, 'sedans'),
('Grabger', 'granger', 180000, 'suvs'),
('Gresley', 'gresley', 160000, 'suvs'),
('GT 500', 'gt500', 265000, 'sportsclassics'),
('Guardian', 'guardian', 95000, 'offroad'),
('Hakuchou', 'hakuchou', 380000, 'motorcycles'),
('Hexer', 'hexer', 50000, 'motorcycles'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 180000, 'suvs'),
('Hustler', 'hustler', 75000, 'muscle'),
('Infernus', 'infernus', 220000, 'super'),
('Innovation', 'innovation', 30000, 'motorcycles'),
('Intruder', 'intruder', 44000, 'sedans'),
('Issi', 'issi2', 8000, 'compacts'),
('Jackal', 'jackal', 138000, 'coupes'),
('Jester', 'jester', 420000, 'sports'),
('Journey', 'journey', 8000, 'vans'),
('Khamelion', 'khamelion', 275000, 'sports'),
('Kuruma', 'kuruma', 350000, 'sports'),
('Landstalker', 'landstalker', 92000, 'suvs'),
('RE-7B', 'le7b', 245000, 'super'),
('Lynx', 'lynx', 200000, 'sports'),
('Mamba', 'mamba', 215000, 'sports'),
('Manana', 'manana', 32000, 'sportsclassics'),
('Manchez', 'manchez', 15000, 'motorcycles'),
('Massacro', 'massacro', 385000, 'sports'),
('Massacro(Racecar)', 'massacro2', 420000, 'sports'),
('Mesa', 'mesa', 135000, 'suvs'),
('Mesa Trail', 'mesa3', 150000, 'suvs'),
('Minivan', 'minivan', 20000, 'vans'),
('Monroe', 'monroe', 247000, 'sportsclassics'),
('Moonbeam', 'moonbeam', 22000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 28000, 'vans'),
('Nemesis', 'nemesis', 23000, 'motorcycles'),
('Neon', 'neon', 245000, 'sports'),
('Nightblade', 'nightblade', 28000, 'motorcycles'),
('Nightshade', 'nightshade', 145000, 'muscle'),
('Omnis', 'omnis', 165000, 'sports'),
('Oracle XS', 'oracle2', 140000, 'coupes'),
('Osiris', 'osiris', 310000, 'super'),
('Panto', 'panto', 15000, 'compacts'),
('Paradise', 'paradise', 25000, 'vans'),
('Pariah', 'pariah', 215000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('PCJ-600', 'pcj', 70000, 'motorcycles'),
('Penumbra', 'penumbra', 260000, 'sports'),
('Pfister', 'pfister811', 205000, 'super'),
('Phoenix', 'phoenix', 90000, 'muscle'),
('Picador', 'picador', 50000, 'muscle'),
('Pigalle', 'pigalle', 62000, 'sportsclassics'),
('Premier', 'premier', 32000, 'sedans'),
('Primo Custom', 'primo2', 26000, 'sedans'),
('X80 Proto', 'prototipo', 380000, 'super'),
('Radius', 'radi', 150000, 'suvs'),
('raiden', 'raiden', 240000, 'sports'),
('Rapid GT', 'rapidgt', 358000, 'sports'),
('Reaper', 'reaper', 360000, 'super'),
('Regina', 'regina', 2500, 'sedans'),
('Retinue', 'retinue', 138000, 'sportsclassics'),
('Revolter', 'revolter', 275000, 'sports'),
('riata', 'riata', 230000, 'offroad'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Ruffian', 'ruffian', 110000, 'motorcycles'),
('Rumpo', 'rumpo', 30000, 'vans'),
('Rumpo Trail', 'rumpo3', 45000, 'vans'),
('Sanchez', 'sanchez', 45000, 'motorcycles'),
('Sandking', 'sandking', 130000, 'offroad'),
('Savestra', 'savestra', 150000, 'sportsclassics'),
('SC 1', 'sc1', 340000, 'super'),
('Schafter', 'schafter2', 46000, 'sedans'),
('Scorcher (velo)', 'scorcher', 300, 'motorcycles'),
('Seminole', 'seminole', 95000, 'suvs'),
('Sentinel', 'sentinel', 150000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 130000, 'sports'),
('Seven 70', 'seven70', 230000, 'sports'),
('ETR1', 'sheava', 380000, 'super'),
('Slam Van', 'slamvan3', 20000, 'muscle'),
('Stinger', 'stinger', 230000, 'sportsclassics'),
('Stretch', 'stretch', 250000, 'sedans'),
('Sultan', 'sultan', 300000, 'sports'),
('Sultan RS', 'sultanrs', 350000, 'super'),
('Super Diamond', 'superd', 320000, 'sedans'),
('Surano', 'surano', 335000, 'sports'),
('Surfer', 'surfer', 20000, 'vans'),
('T20', 't20', 430000, 'super'),
('Tailgater', 'tailgater', 920000, 'coupes'),
('Tampa', 'tampa', 65000, 'muscle'),
('Thrust', 'thrust', 95000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Trophy Truck', 'trophytruck', 160000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 190000, 'offroad'),
('Tropos', 'tropos', 280000, 'sports'),
('Turismo R', 'turismor', 640000, 'super'),
('Tyrus', 'tyrus', 330000, 'super'),
('Vader', 'vader', 170000, 'motorcycles'),
('Vigero', 'vigero', 50000, 'muscle'),
('Virgo', 'virgo', 40000, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 310000, 'super'),
('Voltic', 'voltic', 350000, 'super'),
('Voltic 2', 'voltic2', 1000000, 'super'),
('Vortex', 'vortex', 23000, 'motorcycles'),
('Warrener', 'warrener', 35000, 'sedans'),
('Washington', 'washington', 30000, 'sedans'),
('Windsor Drop', 'windsor2', 200000, 'coupes'),
('XLS', 'xls', 124000, 'suvs'),
('Youga', 'youga', 12000, 'vans'),
('Youga Luxuary', 'youga2', 18000, 'vans'),
('Z190', 'z190', 190000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 175000, 'coupes'),
('Zion Cabrio', 'zion2', 185000, 'coupes'),
('Z-Type', 'ztype', 400000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles_for_sale`
--

CREATE TABLE `vehicles_for_sale` (
  `id` int(11) NOT NULL,
  `seller` varchar(50) NOT NULL,
  `vehicleProps` longtext NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupes'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans'),
('zimported', 'Edição limitada');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `soldby` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `world_furnishings`
--

CREATE TABLE `world_furnishings` (
  `motelId` bigint(20) NOT NULL DEFAULT '0',
  `furnishingData` longtext,
  `ownedFurnishingData` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `world_keys`
--

CREATE TABLE `world_keys` (
  `uuid` bigint(20) NOT NULL DEFAULT '0',
  `owner` varchar(50) NOT NULL,
  `keyData` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `world_motels`
--

CREATE TABLE `world_motels` (
  `userIdentifier` varchar(50) NOT NULL,
  `motelData` longtext NOT NULL,
  `motelCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `world_storages`
--

CREATE TABLE `world_storages` (
  `storageId` varchar(255) NOT NULL,
  `storageData` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Indexes for table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Indexes for table `baninfo`
--
ALTER TABLE `baninfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banlist`
--
ALTER TABLE `banlist`
  ADD PRIMARY KEY (`license`);

--
-- Indexes for table `banlisthistory`
--
ALTER TABLE `banlisthistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bought_houses`
--
ALTER TABLE `bought_houses`
  ADD PRIMARY KEY (`houseid`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criminal_records`
--
ALTER TABLE `criminal_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Indexes for table `epc_bolos`
--
ALTER TABLE `epc_bolos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `epc_notes`
--
ALTER TABLE `epc_notes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_biker`
--
ALTER TABLE `fine_types_biker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_mafia`
--
ALTER TABLE `fine_types_mafia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_mafia1`
--
ALTER TABLE `fine_types_mafia1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_mafiaone`
--
ALTER TABLE `fine_types_mafiaone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_mafiathree`
--
ALTER TABLE `fine_types_mafiathree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_mafiatwo`
--
ALTER TABLE `fine_types_mafiatwo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `liquor`
--
ALTER TABLE `liquor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playerhousing`
--
ALTER TABLE `playerhousing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qalle_brottsregister`
--
ALTER TABLE `qalle_brottsregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `vehicles_for_sale`
--
ALTER TABLE `vehicles_for_sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `world_furnishings`
--
ALTER TABLE `world_furnishings`
  ADD PRIMARY KEY (`motelId`);

--
-- Indexes for table `world_keys`
--
ALTER TABLE `world_keys`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `world_storages`
--
ALTER TABLE `world_storages`
  ADD PRIMARY KEY (`storageId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2132;
--
-- AUTO_INCREMENT for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `baninfo`
--
ALTER TABLE `baninfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;
--
-- AUTO_INCREMENT for table `banlisthistory`
--
ALTER TABLE `banlisthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=475;
--
-- AUTO_INCREMENT for table `criminal_records`
--
ALTER TABLE `criminal_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3432;
--
-- AUTO_INCREMENT for table `epc_bolos`
--
ALTER TABLE `epc_bolos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `epc_notes`
--
ALTER TABLE `epc_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `fine_types_biker`
--
ALTER TABLE `fine_types_biker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `fine_types_mafia`
--
ALTER TABLE `fine_types_mafia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `fine_types_mafia1`
--
ALTER TABLE `fine_types_mafia1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `fine_types_mafiaone`
--
ALTER TABLE `fine_types_mafiaone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `fine_types_mafiathree`
--
ALTER TABLE `fine_types_mafiathree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `fine_types_mafiatwo`
--
ALTER TABLE `fine_types_mafiatwo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=434;
--
-- AUTO_INCREMENT for table `liquor`
--
ALTER TABLE `liquor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6221;
--
-- AUTO_INCREMENT for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `qalle_brottsregister`
--
ALTER TABLE `qalle_brottsregister`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=449;
--
-- AUTO_INCREMENT for table `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vehicles_for_sale`
--
ALTER TABLE `vehicles_for_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
