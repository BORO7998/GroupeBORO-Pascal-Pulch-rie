-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mar. 11 avr. 2023 à 13:56
-- Version du serveur :  5.7.34
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `forum2020`
--
CREATE DATABASE IF NOT EXISTS `forum2020` DEFAULT CHARACTER SET utf32 COLLATE utf32_general_ci;
USE `forum2020`;

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id_message` int(11) NOT NULL,
  `texte_message` text NOT NULL,
  `date_message` date NOT NULL,
  `heure_message` time NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id_message`, `texte_message`, `date_message`, `heure_message`, `id_user`) VALUES
(13, 'bonjour tout le monde', '2023-03-28', '11:36:00', 16),
(14, 'bonjour tout le monde', '2023-03-28', '11:36:00', 16),
(15, 'bonsoir tout le monde', '2023-03-28', '11:36:00', 16),
(16, 'jhfj jskfdgh kjdhfs ksdhf kjdshf', '2023-03-28', '11:36:00', 16),
(17, 'sfjksdf kjdsf ksjhdf kjsdhf sdkjfh', '2023-03-28', '11:36:00', 16),
(18, 'jskdfjk kjsfd', '2023-03-28', '11:37:00', 16),
(19, 'fdsf sdfsdf sdfsdf sdfdsf\r\n', '2023-03-28', '11:37:00', 16),
(20, 'sdfdsf dsf sdf', '2023-03-28', '11:38:00', 16),
(21, 'sfdds dfdf ', '2023-03-28', '11:38:00', 16),
(22, 'dfsd sdfsdf sdf sdf\r\n', '2023-03-28', '11:38:00', 16),
(23, 'zkdjds ksjqdh sqdkjgq sdkjhqs dkqhsd', '2023-03-28', '11:41:05', 16),
(24, 'ksjdkls kjqsd kjqsdqskjd jkzhdjqs kqjshdkqjsdh', '2023-03-28', '11:41:21', 16),
(25, 'bon ramadan', '2023-04-04', '09:18:00', 17),
(26, 'bon ramadan', '2023-04-04', '09:18:00', 17);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_user` int(11) NOT NULL,
  `nom_user` varchar(50) NOT NULL,
  `prenom_user` varchar(50) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `pw_user` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_message`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
