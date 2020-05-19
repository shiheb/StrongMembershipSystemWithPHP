-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 15, 2020 at 07:06 PM
-- Server version: 5.7.26
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `billets`
--

DROP TABLE IF EXISTS `billets`;
CREATE TABLE IF NOT EXISTS `billets` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contenu` text COLLATE utf8_unicode_ci NOT NULL,
  `date_creation` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `billets`
--

INSERT INTO `billets` (`ID`, `titre`, `contenu`, `date_creation`) VALUES
(1, 'Changement climatique', 'La météo a été boulversée depuis que l\'Homme a décidé de foutre en l\'air tous ses principes et ne pas respecter l\'environnement.', '2020-02-03 00:00:00'),
(2, 'Aid El Adhha', 'Religion holidays for Muslims, the biggest one celebrated.', '2020-02-05 10:52:56'),
(3, 'Aid El Fetr', 'Religion holidays for Muslims, the second biggest one after Ail EL Adhha, celebrated after Ramadhan.', '2020-02-05 10:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_billet` int(11) NOT NULL,
  `auteur` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `commentaire` text COLLATE utf8_unicode_ci NOT NULL,
  `date_commentaire` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `commentaires`
--

INSERT INTO `commentaires` (`ID`, `id_billet`, `auteur`, `commentaire`, `date_commentaire`) VALUES
(1, 2, 'Chiheb Hmida', 'Hey Hey I don\'t know that before', '2020-02-05 22:14:32'),
(2, 2, 'Amir Dallagi', 'Me too! I don\'t what to say after that.', '2020-02-05 22:14:32'),
(3, 2, 'Shiheb', 'qsdqsd', '2020-02-06 12:04:12'),
(4, 2, 'Shiheb', 'sdf', '2020-02-06 12:20:12'),
(5, 2, 'sqd', 'qsdqsd', '2020-02-06 12:20:16'),
(6, 2, 'sqd', 'Hey hey', '2020-02-06 12:22:01'),
(7, 3, 'Shiheb', 'qsdqsd', '2020-02-06 12:22:32'),
(8, 2, 'Shiheb', 'qfsdfsklnosdhufkjnskjvn  oijzfijsldifjsidf jpsi pôjskdgpojsf', '2020-02-06 14:03:28'),
(9, 3, 'qsdfqsd', 'qsdqsdqd', '2020-02-06 14:04:26'),
(10, 1, 'sqd', 'efdqfsdf', '2020-02-06 14:22:12'),
(11, 3, 'fdf', '6565632', '2020-02-15 16:40:51'),
(12, 1, 'utfyjkjhhhuiuij', '296236556554', '2020-02-15 16:41:05'),
(13, 1, 'Shiheb', '9666666666666666666666', '2020-02-15 16:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `minichat`
--

DROP TABLE IF EXISTS `minichat`;
CREATE TABLE IF NOT EXISTS `minichat` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `date_ajout` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `minichat`
--

INSERT INTO `minichat` (`ID`, `pseudo`, `message`, `date_ajout`) VALUES
(1, 'Tom', 'Il fait beau aujourd\'hui, vous ne trouvez pas ?', NULL),
(2, 'John', 'Ouais, ça faisait un moment qu\'on n\'avait pas vu la lumière du soleil !', NULL),
(3, 'Patrice', 'Ça vous tente d\'aller à la plage aujourd\'hui ? Y\'a de super vagues !', NULL),
(4, 'Tom', 'Cool, bonne idée ! J\'amène ma planche !', NULL),
(5, 'John', 'Comptez sur moi !', NULL),
(6, 'Sami', 'Hey hey hey Hallo', NULL),
(7, 'John', 'How are you doing!', NULL),
(10, 'shiheb', 'Salut! ça va ? ', NULL),
(11, 'shiheb', 'Tout va bien ? ', NULL),
(12, 'Samir', 'Marche lentement stp !', NULL),
(13, 'Nouha', 'Hello ! What are you doing ? ', NULL),
(14, 'hey', 'Ecris bien stp.', NULL),
(15, 'Fouad', 'I have all what I need.', NULL),
(16, 'Fouad', 'Everything is alright.', NULL),
(17, 'Ahmad', 'Hello Everybody!', NULL),
(18, 'shiheb', 'Hello again!', NULL),
(21, 'shiheb', 'why it works !é\"\'-è', NULL),
(22, 'shiheb', 'why it works !é&quot;\'-è', NULL),
(24, 'sdfgsdg', 'dfgdfg', NULL),
(25, 'shiheb', 'vcxb', NULL),
(26, 'Fouad', 'sdfsdf', '2020-02-05 07:17:18'),
(27, 'shiheb', 'uygjjklkjhlokj', '2020-02-02 12:22:26'),
(28, 'Shiheb', 'Hello, Hello, Hello', '2020-02-02 06:26:34'),
(29, 'shiheb', 'I have all what I need.', '2020-02-03 06:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `avatar`) VALUES
(1, 'chiheb.hmida@gmail.com', '$2y$10$fBxcol8/Nc7VMNXfpkdMoemvh5azwWzpIVaFxI3nCSDnTk9lBV0u2', '2020-02-12 14:06:19', NULL),
(2, 'shihebshiheb', '$2y$10$pjfGke9ed2DZJDX/EtMgmeYe5Gcd6rCHmrXF97J1CS0weFMTMA292', '2020-02-12 15:36:51', NULL),
(3, 'shiheb', '$2y$10$D7ZKZzKaYyCNMz5BqPNOnOjbyqAsxXQ8RMNDjORNRcf9XKBiDTQuO', '2020-02-12 17:29:00', NULL),
(4, 'mobdro', '$2y$10$3nuZwyGVg8ovnOFG1mIzm.lhSy54rcS3E/j98bGtedZXG/p1WMpCa', '2020-02-14 13:42:07', NULL),
(5, 'mobdro2', '$2y$10$PvwnuRixijQhRTLK/aqQZ.lPY4bMO74XYTz3EmYe6UFL8/zKh1FFy', '2020-02-14 14:44:31', NULL),
(6, 'mobdro3', '$2y$10$52XKqBzpvgIYUpplTuDXc.a.AL8WSaRvRgrK2c1A9njFd/Dj4WLla', '2020-02-14 14:44:57', NULL),
(7, 'mobdro322', '$2y$10$22PVeZhyABV7eVUrK9RakOgPt1smJIwpmOIMPMMAjIGJ.Bc38/tUi', '2020-02-14 14:46:02', NULL),
(8, 'france', '$2y$10$BUQxHcRyUfAJkDmqFpRf6eQqNinb.trAeCXjtQL/OADcMn76W81T.', '2020-02-14 14:47:36', NULL),
(9, 'germany', '$2y$10$CisqiUo3cfCGkaYXeotnfOsn4ez88hPRRVadsT5d0SPGwq7PxtAM2', '2020-02-14 14:48:32', NULL),
(10, 'italy', '$2y$10$pIUFC88.1d0iQwAHDECzgexdLbnwZXYAZvquykeKn1rNyd5R0TA9e', '2020-02-14 14:49:38', NULL),
(11, 'spain', '$2y$10$zJ4ixpb.nq606TqZlbLlJu.B859G77IH/KD1PbQ7fZsnI7UFQ0e92', '2020-02-14 15:02:08', NULL),
(12, 'portugal', '$2y$10$htBkQaTL0SP1xM4BJaQt6OH/mj6vBGJgi2n6QcLf7lShr36ZOtcpi', '2020-02-14 15:07:54', NULL),
(13, 'tunisia', '$2y$10$PcRtMUIUNY7ItImrc8Vr9e7HvN5sn3oLezkHFEWM/J1w2N1R5jvwq', '2020-02-14 15:29:35', '5e46aecf0f4d70.56677240.jpg'),
(14, 'lybia', '$2y$10$gOZz87lxrpTvmvVSoM8GSulTkqp.kDyLLUPbNU6gR8jAM58WDs./m', '2020-02-14 15:44:03', '5e46b233d21345.38160310.jpg'),
(15, 'mozambique', '$2y$10$jMmOsO0JLQM7o/mURbB2Fuvh/i8YPWf.GZNPbubS1tshbL9J90MBa', '2020-02-14 15:51:00', NULL),
(16, 'paris', '$2y$10$LxdRyc9wqlysiIhtPHtYV.RQ6fFm5gTvIBeXhh9hZZpClJxFECVR.', '2020-02-14 15:52:33', '5e46b4319a5675.59176291.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
