-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2019 at 11:47 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netjobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `benutzerdaten`
--

CREATE TABLE `benutzerdaten` (
  `benutzer_id` int(11) NOT NULL,
  `benutzername` varchar(45) NOT NULL,
  `passwort` varchar(45) NOT NULL,
  `vorname` varchar(45) NOT NULL,
  `nachname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `benutzerdaten`
--

INSERT INTO `benutzerdaten` (`benutzer_id`, `benutzername`, `passwort`, `vorname`, `nachname`, `email`) VALUES
(1, 'guy46', 'f5bdb7d06f63a38428b3d162c758aa5a3dd5cf9e', 'Halle', 'Beahan', 'candice85@example.com'),
(2, 'jchristiansen', 'e8b9b1858c76b3f5fd95aed38e049e4dceb6ebd4', 'Tyrese', 'Kohler', 'hudson.barbara@example.com'),
(3, 'margaretta.nicolas', 'c5593f937101f5ce01095dac2266a9a80c1da552', 'Lew', 'Koelpin', 'shomenick@example.net'),
(4, 'carmine86', 'dd3848384007be24610e03ec2127bbeefeb2a978', 'Allan', 'Bayer', 'wayne86@example.net'),
(5, 'ledner.hershel', '29dfb4728874901934c9700f4245448de5ad6822', 'Margret', 'Wolf', 'orn.bertram@example.org'),
(6, 'ytremblay', 'b8d43871ed974d2eaeca0c9cde7cee8d31fa7a92', 'Rita', 'Johns', 'ldonnelly@example.com'),
(7, 'margarete.koepp', '9942bb93af3023c632c50f4fbda066ea9d11e8d9', 'Savion', 'Littel', 'zackary.hammes@example.org'),
(8, 'laurel17', '0ba8970ed12f084342f102e5187ba934e5e7b580', 'Isaac', 'Trantow', 'dfadel@example.com'),
(9, 'sshields', '8554204194ea88f829dc9e5a455738dd4d895398', 'Royce', 'Ratke', 'ccorkery@example.net'),
(10, 'dkihn', '7a7196b01d39cb567b844ee64867ab073e107946', 'Adelbert', 'Runolfsdottir', 'rice.efren@example.org'),
(11, 'mckenzie.mckenna', '5d8f3b29309d826cd6c2ad49cc526c006b477473', 'Valerie', 'Hammes', 'hamill.bernie@example.com'),
(12, 'johnathan.larson', '57078ea9634edc0b735740341fdccdb9221b83ec', 'Wilbert', 'Altenwerth', 'magnolia.cremin@example.org'),
(13, 'beatty.freida', '5ffc5bb57e7383a7ac3c47f1dd94e64c7c32765f', 'Gretchen', 'Goyette', 'thiel.ramiro@example.com'),
(14, 'runolfsson.gabriella', 'b6c27f9d3b2de400da2ff1405bba376af4600df3', 'Porter', 'Mertz', 'zokuneva@example.com'),
(15, 'jalyn02', '31e638036c5fe4d91a144466da48ca8246614bac', 'Ora', 'Little', 'murphy54@example.net'),
(16, 'therese57', 'cd7fcf7a735c7dd96a444c43e1071cdf8cdc3e1a', 'Jazmyne', 'Pfannerstill', 'victor.gerhold@example.com'),
(17, 'ciara23', '28afd0a798c21c468bf48dd0de0a6d34b34414b1', 'Natasha', 'Wyman', 'kemmer.palma@example.com'),
(18, 'ssimonis', '86b78e57c109cf40012af1c875c098ab41a52c32', 'Naomi', 'Lebsack', 'abbott.beryl@example.net'),
(19, 'kiehn.norma', 'bf16311b3876e783457d455fee7dbc74282e79a2', 'Mekhi', 'Hirthe', 'blanche63@example.org'),
(20, 'anibal.medhurst', 'd2b4e6e522359360c335781d60985cddfe77b6b5', 'Wilford', 'Labadie', 'francesco.osinski@example.com'),
(21, 'hokuneva', '36afe6ca5bdd94f0b5ed134385223b57c3f3a606', 'Mike', 'Klein', 'louvenia.d''amore@example.com'),
(22, 'mariah01', '6a3f565721e8a810900f3e15621b0ffe6ddc8840', 'Santina', 'Keeling', 'lpaucek@example.com'),
(23, 'jocelyn.ernser', '708b790bf34483bf81d3003f9d79e760ae6fdc73', 'Dean', 'Rice', 'lucie48@example.net'),
(24, 'berge.ole', '48a0043210366d108a6ee81822dd21d7a9e5090c', 'Mckenzie', 'Hoeger', 'macie21@example.net'),
(25, 'kara25', 'd222d92e74871c414602bf19a8b748529360de3b', 'Ruth', 'Kautzer', 'toney.gleichner@example.net');

-- --------------------------------------------------------

--
-- Table structure for table `dokumente`
--

CREATE TABLE `dokumente` (
  `dokument_id` int(11) NOT NULL,
  `benutzer_id` int(11) NOT NULL,
  `kategorie_id` int(11) NOT NULL,
  `file` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokumente`
--

INSERT INTO `dokumente` (`dokument_id`, `benutzer_id`, `kategorie_id`, `file`) VALUES
(1, 10, 4, 'word'),
(2, 24, 22, ' excel'),
(3, 17, 16, 'word'),
(4, 10, 4, ' pdf'),
(5, 3, 11, ' excel'),
(6, 22, 13, ' pdf'),
(7, 10, 1, ' excel'),
(8, 3, 21, ' excel'),
(9, 6, 23, ' pdf'),
(10, 5, 23, ' pdf'),
(11, 20, 14, 'word'),
(12, 22, 5, 'word'),
(13, 20, 12, ' pdf'),
(14, 5, 14, ' excel'),
(15, 20, 7, ' pdf'),
(16, 8, 13, 'word'),
(17, 16, 18, ' excel'),
(18, 10, 9, 'word'),
(19, 22, 24, 'word'),
(20, 2, 6, 'word'),
(21, 4, 8, ' excel'),
(22, 19, 3, ' pdf'),
(23, 7, 18, ' pdf'),
(24, 3, 4, 'word'),
(25, 4, 2, ' excel');

-- --------------------------------------------------------

--
-- Table structure for table `kategorien`
--

CREATE TABLE `kategorien` (
  `katgorie_id` int(11) NOT NULL,
  `kategorienname` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategorien`
--

INSERT INTO `kategorien` (`katgorie_id`, `kategorienname`) VALUES
(1, ' zertifikate'),
(2, ' zertifikate'),
(3, ' zertifikate'),
(4, 'arbeitszeugnis'),
(5, ' zertifikate'),
(6, 'arbeitszeugnis'),
(7, ' zertifikate'),
(8, ' zertifikate'),
(9, 'arbeitszeugnis'),
(10, ' zertifikate'),
(11, ' zertifikate'),
(12, ' zertifikate'),
(13, 'arbeitszeugnis'),
(14, ' zertifikate'),
(15, 'arbeitszeugnis'),
(16, ' zertifikate'),
(17, ' zertifikate'),
(18, ' zertifikate'),
(19, ' zertifikate'),
(20, 'arbeitszeugnis'),
(21, ' zertifikate'),
(22, 'arbeitszeugnis'),
(23, ' zertifikate'),
(24, 'arbeitszeugnis'),
(25, ' zertifikate');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL,
  `fk_role_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `middle_name`, `last_name`, `username`, `email`, `auth_key`, `password_hash`, `password_reset_token`, `status`, `fk_role_id`, `created_at`, `updated_at`) VALUES
(1, 'salman', NULL, 'khan', 'administrator', 'salman.u360@gmail.com', 'WcLWvFKYUJzKTBmvmBnBbOaEANuiawUY', '$2y$13$5rd8XXNZDQKhtDEKBJaU5eBPYlD6FitbsT1ulZzjsKily9UxIf1Aa', NULL, 'active', 1, '2019-01-11 00:00:00', '2019-01-11 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `benutzerdaten`
--
ALTER TABLE `benutzerdaten`
  ADD PRIMARY KEY (`benutzer_id`);

--
-- Indexes for table `dokumente`
--
ALTER TABLE `dokumente`
  ADD PRIMARY KEY (`dokument_id`),
  ADD KEY `benutzer_id` (`benutzer_id`,`kategorie_id`),
  ADD KEY `kateogrie_id` (`kategorie_id`);

--
-- Indexes for table `kategorien`
--
ALTER TABLE `kategorien`
  ADD PRIMARY KEY (`katgorie_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_role_id` (`fk_role_id`),
  ADD KEY `student_search_126122016` (`id`,`username`,`first_name`,`middle_name`,`last_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
