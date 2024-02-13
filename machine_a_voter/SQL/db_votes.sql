-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour db_votes
DROP DATABASE IF EXISTS `db_votes`;
CREATE DATABASE IF NOT EXISTS `db_votes` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_votes`;

-- Listage de la structure de table db_votes. candidat
DROP TABLE IF EXISTS `candidat`;
CREATE TABLE IF NOT EXISTS `candidat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table db_votes.candidat : ~0 rows (environ)
INSERT INTO `candidat` (`id`, `nom`, `prenom`, `slogan`) VALUES
	(1, 'MacAlpine', 'Cunégonde', 'On n\'est pas là pour beurrer les tartines, mais pour défendre vos intérêts'),
	(2, 'Voce', 'Laïla', 'Du rire et des larmes ? Non, juste des résultats'),
	(3, 'Wilacot', 'Cécilia', 'On vous fera rire... jaune'),
	(4, 'Leeroyde', 'Raphaël', 'Attention, élections : ça va décoiffer'),
	(5, 'Dillintone', 'Jean', 'Nous sommes des magiciens: on peut faire bouger les choses'),
	(6, 'MacTrustey', 'Séverine', 'On ne vous promet pas la lune, mais on va vous donner la parole'),
	(7, 'Sonner', 'Jordan', 'On n\'est pas toujours là, mais on est là pour vous'),
	(8, 'Fowells', 'Patrick', 'Nous ne sommes pas des héros, mais on va vous sauver la mise '),
	(9, 'Bartlomiej', 'Martine', 'TTC, service compris'),
	(10, 'O\'Grada', 'John', 'Vous faire entendre raison');

-- Listage de la structure de table db_votes. candidat_sessions_vote
DROP TABLE IF EXISTS `candidat_sessions_vote`;
CREATE TABLE IF NOT EXISTS `candidat_sessions_vote` (
  `candidat_id` int NOT NULL,
  `sessions_vote_id` int NOT NULL,
  PRIMARY KEY (`candidat_id`,`sessions_vote_id`),
  KEY `IDX_4D8AD81F8D0EB82` (`candidat_id`),
  KEY `IDX_4D8AD81FE9FD2A5E` (`sessions_vote_id`),
  CONSTRAINT `FK_4D8AD81F8D0EB82` FOREIGN KEY (`candidat_id`) REFERENCES `candidat` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_4D8AD81FE9FD2A5E` FOREIGN KEY (`sessions_vote_id`) REFERENCES `sessions_vote` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table db_votes.candidat_sessions_vote : ~0 rows (environ)

-- Listage de la structure de table db_votes. doctrine_migration_versions
DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table db_votes.doctrine_migration_versions : ~1 rows (environ)
INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
	('DoctrineMigrations\\Version20240212131550', '2024-02-12 13:43:44', 40),
	('DoctrineMigrations\\Version20240212132511', '2024-02-12 13:43:44', 263);

-- Listage de la structure de table db_votes. sessions_vote
DROP TABLE IF EXISTS `sessions_vote`;
CREATE TABLE IF NOT EXISTS `sessions_vote` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nb_tours` int NOT NULL,
  `nb_representants` int NOT NULL,
  `statut` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table db_votes.sessions_vote : ~0 rows (environ)
INSERT INTO `sessions_vote` (`id`, `nb_tours`, `nb_representants`, `statut`) VALUES
	(1, 2, 10, 'active');

-- Listage de la structure de table db_votes. vote
DROP TABLE IF EXISTS `vote`;
CREATE TABLE IF NOT EXISTS `vote` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tour` int NOT NULL,
  `session_id` int NOT NULL,
  `candidat_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5A108564613FECDF` (`session_id`),
  KEY `IDX_5A1085648D0EB82` (`candidat_id`),
  CONSTRAINT `FK_5A108564613FECDF` FOREIGN KEY (`session_id`) REFERENCES `sessions_vote` (`id`),
  CONSTRAINT `FK_5A1085648D0EB82` FOREIGN KEY (`candidat_id`) REFERENCES `candidat` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table db_votes.vote : ~0 rows (environ)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
