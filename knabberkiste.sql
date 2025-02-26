-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 26. Feb 2025 um 21:24
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `knabberkiste`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `nahrung`
--

CREATE TABLE `nahrung` (
  `id` varchar(30) NOT NULL,
  `name` varchar(255) NOT NULL,
  `preis` decimal(10,2) NOT NULL,
  `tierart` int(11) NOT NULL,
  `kategorie` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `nahrung`
--

INSERT INTO `nahrung` (`id`, `name`, `preis`, `tierart`, `kategorie`) VALUES
('A001', 'HundeDeluxe (Schwein)', 15.99, 1, 'Hundefutter'),
('A002', 'NaturFit Hundefutter (Rind & Kartoffeln)', 9.99, 1, 'Hundefutter'),
('A003', 'VitalPaws Hundefutter (Lamm & Reis)', 22.99, 1, 'Hundefutter'),
('A004', 'BioDog Premium Hundefutter (Geflügel & Gemüse)', 7.49, 1, 'Hundefutter'),
('A005', 'ActivePaw Hundefutter (Huhn & Karotten)', 39.99, 1, 'Hundefutter'),
('A006', 'KittyDeluxe (Lachs & Gemüse)', 6.49, 2, 'Katzenfutter'),
('A007', 'PurrfectMeal (Huhn & Reis)', 10.99, 2, 'Katzenfutter'),
('A008', 'RoyalKitten (Lamm & Süßkartoffeln)', 5.99, 2, 'Katzenfutter'),
('A009', 'FelineFit (Thunfisch & Karotten)', 12.99, 2, 'Katzenfutter'),
('A010', 'WhiskersChoice (Rind & Kürbis)', 7.99, 2, 'Katzenfutter');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `nahrung`
--
ALTER TABLE `nahrung`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
