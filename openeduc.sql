-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 04 mai 2022 à 22:16
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données : `openeduc`
--
-- --------------------------------------------------------

-- Structure de la table ecole

CREATE TABLE `ecole` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `telephone` int(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `annee` year(4) NOT NULL,
  `date` date NOT NULL,
  `niveaux` text NOT NULL,
  `classe` text NOT NULL,
  `effectif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insertion des données de la table ecole

INSERT INTO 'ecole' (`id`, `nom`, `adresse`, `telephone`, `email`, `annee`, `date`, `niveaux`, `classe`, `effectif`) VALUES
(52, 'Ecole Sardosienne', '18 rue du Schneeberg, 67700, Otterswiller', 607089951, 'yassin.schahl@gmail.com', 2022, '2022-05-03', 'CM2', 'MR MAXIME CM2', 20),
(53, 'Ecole rouge', '18 rue du Schneeberg, 67700, Otterswiller', 607089951, 'yassin.schahl@gmail.com', 2022, '2022-05-04', 'CMA', 'MR SAY CM2', 12),
(55, 'm', '18 rue du Schneeberg, 67700, Otterswiller', 607089951, 'yassin.schahl@gmail.com', 2022, '2022-05-04', 'CM2', 'MR MAXIME CM2', 23);

-- --------------------------------------------------------

-- Structure de la table user


CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `sexe` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insertion des données dans la table user

INSERT INTO `user` (`id`, `nom`, `prenom`, `email`, `password`, `sexe`) VALUES
(18, 't', 't', 'yassin.schahl@gmail.com', '3f7c54571faee024e3fd68603c5c95f6a4c8ef73a398840b974f3f57737a116f', 'Madame'),
(20, 'a', 'a', 'yassin.schahl@gmail.com', 'ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb', 'Monsieur'),
(21, 'matt', 'matt', 'yassin.schahl@gmail.com', '62c66a7a5dd70c3146618063c344e531e6d4b59e379808443ce962b3abd63c5a', 'Monsieur');


-- Index pour la table `ecole`

ALTER TABLE `ecole`
  ADD PRIMARY KEY (`id`);


-- Index pour la table `user`

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);


-- AUTO_INCREMENT pour la table `ecole`

ALTER TABLE `ecole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;


-- AUTO_INCREMENT pour la table `user`


ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;


