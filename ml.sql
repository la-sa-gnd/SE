-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 30 Ιαν 2018 στις 21:07:43
-- Έκδοση διακομιστή: 10.1.19-MariaDB
-- Έκδοση PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `ml`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `accounts`
--

CREATE TABLE `accounts` (
  `Name` varchar(20) NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `accounts`
--

INSERT INTO `accounts` (`Name`, `type`) VALUES
('doc', 2),
('nurse', 3),
('secretary', 1);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `examinations`
--

CREATE TABLE `examinations` (
  `ExamID` tinyint(3) UNSIGNED NOT NULL,
  `Description` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `examinations`
--

INSERT INTO `examinations` (`ExamID`, `Description`) VALUES
(1, 'Ακτινογραφια'),
(2, 'Μαγνητικη Ακτινογραφια'),
(3, 'Γενικη εξεταση αιματος'),
(4, 'Εξεταση ουρων'),
(5, 'Εξεταση κοπρανων'),
(6, 'Τοξικολογικη εξεταση'),
(7, 'Τομογραφια'),
(8, 'Αρχη νοσηλειας'),
(9, 'Τελος νοσηλειας');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `history`
--

CREATE TABLE `history` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `Date` date NOT NULL,
  `ExamID` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `history`
--

INSERT INTO `history` (`ID`, `Date`, `ExamID`) VALUES
(1, '2012-12-03', 2),
(1, '2016-03-06', 3),
(2, '2013-03-08', 5),
(1, '2017-12-08', 8),
(1, '2018-01-20', 9),
(4, '2017-02-25', 7),
(4, '2018-01-01', 9),
(5, '2017-02-05', 1),
(5, '2017-08-03', 3),
(5, '2017-12-03', 8),
(5, '2018-01-28', 9);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `patients`
--

CREATE TABLE `patients` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Surname` varchar(30) NOT NULL,
  `AMKA` bigint(20) UNSIGNED DEFAULT NULL,
  `DOB` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `patients`
--

INSERT INTO `patients` (`ID`, `Name`, `Surname`, `AMKA`, `DOB`) VALUES
(1, 'Evan', 'Henry', 1111, '1980-02-03'),
(2, 'Ελενη', 'Μαρκου', 2222, '1995-03-05'),
(3, 'Νικος', 'Τσακμακης', 3333, '1996-05-13');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`Name`);

--
-- Ευρετήρια για πίνακα `examinations`
--
ALTER TABLE `examinations`
  ADD PRIMARY KEY (`ExamID`);

--
-- Ευρετήρια για πίνακα `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `AMKA` (`AMKA`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `patients`
--
ALTER TABLE `patients`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
