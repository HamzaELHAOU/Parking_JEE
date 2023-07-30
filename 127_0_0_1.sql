-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 17 juin 2022 à 11:52
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dsarticle`
--
CREATE DATABASE IF NOT EXISTS `dsarticle` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dsarticle`;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `code` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`code`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de données : `gestion_produits`
--
CREATE DATABASE IF NOT EXISTS `gestion_produits` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gestion_produits`;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `prix` double DEFAULT NULL,
  `quantite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `nom`, `prix`, `quantite`) VALUES
(1, 'hamza', 2000.7, 20);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de données : `parking`
--
CREATE DATABASE IF NOT EXISTS `parking` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `parking`;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fullName` varchar(25) NOT NULL,
  `userName` varchar(25) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `passe` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `fullName`, `userName`, `telephone`, `email`, `passe`) VALUES
(1, 'adamRR', 'adam1', 'adam1', 'dam@gmail.com', '123');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `cnie` varchar(20) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `telephone` int(11) NOT NULL,
  `adresse` varchar(20) NOT NULL,
  `motdepasse` varchar(20) NOT NULL,
  `solde` int(30) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`cnie`, `nom`, `prenom`, `email`, `telephone`, `adresse`, `motdepasse`, `solde`, `gender`, `id`) VALUES
('BK707234', 'hamza', 'elhaou', 'hamzaelhaou@gmail.co', 676897609, 'casa', 'hamza123', 123455417, 'homme', 1),
('KU7723334', 'yossef', 'lahcen', 'lahcen@gmail.com', 676897609, 'benimellal', 'lahcen123', 123455677, 'homme', 2),
('R123334', 'hamza', 'rachid', 'rachid@gmail.com', 676897609, 'benimellal', 'rachid123', 123455677, 'homme', 3),
('yossef', 'yossef', 'hamza', 'youssef@gmail.com', 628754239, 'oulfa', 'yyy123', 656560, 'M', 4),
('TTTT', 'hamza', 'rachid', 'hamza@gmail.com', 6134527, 'oulfa casablanca', 'hamzaraja ', 2000, 'homme', 7),
('bk1344', 'hamza', 'rachid', 'hamza@gmail.com', 6123455, 'oulfa casablanca', 'hamzaraja', 2000, 'homme', 8);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `numero_compte` int(11) NOT NULL,
  `cnie_client` varchar(20) NOT NULL,
  `avance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`numero_compte`, `cnie_client`, `avance`) VALUES
(1223344, 'BK707234', 87877);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `tele` int(11) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`nom`, `prenom`, `email`, `tele`, `message`) VALUES
('hamza', 'HAMZA', 'hamzaelhaou@gmail.co', 23445556, 'TEST TESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTESTTEST'),
('CC', 'CC', 'BB', 88, 'VV'),
('BK707234', 'BK707234', 'BK707234', 23445556, 'VV'),
('BK707234', 'BK707234', 'BK707234', 23445556, 'VV'),
('yy', 'vv', 'uu', 55, 'JJJ'),
('RRR', 'HAMZAAA', 'TEST@GMAIL.COM', 628754239, 'RT'),
('vvv', 'fff', 'bbbb', 777, 'NNNNN'),
('ELHAOU', 'HAMZA', 'hamzaelhaou@gmail.co', 628754239, 'bonne idée  '),
('ELHAOU', 'HAMZA', 'hamzaelhaou@gmail.co', 628754239, 'cgsghssjsgysjsg');

-- --------------------------------------------------------

--
-- Structure de la table `parking`
--

CREATE TABLE `parking` (
  `id_parc` int(11) NOT NULL,
  `adresse` varchar(20) NOT NULL,
  `nombrePlace` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `parking`
--

INSERT INTO `parking` (`id_parc`, `adresse`, `nombrePlace`, `nom`) VALUES
(1, 'OULFA', 90, 'A1'),
(2, 'sidi maarouf', 50, 'B1');

-- --------------------------------------------------------

--
-- Structure de la table `place`
--

CREATE TABLE `place` (
  `id` int(11) NOT NULL,
  `jour` varchar(100) NOT NULL,
  `adresse` varchar(20) NOT NULL,
  `datedebut` int(11) NOT NULL,
  `datefin` int(11) NOT NULL,
  `etat` varchar(100) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `idPark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `place`
--

INSERT INTO `place` (`id`, `jour`, `adresse`, `datedebut`, `datefin`, `etat`, `nom`, `idPark`) VALUES
(8, '2022-04-02', '0', 0, 0, 'ffff', '', 1),
(9, '2022-04-02', '0', 0, 0, 'vvvv', 'R', 2),
(12, '', '', 0, 0, '', '', 2),
(13, '', '', 0, 0, '', '', 2),
(14, '', '', 0, 0, '', '', 3);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_place` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `cne` varchar(30) NOT NULL,
  `prix` varchar(30) NOT NULL,
  `quartier` varchar(30) NOT NULL,
  `jour` varchar(20) NOT NULL,
  `date_debut` int(11) NOT NULL,
  `date_fin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `id_user`, `id_place`, `nom`, `prenom`, `email`, `phone`, `cne`, `prix`, `quartier`, `jour`, `date_debut`, `date_fin`) VALUES
(26, 4, 8, 'omar', 'omar', 'omar@gmail.com', '0722334455', 'gg342', '120.0', '', '2022-04-02', 2, 5),
(27, 1, 8, 'hamza', 'elhaou', 'hamzaelhaou@gmail.co', '676897609', 'BK707234', '120.0', '0', '2022-04-02', 0, 0),
(28, 1, 8, 'hamza', 'elhaou', 'hamzaelhaou@gmail.co', '676897609', 'BK707234', '10.0', 'OULFA', '2022-04-02', 7, 9),
(29, 1, 8, 'hamza', 'elhaou', 'hamzaelhaou@gmail.co', '676897609', 'BK707234', '10.0', 'OULFA', '2022-06-02', 7, 9),
(30, 1, 8, 'hamza', 'elhaou', 'hamzaelhaou@gmail.co', '676897609', 'BK707234', '10.0', 'OULFA', '2022-06-02', 7, 9),
(31, 1, 8, 'hamza', 'elhaou', 'hamzaelhaou@gmail.co', '676897609', 'BK707234', '10.0', 'OULFA', '2022-06-02', 7, 9),
(32, 1, 8, 'hamza', 'elhaou', 'hamzaelhaou@gmail.co', '676897609', 'BK707234', '10.0', 'OULFA', '2022-06-02', 7, 9),
(33, 1, 8, 'hamza', 'elhaou', 'hamzaelhaou@gmail.co', '676897609', 'BK707234', '10.0', 'OULFA', '2022-06-02', 7, 9),
(34, 1, 9, 'hamza', 'elhaou', 'hamzaelhaou@gmail.co', '676897609', 'BK707234', '25.0', 'sidi maarouf', '2022-04-02', 3, 8),
(36, 1, 9, 'hamza', 'elhaou', 'hamzaelhaou@gmail.co', '676897609', 'BK707234', '10.0', 'sidi maarouf', '2022-06-18', 2, 4),
(37, 1, 9, 'hamza', 'elhaou', 'hamzaelhaou@gmail.co', '676897609', 'BK707234', '25.0', 'sidi maarouf', '2022-04-02', 2, 7);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`numero_compte`,`cnie_client`),
  ADD KEY `compte_ibfk_1` (`cnie_client`);

--
-- Index pour la table `parking`
--
ALTER TABLE `parking`
  ADD PRIMARY KEY (`id_parc`);

--
-- Index pour la table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `place`
--
ALTER TABLE `place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- Base de données : `parking12`
--
CREATE DATABASE IF NOT EXISTS `parking12` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `parking12`;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `cne` varchar(30) NOT NULL,
  `solde` double NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `phone`, `cne`, `solde`, `email`, `password`) VALUES
(3, 'youssef', 'youssef', '0677665544', 'ff2345', 4, 'youssef@gmail.com', '123456'),
(4, 'omar', 'omar', '0722334455', 'gg342', 150, 'omar@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Structure de la table `place`
--

CREATE TABLE `place` (
  `id` int(11) NOT NULL,
  `jour` varchar(100) NOT NULL,
  `quartier` varchar(30) NOT NULL,
  `datedebut` int(11) NOT NULL,
  `datefin` int(11) NOT NULL,
  `etat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `place`
--

INSERT INTO `place` (`id`, `jour`, `quartier`, `datedebut`, `datefin`, `etat`) VALUES
(8, '2022-04-02', '', 0, 0, 'ffff'),
(9, '2022-04-02', '', 0, 0, 'vvvv'),
(10, '2022-04-02', '', 0, 0, 'rr');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_place` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `cne` varchar(30) NOT NULL,
  `prix` varchar(30) NOT NULL,
  `quartier` varchar(30) NOT NULL,
  `jour` varchar(20) NOT NULL,
  `date_debut` int(11) NOT NULL,
  `date_fin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `id_user`, `id_place`, `nom`, `prenom`, `email`, `phone`, `cne`, `prix`, `quartier`, `jour`, `date_debut`, `date_fin`) VALUES
(26, 4, 8, 'omar', 'omar', 'omar@gmail.com', '0722334455', 'gg342', '120.0', '', '2022-04-02', 2, 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `place`
--
ALTER TABLE `place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Base de données : `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Structure de la table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structure de la table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Structure de la table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Structure de la table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Structure de la table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Structure de la table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Structure de la table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Déchargement des données de la table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"projet_mobile\",\"table\":\"entrer\"},{\"db\":\"projet_mobile\",\"table\":\"stock\"},{\"db\":\"projet_mobile\",\"table\":\"manipulation\"},{\"db\":\"projet_mobile\",\"table\":\"client\"},{\"db\":\"projet_mobile\",\"table\":\"livreur\"},{\"db\":\"projet_mobile\",\"table\":\"sortie\"},{\"db\":\"projet_mobile\",\"table\":\"auth_respo\"},{\"db\":\"projet_mobile\",\"table\":\"auth_admin\"},{\"db\":\"parking\",\"table\":\"parking\"},{\"db\":\"parking\",\"table\":\"contact\"}]');

-- --------------------------------------------------------

--
-- Structure de la table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Structure de la table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Déchargement des données de la table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('parking', 'client', 'cnie'),
('parking', 'commande', 'cne'),
('parking', 'compte', 'cnie_client');

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Déchargement des données de la table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'projet_mobile', 'manipulation', '{\"sorted_col\":\"`manipulation`.`id_com` ASC\"}', '2022-04-23 17:44:15');

-- --------------------------------------------------------

--
-- Structure de la table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Déchargement des données de la table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-06-07 21:05:46', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"fr\"}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Structure de la table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Index pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Index pour la table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Index pour la table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Index pour la table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Index pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Index pour la table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Index pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Index pour la table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Index pour la table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Index pour la table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Index pour la table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Index pour la table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Index pour la table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de données : `projet_mobile`
--
CREATE DATABASE IF NOT EXISTS `projet_mobile` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `projet_mobile`;

-- --------------------------------------------------------

--
-- Structure de la table `auth_admin`
--

CREATE TABLE `auth_admin` (
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `auth_admin`
--

INSERT INTO `auth_admin` (`nom`, `prenom`, `email`, `password`) VALUES
('AIT OMAR', 'DRISS', 'admin@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Structure de la table `auth_respo`
--

CREATE TABLE `auth_respo` (
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `auth_respo`
--

INSERT INTO `auth_respo` (`nom`, `prenom`, `email`, `password`) VALUES
('Hamza', 'RACHID', 'respo@gmail.com', 'respo123');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `nom` varchar(23) NOT NULL,
  `prenom` varchar(23) NOT NULL,
  `telephone` varchar(23) NOT NULL,
  `cniec` varchar(23) NOT NULL,
  `avance` double NOT NULL,
  `addressec` varchar(50) NOT NULL,
  `pb_petite` int(30) NOT NULL,
  `pb_moyenne` int(30) NOT NULL,
  `pb_grande` int(23) NOT NULL,
  `cnielivreur` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`nom`, `prenom`, `telephone`, `cniec`, `avance`, `addressec`, `pb_petite`, `pb_moyenne`, `pb_grande`, `cnielivreur`) VALUES
('GB05', 'Khalid', '0626215406', 'BA16207', 300000, 'Hay Moulay Rachid 1 Res Dyar salam', 38, 18, 38, 'rh123455'),
('HAMZA', 'RAJA', '067383788', 'BK45667', 20000, 'OULFA', 37, 18, 37, 'rh123455'),
('ELHAOU', 'MOHCINE', '0678766567', 'BK707675', 6000, 'JNAN LOUZ OULFA', 38, 18, 38, 'bz675645'),
('ELHAOU', 'HAMZA', '0628754239', 'h123', 17345, 'CASABLANCA', 9, 18, 37, 'bz675645'),
('salim', 'elhaw', '0698675634', 'id975577', 30027, 'ouled youssef ', 9, 19, 39, 'bz675645'),
('khaled', 'anas', '067635677', 'RE4566', 9000, 'CASA', 8, 18, 38, 'rh123455'),
('SAID', 'AMIN', '06787977677', 'T787', 4659, 'BENI MELLAL', 9, 18, 39, 'bz675645');

-- --------------------------------------------------------

--
-- Structure de la table `entrer`
--

CREATE TABLE `entrer` (
  `id_sortie` int(11) NOT NULL,
  `idlv` varchar(20) NOT NULL,
  `nombre_grandep` int(11) NOT NULL,
  `nombre_grandev` int(11) NOT NULL DEFAULT 0,
  `nombre_moyennep` int(11) NOT NULL,
  `nombre_moyennev` int(11) NOT NULL DEFAULT 0,
  `nombre_petitep` int(11) NOT NULL,
  `nombre_petitev` int(11) NOT NULL DEFAULT 0,
  `verification` int(1) NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `csgrt_petite` int(11) NOT NULL,
  `csgrt_moyenne` int(11) NOT NULL,
  `csgrt_grande` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `entrer`
--

INSERT INTO `entrer` (`id_sortie`, `idlv`, `nombre_grandep`, `nombre_grandev`, `nombre_moyennep`, `nombre_moyennev`, `nombre_petitep`, `nombre_petitev`, `verification`, `date`, `csgrt_petite`, `csgrt_moyenne`, `csgrt_grande`) VALUES
(21, 'bz675645', 40, 98, 57, 86, 72, 71, 1, '2022-06-03', 24, 24, 34),
(22, 'rh123455', 207, 51, 248, 35, 262, 25, 1, '2022-06-03', 8, 9, 25),
(23, 'rh123455', 100, 0, 100, 0, 100, 0, 1, '2022-06-06', 0, 0, 0),
(24, 'bz675645', -168, 108, -333, 156, -254, 150, 1, '2022-06-06', 93, 149, 34),
(38, 'rh123455', 20, 0, 20, 0, 20, 0, 0, '2022-06-06', 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `livreur`
--

CREATE TABLE `livreur` (
  `nom` varchar(23) NOT NULL,
  `prenom` varchar(23) NOT NULL,
  `telephone` int(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `addresse` varchar(60) NOT NULL,
  `cnie` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `livreur`
--

INSERT INTO `livreur` (`nom`, `prenom`, `telephone`, `email`, `password`, `addresse`, `cnie`) VALUES
('lahcen', 'bou', 9890676, 'bouzzite@gmail.com', 'bouzzite123', 'BENI MELLAL', 'bz675645'),
('rachid', 'bourigue', 676897609, 'rachid@gmail.com', 'rachid123', 'casablanca', 'rh123455');

-- --------------------------------------------------------

--
-- Structure de la table `manipulation`
--

CREATE TABLE `manipulation` (
  `id_com` int(11) NOT NULL,
  `id_client` varchar(30) NOT NULL,
  `id_livreur` varchar(30) NOT NULL,
  `id_sortie` int(30) NOT NULL,
  `vendue_petite` int(11) NOT NULL,
  `csg_petite` int(11) NOT NULL,
  `csgrt_petite` int(11) NOT NULL,
  `change_petite` int(11) NOT NULL,
  `vendue_moyenne` int(11) NOT NULL,
  `csg_moyenne` int(11) NOT NULL,
  `csgrt_moyenne` int(11) NOT NULL,
  `change_moyenne` int(11) NOT NULL,
  `vendue_grande` int(11) NOT NULL,
  `csg_grande` int(11) NOT NULL,
  `csgrt_grande` int(11) NOT NULL,
  `change_grande` int(11) NOT NULL,
  `prix_totale` double NOT NULL,
  `espèce` double NOT NULL,
  `cheque` double NOT NULL,
  `avance` double NOT NULL,
  `date_commande` date NOT NULL,
  `numero_cheque` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `manipulation`
--

INSERT INTO `manipulation` (`id_com`, `id_client`, `id_livreur`, `id_sortie`, `vendue_petite`, `csg_petite`, `csgrt_petite`, `change_petite`, `vendue_moyenne`, `csg_moyenne`, `csgrt_moyenne`, `change_moyenne`, `vendue_grande`, `csg_grande`, `csgrt_grande`, `change_grande`, `prix_totale`, `espèce`, `cheque`, `avance`, `date_commande`, `numero_cheque`) VALUES
(149, 'h123', 'bz675645', 21, 10, 5, 0, 2, 15, 4, 2, 1, 20, 5, 3, 2, 1334, 1000, 300, 34, '2022-06-03', NULL),
(150, 'id975577', 'bz675645', 21, 15, 7, 1, 2, 30, 8, 5, 2, 19, 9, 5, 4, 1773, 700, 1000, 73, '2022-06-03', NULL),
(151, 'RE4566', 'rh123455', 22, 10, 5, 2, 1, 20, 10, 4, 2, 25, 10, 5, 4, 1877, 800, 77, 1000, '2022-06-03', NULL),
(152, 'BK45667', 'rh123455', 22, 15, 5, 3, 2, 15, 4, 2, 1, 26, 24, 12, 4, 2280, 280, 0, 2000, '2022-06-03', NULL),
(153, 'h123', 'bz675645', 21, 12, 12, 2, 1, 10, 11, 1, 4, 12, 4, 2, 1, 1383, 383, 1000, 0, '2022-06-05', 'E344RRTT'),
(154, 'BK707675', 'bz675645', 24, 11, 5, 2, 0, 12, 6, 2, 1, 13, 7, 1, 0, 1789, 89, 1000, 700, '2022-06-06', 'T545ZT'),
(155, 'BK707675', 'bz675645', 24, 15, 10, 4, 8, 14, 11, 2, 2, 12, 7, 10, 3, 1576, 76, 1000, 500, '2022-06-06', 'PKJ7887'),
(156, 'h123', 'bz675645', 24, 10, 10, 1, 1, 12, 12, 12, 1, 1, 3, 1, 0, 187, 12, 10, 90, '2022-06-07', 'AZ3333'),
(157, 'h123', 'bz675645', 24, 10, 10, 10, 1, 10, 15, 12, 7, 3, 4, 1, 1, 246, 12, 12, 1000, '2022-06-07', 'AZ3333AAA'),
(158, 'h123', 'bz675645', 24, 10, 12, 1, 2, 10, 12, 1, 2, 12, 10, 1, 2, 1944, 1000, 40, 2000, '2022-06-07', '100JHSJ');

-- --------------------------------------------------------

--
-- Structure de la table `sortie`
--

CREATE TABLE `sortie` (
  `id_sortie` int(11) NOT NULL,
  `nombre_petite` int(11) NOT NULL,
  `nombre_moyenne` int(11) NOT NULL,
  `nombre_grande` int(11) NOT NULL,
  `id_livreur` varchar(20) NOT NULL,
  `date_sortie` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sortie`
--

INSERT INTO `sortie` (`id_sortie`, `nombre_petite`, `nombre_moyenne`, `nombre_grande`, `id_livreur`, `date_sortie`) VALUES
(21, 200, 200, 200, 'bz675645', '2022-06-03'),
(22, 300, 300, 300, 'rh123455', '2022-06-03'),
(23, 100, 100, 100, 'rh123455', '2022-06-06'),
(24, 30, 30, 30, 'bz675645', '2022-06-06'),
(38, 20, 20, 20, 'rh123455', '2022-06-06');

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `typee` varchar(30) NOT NULL,
  `nombre_vide` int(11) NOT NULL,
  `nombre_plein` int(11) NOT NULL,
  `nombre_erreur` int(11) NOT NULL,
  `prix_csg` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `stock`
--

INSERT INTO `stock` (`typee`, `nombre_vide`, `nombre_plein`, `nombre_erreur`, `prix_csg`) VALUES
('grande', 843, 3093, 461, 38),
('moyenne', 849, 946, 559, 18),
('petite', 796, 7972, 384, 9);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_admin`
--
ALTER TABLE `auth_admin`
  ADD PRIMARY KEY (`email`,`password`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`cniec`),
  ADD KEY `client_ibfk_1` (`cnielivreur`);

--
-- Index pour la table `entrer`
--
ALTER TABLE `entrer`
  ADD PRIMARY KEY (`id_sortie`);

--
-- Index pour la table `livreur`
--
ALTER TABLE `livreur`
  ADD PRIMARY KEY (`cnie`);

--
-- Index pour la table `manipulation`
--
ALTER TABLE `manipulation`
  ADD PRIMARY KEY (`id_com`),
  ADD KEY `id` (`id_client`),
  ADD KEY `id1` (`id_livreur`),
  ADD KEY `id2` (`id_sortie`);

--
-- Index pour la table `sortie`
--
ALTER TABLE `sortie`
  ADD PRIMARY KEY (`id_sortie`),
  ADD KEY `id_livreur` (`id_livreur`);

--
-- Index pour la table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`typee`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `entrer`
--
ALTER TABLE `entrer`
  MODIFY `id_sortie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `manipulation`
--
ALTER TABLE `manipulation`
  MODIFY `id_com` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT pour la table `sortie`
--
ALTER TABLE `sortie`
  MODIFY `id_sortie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- Base de données : `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de données : `testejb`
--
CREATE DATABASE IF NOT EXISTS `testejb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `testejb`;

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `code` bigint(20) NOT NULL,
  `datecreation` datetime DEFAULT NULL,
  `solde` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`code`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
  MODIFY `code` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
