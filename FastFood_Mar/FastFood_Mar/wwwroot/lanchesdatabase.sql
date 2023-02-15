-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 15 fév. 2023 à 14:50
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `lanchesdatabase`
--
CREATE DATABASE IF NOT EXISTS `lanchesdatabase` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lanchesdatabase`;

-- --------------------------------------------------------

--
-- Structure de la table `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(255) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `aspnetroles`
--

INSERT INTO `aspnetroles` (`Id`, `Name`, `NormalizedName`, `ConcurrencyStamp`) VALUES
('19d75e33-cfc6-481c-bd29-0d39d444c62e', 'Member', 'MEMBER', 'f47279de-b13f-40d9-b467-f9a6e9ca95bf'),
('d6508e73-81f8-4454-aa0a-cab62f03c34f', 'Admin', 'ADMIN', 'dd46f1ce-97df-4817-95fe-aa1a440ac06e');

-- --------------------------------------------------------

--
-- Structure de la table `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(255) NOT NULL,
  `ProviderKey` varchar(255) NOT NULL,
  `ProviderDisplayName` longtext DEFAULT NULL,
  `UserId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) NOT NULL,
  `RoleId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `aspnetuserroles`
--

INSERT INTO `aspnetuserroles` (`UserId`, `RoleId`) VALUES
('08f8e5e3-fa2a-495a-8a72-f69092c28d65', 'd6508e73-81f8-4454-aa0a-cab62f03c34f'),
('9efdb0f7-8636-4c59-8599-e7d648099556', '19d75e33-cfc6-481c-bd29-0d39d444c62e');

-- --------------------------------------------------------

--
-- Structure de la table `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` varchar(255) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext DEFAULT NULL,
  `SecurityStamp` longtext DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `PhoneNumber` longtext DEFAULT NULL,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('08f8e5e3-fa2a-495a-8a72-f69092c28d65', 'admin@localhost', 'ADMIN@LOCALHOST', 'admin@localhost', 'ADMIN@LOCALHOST', 1, 'AQAAAAEAACcQAAAAECjoiPbWPOeNnS32bOhyPpS2NnLX/Uc+Gd2EZZRFdkTWHPuXYW0No0xFZ82rqzUR9A==', 'RYJUTF2OQH37TPROJ7AO4CHGBBD2TPBN', '50e6992c-0124-469d-8a57-c52b8e674ef0', NULL, 0, 0, NULL, 1, 0),
('9efdb0f7-8636-4c59-8599-e7d648099556', 'usuario@localhost', 'USUARIO@LOCALHOST', 'usuario@localhost', 'USUARIO@LOCALHOST', 1, 'AQAAAAEAACcQAAAAEJ49a4GfIcLZ36Yn28t9ztrXg12LH/I59yqdzxB1tKZ4z3MpfktPlz7n+dSGRusdoQ==', 'VEG24OLN6FN2DLIFWVPE4Z2FPMW23RWK', 'be972962-d510-4121-95b1-72708d0afe43', NULL, 0, 0, NULL, 1, 0),
('a84fcc24-42ea-4da4-ac13-1571d6ce96f8', 'marcio', 'MARCIO', NULL, NULL, 0, 'AQAAAAEAACcQAAAAEEJoC9uftLUdg1XW/sNtt9SsITIN90CoPgRbVxuNQ8aIJzxj4EITpGwg9C0O3Co0XA==', 'RLSCZO4T3FQ6MYJI5IWHOGCX3UFVSQSE', 'b4a70cb9-86bf-43c0-b365-2312854ad59d', NULL, 0, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `carrinhocompraitens`
--

CREATE TABLE `carrinhocompraitens` (
  `CarrinhoCompraItemId` int(11) NOT NULL,
  `LancheId` int(11) DEFAULT NULL,
  `Quantidade` int(11) NOT NULL,
  `CarrinhoCompraId` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `carrinhocompraitens`
--

INSERT INTO `carrinhocompraitens` (`CarrinhoCompraItemId`, `LancheId`, `Quantidade`, `CarrinhoCompraId`) VALUES
(1, 5, 1, 'c003f823-9fa1-4d9d-9368-21693bff1857'),
(2, 5, 1, 'b0a3045b-513e-469f-b003-1ef6d920eda2'),
(3, 4, 1, '52a494ce-8e71-4ef1-bd0b-57fb694fc438'),
(4, 4, 1, 'f0327a26-2ca8-45ab-bdd0-67c74261cd5e'),
(5, 2, 1, 'f0327a26-2ca8-45ab-bdd0-67c74261cd5e'),
(6, 3, 1, 'f0327a26-2ca8-45ab-bdd0-67c74261cd5e'),
(7, 5, 1, '58e5d607-e732-44bc-aa6b-76bf6061cdc3'),
(8, 4, 1, '03a27c68-77ca-443a-9ebe-e8aa5b7c57d9'),
(9, 3, 1, '03a27c68-77ca-443a-9ebe-e8aa5b7c57d9'),
(10, 4, 1, '0a72121f-56a6-485b-bf20-df3ca72f7225'),
(12, 4, 1, '49f7997a-5530-4049-ae87-a67b584fa3fb'),
(13, 5, 1, '6f6af420-48bb-421c-bbd3-5d5c488be1e9');

-- --------------------------------------------------------

--
-- Structure de la table `categorias`
--

CREATE TABLE `categorias` (
  `CategoriaId` int(11) NOT NULL,
  `CategoriaNome` varchar(100) NOT NULL,
  `Descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categorias`
--

INSERT INTO `categorias` (`CategoriaId`, `CategoriaNome`, `Descricao`) VALUES
(1, 'Normal', 'Lanche feito com ingredientes normais'),
(2, 'Natural', 'Lanche feito com ingredientes integrais e naturais'),
(3, 'Vegano', 'Lanches veganos sem proteinas animais (eca!!!)');

-- --------------------------------------------------------

--
-- Structure de la table `lanches`
--

CREATE TABLE `lanches` (
  `LancheId` int(11) NOT NULL,
  `Nome` varchar(80) NOT NULL,
  `DescricaoCurta` varchar(200) NOT NULL,
  `DescricaoDetalhada` varchar(200) NOT NULL,
  `Preco` decimal(10,2) NOT NULL,
  `ImagemUrl` varchar(200) DEFAULT NULL,
  `ImagemThumbnailUrl` varchar(200) DEFAULT NULL,
  `IsLanchePreferido` tinyint(1) NOT NULL,
  `EmEstoque` tinyint(1) NOT NULL,
  `CategoriaId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `lanches`
--

INSERT INTO `lanches` (`LancheId`, `Nome`, `DescricaoCurta`, `DescricaoDetalhada`, `Preco`, `ImagemUrl`, `ImagemThumbnailUrl`, `IsLanchePreferido`, `EmEstoque`, `CategoriaId`) VALUES
(1, 'Cheese Salada', 'Pão, hambúrger, ovo, presunto, queijo e batata palha', 'Delicioso pão de hambúrger com ovo frito; presunto e queijo de primeira qualidade acompanhado com batata palha', '12.50', 'http://www.macoratti.net/Imagens/lanches/cheesesalada1.jpg', 'http://www.macoratti.net/Imagens/lanches/cheesesalada1.jpg', 0, 1, 1),
(2, 'Misto Quente', 'Pão, presunto, mussarela e tomate', 'Delicioso pão francês quentinho na chapa com presunto e mussarela bem servidos com tomate preparado com carinho.', '8.00', 'http://www.macoratti.net/Imagens/lanches/mistoquente4.jpg', 'http://www.macoratti.net/Imagens/lanches/mistoquente4.jpg', 0, 1, 1),
(3, 'Cheese Burger', 'Pão, hambúrger, presunto, mussarela e batalha palha', 'Pão de hambúrger especial com hambúrger de nossa preparação e presunto e mussarela; acompanha batata palha.', '12.00', 'http://www.macoratti.net/Imagens/lanches/cheeseburger1.jpg', 'http://www.macoratti.net/Imagens/lanches/cheeseburger1.jpg', 0, 1, 1),
(4, 'Lanche Natural Peito Peru', 'Pão Integral, queijo branco, peito de peru, cenoura, alface, iogurte', 'Pão integral natural com queijo branco, peito de peru e cenoura ralada com alface picado e iorgurte natural.', '15.00', 'http://www.macoratti.net/Imagens/lanches/lanchenatural.jpg', 'http://www.macoratti.net/Imagens/lanches/lanchenatural.jpg', 1, 1, 2),
(5, 'Lanche vegano', 'Lanche vegano sem proteina animal', 'Eca!!!!', '12.00', 'https://assets.unileversolutions.com/recipes-v2/35629.jpg?imwidth=800', 'https://assets.unileversolutions.com/recipes-v2/35629.jpg', 0, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `pedidodetalhes`
--

CREATE TABLE `pedidodetalhes` (
  `PedidoDetalheId` int(11) NOT NULL,
  `PedidoId` int(11) NOT NULL,
  `LancheId` int(11) NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `Preco` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pedidodetalhes`
--

INSERT INTO `pedidodetalhes` (`PedidoDetalheId`, `PedidoId`, `LancheId`, `Quantidade`, `Preco`) VALUES
(1, 1, 4, 1, '15.00');

-- --------------------------------------------------------

--
-- Structure de la table `pedidos`
--

CREATE TABLE `pedidos` (
  `PedidoId` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Sobrenome` varchar(50) NOT NULL,
  `Endereco1` varchar(100) NOT NULL,
  `Endereco2` varchar(100) DEFAULT NULL,
  `Cep` varchar(10) NOT NULL,
  `Estado` varchar(10) DEFAULT NULL,
  `Cidade` varchar(50) DEFAULT NULL,
  `Telefone` varchar(25) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `PedidoTotal` decimal(18,2) NOT NULL,
  `TotalItensPedido` int(11) NOT NULL,
  `PedidoEnviado` datetime(6) NOT NULL,
  `PedidoEntregueEm` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pedidos`
--

INSERT INTO `pedidos` (`PedidoId`, `Nome`, `Sobrenome`, `Endereco1`, `Endereco2`, `Cep`, `Estado`, `Cidade`, `Telefone`, `Email`, `PedidoTotal`, `TotalItensPedido`, `PedidoEnviado`, `PedidoEntregueEm`) VALUES
(1, 'Marisa', 'Pelegrini', '3790 Av. Malo', NULL, '17032230', 'São Paulo', 'Lins', '15144412632', 'marcio.pelegrini@icloud.com', '15.00', 1, '2023-02-09 10:28:57.335994', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20230207161632_MigracaoInicial', '7.0.2'),
('20230207161916_PopularCategorias', '7.0.2'),
('20230207162246_PopularLanches', '7.0.2'),
('20230207200514_CarrinhoItem', '7.0.2'),
('20230208201434_PedidoDetalhes', '7.0.2'),
('20230209161551_AdicionarIdentity', '7.0.2');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Index pour la table `aspnetroles`
--
ALTER TABLE `aspnetroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Index pour la table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Index pour la table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Index pour la table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Index pour la table `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Index pour la table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Index pour la table `carrinhocompraitens`
--
ALTER TABLE `carrinhocompraitens`
  ADD PRIMARY KEY (`CarrinhoCompraItemId`),
  ADD KEY `IX_CarrinhoCompraItens_LancheId` (`LancheId`);

--
-- Index pour la table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`CategoriaId`);

--
-- Index pour la table `lanches`
--
ALTER TABLE `lanches`
  ADD PRIMARY KEY (`LancheId`),
  ADD KEY `IX_Lanches_CategoriaId` (`CategoriaId`);

--
-- Index pour la table `pedidodetalhes`
--
ALTER TABLE `pedidodetalhes`
  ADD PRIMARY KEY (`PedidoDetalheId`),
  ADD KEY `IX_PedidoDetalhes_LancheId` (`LancheId`),
  ADD KEY `IX_PedidoDetalhes_PedidoId` (`PedidoId`);

--
-- Index pour la table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`PedidoId`);

--
-- Index pour la table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `carrinhocompraitens`
--
ALTER TABLE `carrinhocompraitens`
  MODIFY `CarrinhoCompraItemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `CategoriaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `lanches`
--
ALTER TABLE `lanches`
  MODIFY `LancheId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `pedidodetalhes`
--
ALTER TABLE `pedidodetalhes`
  MODIFY `PedidoDetalheId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `PedidoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `carrinhocompraitens`
--
ALTER TABLE `carrinhocompraitens`
  ADD CONSTRAINT `FK_CarrinhoCompraItens_Lanches_LancheId` FOREIGN KEY (`LancheId`) REFERENCES `lanches` (`LancheId`);

--
-- Contraintes pour la table `lanches`
--
ALTER TABLE `lanches`
  ADD CONSTRAINT `FK_Lanches_Categorias_CategoriaId` FOREIGN KEY (`CategoriaId`) REFERENCES `categorias` (`CategoriaId`) ON DELETE CASCADE;

--
-- Contraintes pour la table `pedidodetalhes`
--
ALTER TABLE `pedidodetalhes`
  ADD CONSTRAINT `FK_PedidoDetalhes_Lanches_LancheId` FOREIGN KEY (`LancheId`) REFERENCES `lanches` (`LancheId`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_PedidoDetalhes_Pedidos_PedidoId` FOREIGN KEY (`PedidoId`) REFERENCES `pedidos` (`PedidoId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
