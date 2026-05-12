-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2026 at 05:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_years`
--

CREATE TABLE `academic_years` (
  `AcademicYearID` int(11) NOT NULL,
  `YearName` varchar(20) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `IsActive` tinyint(1) DEFAULT 0,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academic_years`
--

INSERT INTO `academic_years` (`AcademicYearID`, `YearName`, `StartDate`, `EndDate`, `IsActive`, `CreatedAt`) VALUES
(1, '2026-2027', '2026-06-01', '2027-05-31', 1, '2026-05-12 14:25:46');

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `LogID` bigint(20) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Action` varchar(100) NOT NULL,
  `TableName` varchar(100) DEFAULT NULL,
  `RecordID` int(11) DEFAULT NULL,
  `OldValue` text DEFAULT NULL,
  `NewValue` text DEFAULT NULL,
  `IPAddress` varchar(45) DEFAULT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`LogID`, `UserID`, `Action`, `TableName`, `RecordID`, `OldValue`, `NewValue`, `IPAddress`, `CreatedAt`) VALUES
(1, 6, 'COLLECT_PAYMENT', 'payments', 1, NULL, '₱7,000.00', '127.0.0.1', '2026-05-12 01:11:41'),
(2, 6, 'COLLECT_PAYMENT', 'payments', 2, NULL, '₱8,000.00', '127.0.0.1', '2026-05-12 01:12:08'),
(3, 6, 'COLLECT_PAYMENT', 'payments', 3, NULL, '₱10,000.00', '127.0.0.1', '2026-05-12 05:16:13'),
(4, 6, 'COLLECT_PAYMENT', 'payments', 4, NULL, '₱13,000.00', '127.0.0.1', '2026-05-12 12:11:14'),
(5, 6, 'COLLECT_PAYMENT', 'payments', 5, NULL, '₱24,000.00', '127.0.0.1', '2026-05-12 15:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `REGION` text DEFAULT NULL,
  `PROVINCE` text DEFAULT NULL,
  `CITIES_MUNICIPALITIES` text DEFAULT NULL,
  `ZIPCODE` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`REGION`, `PROVINCE`, `CITIES_MUNICIPALITIES`, `ZIPCODE`) VALUES
(' REGIONXIII ', 'AGUSAN DEL NORTE', 'Butuan City', '8600'),
(' REGIONXIII ', 'AGUSAN DEL NORTE', 'Cabadbaran City', '8605'),
(' REGIONXIII ', 'AGUSAN DEL NORTE', 'Buenavista', '8601'),
(' REGIONXIII ', 'AGUSAN DEL NORTE', 'Carmen', '8603'),
(' REGIONXIII ', 'AGUSAN DEL NORTE', 'Jabonga', '8607'),
(' REGIONXIII ', 'AGUSAN DEL NORTE', 'Kitcharao', '8609'),
(' REGIONXIII ', 'AGUSAN DEL NORTE', 'Las Nieves', '8610'),
(' REGIONXIII ', 'AGUSAN DEL NORTE', 'Magallanes', '8604'),
(' REGIONXIII ', 'AGUSAN DEL NORTE', 'Nasipit', '8602'),
(' REGIONXIII ', 'AGUSAN DEL NORTE', 'Remedios T. Romualdez', '8611'),
(' REGIONXIII ', 'AGUSAN DEL NORTE', 'Santiago', '8608'),
(' REGIONXIII ', 'AGUSAN DEL NORTE', 'Tubay', '8606'),
(' REGIONXIII ', 'AGUSAN DEL SUR', 'Bayugan', '8502'),
(' REGIONXIII ', 'AGUSAN DEL SUR', 'Bunawan', '8506'),
(' REGIONXIII ', 'AGUSAN DEL SUR', 'Esperanza', '8513'),
(' REGIONXIII ', 'AGUSAN DEL SUR', 'La Paz', '8508'),
(' REGIONXIII ', 'AGUSAN DEL SUR', 'Loreto', '8507'),
(' REGIONXIII ', 'AGUSAN DEL SUR', 'Prosperidad', '8500'),
(' REGIONXIII ', 'AGUSAN DEL SUR', 'Rosario', '8504'),
(' REGIONXIII ', 'AGUSAN DEL SUR', 'San Francisco', '8501'),
(' REGIONXIII ', 'AGUSAN DEL SUR', 'San Luis', '8511'),
(' REGIONXIII ', 'AGUSAN DEL SUR', 'Santa Josefa', '8512'),
(' REGIONXIII ', 'AGUSAN DEL SUR', 'Sibagat', '8503'),
(' REGIONXIII ', 'AGUSAN DEL SUR', 'Talacogon', '8510'),
(' REGIONXIII ', 'AGUSAN DEL SUR', 'Trento', '8505'),
(' REGIONXIII ', 'AGUSAN DEL SUR', 'Veruela', '8509'),
(' REGIONXIII ', 'SURIGAO DEL NORTE', 'Surigao City', '8400'),
(' REGIONXIII ', 'SURIGAO DEL NORTE', 'Alegria', '8425'),
(' REGIONXIII ', 'SURIGAO DEL NORTE', 'Bacuag', '8408'),
(' REGIONXIII ', 'SURIGAO DEL NORTE', 'Burgos', '8424'),
(' REGIONXIII ', 'SURIGAO DEL NORTE', 'Claver', '8410'),
(' REGIONXIII ', 'SURIGAO DEL NORTE', 'Dapa', '8417'),
(' REGIONXIII ', 'SURIGAO DEL NORTE', 'Del Carmen', '8418'),
(' REGIONXIII ', 'SURIGAO DEL NORTE', 'General Luna', '8419'),
(' REGIONXIII ', 'SURIGAO DEL NORTE', 'Gigaquit', '8409'),
(' REGIONXIII ', 'SURIGAO DEL NORTE', 'Mainit', '8407'),
(' REGIONXIII ', 'SURIGAO DEL NORTE', 'Malimano', '8402'),
(' REGIONXIII ', 'SURIGAO DEL NORTE', 'Pilar', '8420'),
(' REGIONXIII ', 'SURIGAO DEL NORTE', 'Placer', '8405'),
(' REGIONXIII ', 'SURIGAO DEL NORTE', 'San Benito', '8423'),
(' REGIONXIII ', 'SURIGAO DEL NORTE', 'San Francisco', '8401'),
(' REGIONXIII ', 'SURIGAO DEL NORTE', 'San Isidro', '8421'),
(' REGIONXIII ', 'SURIGAO DEL NORTE', 'Santa Monica', '8422'),
(' REGIONXIII ', 'SURIGAO DEL NORTE', 'Sison', '8404'),
(' REGIONXIII ', 'SURIGAO DEL NORTE', 'Socorro', '8416'),
(' REGIONXIII ', 'SURIGAO DEL NORTE', 'Tagana-an', '8403'),
(' REGIONXIII ', 'SURIGAO DEL NORTE', 'Tubod', '8406'),
(' REGIONXIII ', 'SURIGAO DEL SUR', 'Bislig CIty', '8311'),
(' REGIONXIII ', 'SURIGAO DEL SUR', 'Tandag CIty', '8300'),
(' REGIONXIII ', 'SURIGAO DEL SUR', 'Barobo', '8309'),
(' REGIONXIII ', 'SURIGAO DEL SUR', 'Bayabas', '8303'),
(' REGIONXIII ', 'SURIGAO DEL SUR', 'Cagwait', '8304'),
(' REGIONXIII ', 'SURIGAO DEL SUR', 'Cantilan', '8317'),
(' REGIONXIII ', 'SURIGAO DEL SUR', 'Carmen', '8315'),
(' REGIONXIII ', 'SURIGAO DEL SUR', 'Carrascal', '8318'),
(' REGIONXIII ', 'SURIGAO DEL SUR', 'Cortes', '8313'),
(' REGIONXIII ', 'SURIGAO DEL SUR', 'Hinatuan', '8310'),
(' REGIONXIII ', 'SURIGAO DEL SUR', 'Lanuza', '8314'),
(' REGIONXIII ', 'SURIGAO DEL SUR', 'Lianga', '8307'),
(' REGIONXIII ', 'SURIGAO DEL SUR', 'Lingig', '8312'),
(' REGIONXIII ', 'SURIGAO DEL SUR', 'Madrid', '8316'),
(' REGIONXIII ', 'SURIGAO DEL SUR', 'Marihatag', '8306'),
(' REGIONXIII ', 'SURIGAO DEL SUR', 'San Agustin', '8305'),
(' REGIONXIII ', 'SURIGAO DEL SUR', 'San Miguel', '8301'),
(' REGIONXIII ', 'SURIGAO DEL SUR', 'Tagbina', '8308'),
(' REGIONXIII ', 'SURIGAO DEL SUR', 'Tago', '8302'),
(' REGIONXIII ', 'DINAGAT ISLANDS', 'Basilisia (Rizal)', '8412'),
(' REGIONXIII ', 'DINAGAT ISLANDS', 'Cagdianao', '8412'),
(' REGIONXIII ', 'DINAGAT ISLANDS', 'Dinagat', '8412'),
(' REGIONXIII ', 'DINAGAT ISLANDS', 'Libjo (Albor)', '8412'),
(' REGIONXIII ', 'DINAGAT ISLANDS', 'Loreto', '8412'),
(' REGIONXIII ', 'DINAGAT ISLANDS', 'San Jose', '8412'),
(' REGIONXIII ', 'DINAGAT ISLANDS', 'Tubajon', '8412'),
('ARMM', 'BASILAN', 'Isabela City', '7300'),
('ARMM', 'BASILAN', 'Lamitan City', '7302'),
('ARMM', 'BASILAN', 'Akbar', '73--'),
('ARMM', 'BASILAN', 'Al-Barka', '73--'),
('ARMM', 'BASILAN', 'Hadji Mohammad Aju', '73--'),
('ARMM', 'BASILAN', 'Lantawan', '7301'),
('ARMM', 'BASILAN', 'Maluso', '7303'),
('ARMM', 'BASILAN', 'Sumisip', '7305'),
('ARMM', 'BASILAN', 'Tipo-Tipo', '7304'),
('ARMM', 'BASILAN', 'Tuburan', '7306'),
('ARMM', 'BASILAN', 'Ungkaya Pukan', '73--'),
('ARMM', 'LANAO DEL SUR', 'Marawi City', '9700'),
('ARMM', 'LANAO DEL SUR', 'Bacolod-Kalawi', '9316'),
('ARMM', 'LANAO DEL SUR', 'Balabagan', '9302'),
('ARMM', 'LANAO DEL SUR', 'Balindong', '9318'),
('ARMM', 'LANAO DEL SUR', 'Bayang', '9309'),
('ARMM', 'LANAO DEL SUR', 'Binidayan', '9310'),
('ARMM', 'LANAO DEL SUR', 'Buadiposo-Buntong', '9714'),
('ARMM', 'LANAO DEL SUR', 'Bubong', '9708'),
('ARMM', 'LANAO DEL SUR', 'Bumbaran', '9320'),
('ARMM', 'LANAO DEL SUR', 'Butig', '9305'),
('ARMM', 'LANAO DEL SUR', 'Calanogas', '9319'),
('ARMM', 'LANAO DEL SUR', 'Ditsaan-Ramain', '9713'),
('ARMM', 'LANAO DEL SUR', 'Ganassi', '9311'),
('ARMM', 'LANAO DEL SUR', 'Kapai', '9709'),
('ARMM', 'LANAO DEL SUR', 'Kapatagan', '9700'),
('ARMM', 'LANAO DEL SUR', 'Lumba-Bayabao', '9703'),
('ARMM', 'LANAO DEL SUR', 'Lumbaca-Unayan', '9308'),
('ARMM', 'LANAO DEL SUR', 'Lumbatan', '9307'),
('ARMM', 'LANAO DEL SUR', 'Lumbayanague', '9306'),
('ARMM', 'LANAO DEL SUR', 'Madalum', '9315'),
('ARMM', 'LANAO DEL SUR', 'Madamba', '9314'),
('ARMM', 'LANAO DEL SUR', 'Maguing', '9715'),
('ARMM', 'LANAO DEL SUR', 'Malabang', '9300'),
('ARMM', 'LANAO DEL SUR', 'Marantao', '9711'),
('ARMM', 'LANAO DEL SUR', 'Maragong', '9303'),
('ARMM', 'LANAO DEL SUR', 'Masiu', '9706'),
('ARMM', 'LANAO DEL SUR', 'Mulondo', '9702'),
('ARMM', 'LANAO DEL SUR', 'Pagayawan', '9312'),
('ARMM', 'LANAO DEL SUR', 'Piagapo', '9710'),
('ARMM', 'LANAO DEL SUR', 'Poona Bayabao', '9705'),
('ARMM', 'LANAO DEL SUR', 'Pualas', '9313'),
('ARMM', 'LANAO DEL SUR', 'Saguiaran', '9701'),
('ARMM', 'LANAO DEL SUR', 'Sultan Dumalondong', '9301'),
('ARMM', 'LANAO DEL SUR', 'Picong', '9301'),
('ARMM', 'LANAO DEL SUR', 'Tagoloan Ii', '9321'),
('ARMM', 'LANAO DEL SUR', 'Tamparan', '9704'),
('ARMM', 'LANAO DEL SUR', 'Taraka', '9712'),
('ARMM', 'LANAO DEL SUR', 'Tubaran', '9304'),
('ARMM', 'LANAO DEL SUR', 'Tugaya', '9317'),
('ARMM', 'LANAO DEL SUR', 'Wao', '9716'),
('ARMM', 'MAGUINDANAO', 'Cotabato City', '9600'),
('ARMM', 'MAGUINDANAO', 'Ampatuan', '9606'),
('ARMM', 'MAGUINDANAO', 'Buluan', '9616'),
('ARMM', 'MAGUINDANAO', 'Datu Abdullah Sangki', '9621'),
('ARMM', 'MAGUINDANAO', 'Datu Anggal Midtimbang', '9622'),
('ARMM', 'MAGUINDANAO', 'Datu Paglas', '9617'),
('ARMM', 'MAGUINDANAO', 'Datu Piang', '9607'),
('ARMM', 'MAGUINDANAO', 'Datu Saudi-Ampatuan', '9626'),
('ARMM', 'MAGUINDANAO', 'Datu Unsay', '9627'),
('ARMM', 'MAGUINDANAO', 'Gen. S. K. Pendatun ', '9618'),
('ARMM', 'MAGUINDANAO', 'Guindulungan', '9628'),
('ARMM', 'MAGUINDANAO', 'Mamasapano', '9629'),
('ARMM', 'MAGUINDANAO', 'Mangudadatu', '9620'),
('ARMM', 'MAGUINDANAO', 'Pagagawan', '9631'),
('ARMM', 'MAGUINDANAO', 'Pagalungan', '9610'),
('ARMM', 'MAGUINDANAO', 'Paglat', '9632'),
('ARMM', 'MAGUINDANAO', 'Pandag', '9633'),
('ARMM', 'MAGUINDANAO', 'Rajah Buayan', '9634'),
('ARMM', 'MAGUINDANAO', 'Shariff Aguak', '9635'),
('ARMM', 'MAGUINDANAO', 'South Upi', '9603'),
('ARMM', 'MAGUINDANAO', 'Sultan sa Barongis', '9611'),
('ARMM', 'MAGUINDANAO', 'Talayan', '9612'),
('ARMM', 'MAGUINDANAO', 'Talitay', '9637'),
('ARMM', 'SULU', 'Hadji Panglima Tahil', '7413'),
('ARMM', 'SULU', 'Indanan', '7407'),
('ARMM', 'SULU', 'Jolo', '7400'),
('ARMM', 'SULU', 'Kalingalan Caluang', '7416'),
('ARMM', 'SULU', 'Lugus', '7411'),
('ARMM', 'SULU', 'Luuk', '7404'),
('ARMM', 'SULU', 'Maimbung', '7409'),
('ARMM', 'SULU', 'Old Panamao', '7402'),
('ARMM', 'SULU', 'Omar', '7404'),
('ARMM', 'SULU', 'Pandami', '7400'),
('ARMM', 'SULU', 'Panglima Estino', '7415'),
('ARMM', 'SULU', 'Pangutaran', '7414'),
('ARMM', 'SULU', 'Parang', '7408'),
('ARMM', 'SULU', 'Pata', '7405'),
('ARMM', 'SULU', 'Patikul', '7401'),
('ARMM', 'SULU', 'Siasi', '7412'),
('ARMM', 'SULU', 'Talipao', '7403'),
('ARMM', 'SULU', 'Tapul', '7410'),
('ARMM', 'SULU', 'Tongkil', '7406'),
('ARMM', 'TAWI-TAWI', 'Bongao', '7500'),
('ARMM', 'TAWI-TAWI', 'Languyan', '7509'),
('ARMM', 'TAWI-TAWI', 'Mapun', '75--'),
('ARMM', 'TAWI-TAWI', 'Panglima Sugala', '75--'),
('ARMM', 'TAWI-TAWI', 'Sapa-Sapa', '7503'),
('ARMM', 'TAWI-TAWI', 'Sibutu', '75--'),
('ARMM', 'TAWI-TAWI', 'Simunul', '7505'),
('ARMM', 'TAWI-TAWI', 'Sitangkai', '7506'),
('ARMM', 'TAWI-TAWI', 'South Ubian', '7504'),
('ARMM', 'TAWI-TAWI', 'Tandubas', '7502'),
('ARMM', 'TAWI-TAWI', 'Turtle Islands', '75--'),
('ARMM', 'Shariff Kabunsuan', 'Barira', '9613'),
('ARMM', 'Shariff Kabunsuan', 'Buldon', '9615'),
('ARMM', 'Shariff Kabunsuan', 'Datu Blah T. Sinsuat', '9623'),
('ARMM', 'Shariff Kabunsuan', 'Datu Odin Sinsuat', '0000'),
('ARMM', 'Shariff Kabunsuan', 'Kabuntalan', '9606'),
('ARMM', 'Shariff Kabunsuan', 'Matanog', '9613'),
('ARMM', 'Shariff Kabunsuan', 'Northern Kabuntalan', '9630'),
('ARMM', 'Shariff Kabunsuan', 'Parang', '9604'),
('ARMM', 'Shariff Kabunsuan', 'Sultan Kudarat', '9605'),
('ARMM', 'Shariff Kabunsuan', 'Sultan Mastura', '9636'),
('ARMM', 'Shariff Kabunsuan', 'Upi', '9602'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Dapitan City', '7101'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Dipolog CIty', '7100'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Bacungan', '71--'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Baliguian', '7123'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Godod', NULL),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Gutalac', '7118'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Jose Dalman', '7111'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Kalawit', '7124'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Katipunan', '7109'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'La Libertad', '7119'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Labason', '7117'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Liloy', '7115'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Manukan', '7110'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Mutia', '7107'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Piñan', '7105'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Polanco', '7106'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Pres. Manuel A. Roxas', '7102'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Rizal', '7104'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Salug', '7114'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Sergio Osmeña Sr.', '7108'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Siayan', '7113'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Sibuco', '7122'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Sibutad', '7103'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Sindangan', '7112'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Siocon', '7120'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Sirawai', '7121'),
('REGIONIX', 'ZAMBOANGA DEL NORTE', 'Tampilisan', '7116'),
('REGIONIX', 'Zamboanga del Sur', 'Pagadian City', '7106'),
('REGIONIX', 'Zamboanga del Sur', 'Zamboanga City', '7000'),
('REGIONIX', 'Zamboanga del Sur', 'Aurora', '7020'),
('REGIONIX', 'Zamboanga del Sur', 'Bayog', '7011'),
('REGIONIX', 'Zamboanga del Sur', 'Dimataling', '7032'),
('REGIONIX', 'Zamboanga del Sur', 'Dinas', '7030'),
('REGIONIX', 'Zamboanga del Sur', 'Dumalinao', '7015'),
('REGIONIX', 'Zamboanga del Sur', 'Dumingag', '7028'),
('REGIONIX', 'Zamboanga del Sur', 'Guipos', '7042'),
('REGIONIX', 'Zamboanga del Sur', 'Josefina', '7027'),
('REGIONIX', 'Zamboanga del Sur', 'Kumalarang', '7013'),
('REGIONIX', 'Zamboanga del Sur', 'Labangan', '7017'),
('REGIONIX', 'Zamboanga del Sur', 'Lakewood', '7014'),
('REGIONIX', 'Zamboanga del Sur', 'Lapuyan', '7037'),
('REGIONIX', 'Zamboanga del Sur', 'Mahayag', '7026'),
('REGIONIX', 'Zamboanga del Sur', 'Margosatubig', '7035'),
('REGIONIX', 'Zamboanga del Sur', 'Midsalip', '7021'),
('REGIONIX', 'Zamboanga del Sur', 'Molave', '7023'),
('REGIONIX', 'Zamboanga del Sur', 'Pitogo', '7033'),
('REGIONIX', 'Zamboanga del Sur', 'Ramon Magsaysay', '7024'),
('REGIONIX', 'Zamboanga del Sur', 'San Miguel', '7029'),
('REGIONIX', 'Zamboanga del Sur', 'San Pablo', '7031'),
('REGIONIX', 'Zamboanga del Sur', 'Sominot', '7022'),
('REGIONIX', 'Zamboanga del Sur', 'Tabina', '7034'),
('REGIONIX', 'Zamboanga del Sur', 'Tambulig', '7025'),
('REGIONIX', 'Zamboanga del Sur', 'Tigbao', '7043'),
('REGIONIX', 'Zamboanga del Sur', 'Tukuran', '7019'),
('REGIONIX', 'Zamboanga del Sur', 'Vincenzo A. Sagun', '7036'),
('REGIONIX', 'Zamboanga Sibugay', 'Alicia', '7040'),
('REGIONIX', 'Zamboanga Sibugay', 'Buug', '7009'),
('REGIONIX', 'Zamboanga Sibugay', 'Diplahan', '7039'),
('REGIONIX', 'Zamboanga Sibugay', 'Imelda', '7007'),
('REGIONIX', 'Zamboanga Sibugay', 'Ipil', '7001'),
('REGIONIX', 'Zamboanga Sibugay', 'Kabasalan', '7005'),
('REGIONIX', 'Zamboanga Sibugay', 'Mabuhay', '7010'),
('REGIONIX', 'Zamboanga Sibugay', 'Malangas', '7038'),
('REGIONIX', 'Zamboanga Sibugay', 'Naga', '7004'),
('REGIONIX', 'Zamboanga Sibugay', 'Olutanga', '7041'),
('REGIONIX', 'Zamboanga Sibugay', 'Payao', '7008'),
('REGIONIX', 'Zamboanga Sibugay', 'Roseller Lim', '7002'),
('REGIONIX', 'Zamboanga Sibugay', 'Siay', '7006'),
('REGIONIX', 'Zamboanga Sibugay', 'Talusan', '7012'),
('REGIONIX', 'Zamboanga Sibugay', 'Titay', '7003'),
('REGIONIX', 'Zamboanga Sibugay', 'Tungawan', '7018'),
('REGIONX ', 'BUKIDNON', 'Malaybalay City', '8700'),
('REGIONX ', 'BUKIDNON', 'Valencia City', '8709'),
('REGIONX ', 'BUKIDNON', 'Baungon', '8707'),
('REGIONX ', 'BUKIDNON', 'Cabanglasan', '8723'),
('REGIONX ', 'BUKIDNON', 'Damulog', '8721'),
('REGIONX ', 'BUKIDNON', 'Dangcagan', '8719'),
('REGIONX ', 'BUKIDNON', 'Don Carlos', '8712'),
('REGIONX ', 'BUKIDNON', 'Impasug-Ong', '8702'),
('REGIONX ', 'BUKIDNON', 'Kadingilan', '8713'),
('REGIONX ', 'BUKIDNON', 'Kalilangan', '8718'),
('REGIONX ', 'BUKIDNON', 'Kibawe', '8720'),
('REGIONX ', 'BUKIDNON', 'Kitaotao', '8716'),
('REGIONX ', 'BUKIDNON', 'Lantapan', '8722'),
('REGIONX ', 'BUKIDNON', 'Libona', '8706'),
('REGIONX ', 'BUKIDNON', 'Malitbog', '8704'),
('REGIONX ', 'BUKIDNON', 'Manolo Fortich', '8703'),
('REGIONX ', 'BUKIDNON', 'Maramag', '8714'),
('REGIONX ', 'BUKIDNON', 'Pangantucan', '8717'),
('REGIONX ', 'BUKIDNON', 'Quezon', '8715'),
('REGIONX ', 'BUKIDNON', 'San Fernando', '8711'),
('REGIONX ', 'BUKIDNON', 'Sumilao', '8701'),
('REGIONX ', 'BUKIDNON', 'Talakag', '8708'),
('REGIONX ', 'CAMIGUIN', 'Catarman', '9100'),
('REGIONX ', 'CAMIGUIN', 'Guinsiliban', '9102'),
('REGIONX ', 'CAMIGUIN', 'Mahinog', '9101'),
('REGIONX ', 'CAMIGUIN', 'Mambajao', '9100'),
('REGIONX ', 'CAMIGUIN', 'Sagay', '9103'),
('REGIONX ', 'LANAO DEL NORTE', 'Iligan City', '9200'),
('REGIONX ', 'LANAO DEL NORTE', 'Bacolod', '9205'),
('REGIONX ', 'LANAO DEL NORTE', 'Baloi', '9217'),
('REGIONX ', 'LANAO DEL NORTE', 'Baroy', '9210'),
('REGIONX ', 'LANAO DEL NORTE', 'Kapatagan', '9214'),
('REGIONX ', 'LANAO DEL NORTE', 'Kauswagan', '9202'),
('REGIONX ', 'LANAO DEL NORTE', 'Kolambugan', '9207'),
('REGIONX ', 'LANAO DEL NORTE', 'Lala', '9211'),
('REGIONX ', 'LANAO DEL NORTE', 'Linamon', '9201'),
('REGIONX ', 'LANAO DEL NORTE', 'Magsaysay', '9221'),
('REGIONX ', 'LANAO DEL NORTE', 'Maigo', '9206'),
('REGIONX ', 'LANAO DEL NORTE', 'Matungao', '9203'),
('REGIONX ', 'LANAO DEL NORTE', 'Munai', '9219'),
('REGIONX ', 'LANAO DEL NORTE', 'Nunungan', '9216'),
('REGIONX ', 'LANAO DEL NORTE', 'Pantao Ragat', '9208'),
('REGIONX ', 'LANAO DEL NORTE', 'Pantar', '9218'),
('REGIONX ', 'LANAO DEL NORTE', 'Poona Piagapo', '9204'),
('REGIONX ', 'LANAO DEL NORTE', 'Salvador', '9212'),
('REGIONX ', 'LANAO DEL NORTE', 'Sapad', '9213'),
('REGIONX ', 'LANAO DEL NORTE', 'Sultan Naga Dimaporo', '92--'),
('REGIONX ', 'LANAO DEL NORTE', 'Tagoloan', '9222'),
('REGIONX ', 'LANAO DEL NORTE', 'Tangcal', '9220'),
('REGIONX ', 'LANAO DEL NORTE', 'Tubod', '9209'),
('REGIONX ', 'MISAMIS OCCIDENTAL', 'Oroquieta City', '7207'),
('REGIONX ', 'MISAMIS OCCIDENTAL', 'Ozamis City', '7200'),
('REGIONX ', 'MISAMIS OCCIDENTAL', 'Tangub City', '7214'),
('REGIONX ', 'MISAMIS OCCIDENTAL', 'Aloran', '7206'),
('REGIONX ', 'MISAMIS OCCIDENTAL', 'Baliangao', '7211'),
('REGIONX ', 'MISAMIS OCCIDENTAL', 'Bonifacio', '7215'),
('REGIONX ', 'MISAMIS OCCIDENTAL', 'Calamba', '7210'),
('REGIONX ', 'MISAMIS OCCIDENTAL', 'Clarin', '7201'),
('REGIONX ', 'MISAMIS OCCIDENTAL', 'Concepcion', '7213'),
('REGIONX ', 'MISAMIS OCCIDENTAL', 'Don Victoriano Chiongbian', '72--'),
('REGIONX ', 'MISAMIS OCCIDENTAL', 'Jimenez', '7204'),
('REGIONX ', 'MISAMIS OCCIDENTAL', 'Lopez Jaena', '7208'),
('REGIONX ', 'MISAMIS OCCIDENTAL', 'Panaon', '7205'),
('REGIONX ', 'MISAMIS OCCIDENTAL', 'Plaridel', '7209'),
('REGIONX ', 'MISAMIS OCCIDENTAL', 'Sapang Dalaga', '7212'),
('REGIONX ', 'MISAMIS OCCIDENTAL', 'Sinacaban', '7203'),
('REGIONX ', 'MISAMIS OCCIDENTAL', 'Tudela', '7202'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Cagayan de Oro', '9000'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Gingoog City', '9014'),
('REGIONX ', 'MISAMIS ORIENTAL', 'El Salvador City', '9017'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Alubijid', '9018'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Balingasag', '9005'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Balingoan', '9011'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Binuangan', '9008'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Claveria', '9004'),
('REGIONX ', 'MISAMIS ORIENTAL', 'El Salvador', '9017'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Gitagum', '9020'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Initao', '9022'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Jasaan', '9003'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Kinoguitan', '9010'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Lagonglong', '9006'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Laguindingan', '9019'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Libertad', '9021'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Lugait', '9025'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Magsaysay', '9015'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Manticao', '9024'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Medina', '9013'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Naawan', '9023'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Opol', '9016'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Salay', '9007'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Sugbongcogon', '9009'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Tagoloan', '9001'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Talisayan', '9012'),
('REGIONX ', 'MISAMIS ORIENTAL', 'Villanueva', '9002'),
('REGIONXI ', 'DAVAO DEL NORTE', 'Island Garden City of Samal', '8119'),
('REGIONXI ', 'DAVAO DEL NORTE', 'Panabo City', '8105'),
('REGIONXI ', 'DAVAO DEL NORTE', 'Tagum City', '8100'),
('REGIONXI ', 'DAVAO DEL NORTE', 'Asuncion', '8102'),
('REGIONXI ', 'DAVAO DEL NORTE', 'Braulio E. Dujali', '81--'),
('REGIONXI ', 'DAVAO DEL NORTE', 'Carmen', '8101'),
('REGIONXI ', 'DAVAO DEL NORTE', 'Kapalong', '8113'),
('REGIONXI ', 'DAVAO DEL NORTE', 'New Corella', '81--'),
('REGIONXI ', 'DAVAO DEL NORTE', 'San Isidro', '81--'),
('REGIONXI ', 'DAVAO DEL NORTE', 'Santo Tomas', '8112'),
('REGIONXI ', 'DAVAO DEL NORTE', 'Talaingod', '81--'),
('REGIONXI ', 'DAVAO DEL SUR', 'Davao City', '8000'),
('REGIONXI ', 'DAVAO DEL SUR', 'Digos City', '8002'),
('REGIONXI ', 'DAVAO DEL SUR', 'Bansalan', '8005'),
('REGIONXI ', 'DAVAO DEL SUR', 'Don Marcelino', '8013'),
('REGIONXI ', 'DAVAO DEL SUR', 'Hagonoy', '8006'),
('REGIONXI ', 'DAVAO DEL SUR', 'Jose Abad Santos', '8014'),
('REGIONXI ', 'DAVAO DEL SUR', 'Kiblawan', '8008'),
('REGIONXI ', 'DAVAO DEL SUR', 'Magsaysay', '8004'),
('REGIONXI ', 'DAVAO DEL SUR', 'Malalag', '8010'),
('REGIONXI ', 'DAVAO DEL SUR', 'Malita', '8012'),
('REGIONXI ', 'DAVAO DEL SUR', 'Matanao', '8003'),
('REGIONXI ', 'DAVAO DEL SUR', 'Padada', '8007'),
('REGIONXI ', 'DAVAO DEL SUR', 'Santa Cruz', '8001'),
('REGIONXI ', 'DAVAO DEL SUR', 'Santa Maria', '8011'),
('REGIONXI ', 'DAVAO DEL SUR', 'Sarangani', '8015'),
('REGIONXI ', 'DAVAO DEL SUR', 'Sulop', '8009'),
('REGIONXI ', 'DAVAO ORIENTAL', 'Mati City', '8200'),
('REGIONXI ', 'DAVAO ORIENTAL', 'Baganga', '8204'),
('REGIONXI ', 'DAVAO ORIENTAL', 'Banaybanay', '8208'),
('REGIONXI ', 'DAVAO ORIENTAL', 'Boston', '8206'),
('REGIONXI ', 'DAVAO ORIENTAL', 'Caraga', '8203'),
('REGIONXI ', 'DAVAO ORIENTAL', 'Cateel', '8205'),
('REGIONXI ', 'DAVAO ORIENTAL', 'Governor Generoso', '8210'),
('REGIONXI ', 'DAVAO ORIENTAL', 'Lupon', '8207'),
('REGIONXI ', 'DAVAO ORIENTAL', 'Manay', '8202'),
('REGIONXI ', 'DAVAO ORIENTAL', 'San Isidro', '8209'),
('REGIONXI ', 'DAVAO ORIENTAL', 'Tarragona', '8201'),
('REGIONXI ', 'COMPOSTELA VALLEY', 'Compostela', '8803'),
('REGIONXI ', 'COMPOSTELA VALLEY', 'Laak', '8810'),
('REGIONXI ', 'COMPOSTELA VALLEY', 'Mabini', '8807'),
('REGIONXI ', 'COMPOSTELA VALLEY', 'Maco', '8806'),
('REGIONXI ', 'COMPOSTELA VALLEY', 'Maragusan', '8808'),
('REGIONXI ', 'COMPOSTELA VALLEY', 'Mawab', '8802'),
('REGIONXI ', 'COMPOSTELA VALLEY', 'Monkayo', '8805'),
('REGIONXI ', 'COMPOSTELA VALLEY', 'Montevista', '8801'),
('REGIONXI ', 'COMPOSTELA VALLEY', 'Nabunturan', '8800'),
('REGIONXI ', 'COMPOSTELA VALLEY', 'New Bataan', '8804'),
('REGIONXI ', 'COMPOSTELA VALLEY', 'Pantukan', '8809'),
('REGIONXII', 'NORTH COTABATO', 'Kidapawan City', '9400'),
('REGIONXII', 'NORTH COTABATO', 'Alamada', '9413'),
('REGIONXII', 'NORTH COTABATO', 'Aleosan', '9415'),
('REGIONXII', 'NORTH COTABATO', 'Antipas', '9414'),
('REGIONXII', 'NORTH COTABATO', 'Arakan', '9417'),
('REGIONXII', 'NORTH COTABATO', 'Banisilan', '9416'),
('REGIONXII', 'NORTH COTABATO', 'Carmen', '9408'),
('REGIONXII', 'NORTH COTABATO', 'Kabacan', '9407'),
('REGIONXII', 'NORTH COTABATO', 'Libungan', '9411'),
('REGIONXII', 'NORTH COTABATO', 'M\'Lang', '9402'),
('REGIONXII', 'NORTH COTABATO', 'Magpet', '9404'),
('REGIONXII', 'NORTH COTABATO', 'Makilala', '9401'),
('REGIONXII', 'NORTH COTABATO', 'Matalam', '9406'),
('REGIONXII', 'NORTH COTABATO', 'Midsayap', '9410'),
('REGIONXII', 'NORTH COTABATO', 'Pigkawayan', '9412'),
('REGIONXII', 'NORTH COTABATO', 'Pikit', '9409'),
('REGIONXII', 'NORTH COTABATO', 'President Roxas', '9405'),
('REGIONXII', 'NORTH COTABATO', 'Tulunan', '9403'),
('REGIONXII', 'SOUTH COTABATO', 'General Santos City', '9500'),
('REGIONXII', 'SOUTH COTABATO', 'Koronadal City', '9506'),
('REGIONXII', 'SOUTH COTABATO', 'Banga', '9511'),
('REGIONXII', 'SOUTH COTABATO', 'Lake Sebu', '9514'),
('REGIONXII', 'SOUTH COTABATO', 'Norala', '9508'),
('REGIONXII', 'SOUTH COTABATO', 'Polomolok', '9504'),
('REGIONXII', 'SOUTH COTABATO', 'Santo Niño', '9509'),
('REGIONXII', 'SOUTH COTABATO', 'Surallah', '9512'),
('REGIONXII', 'SOUTH COTABATO', 'T\'Boli', '9513'),
('REGIONXII', 'SOUTH COTABATO', 'Tampakan', '9507'),
('REGIONXII', 'SOUTH COTABATO', 'Tantangan', '9510'),
('REGIONXII', 'SOUTH COTABATO', 'Tupi', '9505'),
('REGIONXII', 'SULTAN KUDARAT', 'Tacurong City', '9800'),
('REGIONXII', 'SULTAN KUDARAT', 'Bagumbayan', '9810'),
('REGIONXII', 'SULTAN KUDARAT', 'Columbio', '9801'),
('REGIONXII', 'SULTAN KUDARAT', 'Esperanza', '9806'),
('REGIONXII', 'SULTAN KUDARAT', 'Isulan', '9805'),
('REGIONXII', 'SULTAN KUDARAT', 'Kalamansig', '9808'),
('REGIONXII', 'SULTAN KUDARAT', 'Lambayong', '9802'),
('REGIONXII', 'SULTAN KUDARAT', 'Lebak', '9807'),
('REGIONXII', 'SULTAN KUDARAT', 'Lutayan', '9803'),
('REGIONXII', 'SULTAN KUDARAT', 'Palimbang', '9809'),
('REGIONXII', 'SULTAN KUDARAT', 'President Quirino', '9804'),
('REGIONXII', 'SULTAN KUDARAT', 'Sen. Ninoy Aquino', '9811'),
('REGIONXII', 'SARANGANI', 'Alabel', '9501'),
('REGIONXII', 'SARANGANI', 'Glan', '9517'),
('REGIONXII', 'SARANGANI', 'Kiamba', '9514'),
('REGIONXII', 'SARANGANI', 'Maasim', '9502'),
('REGIONXII', 'SARANGANI', 'Maitum', '9515'),
('REGIONXII', 'SARANGANI', 'Malapatan', '9516'),
('REGIONXII', 'SARANGANI', 'Malungon', '9503');

-- --------------------------------------------------------

--
-- Table structure for table `class_sections`
--

CREATE TABLE `class_sections` (
  `SectionID` int(11) NOT NULL,
  `CN_Number` varchar(20) NOT NULL,
  `ClassNumber` varchar(30) NOT NULL,
  `SubjectID` int(11) NOT NULL,
  `FacultyID` int(11) DEFAULT NULL,
  `DepartmentID` int(11) NOT NULL,
  `AcademicYearID` int(11) NOT NULL,
  `Semester` enum('1st','2nd','Summer') NOT NULL,
  `Schedule` varchar(100) DEFAULT NULL,
  `Room` varchar(50) DEFAULT NULL,
  `MaxStudents` int(11) DEFAULT 40,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_sections`
--

INSERT INTO `class_sections` (`SectionID`, `CN_Number`, `ClassNumber`, `SubjectID`, `FacultyID`, `DepartmentID`, `AcademicYearID`, `Semester`, `Schedule`, `Room`, `MaxStudents`, `CreatedBy`, `CreatedAt`) VALUES
(3, '00000001', 'CN-00000001', 62, 2, 5, 1, '1st', 'MWF 9:00-10:00 PM', 'BART101', 40, 4, '2026-05-12 14:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `CourseID` int(11) NOT NULL,
  `CourseCode` varchar(30) NOT NULL,
  `CourseName` varchar(150) NOT NULL,
  `DepartmentID` int(11) NOT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`CourseID`, `CourseCode`, `CourseName`, `DepartmentID`, `CreatedBy`, `CreatedAt`) VALUES
(1, 'ABPSY', 'Bachelor of Arts in Psychology', 1, 1, '2026-05-11 23:41:57'),
(2, 'ABCOMM', 'Bachelor of Arts in Communication', 1, 1, '2026-05-11 23:41:57'),
(3, 'BSBA', 'Bachelor of Science in Business Administration', 2, 1, '2026-05-11 23:41:57'),
(4, 'BSENT', 'Bachelor of Science in Entrepreneurship', 2, 1, '2026-05-11 23:41:57'),
(5, 'BSED', 'Bachelor of Secondary Education', 3, 1, '2026-05-11 23:41:57'),
(6, 'BEED', 'Bachelor of Elementary Education', 3, 1, '2026-05-11 23:41:57'),
(7, 'BSCE', 'Bachelor of Science in Civil Engineering', 4, 1, '2026-05-11 23:41:57'),
(8, 'BSEE', 'Bachelor of Science in Electrical Engineering', 4, 1, '2026-05-11 23:41:57'),
(9, 'BSIT', 'Bachelor of Science in Information Technology', 5, 1, '2026-05-11 23:41:57'),
(10, 'BSCS', 'Bachelor of Science in Computer Science', 5, 1, '2026-05-11 23:41:57'),
(11, 'BSN', 'Bachelor of Science in Nursing', 6, 1, '2026-05-11 23:41:57'),
(12, 'BSMT', 'Bachelor of Science in Medical Technology', 6, 1, '2026-05-11 23:41:57'),
(13, 'BSCrim', 'Bachelor of Science in Criminology', 7, 1, '2026-05-11 23:41:57'),
(14, 'BSLM', 'Bachelor of Science in Legal Management', 7, 1, '2026-05-11 23:41:57'),
(15, 'BSHM', 'Bachelor of Science in Hospitality Management', 8, 1, '2026-05-11 23:41:57'),
(16, 'BSTRM', 'Bachelor of Science in Tourism Management', 8, 1, '2026-05-11 23:41:57'),
(17, 'BSA', 'Bachelor of Science in Accountancy', 9, 1, '2026-05-11 23:41:57'),
(18, 'BSMA', 'Bachelor of Science in Management Accounting', 9, 1, '2026-05-11 23:41:57'),
(19, 'SHS-ABM', 'Senior High School - Accountancy, Business and Management', 10, 1, '2026-05-11 23:41:57'),
(20, 'SHS-STEM', 'Senior High School - Science, Technology, Engineering and Mathematics', 10, 1, '2026-05-11 23:41:57'),
(21, 'BED-ELEM', 'Elementary Education Program', 11, 1, '2026-05-11 23:41:57'),
(22, 'BED-JHS', 'Junior High School Program', 11, 1, '2026-05-11 23:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `DepartmentID` int(11) NOT NULL,
  `DepartmentName` varchar(100) NOT NULL,
  `DepartmentAcronym` varchar(20) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`DepartmentID`, `DepartmentName`, `DepartmentAcronym`, `CreatedAt`) VALUES
(1, 'College of Arts and Sciences', 'CAS', '2026-05-11 22:59:39'),
(2, 'College of Business Administration', 'CBA', '2026-05-11 22:59:39'),
(3, 'College of Education', 'COED', '2026-05-11 22:59:39'),
(4, 'College of Engineering', 'COE', '2026-05-11 22:59:39'),
(5, 'College of Information Technology', 'CIT', '2026-05-11 22:59:39'),
(6, 'College of Nursing', 'CON', '2026-05-11 22:59:39'),
(7, 'College of Criminal Justice', 'CCJ', '2026-05-11 22:59:39'),
(8, 'College of Hospitality Management', 'CHM', '2026-05-11 22:59:39'),
(9, 'College of Accountancy', 'CA', '2026-05-11 22:59:39'),
(10, 'Senior High School', 'SHS', '2026-05-11 22:59:39'),
(11, 'Basic Education', 'BED', '2026-05-11 22:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `dialects`
--

CREATE TABLE `dialects` (
  `dialects` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dialects`
--

INSERT INTO `dialects` (`dialects`) VALUES
('Aklanon'),
('Asi(Bantoanon)'),
('Boholano(Binol-anon)'),
('Bolinao'),
('Bontoc(Ifuntok)'),
('Botolan'),
('Buhinon Bikol (Buhi)'),
('Butuanon'),
('Capiznon'),
('Caviteño Chavacano'),
('Cebuano'),
('Central Bikol (Canaman)'),
('Cuyonon'),
('East Miraya Bikol (Daraga)'),
('English'),
('Español'),
('Gubatnon Biko (Gubat)'),
('Hiligaynon (Ilonggo)'),
('Ibanag'),
('Ilokano'),
('Itawis'),
('Jama Mapun'),
('Kapampangan'),
('Kinaray-a'),
('Malaysian & Indonesian'),
('Manobo (Obo)'),
('Maranao'),
('Masbateño'),
('Northern Catanduanes Bikol'),
('Pangasinan'),
('Rinconada Bikol(Iriga)'),
('Romblomanon (Ini)'),
('Sambali'),
('Sangil'),
('Sinama'),
('Sorsoganon'),
('Surigaonon'),
('Tagalog(Manila)'),
('Tagalog (Tayabas)'),
('Tausug'),
('Ternateño Chavacano'),
('Waray(Leyte)'),
('Waray(Northern Samar)'),
('West Miraya Bikol (Ligao)'),
('West Miraya Bikol (Oas)'),
('Yakan'),
('Zamboangueño Chavacano'),
('Aklanon'),
('Asi (Bantoanon)'),
('Boholano (Binol-anon)'),
('Bolinao'),
('Bontoc (Ifuntok)'),
('Botolan'),
('Buhinon Bikol (Buhi)'),
('Butuanon'),
('Capiznon'),
('Caviteño Chavacano'),
('Cebuano'),
('Central Bikol (Canaman)'),
('Cuyonon'),
('East Miraya Bikol (Daraga)'),
('English'),
('Español'),
('Gubatnon Bikol (Gubat)'),
('Hiligaynon (Ilonggo)'),
('Ibanag'),
('Ilokano'),
('Itawis'),
('Jama Mapun'),
('Kapampangan'),
('Kinaray-a'),
('Malaysian & Indonesian'),
('Manobo (Obo)'),
('Maranao'),
('Masbateño'),
('Northern Catanduanes Bikol'),
('Pangasinan'),
('Rinconada Bikol (Iriga)'),
('Romblomanon (Ini)'),
('Sambali'),
('Sangil'),
('Sinama'),
('Sorsoganon'),
('Surigaonon'),
('Tagalog(Manila)'),
('Tagalog (Tayabas)'),
('Tausug'),
('Ternateño Chavacano'),
('Waray(Leyte)'),
('Waray(Northern Samar)'),
('West Miraya Bikol (Ligao)'),
('West Miraya Bikol (Oas)'),
('Yakan'),
('Zamboangueño Chavacano');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `EnrollmentID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `SectionID` int(11) NOT NULL,
  `AcademicYearID` int(11) NOT NULL,
  `Semester` enum('1st','2nd','Summer') NOT NULL,
  `Status` enum('Enrolled','Dropped','Completed') DEFAULT 'Enrolled',
  `EnrolledBy` int(11) DEFAULT NULL,
  `EnrolledAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`EnrollmentID`, `StudentID`, `SectionID`, `AcademicYearID`, `Semester`, `Status`, `EnrolledBy`, `EnrolledAt`) VALUES
(1, 2, 3, 1, '1st', 'Enrolled', 4, '2026-05-12 14:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `ethnicity`
--

CREATE TABLE `ethnicity` (
  `ethnicname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ethnicity`
--

INSERT INTO `ethnicity` (`ethnicname`) VALUES
('    Adasen'),
('    Agta'),
('    Aklanon'),
('    Alangan'),
('    Alta'),
('    Amerasian'),
('    Ati'),
('    Atta'),
('    B`laan'),
('    Badjao'),
('    Bagobo'),
('    Balangao'),
('    Balangingi'),
('    Bangon'),
('    Bantoanon'),
('    Banwaon'),
('    Batak'),
('    Bicolano'),
('    Binukid'),
('    Boholano'),
('    Bolinao'),
('    Bontoc'),
('    Buhid'),
('    Butuanon'),
('    Caluyanon'),
('    Capiznon'),
('    Caviteño'),
('    Cebuano'),
('    Cotabateño'),
('    Davaoeño'),
('    Ermiteño'),
('    Ga`dang'),
('    Gaddang'),
('    Hanunoo'),
('    Higaonon'),
('    Ibaloi'),
('    Ibanag'),
('    Ifugao,'),
('    Ikalahan'),
('    Illanun'),
('    Ilocano'),
('    Ilonggo'),
('    Ilongot'),
('    Inonhan'),
('    Iraya'),
('    Isinai'),
('    Isneg'),
('    Itneg'),
('    Ivatan'),
('    Kagayanen'),
('    Kalagan'),
('    Kalinga'),
('    Kamayo'),
('    Kankanaey'),
('    Kapampangan'),
('    Karao'),
('    Kasiguranin'),
('    Kinaray-a'),
('    Korean Filipinos'),
('    Magahat'),
('    Maguindanaon'),
('    Malaweg'),
('    Malaynon'),
('    Mamanwa'),
('    Mandaya'),
('    Manguwangan'),
('    Manobo'),
('    Maranao'),
('    Masbateño'),
('    Palawano'),
('    Palaweño'),
('    Pangasinense'),
('    Paranan'),
('    Porohanon'),
('    Ratagnon'),
('    Romblomanon'),
('    Sama'),
('    Sambal'),
('    Sangil'),
('    Sangir'),
('    Sinauna'),
('    Spanish Filipinos'),
('    Subanen, Central'),
('    Sulod'),
('    Surigaonon'),
('    T`boli'),
('    Tadyawan'),
('    Tagabawa'),
('    Tagalog'),
('    Tagbanwa'),
('    Tasaday'),
('    Tau`t Bato'),
('    Tausug'),
('    Tawbuid'),
('    Ternateño'),
('    Tiruray'),
('    Tsinoy'),
('    Waray'),
('    Yakan'),
('    Yogad'),
('    Zamboangueño'),
('    Adasen'),
('    Agta'),
('    Aklanon'),
('    Alangan'),
('    Alta'),
('    Amerasian'),
('    Ati'),
('    Atta'),
('    B`laan'),
('    Badjao'),
('    Bagobo'),
('    Balangao'),
('    Balangingi'),
('    Bangon'),
('    Bantoanon'),
('    Banwaon'),
('    Batak'),
('    Bicolano'),
('    Binukid'),
('    Boholano'),
('    Bolinao'),
('    Bontoc'),
('    Buhid'),
('    Butuanon'),
('    Caluyanon'),
('    Capiznon'),
('    Caviteño'),
('    Cebuano'),
('    Cotabateño'),
('    Davaoeño'),
('    Ermiteño'),
('    Ga`dang'),
('    Gaddang'),
('    Hanunoo'),
('    Higaonon'),
('    Ibaloi'),
('    Ibanag'),
('    Ifugao,'),
('    Ikalahan'),
('    Illanun'),
('    Ilocano'),
('    Ilonggo'),
('    Ilongot'),
('    Inonhan'),
('    Iraya'),
('    Isinai'),
('    Isneg'),
('    Itneg'),
('    Ivatan'),
('    Kagayanen'),
('    Kalagan'),
('    Kalinga'),
('    Kamayo'),
('    Kankanaey'),
('    Kapampangan'),
('    Karao'),
('    Kasiguranin'),
('    Kinaray-a'),
('    Korean Filipinos'),
('    Magahat'),
('    Maguindanaon'),
('    Malaweg'),
('    Malaynon'),
('    Mamanwa'),
('    Mandaya'),
('    Manguwangan'),
('    Manobo'),
('    Maranao'),
('    Masbateño'),
('    Palawano'),
('    Palaweño'),
('    Pangasinense'),
('    Paranan'),
('    Porohanon'),
('    Ratagnon'),
('    Romblomanon'),
('    Sama'),
('    Sambal'),
('    Sangil'),
('    Sangir'),
('    Sinauna'),
('    Spanish Filipinos'),
('    Subanen, Central'),
('    Sulod'),
('    Surigaonon'),
('    T`boli'),
('    Tadyawan'),
('    Tagabawa'),
('    Tagalog'),
('    Tagbanwa'),
('    Tasaday'),
('    Tau`t Bato'),
('    Tausug'),
('    Tawbuid'),
('    Ternateño'),
('    Tiruray'),
('    Tsinoy'),
('    Waray'),
('    Yakan'),
('    Yogad'),
('    Zamboangueño');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `FacultyID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Position` varchar(100) DEFAULT NULL,
  `Specialization` varchar(150) DEFAULT NULL,
  `HireDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FacultyID`, `UserID`, `Position`, `Specialization`, `HireDate`) VALUES
(1, 7, '', NULL, NULL),
(2, 9, 'Instructor', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `FeeID` int(11) NOT NULL,
  `FeeName` varchar(100) NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `FeeType` enum('Tuition','Miscellaneous','Lab','Other') NOT NULL,
  `IsActive` tinyint(1) DEFAULT 1,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`FeeID`, `FeeName`, `Amount`, `FeeType`, `IsActive`, `CreatedAt`) VALUES
(1, 'Tuition Fee - Regular', 25000.00, 'Tuition', 1, '2026-05-12 00:58:27'),
(2, 'Tuition Fee - SHS', 18000.00, 'Tuition', 1, '2026-05-12 00:58:27'),
(3, 'Laboratory Fee', 3500.00, 'Lab', 1, '2026-05-12 00:58:27'),
(4, 'Uniform Fee', 4500.00, 'Miscellaneous', 1, '2026-05-12 00:58:27'),
(5, 'Miscellaneous Fee', 5200.00, 'Miscellaneous', 1, '2026-05-12 00:58:27'),
(6, 'ID & Documents Fee', 800.00, 'Other', 1, '2026-05-12 00:58:27'),
(7, 'Tuition Fee per Unit', 1500.00, 'Tuition', 1, '2026-05-12 00:58:27'),
(8, 'Laboratory Fee per Hour', 300.00, 'Lab', 1, '2026-05-12 00:58:27');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `GradeID` int(11) NOT NULL,
  `EnrollmentID` int(11) NOT NULL,
  `SubjectID` int(11) DEFAULT NULL,
  `AcademicYearID` int(11) DEFAULT NULL,
  `Semester` enum('1st','2nd','Summer') DEFAULT NULL,
  `Midterm` decimal(5,2) DEFAULT NULL,
  `Final` decimal(5,2) DEFAULT NULL,
  `FinalGrade` decimal(5,2) GENERATED ALWAYS AS (ifnull(`Midterm` * 0.4,0) + ifnull(`Final` * 0.6,0)) STORED,
  `Remarks` varchar(50) DEFAULT NULL,
  `GradedBy` int(11) DEFAULT NULL,
  `UpdatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `PaymentID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `CashierID` int(11) NOT NULL,
  `AmountPaid` decimal(10,2) NOT NULL,
  `PaymentDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `PaymentMethod` enum('Cash','GCash','Bank Transfer','Card','Other') DEFAULT NULL,
  `ReferenceNo` varchar(100) DEFAULT NULL,
  `Notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`PaymentID`, `StudentID`, `CashierID`, `AmountPaid`, `PaymentDate`, `PaymentMethod`, `ReferenceNo`, `Notes`) VALUES
(1, 1, 6, 7000.00, '2026-05-12 01:11:41', 'Cash', '', ''),
(2, 1, 6, 8000.00, '2026-05-12 01:12:08', 'Cash', '', ''),
(3, 1, 6, 10000.00, '2026-05-12 05:16:13', 'Cash', 'Jobart Gay', 'Bayad na dong'),
(4, 2, 6, 13000.00, '2026-05-12 12:11:14', 'Cash', '', ''),
(5, 1, 6, 24000.00, '2026-05-12 15:35:16', 'Cash', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `religion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`religion`) VALUES
('Aglipayan'),
('Association of Fundamental Baptist Churches in the Philippines'),
('Bible Baptist Church'),
('Buddhist'),
('Church of Christ'),
('Convention of the Philippine Baptist Church'),
('Crusaders of the Divine Church of Christ Inc.'),
('Evangelical Christian Outreach Foundation'),
('Evangelicals(PCEC)'),
('Faith Tabernacle Church (Living Rock Ministries)'),
('Iglesia Ni Cristo'),
('Iglesia sa Dios Espiritu Santo Inc.'),
('Igreja Catolica Apostolica Brasileira nas Filipinas'),
('Islam'),
('Jehovah\'s Witnesses'),
('Jesus Is Lord Church Worldwide'),
('Lutheran Church in the Philippines'),
('Non-Roman Catholic and Protestant(NCCP)'),
('Baptists'),
('Protestants'),
('Philippine Benevolent Missionaries Association'),
('Philippine Independent Catholic Church'),
('Roman Catholic including Catholic Charismatic'),
('Seventh-day Adventist'),
('The Church of Jesus Christ of Latter-day Saints'),
('Tribal Religions'),
('Union Espiritista Cristiana de Filipinas, Inc.'),
('United Church of Christ in the Philippines'),
('United Pentecostal Church (Philippines) Inc.'),
('Aglipayan'),
('Association of Fundamental Baptist Churches in the Philippines'),
('Bible Baptist Church'),
('Buddhist'),
('Church of Christ'),
('Convention of the Philippine Baptist Church'),
('Crusaders of the Divine Church of Christ Inc.'),
('Evangelical Christian Outreach Foundation'),
('Evangelicals(PCEC)'),
('Faith Tabernacle Church (Living Rock Ministries)'),
('Iglesia Ni Cristo'),
('Iglesia sa Dios Espiritu Santo Inc.'),
('Igreja Catolica Apostolica Brasileira nas Filipinas'),
('Islam'),
('Jehovah\'s Witnesses'),
('Jesus Is Lord Church Worldwide'),
('Lutheran Church in the Philippines'),
('Non-Roman Catholic and Protestant(NCCP)'),
('Baptists'),
('Protestants'),
('Philippine Benevolent Missionaries Association'),
('Philippine Independent Catholic Church'),
('Roman Catholic including Catholic Charismatic'),
('Seventh-day Adventist'),
('The Church of Jesus Christ of Latter-day Saints'),
('Tribal Religions'),
('Union Espiritista Cristiana de Filipinas, Inc.'),
('United Church of Christ in the Philippines'),
('United Pentecostal Church (Philippines) Inc.'),
('Pentecost'),
('Alliance'),
('Assembly of God'),
('Four Square Church'),
('CHRISTIAN CHURCH FELLOWSHIP INTERNATIONAL'),
('IGLESIA FILIPINIANA INDEPENDENCIA'),
('WESLEYAN');

-- --------------------------------------------------------

--
-- Table structure for table `scholarships`
--

CREATE TABLE `scholarships` (
  `ScholarshipID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `ScholarshipName` varchar(150) NOT NULL,
  `DiscountAmount` decimal(10,2) DEFAULT 0.00,
  `DiscountPercent` decimal(5,2) DEFAULT 0.00,
  `AcademicYearID` int(11) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scholarships`
--

INSERT INTO `scholarships` (`ScholarshipID`, `StudentID`, `ScholarshipName`, `DiscountAmount`, `DiscountPercent`, `AcademicYearID`, `IsActive`) VALUES
(1, 1, 'Sports', 10000.00, 30.00, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `StudentNumber` varchar(30) NOT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Gender` enum('Male','Female','Other') DEFAULT NULL,
  `Ethnicity` varchar(100) DEFAULT NULL,
  `Religion` varchar(80) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Region` varchar(100) DEFAULT NULL,
  `ZipCode` varchar(10) DEFAULT NULL,
  `Dialect` varchar(100) DEFAULT NULL,
  `GuardianName` varchar(150) DEFAULT NULL,
  `GuardianPhone` varchar(20) DEFAULT NULL,
  `GuardianEmail` varchar(100) DEFAULT NULL,
  `Status` enum('Active','Graduated','Dropped','On Leave') DEFAULT 'Active',
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentID`, `UserID`, `StudentNumber`, `DateOfBirth`, `Gender`, `Ethnicity`, `Religion`, `City`, `Region`, `ZipCode`, `Dialect`, `GuardianName`, `GuardianPhone`, `GuardianEmail`, `Status`, `CreatedAt`) VALUES
(1, 3, '2026-0001', '2026-05-12', 'Male', 'Adasen', 'Aglipayan', 'sdfasasd', 'ARMM', '054154', 'Asi(Bantoanon)', 'fytydrsd', '05854888', 'Qdsaera@gdv', 'Active', '2026-05-12 00:17:45'),
(2, 8, '2026-0002', '2026-05-05', 'Male', 'Adasen', 'Alliance', 'ZAMBOANGA DEL NORTE', 'REGIONIX', '', 'Aklanon', 'Jobart', '021643464', 'suanw@game.a', 'Active', '2026-05-12 05:20:49');

-- --------------------------------------------------------

--
-- Table structure for table `student_accounts`
--

CREATE TABLE `student_accounts` (
  `AccountID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `TotalBalance` decimal(12,2) DEFAULT 0.00,
  `LastUpdated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_accounts`
--

INSERT INTO `student_accounts` (`AccountID`, `StudentID`, `TotalBalance`, `LastUpdated`) VALUES
(1, 1, 48900.00, '2026-05-12 15:35:16'),
(2, 2, 39300.00, '2026-05-12 12:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `SubjectID` int(11) NOT NULL,
  `SubjectCode` varchar(30) NOT NULL,
  `SubjectName` varchar(150) NOT NULL,
  `Units` int(11) NOT NULL,
  `LectureHours` int(11) DEFAULT 0,
  `LabHours` int(11) DEFAULT 0,
  `DepartmentID` int(11) NOT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`SubjectID`, `SubjectCode`, `SubjectName`, `Units`, `LectureHours`, `LabHours`, `DepartmentID`, `CreatedBy`, `CreatedAt`) VALUES
(50, 'PSY101', 'General Psychology', 3, 3, 0, 1, 1, '2026-05-12 00:40:54'),
(51, 'COMM101', 'Communication Skills', 3, 3, 0, 1, 1, '2026-05-12 00:40:54'),
(52, 'PHILO101', 'Introduction to Philosophy', 3, 3, 0, 1, 1, '2026-05-12 00:40:54'),
(53, 'ACCT101', 'Financial Accounting', 3, 3, 0, 2, 1, '2026-05-12 00:40:54'),
(54, 'MKTG101', 'Principles of Marketing', 3, 3, 0, 2, 1, '2026-05-12 00:40:54'),
(55, 'MGMT101', 'Principles of Management', 3, 3, 0, 2, 1, '2026-05-12 00:40:54'),
(56, 'EDUC101', 'Foundations of Education', 3, 3, 0, 3, 1, '2026-05-12 00:40:54'),
(57, 'TEACH101', 'Principles of Teaching', 3, 3, 0, 3, 1, '2026-05-12 00:40:54'),
(58, 'CALC101', 'Calculus 1', 4, 4, 0, 4, 1, '2026-05-12 00:40:54'),
(59, 'PHYS101', 'Physics for Engineers', 4, 3, 3, 4, 1, '2026-05-12 00:40:54'),
(60, 'IT101', 'Introduction to Computing', 3, 2, 3, 5, 1, '2026-05-12 00:40:54'),
(61, 'PROG101', 'Programming 1', 3, 2, 3, 5, 1, '2026-05-12 00:40:54'),
(62, 'DBMS101', 'Database Management System', 3, 2, 3, 5, 1, '2026-05-12 00:40:54'),
(63, 'NURS101', 'Anatomy and Physiology', 4, 3, 3, 6, 1, '2026-05-12 00:40:54'),
(64, 'NURS102', 'Fundamentals of Nursing', 3, 2, 3, 6, 1, '2026-05-12 00:40:54'),
(65, 'CRIM101', 'Introduction to Criminology', 3, 3, 0, 7, 1, '2026-05-12 00:40:54'),
(66, 'CRIM102', 'Criminal Law', 3, 3, 0, 7, 1, '2026-05-12 00:40:54'),
(67, 'HM101', 'Introduction to Hospitality', 3, 3, 0, 8, 1, '2026-05-12 00:40:54'),
(68, 'TOUR101', 'Tourism Management', 3, 3, 0, 8, 1, '2026-05-12 00:40:54'),
(69, 'ACCT201', 'Intermediate Accounting', 3, 3, 0, 9, 1, '2026-05-12 00:40:54'),
(70, 'TAX101', 'Income Taxation', 3, 3, 0, 9, 1, '2026-05-12 00:40:54'),
(71, 'CORE101', 'Oral Communication', 3, 3, 0, 10, 1, '2026-05-12 00:40:54'),
(72, 'MATH101', 'General Mathematics', 3, 3, 0, 10, 1, '2026-05-12 00:40:54'),
(73, 'SCI101', 'General Science', 3, 3, 0, 11, 1, '2026-05-12 00:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `PasswordHash` varchar(255) NOT NULL,
  `Role` enum('admin','dean','faculty','student','cashier','finance') NOT NULL,
  `FirstName` varchar(80) NOT NULL,
  `LastName` varchar(80) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `ProfilePicture` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT 1,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `PasswordHash`, `Role`, `FirstName`, `LastName`, `Email`, `Phone`, `DepartmentID`, `ProfilePicture`, `IsActive`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 'admin', '$2y$10$ZsyNbpswbfpU6FJMufA/t.nn/PYw6rQaRRBpbTftgAfhclYnk9P6W', 'admin', 'System', 'Administrator', 'admin@school.edu', NULL, NULL, NULL, 1, '2026-05-11 22:23:53', '2026-05-11 22:23:53'),
(3, '2026-0001', '$2y$10$yK3JN5ISgykRVNUkXuz.2unfClLpkSc3Rqh14W1xTT4TN7Va9.TSm', 'student', 'ASDASD', 'aweraw', 'asfhdw@uhaf', '2054654', 11, NULL, 1, '2026-05-12 00:17:45', '2026-05-12 00:17:45'),
(4, 'jobart', '$2y$10$xLGMUPbeFenrDPF19Qr0eOLjBr0Mt0s4pzOX.7NYVDyBqqAVAtnQS', 'dean', 'Jobart', 'Nacis', 'supsup123@jobart.gay', '025555455865', 5, NULL, 1, '2026-05-12 00:23:44', '2026-05-12 00:23:44'),
(5, 'Olarte', '$2y$10$HZOOvl7kuMgWGz9JNwG8t.a1lQRONSpggQj8u5x3azixF2biADFG.', 'finance', 'Ivan', 'Olarte', 'Olarte@test.as', '024581565', NULL, NULL, 1, '2026-05-12 00:46:28', '2026-05-12 00:46:28'),
(6, 'Yangyang', '$2y$10$1bH2V51RjgtyEaYdW7XyaOTGM5Er17WM6aDmKzBWczVdELeyL2N2a', 'cashier', 'Lester', 'Yangyang', 'yangyang@test.101', '05465418465', NULL, NULL, 1, '2026-05-12 01:06:43', '2026-05-12 01:06:43'),
(7, 'Mismis', '$2y$10$0FB.UGBtOuX7VuJlEw6jWOKlicYN4s3P1Ko1Hb7I5Hy380J0V21aq', 'faculty', 'Louritch', 'Mismis', 'Mismis@test.101', '05055228554', NULL, NULL, 1, '2026-05-12 01:07:41', '2026-05-12 01:07:41'),
(8, '2026-0002', '$2y$10$dyZHPbtA1tC3h0.EvpbJouA9HmJcPtxsEu0RxZAbdut10JuXOonbW', 'student', 'Michael', 'Delagay', 'delacruz@test.101', '0326561698', 5, NULL, 1, '2026-05-12 05:20:49', '2026-05-12 05:20:49'),
(9, 'Ponce', '$2y$10$ihXqmRZJSd.0G3cWhhQQPuKrWIq2J9FjrJitpe9eZHBqXucEWM2NK', 'faculty', 'Jones', 'Ponce', 'Ponce@test.101', '052145413212', 5, NULL, 1, '2026-05-12 14:50:03', '2026-05-12 14:50:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_years`
--
ALTER TABLE `academic_years`
  ADD PRIMARY KEY (`AcademicYearID`),
  ADD UNIQUE KEY `YearName` (`YearName`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`LogID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `class_sections`
--
ALTER TABLE `class_sections`
  ADD PRIMARY KEY (`SectionID`),
  ADD UNIQUE KEY `CN_Number` (`CN_Number`),
  ADD UNIQUE KEY `ClassNumber` (`ClassNumber`),
  ADD KEY `SubjectID` (`SubjectID`),
  ADD KEY `FacultyID` (`FacultyID`),
  ADD KEY `DepartmentID` (`DepartmentID`),
  ADD KEY `AcademicYearID` (`AcademicYearID`),
  ADD KEY `idx_classnumber` (`ClassNumber`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`CourseID`),
  ADD UNIQUE KEY `CourseCode` (`CourseCode`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`DepartmentID`),
  ADD UNIQUE KEY `DepartmentAcronym` (`DepartmentAcronym`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`EnrollmentID`),
  ADD UNIQUE KEY `unique_enrollment` (`StudentID`,`SectionID`,`AcademicYearID`,`Semester`),
  ADD KEY `SectionID` (`SectionID`),
  ADD KEY `AcademicYearID` (`AcademicYearID`),
  ADD KEY `idx_enrollment_student` (`StudentID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`FacultyID`),
  ADD UNIQUE KEY `UserID` (`UserID`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`FeeID`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`GradeID`),
  ADD KEY `idx_grades_enrollment` (`EnrollmentID`),
  ADD KEY `idx_grades_subject` (`SubjectID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `CashierID` (`CashierID`),
  ADD KEY `idx_payments_student` (`StudentID`);

--
-- Indexes for table `scholarships`
--
ALTER TABLE `scholarships`
  ADD PRIMARY KEY (`ScholarshipID`),
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `AcademicYearID` (`AcademicYearID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentID`),
  ADD UNIQUE KEY `StudentNumber` (`StudentNumber`),
  ADD UNIQUE KEY `UserID` (`UserID`),
  ADD KEY `idx_students_number` (`StudentNumber`);

--
-- Indexes for table `student_accounts`
--
ALTER TABLE `student_accounts`
  ADD PRIMARY KEY (`AccountID`),
  ADD UNIQUE KEY `StudentID` (`StudentID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`SubjectID`),
  ADD UNIQUE KEY `SubjectCode` (`SubjectCode`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `idx_users_role` (`Role`),
  ADD KEY `idx_users_department` (`DepartmentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_years`
--
ALTER TABLE `academic_years`
  MODIFY `AcademicYearID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `LogID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `class_sections`
--
ALTER TABLE `class_sections`
  MODIFY `SectionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `CourseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `DepartmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `EnrollmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `FacultyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `FeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `GradeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `PaymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `scholarships`
--
ALTER TABLE `scholarships`
  MODIFY `ScholarshipID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_accounts`
--
ALTER TABLE `student_accounts`
  MODIFY `AccountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `SubjectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD CONSTRAINT `audit_logs_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `class_sections`
--
ALTER TABLE `class_sections`
  ADD CONSTRAINT `class_sections_ibfk_1` FOREIGN KEY (`SubjectID`) REFERENCES `subjects` (`SubjectID`),
  ADD CONSTRAINT `class_sections_ibfk_2` FOREIGN KEY (`FacultyID`) REFERENCES `faculty` (`FacultyID`),
  ADD CONSTRAINT `class_sections_ibfk_3` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`),
  ADD CONSTRAINT `class_sections_ibfk_4` FOREIGN KEY (`AcademicYearID`) REFERENCES `academic_years` (`AcademicYearID`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`);

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`SectionID`) REFERENCES `class_sections` (`SectionID`),
  ADD CONSTRAINT `enrollments_ibfk_3` FOREIGN KEY (`AcademicYearID`) REFERENCES `academic_years` (`AcademicYearID`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE;

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`EnrollmentID`) REFERENCES `enrollments` (`EnrollmentID`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`CashierID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `scholarships`
--
ALTER TABLE `scholarships`
  ADD CONSTRAINT `scholarships_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `scholarships_ibfk_2` FOREIGN KEY (`AcademicYearID`) REFERENCES `academic_years` (`AcademicYearID`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE;

--
-- Constraints for table `student_accounts`
--
ALTER TABLE `student_accounts`
  ADD CONSTRAINT `student_accounts_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
