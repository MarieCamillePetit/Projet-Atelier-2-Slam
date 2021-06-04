-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 03 juin 2021 à 16:18
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mediatek86`
--
CREATE DATABASE IF NOT EXISTS mediatek86 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

GRANT ALL PRIVILEGES ON *.* TO 'responsable'@'%' WITH GRANT OPTION;
GRANT USAGE ON *.* TO 'responsable'@'%';
GRANT ALL PRIVILEGES ON `mediatek86`.* TO 'responsable'@'%';

-- --------------------------------------------------------

--
-- Structure de la table `absence`
--

DROP TABLE IF EXISTS `absence`;
CREATE TABLE IF NOT EXISTS `absence` (
  `idPersonnel` int(11) NOT NULL,
  `DateDébut` datetime NOT NULL,
  `DateFin` datetime DEFAULT NULL,
  `idMotif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `absence`
--

INSERT INTO `absence` (`idPersonnel`, `DateDébut`, `DateFin`, `idMotif`) VALUES
(2, '2021-05-04 18:18:04', '2021-06-01 18:18:04', 3),
(2, '2020-01-02 08:00:00', '2020-01-05 17:00:00', 3),
(2, '2020-02-02 08:00:00', '2020-02-05 17:00:00', 2),
(2, '2020-03-02 08:00:00', '2020-03-05 17:00:00', 1),
(2, '2020-04-02 08:00:00', '2020-04-05 17:00:00', 2),
(4, '2020-11-15 08:00:00', '2020-11-16 16:00:00', 1),
(4, '2020-11-17 08:00:00', '2020-11-18 18:00:00', 1),
(4, '2020-11-19 08:00:00', '2020-11-20 17:00:00', 2),
(4, '2020-11-21 08:00:00', '2020-11-22 17:00:00', 3),
(4, '2020-11-25 08:00:00', '2020-11-28 17:00:00', 4),
(5, '2020-01-10 08:00:00', '2020-01-12 17:00:00', 4),
(5, '2020-02-10 08:00:00', '2020-02-12 19:00:00', 2),
(5, '2020-03-10 08:00:00', '2020-03-12 17:00:00', 3),
(5, '2020-04-10 08:00:00', '2020-04-12 17:00:00', 2),
(6, '2020-01-11 08:00:00', '2020-01-15 17:00:00', 4),
(6, '2020-02-12 08:00:00', '2020-02-20 17:00:00', 2),
(6, '2020-03-15 08:00:00', '2020-03-18 17:00:00', 4),
(6, '2020-04-20 08:00:00', '2020-04-23 17:00:00', 1),
(6, '2020-06-15 08:30:00', '2020-07-15 19:30:00', 1),
(6, '2020-12-14 08:00:00', '2020-12-18 17:00:00', 3),
(7, '2020-01-14 08:00:00', '2020-01-15 17:00:00', 2),
(7, '2020-02-16 08:00:00', '2020-02-17 17:00:00', 1),
(7, '2020-08-18 08:00:00', '2020-08-19 17:00:00', 1),
(7, '2020-09-23 09:00:00', '2020-09-25 20:00:00', 1),
(7, '2020-12-01 10:00:00', '2020-12-01 12:00:00', 1),
(7, '2020-12-07 08:00:00', '2020-12-10 18:00:00', 2),
(7, '2020-12-15 08:00:00', '2020-12-23 17:00:00', 3),
(8, '2020-07-15 08:00:00', '2020-07-18 17:00:00', 4),
(8, '2020-09-15 08:00:00', '2020-09-18 17:00:00', 2),
(8, '2020-10-15 08:00:00', '2020-10-18 17:00:00', 1),
(9, '2020-01-20 08:00:00', '2020-01-27 17:00:00', 1),
(1, '2020-01-20 08:00:00', '2020-01-27 17:00:00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `motif`
--

DROP TABLE IF EXISTS `motif`;
CREATE TABLE IF NOT EXISTS `motif` (
  `idMotif` int(11) NOT NULL,
  `Libelle` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `motif`
--

INSERT INTO `motif` (`idMotif`, `Libelle`) VALUES
(1, 'Vacances'),
(2, 'Maladie'),
(3, 'Motif familial'),
(4, 'Congé Parental');

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

DROP TABLE IF EXISTS `personnel`;
CREATE TABLE IF NOT EXISTS `personnel` (
  `idPersonnel` int(11) NOT NULL,
  `idService` int(11) NOT NULL,
  `Nom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Prenom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`idPersonnel`, `idService`, `Nom`, `Prenom`, `Tel`, `Email`) VALUES
(7, 8, 'Abbott', 'Dolan', '09 41 53 02 28', 'nunc.nulla.vulputate@malesuadaaugue.net'),
(1, 2, 'Nixon', 'Hayley', '07 04 57 11 71', 'torquent.per.conubia@sit.org'),
(6, 5, 'Patou', 'Marion', '06 04 04 08 16', 'lobortis.Class@nulla.co.uk'),
(7, 4, 'Lopez', 'Deborah', '06 89 05 10 82', 'molestie.tortor@cursusNuncmauris.co.uk'),
(10, 4, 'Barnett', 'Lola', '07 57 59 62 14', 'massa.Mauris.vestibulum@nibhdolornonummy.edu'),
(12, 4, 'Tucker', 'Flynn', '07 35 02 95 23', 'Donec.est@neque.edu'),
(3, 5, 'Stephenson', 'Wyatt', '07 26 50 65 25', 'sed.pede.nec@sitametconsectetuer.ca'),
(1, 2, 'Noel', 'Florence', '05 67 83 05 07', 'cursus.non.egestas@Pellentesquehabitantmorbi.org'),
(9, 10, 'Kato', 'Kelly', '06 46 37 28 46', 'rhoncus@malesuadaut.com'),
(5, 10, 'Holden', 'Germane', '06 94 09 52 71', 'est.mollis@porta.org');

-- --------------------------------------------------------

--
-- Structure de la table `responsable`
--

DROP TABLE IF EXISTS `responsable`;
CREATE TABLE IF NOT EXISTS `responsable` (
  `login` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pwd` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `responsable`
--

INSERT INTO `responsable` (`login`, `pwd`) VALUES
('responsable', 'MarieCNED'),
(NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `idService` int(11) NOT NULL,
  `Nom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`idService`, `Nom`) VALUES
(1, 'administratif'),
(2, 'méditation culturelle'),
(3, 'prêt');
--
-- Index pour les tables déchargées
--

--
-- Index pour la table absence
--
ALTER TABLE absence
  ADD PRIMARY KEY (IDPERSONNEL,DATEDEBUT),
  ADD KEY FK_ABSENCE_MOTIF (IDMOTIF);

--
-- Index pour la table motif
--
ALTER TABLE motif
  ADD PRIMARY KEY (IDMOTIF);

--
-- Index pour la table personnel
--
ALTER TABLE personnel
  ADD PRIMARY KEY (IDPERSONNEL),
  ADD KEY FK_PERSONNEL_SERVICE (IDSERVICE);

--
-- Index pour la table service
--
ALTER TABLE service
  ADD PRIMARY KEY (IDSERVICE);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table motif
--
ALTER TABLE motif
  MODIFY IDMOTIF int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table personnel
--
ALTER TABLE personnel
  MODIFY IDPERSONNEL int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table service
--
ALTER TABLE service
  MODIFY IDSERVICE int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table absence
--
ALTER TABLE absence
  ADD CONSTRAINT absence_ibfk_1 FOREIGN KEY (IDMOTIF) REFERENCES motif (IDMOTIF),
  ADD CONSTRAINT absence_ibfk_2 FOREIGN KEY (IDPERSONNEL) REFERENCES personnel (IDPERSONNEL);

--
-- Contraintes pour la table personnel
--
ALTER TABLE personnel
  ADD CONSTRAINT personnel_ibfk_1 FOREIGN KEY (IDSERVICE) REFERENCES service (IDSERVICE);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
