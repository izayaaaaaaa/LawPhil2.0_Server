-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2023 at 06:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lawdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `laws`
--

CREATE TABLE `laws` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laws`
--

INSERT INTO `laws` (`id`, `title`, `category`, `content`) VALUES
(1, '1987 Constitution of the Republic of the Philippines', 'Constitutions', 'Content of Law 1'),
(2, 'Law 2', 'Statutes', 'Content of Law 2'),
(3, 'Law 3', 'Executive Issuances', 'Content of Law 3'),
(4, 'Law 4', 'Judicial Issuances', 'Content of Law 4'),
(5, 'Law 5', 'Other Judicial Issuances', 'Content of Law 5'),
(6, 'Law 6', 'Other Issuances', 'Content of Law 6'),
(7, 'Law 7', 'Jurisprudence', 'Content of Law 7'),
(8, 'Law 8', 'International Legal Resources', 'Content of Law 8'),
(9, 'Law 9', 'AUSL Exclusive', 'Content of Law 9'),
(10, 'The Law Governing the Constitutional Commision of 1986', 'Constitutions', 'Content of Law 10'),
(11, 'Law 11', 'Statutes', 'Content of Law 11'),
(12, 'Law 12', 'Executive Issuances', 'Content of Law 12'),
(13, 'Law 13', 'Judicial Issuances', 'Content of Law 13'),
(14, 'Law 14', 'Other Judicial Issuances', 'Content of Law 14'),
(15, 'Law 15', 'Other Issuances', 'Content of Law 15'),
(16, 'Law 16', 'Jurisprudence', 'Content of Law 16'),
(17, 'Law 17', 'International Legal Resources', 'Content of Law 17'),
(18, 'Law 18', 'AUSL Exclusive', 'Content of Law 18'),
(19, '1973 Constitution of the Republic of the Philippines', 'Constitutions', 'Content of Law 19'),
(20, 'Law 20', 'Statutes', 'Content of Law 20'),
(21, 'Law 21', 'Executive Issuances', 'Content of Law 21'),
(22, 'Law 22', 'Judicial Issuances', 'Content of Law 22'),
(23, 'Law 23', 'Other Judicial Issuances', 'Content of Law 23'),
(24, 'Law 24', 'Other Issuances', 'Content of Law 24'),
(25, 'Law 25', 'Jurisprudence', 'Content of Law 25'),
(26, 'Law 26', 'International Legal Resources', 'Content of Law 26'),
(27, 'Law 27', 'AUSL Exclusive', 'Content of Law 27'),
(28, '1943 Constitution of the Republic of the Philippines', 'Constitutions', 'Content of Law 28'),
(29, 'Law 29', 'Statutes', 'Content of Law 29'),
(30, 'Law 30', 'Executive Issuances', 'Content of Law 30'),
(31, 'Law 31', 'Judicial Issuances', 'Content of Law 31'),
(32, 'Law 32', 'Other Judicial Issuances', 'Content of Law 32'),
(33, 'Law 33', 'Other Issuances', 'Content of Law 33'),
(34, 'Law 34', 'Jurisprudence', 'Content of Law 34'),
(35, 'Law 35', 'International Legal Resources', 'Content of Law 35'),
(36, 'Law 36', 'AUSL Exclusive', 'Content of Law 36'),
(37, '1935 Constitution of the Republic of the Philippines', 'Constitutions', 'Content of Law 37'),
(38, 'Law 38', 'Statutes', 'Content of Law 38'),
(39, 'Law 39', 'Executive Issuances', 'Content of Law 39'),
(40, 'Law 40', 'Judicial Issuances', 'Content of Law 40'),
(41, 'Law 41', 'Other Judicial Issuances', 'Content of Law 41'),
(42, 'Law 42', 'Other Issuances', 'Content of Law 42'),
(43, 'Law 43', 'Jurisprudence', 'Content of Law 43'),
(44, 'Law 44', 'International Legal Resources', 'Content of Law 44'),
(45, 'Law 45', 'AUSL Exclusive', 'Content of Law 45'),
(46, '1899 Constitution of the Republic of the Philippines', 'Constitutions', 'Content of Law 46'),
(47, 'Law 47', 'Statutes', 'Content of Law 47'),
(48, 'Law 48', 'Executive Issuances', 'Content of Law 48'),
(49, 'Law 49', 'Judicial Issuances', 'Content of Law 49'),
(50, 'Law 50', 'Other Judicial Issuances', 'Content of Law 50'),
(51, 'Law 51', 'Statutes', 'Content of Law 51'),
(52, 'Law 52', 'Statutes', 'Content of Law 52'),
(53, 'Law 53', 'Executive Issuances', 'Content of Law 53'),
(54, 'Law 54', 'Judicial Issuances', 'Content of Law 54'),
(55, 'Law 55', 'Other Judicial Issuances', 'Content of Law 55'),
(56, 'Law 56', 'Other Issuances', 'Content of Law 56'),
(57, 'Law 57', 'Jurisprudence', 'Content of Law 57'),
(58, 'Law 58', 'International Legal Resources', 'Content of Law 58'),
(59, 'Law 59', 'AUSL Exclusive', 'Content of Law 59'),
(60, 'Law 60', 'Statutes', 'Content of Law 60'),
(61, 'Law 61', 'Statutes', 'Content of Law 61'),
(62, 'Law 62', 'Executive Issuances', 'Content of Law 62'),
(63, 'Law 63', 'Judicial Issuances', 'Content of Law 63'),
(64, 'Law 64', 'Other Judicial Issuances', 'Content of Law 64'),
(65, 'Law 65', 'Other Issuances', 'Content of Law 65'),
(66, 'Law 66', 'Jurisprudence', 'Content of Law 66'),
(67, 'Law 67', 'International Legal Resources', 'Content of Law 67'),
(68, 'Law 68', 'AUSL Exclusive', 'Content of Law 68'),
(69, 'Law 69', 'Statutes', 'Content of Law 69'),
(70, 'Law 70', 'Statutes', 'Content of Law 70'),
(71, 'Law 71', 'Executive Issuances', 'Content of Law 71'),
(72, 'Law 72', 'Judicial Issuances', 'Content of Law 72'),
(73, 'Law 73', 'Other Judicial Issuances', 'Content of Law 73'),
(74, 'Law 74', 'Other Issuances', 'Content of Law 74'),
(75, 'Law 75', 'Jurisprudence', 'Content of Law 75'),
(76, 'Law 76', 'International Legal Resources', 'Content of Law 76'),
(77, 'Law 77', 'AUSL Exclusive', 'Content of Law 77'),
(78, 'Law 78', 'Statutes', 'Content of Law 78'),
(79, 'Law 79', 'Statutes', 'Content of Law 79'),
(80, 'Law 80', 'Executive Issuances', 'Content of Law 80'),
(81, 'Law 81', 'Judicial Issuances', 'Content of Law 81'),
(82, 'Law 82', 'Other Judicial Issuances', 'Content of Law 82'),
(83, 'Law 83', 'Other Issuances', 'Content of Law 83'),
(84, 'Law 84', 'Jurisprudence', 'Content of Law 84'),
(85, 'Law 85', 'International Legal Resources', 'Content of Law 85'),
(86, 'Law 86', 'AUSL Exclusive', 'Content of Law 86'),
(87, 'Law 87', 'Statutes', 'Content of Law 87'),
(88, 'Law 88', 'Statutes', 'Content of Law 88'),
(89, 'Law 89', 'Executive Issuances', 'Content of Law 89'),
(90, 'Law 90', 'Judicial Issuances', 'Content of Law 90'),
(91, 'Law 91', 'Other Judicial Issuances', 'Content of Law 91'),
(92, 'Law 92', 'Other Issuances', 'Content of Law 92'),
(93, 'Law 93', 'Jurisprudence', 'Content of Law 93'),
(94, 'Law 94', 'International Legal Resources', 'Content of Law 94'),
(95, 'Law 95', 'AUSL Exclusive', 'Content of Law 95'),
(96, 'Law 96', 'Statutes', 'Content of Law 96'),
(97, 'Law 97', 'Statutes', 'Content of Law 97'),
(98, 'Law 98', 'Executive Issuances', 'Content of Law 98'),
(99, 'Law 99', 'Judicial Issuances', 'Content of Law 99'),
(100, 'Law 100', 'Other Judicial Issuances', 'Content of Law 100'),
(101, 'Law 101', 'Other Issuances', 'Content of Law 101'),
(102, 'Law 102', 'Jurisprudence', 'Content of Law 102'),
(103, 'Law 103', 'International Legal Resources', 'Content of Law 103'),
(104, 'Law 104', 'AUSL Exclusive', 'Content of Law 104'),
(105, 'Law 105', 'Statutes', 'Content of Law 105'),
(106, 'Law 106', 'Statutes', 'Content of Law 106'),
(107, 'Law 107', 'Executive Issuances', 'Content of Law 107'),
(108, 'Law 108', 'Judicial Issuances', 'Content of Law 108'),
(109, 'Law 109', 'Other Judicial Issuances', 'Content of Law 109'),
(110, 'Law 110', 'Other Issuances', 'Content of Law 110'),
(111, 'Law 111', 'Jurisprudence', 'Content of Law 111'),
(112, 'Law 112', 'International Legal Resources', 'Content of Law 112'),
(113, 'Law 113', 'AUSL Exclusive', 'Content of Law 113'),
(114, 'Law 114', 'Statutes', 'Content of Law 114'),
(115, 'Law 115', 'Statutes', 'Content of Law 115'),
(116, 'Law 116', 'Executive Issuances', 'Content of Law 116'),
(117, 'Law 117', 'Judicial Issuances', 'Content of Law 117'),
(118, 'Law 118', 'Other Judicial Issuances', 'Content of Law 118'),
(119, 'Law 119', 'Other Issuances', 'Content of Law 119'),
(120, 'Law 120', 'Jurisprudence', 'Content of Law 120'),
(121, 'Law 121', 'Statutes', 'Content of Law 121'),
(122, 'Law 122', 'Executive Issuances', 'Content of Law 122'),
(123, 'Law 123', 'Judicial Issuances', 'Content of Law 123'),
(124, 'Law 124', 'Other Judicial Issuances', 'Content of Law 124'),
(125, 'Law 125', 'Other Issuances', 'Content of Law 125'),
(126, 'Law 126', 'Jurisprudence', 'Content of Law 126'),
(127, 'Law 127', 'International Legal Resources', 'Content of Law 127'),
(128, 'Law 128', 'AUSL Exclusive', 'Content of Law 128'),
(129, 'Law 129', 'Statutes', 'Content of Law 129'),
(130, 'Law 130', 'Statutes', 'Content of Law 130'),
(131, 'Law 131', 'Executive Issuances', 'Content of Law 131'),
(132, 'Law 132', 'Judicial Issuances', 'Content of Law 132'),
(133, 'Law 133', 'Other Judicial Issuances', 'Content of Law 133'),
(134, 'Law 134', 'Other Issuances', 'Content of Law 134'),
(135, 'Law 135', 'Jurisprudence', 'Content of Law 135'),
(136, 'Law 136', 'International Legal Resources', 'Content of Law 136'),
(137, 'Law 137', 'AUSL Exclusive', 'Content of Law 137'),
(138, 'Law 138', 'Statutes', 'Content of Law 138'),
(139, 'Law 139', 'Statutes', 'Content of Law 139'),
(140, 'Law 140', 'Executive Issuances', 'Content of Law 140'),
(141, 'Law 141', 'Judicial Issuances', 'Content of Law 141'),
(142, 'Law 142', 'Other Judicial Issuances', 'Content of Law 142'),
(143, 'Law 143', 'Other Issuances', 'Content of Law 143'),
(144, 'Law 144', 'Jurisprudence', 'Content of Law 144'),
(145, 'Law 145', 'International Legal Resources', 'Content of Law 145'),
(146, 'Law 146', 'AUSL Exclusive', 'Content of Law 146'),
(147, 'Law 147', 'Statutes', 'Content of Law 147'),
(148, 'Law 148', 'Statutes', 'Content of Law 148'),
(149, 'Law 149', 'Executive Issuances', 'Content of Law 149'),
(150, 'Law 150', 'Judicial Issuances', 'Content of Law 150'),
(151, 'Law 151', 'Other Judicial Issuances', 'Content of Law 151'),
(152, 'Law 152', 'Other Issuances', 'Content of Law 152'),
(153, 'Law 153', 'Jurisprudence', 'Content of Law 153'),
(154, 'Law 154', 'International Legal Resources', 'Content of Law 154'),
(155, 'Law 155', 'AUSL Exclusive', 'Content of Law 155'),
(156, 'Law 156', 'Statutes', 'Content of Law 156'),
(157, 'Law 157', 'Statutes', 'Content of Law 157'),
(158, 'Law 158', 'Executive Issuances', 'Content of Law 158'),
(159, 'Law 159', 'Judicial Issuances', 'Content of Law 159'),
(160, 'Law 160', 'Other Judicial Issuances', 'Content of Law 160'),
(161, 'Law 161', 'Other Issuances', 'Content of Law 161'),
(162, 'Law 162', 'Jurisprudence', 'Content of Law 162'),
(163, 'Law 163', 'International Legal Resources', 'Content of Law 163'),
(164, 'Law 164', 'AUSL Exclusive', 'Content of Law 164'),
(165, 'Law 165', 'Statutes', 'Content of Law 165'),
(166, 'Law 166', 'Statutes', 'Content of Law 166'),
(167, 'Law 167', 'Executive Issuances', 'Content of Law 167'),
(168, 'Law 168', 'Judicial Issuances', 'Content of Law 168'),
(169, 'Law 169', 'Other Judicial Issuances', 'Content of Law 169'),
(170, 'Law 170', 'Other Issuances', 'Content of Law 170'),
(171, 'Law 171', 'Jurisprudence', 'Content of Law 171'),
(172, 'Law 172', 'International Legal Resources', 'Content of Law 172'),
(173, 'Law 173', 'AUSL Exclusive', 'Content of Law 173'),
(174, 'Law 174', 'Statutes', 'Content of Law 174'),
(175, 'Law 175', 'Statutes', 'Content of Law 175'),
(176, 'Law 176', 'Executive Issuances', 'Content of Law 176'),
(177, 'Law 177', 'Judicial Issuances', 'Content of Law 177'),
(178, 'Law 178', 'Other Judicial Issuances', 'Content of Law 178'),
(179, 'Law 179', 'Other Issuances', 'Content of Law 179'),
(180, 'Law 180', 'Jurisprudence', 'Content of Law 180'),
(181, 'Law 181', 'International Legal Resources', 'Content of Law 181'),
(182, 'Law 182', 'AUSL Exclusive', 'Content of Law 182'),
(183, 'Law 183', 'Statutes', 'Content of Law 183'),
(184, 'Law 184', 'Statutes', 'Content of Law 184'),
(185, 'Law 185', 'Executive Issuances', 'Content of Law 185'),
(186, 'Law 186', 'Judicial Issuances', 'Content of Law 186'),
(187, 'Law 187', 'Other Judicial Issuances', 'Content of Law 187'),
(188, 'Law 188', 'Other Issuances', 'Content of Law 188'),
(189, 'Law 189', 'Jurisprudence', 'Content of Law 189'),
(190, 'Law 190', 'International Legal Resources', 'Content of Law 190'),
(191, 'Law 191', 'AUSL Exclusive', 'Content of Law 191'),
(192, 'Law 192', 'Statutes', 'Content of Law 192'),
(193, 'Law 193', 'Statutes', 'Content of Law 193'),
(194, 'Law 194', 'Executive Issuances', 'Content of Law 194'),
(195, 'Law 195', 'Judicial Issuances', 'Content of Law 195'),
(196, 'Law 196', 'Other Judicial Issuances', 'Content of Law 196'),
(197, 'Law 197', 'Other Issuances', 'Content of Law 197'),
(198, 'Law 198', 'Jurisprudence', 'Content of Law 198'),
(199, 'Law 199', 'International Legal Resources', 'Content of Law 199'),
(200, 'Law 200', 'AUSL Exclusive', 'Content of Law 200');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('normal','admin') NOT NULL DEFAULT 'normal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'user1', 'user1@example.com', '$2y$10$BrATVIad9XlTYREKXyw6ruRwa8LtjqpepzO/Oq30KL5L1C97QNCUS', 'normal'),
(2, 'user2', 'user2@example.com', '$2y$10$NiEUCgj4i3ZK9uIoYkS0MuptPfV8RWykkYIAjzBsuhdbqbo2JwtDu', 'admin'),
(3, 'user3', 'user3@example.com', '$2y$10$a.fBLb7S2EqU98BQJAyAS.dnci1D2Zp/o1cRVEJa/PRLVDDNQhXBa', 'normal'),
(4, 'user4', 'user4@example.com', '$2y$10$sNzwOT8LpMGMkjvPVCdeUut6eZNVXubo5b1thxJBqMgfjGdU2ZM0a', 'normal'),
(5, 'user5', 'user5@example.com', '$2y$10$.CupOwTt9DF5tRij9SiB8uJQD6Q8iCfPGvaBUMcjXV5iiCeZHt2a2', 'normal'),
(6, 'user6', 'user6@example.com', '$2y$10$/Xn0.QTMIHQ31sX29GbMduDiZTu28sIQbCKM6FGzT2gfhNyRfE/1O', 'normal'),
(7, 'user7', 'user7@example.com', '$2y$10$HfgXkQylj9xhth6b8MXyy.FkQZgSjLw2NhpOLG38Z0LeQvDmgQMTu', 'normal'),
(8, 'user8', 'user8@example.com', '$2y$10$0eq9BYDKQfn5/dR0bHJcr.CHKqAoT/kydIshwfOIoMCVa/1VqbOeq', 'normal'),
(9, 'user9', 'user9@example.com', '$2y$10$HH3/CGzrEVtbIfwKea37O.D9gOh7qNzLQhnAprEylnHUO.8g6u60i', 'normal'),
(10, 'user10', 'user10@example.com', '$2y$10$hrIJmxPOhzZusPG509BFoeCGfbx8w/UHpJ2soN5mdYRXkPu2EzF0i', 'normal'),
(11, 'user11', 'user11@example.com', '$2y$10$CHGlXiNV.Jitz5kIx3DNWe6CFu/3W/cTiLZ/NYUsY9AGAeZcAlUie', 'normal'),
(12, 'user12', 'user12@example.com', '$2y$10$e42/Fz0OeK9IWNZny07y6epB0UTGBrYaOoGuT/5AuISaoY/LPB0Yi', 'normal'),
(13, 'user13', 'user13@example.com', '$2y$10$Chbu6Vvk/3P7TEdE1ruSVuUSEo4vIDIqyOSRg7bcfq1ta/eqBPxDi', 'normal'),
(14, 'user14', 'user14@example.com', '$2y$10$ENKxChE8wJjdtEHO1gHkL.jJ4Hf.0L427uD3vZv69Knc0p.4Vj2ii', 'normal'),
(15, 'user15', 'user15@example.com', '$2y$10$juR5RfTaPG1SQ.1Yt5chk.KRasTdkl3xrx2CIivSmD3xsUXFpQMmy', 'normal'),
(16, 'user16', 'user16@example.com', '$2y$10$SuA8Q6fwCsOm9JofnlFPcuQtxtB9fpDqyL2jugyD5zDILoil1iMaO', 'normal'),
(17, 'user17', 'user17@example.com', '$2y$10$xeVMwUw5lM5gT9ecibyB1OmcsJyvatJAaGv87YF7YRrz/YuKa0/uO', 'normal'),
(18, 'user18', 'user18@example.com', '$2y$10$NvVSwyi3oKiPX9ED1376heQNtz3hLUeb1GWWWBvzZTD4L0N3Xmn.S', 'normal'),
(19, 'user19', 'user19@example.com', '$2y$10$ctPFe/MSEKvOwJVW5VTnYOkBo60StcBqZJLr.4qy7FJ7025DvbsOy', 'normal'),
(20, 'user20', 'user20@example.com', '$2y$10$dZgkgi9d3Tb7jsD0UAa85eaknlb2splHPTZL4yDucfzvgng3NTAJK', 'normal'),
(21, 'user21', 'user21@example.com', '$2y$10$aAxc/J5qWrw95qeer/o8xeFoiy/6f3cYsz9R0UPZ7TfR20DwSgoIS', 'normal'),
(22, 'user22', 'user22@example.com', '$2y$10$iflciq5y4jkefeWyquD1EOnyy/pUu3VPvP7CtSNsfv3dfCbUZn/BS', 'normal'),
(23, 'user23', 'user23@example.com', '$2y$10$WdIvf35l95TbdHBdvFQ/p.sphbgDOccEAkt4qsp/I3Gsm1JhOgb7q', 'normal'),
(24, 'user24', 'user24@example.com', '$2y$10$Q8xssSwsn0E0NtGK0vUy9OhjNTujh3umCzrEBQtS8EeoAVeUUorQW', 'normal'),
(25, 'user25', 'user25@example.com', '$2y$10$ln/7CJpioqqg/pEJF6YCbOsKhaSY/ghnsMtbYh3WM1rLE.mq0ztOe', 'normal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laws`
--
ALTER TABLE `laws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laws`
--
ALTER TABLE `laws`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

