-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : sql104.infinityfree.com
-- Généré le :  mer. 15 nov. 2023 à 11:45
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP :  7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `if0_35208375_library`
--

-- --------------------------------------------------------

--
-- Structure de la table `emprunt`
--

CREATE TABLE `emprunt` (
  `id_emprunt` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_livre` int(11) NOT NULL,
  `date_emprunt` date NOT NULL,
  `date_retour_prevue` date NOT NULL,
  `date_retour_effectif` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `emprunt`
--

INSERT INTO `emprunt` (`id_emprunt`, `id_utilisateur`, `id_livre`, `date_emprunt`, `date_retour_prevue`, `date_retour_effectif`) VALUES
(1, 1, 1, '2023-11-09', '2023-11-11', '2023-11-09'),
(2, 2, 1, '2023-11-09', '2023-11-23', '2023-11-09'),
(3, 2, 1, '2023-11-09', '2023-11-09', '2023-11-09'),
(4, 2, 1, '2023-11-09', '2023-11-29', '2023-11-09'),
(5, 2, 1, '2023-09-14', '2024-01-19', NULL),
(6, 3, 4, '2023-11-09', '2023-11-23', '2023-11-09'),
(7, 3, 4, '2023-11-09', '2023-11-17', '2023-11-09'),
(8, 2, 4, '2023-11-13', '2023-11-15', '2023-11-13'),
(9, 5, 4, '2023-11-13', '2023-11-14', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE `livres` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `auteur` varchar(255) NOT NULL,
  `date_publication` date NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `description` text NOT NULL,
  `statut` enum('disponible','non disponible') NOT NULL DEFAULT 'disponible',
  `photo_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `livres`
--

INSERT INTO `livres` (`id`, `titre`, `auteur`, `date_publication`, `isbn`, `description`, `statut`, `photo_url`) VALUES
(1, 'PHP et MySql pour les Nuls ', 'Janet VALADE', '2023-11-14', '23R32R2R4', 'Le livre best-seller sur PHP & MySQL !\r\n\r\n\r\nAvec cette 5e ï¿½dition de PHP et MySQL pour les Nuls, vous verrez qu\'il n\'est plus nï¿½cessaire d\'ï¿½tre un as de la programmation pour dï¿½velopper des sites Web dynamiques et interactifs.\r\n', 'non disponible', ' https://cdn.cultura.com/cdn-cgi/image/width=830/media/pim/66_metadata-image-20983256.jpeg'),
(4, 'Developpement Web mobile avec HTML, CSS et JavaScript Pour les Nuls', 'William HARREL', '2023-11-09', 'DHIDZH1374R', 'Un livre indispensable ï¿½ tous les concepteurs ou dï¿½veloppeurs de sites Web pour iPhone, iPad, smartphones et tablettes !Ce livre est destinï¿½ aux dï¿½veloppeurs qui veulent crï¿½er un site Internet destinï¿½ aux plate-formes mobiles en adoptant les standard du Web que sont HTML, XHTML, les CSS et JavaScript.', 'disponible', 'https://cdn.cultura.com/cdn-cgi/image/width=180/media/pim/82_metadata-image-20983225.jpeg'),
(11, 'Super Livre !', 'Jeanne Autop', '2023-11-14', 'AODJF54FF', 'Un super livre de Jean AUTOP !', 'disponible', 'https://www.librinova.com/librinova/img/maquette/Livre_couverture_01.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `date_inscription` timestamp NULL DEFAULT current_timestamp(),
  `role` varchar(50) NOT NULL DEFAULT 'utilisateur'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `email`, `mot_de_passe`, `date_inscription`, `role`) VALUES
(1, 'Boualaka', 'Murphy', 'contact@web-murphy.fr', 'azerty', '2023-11-03 10:07:59', 'admin'),
(2, 'OUi', 'murphy', 'ok@ok', '$2y$10$AueZjU3P/qA733.q7h/4rOib8wORlDFzLLtFoDUYnG8IWZiy7zQl6', '2023-11-09 09:44:37', 'utilisateur'),
(3, 'boualaka', 'murphy', 'murphya@gmail.com', '$2y$10$q.7lncYpU1ZzZ1LGnS1Kj.rAF7XKmQenneD8hQRgvO2bJhZDhFV66', '2023-11-09 14:22:19', 'admin'),
(4, 'test', 'teest', 'test@test', '$2y$10$xSEoJGdBwbJXMU3BIRD6xuLh0Be/Bz0D8FxbNbyqzHN3Ovuvfa1O2', '2023-11-09 21:54:09', 'utilisateur'),
(5, 'Hart', 'Jacque', 'tom@gmail.com', '$2y$10$pY2UHGd6DcGYgmU1HgSgbOrp9g7fuFrAk1B7lIZi7anXzrFAlt5IG', '2023-11-09 21:59:23', 'admin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD PRIMARY KEY (`id_emprunt`),
  ADD KEY `SECONDARY` (`id_utilisateur`),
  ADD KEY `SECONDARY_` (`id_livre`);

--
-- Index pour la table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `emprunt`
--
ALTER TABLE `emprunt`
  MODIFY `id_emprunt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `livres`
--
ALTER TABLE `livres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD CONSTRAINT `emprunt_ibfk_1` FOREIGN KEY (`id_livre`) REFERENCES `livres` (`id`),
  ADD CONSTRAINT `emprunt_ibfk_2` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateurs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
