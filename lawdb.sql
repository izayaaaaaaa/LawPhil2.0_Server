-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2023 at 02:25 AM
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
(1, 'Law 1', 'Constitutions', 'Content of Law 1'),
(2, 'Law 2', 'Statutes', 'Content of Law 2'),
(3, 'Law 3', 'Executive Issuances', 'Content of Law 3'),
(4, 'Law 4', 'Judicial Issuances', 'Content of Law 4'),
(5, 'Law 5', 'Other Judicial Issuances', 'Content of Law 5'),
(6, 'Law 6', 'Other Issuances', 'Content of Law 6'),
(7, 'Law 7', 'Jurisprudence', 'Content of Law 7'),
(8, 'Law 8', 'International Legal Resources', 'Content of Law 8'),
(9, 'Law 9', 'AUSL Exclusive', 'Content of Law 9'),
(10, 'Law 10', 'Constitutions', 'Content of Law 10'),
(11, 'Law 11', 'Statutes', 'Content of Law 11'),
(12, 'Law 12', 'Executive Issuances', 'Content of Law 12'),
(13, 'Law 13', 'Judicial Issuances', 'Content of Law 13'),
(14, 'Law 14', 'Other Judicial Issuances', 'Content of Law 14'),
(15, 'Law 15', 'Other Issuances', 'Content of Law 15'),
(16, 'Law 16', 'Jurisprudence', 'Content of Law 16'),
(17, 'Law 17', 'International Legal Resources', 'Content of Law 17'),
(18, 'Law 18', 'AUSL Exclusive', 'Content of Law 18'),
(19, 'Law 19', 'Constitutions', 'Content of Law 19'),
(20, 'Law 20', 'Statutes', 'Content of Law 20'),
(21, 'Law 21', 'Executive Issuances', 'Content of Law 21'),
(22, 'Law 22', 'Judicial Issuances', 'Content of Law 22'),
(23, 'Law 23', 'Other Judicial Issuances', 'Content of Law 23'),
(24, 'Law 24', 'Other Issuances', 'Content of Law 24'),
(25, 'Law 25', 'Jurisprudence', 'Content of Law 25'),
(26, 'Law 26', 'International Legal Resources', 'Content of Law 26'),
(27, 'Law 27', 'AUSL Exclusive', 'Content of Law 27'),
(28, 'Law 28', 'Constitutions', 'Content of Law 28'),
(29, 'Law 29', 'Statutes', 'Content of Law 29'),
(30, 'Law 30', 'Executive Issuances', 'Content of Law 30'),
(31, 'Law 31', 'Judicial Issuances', 'Content of Law 31'),
(32, 'Law 32', 'Other Judicial Issuances', 'Content of Law 32'),
(33, 'Law 33', 'Other Issuances', 'Content of Law 33'),
(34, 'Law 34', 'Jurisprudence', 'Content of Law 34'),
(35, 'Law 35', 'International Legal Resources', 'Content of Law 35'),
(36, 'Law 36', 'AUSL Exclusive', 'Content of Law 36'),
(37, 'Law 37', 'Constitutions', 'Content of Law 37'),
(38, 'Law 38', 'Statutes', 'Content of Law 38'),
(39, 'Law 39', 'Executive Issuances', 'Content of Law 39'),
(40, 'Law 40', 'Judicial Issuances', 'Content of Law 40'),
(41, 'Law 41', 'Other Judicial Issuances', 'Content of Law 41'),
(42, 'Law 42', 'Other Issuances', 'Content of Law 42'),
(43, 'Law 43', 'Jurisprudence', 'Content of Law 43'),
(44, 'Law 44', 'International Legal Resources', 'Content of Law 44'),
(45, 'Law 45', 'AUSL Exclusive', 'Content of Law 45'),
(46, 'Law 46', 'Constitutions', 'Content of Law 46'),
(47, 'Law 47', 'Statutes', 'Content of Law 47'),
(48, 'Law 48', 'Executive Issuances', 'Content of Law 48'),
(49, 'Law 49', 'Judicial Issuances', 'Content of Law 49'),
(50, 'Law 50', 'Other Judicial Issuances', 'Content of Law 50');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;