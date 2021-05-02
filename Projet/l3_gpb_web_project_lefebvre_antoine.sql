-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 192.168.19.9
-- Généré le : Dim 02 mai 2021 à 23:37
-- Version du serveur :  5.7.29-log
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `l3_gpb_web_project_lefebvre_antoine`
--

-- --------------------------------------------------------

--
-- Structure de la table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `law` varchar(10) NOT NULL,
  `id_class` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `firstname`, `surname`, `law`, `id_class`) VALUES
(1, 'admin@ecole.fr', 'TestApp950', 'Admin', 'instrateur', 'admin', 1),
(2, 'etudiant@ecole.fr', 'TestApp950', 'Etu', 'diant', 'student', 1),
(3, 'prof@ecole.fr', 'TestApp950', 'Prof', 'fesseur', 'professor', 1),
(4, 'test@ecole.fr', 'TestApp950', 'test', 'testt', 'student', 1),
(5, 'jupyter@ecole.fr', 'TestAPP950', 'Jupyter', 'Saturne', 'student', 1),
(6, 'virginie@ecole.fr', 'TestAPP950', 'Virginie', 'Sans', 'student', 1);

-- --------------------------------------------------------

--
-- Structure de la table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_school` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `class`
--

INSERT INTO `class` (`id`, `name`, `id_school`) VALUES
(1, 'premiere classe', 1),
(3, 'seconde classe', 2);

-- --------------------------------------------------------

--
-- Structure de la table `list_exo`
--

CREATE TABLE `list_exo` (
  `id_list_exo` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `first_numb` int(11) NOT NULL,
  `second_numb` int(11) NOT NULL,
  `operator` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `list_exo`
--

INSERT INTO `list_exo` (`id_list_exo`, `id_account`, `name`, `first_numb`, `second_numb`, `operator`) VALUES
(1, 3, 'dodo', 2, 4, 'soustraction'),
(1, 3, 'dodo', 2, 4, 'addition'),
(1, 3, 'dodo', 3, 4, 'addition'),
(2, 3, 'dodo v2', 3, 2, 'soustraction'),
(2, 3, 'dodo v2', 3, 5, 'soustraction'),
(2, 3, 'dodo v2', 7, 5, 'multiplication'),
(2, 3, 'dodo v2', 6, 5, 'multiplication'),
(2, 3, 'dodo v2', 6, 8, 'multiplication'),
(2, 3, 'dodo v2', 6, 3, 'multiplication'),
(3, 3, 'dodo v3', 1, 2, 'addition'),
(3, 3, 'dodo v3', 1, 5, 'addition'),
(3, 3, 'dodo v3', 7, 5, 'addition'),
(4, 3, 'DODO V4', 3, 2, 'multiplication'),
(4, 3, 'DODO V4', 1, 6, 'soustraction'),
(4, 3, 'DODO V4', 9, 6, 'soustraction'),
(4, 3, 'DODO V4', 9, 4, 'addition'),
(4, 3, 'DODO V4', 9, 4, 'multiplication');

-- --------------------------------------------------------

--
-- Structure de la table `list_prof`
--

CREATE TABLE `list_prof` (
  `id` int(11) NOT NULL,
  `id_prof` int(11) NOT NULL,
  `nunb_good_resp` int(11) NOT NULL,
  `numb_questions` int(11) NOT NULL,
  `operator` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `result_exo`
--

CREATE TABLE `result_exo` (
  `id` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `nunb_good_resp` int(11) NOT NULL,
  `numb_questions` int(11) NOT NULL,
  `operator` varchar(20) NOT NULL,
  `duration` time NOT NULL,
  `id_list_prof` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `result_exo`
--

INSERT INTO `result_exo` (`id`, `id_account`, `nunb_good_resp`, `numb_questions`, `operator`, `duration`, `id_list_prof`) VALUES
(1, 2, 2, 10, 'multiplication', '01:12:03', NULL),
(2, 2, 3, 10, 'soustraction', '00:00:05', NULL),
(3, 4, 0, 10, 'multiplication', '00:00:04', NULL),
(4, 4, 4, 10, 'division', '00:00:09', NULL),
(5, 2, 4, 10, 'dodo', '00:00:06', NULL),
(6, 2, 1, 10, 'addition', '00:01:47', NULL),
(7, 2, 0, 2, 'dodo', '00:01:51', NULL),
(8, 2, 0, 2, 'dodo', '00:00:09', NULL),
(9, 2, 0, 2, 'dodo', '00:00:09', NULL),
(10, 2, 1, 2, 'dodo v3', '00:00:06', NULL),
(11, 2, 1, 2, 'dodo', '00:00:06', NULL),
(12, 2, 0, 2, 'dodo v3', '00:00:01', NULL),
(13, 2, 3, 5, 'dodo v2', '00:00:26', NULL),
(14, 2, 1, 2, 'dodo', '00:00:07', NULL),
(15, 2, 1, 5, 'dodo v2', '00:00:03', NULL),
(16, 2, 1, 5, 'dodo v2', '00:00:02', NULL),
(17, 2, 0, 2, 'dodo', '00:00:02', NULL),
(18, 2, 1, 2, 'dodo', '00:00:04', NULL),
(19, 2, 2, 2, 'dodo', '00:00:05', NULL),
(20, 5, 2, 5, 'dodo v2', '00:00:09', NULL),
(21, 6, 4, 10, 'soustraction', '00:00:19', NULL),
(22, 6, 2, 5, 'dodo v2', '00:00:09', NULL),
(23, 6, 2, 4, 'DODO V4', '00:00:13', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `school`
--

CREATE TABLE `school` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` mediumtext NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `school`
--

INSERT INTO `school` (`id`, `name`, `address`, `zip_code`, `city`) VALUES
(1, 'ITESCIA', '5 rue pierre coubertin', '95000', 'Cergy'),
(3, 'coding', '5 rue trois fontaine', '95000', 'Cergy');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `list_prof`
--
ALTER TABLE `list_prof`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `result_exo`
--
ALTER TABLE `result_exo`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `list_prof`
--
ALTER TABLE `list_prof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `result_exo`
--
ALTER TABLE `result_exo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
