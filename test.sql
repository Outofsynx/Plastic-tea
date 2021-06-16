-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 15 jun 2021 om 14:08
-- Serverversie: 10.4.11-MariaDB
-- PHP-versie: 7.4.3

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
-- Tabelstructuur voor tabel `classes`
--

CREATE TABLE `classes` (
  `classname` varchar(11) NOT NULL,
  `classemail` int(11) NOT NULL,
  `schoolname` varchar(59) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `classes`
--

INSERT INTO `classes` (`classname`, `classemail`, `schoolname`) VALUES
('6b', 0, 'mariaschool');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `languages`
--

CREATE TABLE `languages` (
  `language` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `plasticname`
--

CREATE TABLE `plasticname` (
  `plasticid` int(10) NOT NULL,
  `plasticname` varchar(60) NOT NULL,
  `plastickind` varchar(10) NOT NULL,
  `greekname` varchar(100) NOT NULL,
  `dutchname` varchar(100) NOT NULL,
  `italianname` varchar(100) NOT NULL,
  `romanianname` varchar(100) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `plasticname`
--

INSERT INTO `plasticname` (`plasticid`, `plasticname`, `plastickind`, `greekname`, `dutchname`, `italianname`, `romanianname`, `score`) VALUES
(1, 'breadbag', 'soft', '', '', '', '', 0),
(2, 'Drinkpackage', 'hard', '', '', '', '', 0),
(3, 'straw', 'soft', '', '', '', '', 0),
(5, 'cap', 'hard', '', '', '', '', 0),
(6, 'bottle', 'hard', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `plastiglog`
--

CREATE TABLE `plastiglog` (
  `datetime` datetime NOT NULL,
  `plasticid` int(100) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `role`
--

CREATE TABLE `role` (
  `idrole` int(11) NOT NULL,
  `rolename` varchar(45) DEFAULT NULL,
  `describtion` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `school`
--

CREATE TABLE `school` (
  `schoolname` varchar(40) NOT NULL,
  `language` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `school`
--

INSERT INTO `school` (`schoolname`, `language`) VALUES
('mariaschool', 'dutch');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `schoolplastic`
--

CREATE TABLE `schoolplastic` (
  `plasticid` int(11) NOT NULL,
  `plasticname` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `score`
--

CREATE TABLE `score` (
  `scoreid` int(3) NOT NULL,
  `username` varchar(20) NOT NULL,
  `decision` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `students`
--

CREATE TABLE `students` (
  `StudentName` varchar(45) NOT NULL,
  `StudentLastName` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `SchoolName` varchar(45) NOT NULL,
  `DateOfBirth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `students`
--

INSERT INTO `students` (`StudentName`, `StudentLastName`, `password`, `SchoolName`, `DateOfBirth`) VALUES
('chaman', 'sewdas', '123', 'Het Plein', '2021-06-01'),
('chaman', 'sewdas', '123', 'Het Plein', '2021-06-01'),
('veronica', 'delcature', '123', 'Mellachthon Prinses Irene', '2021-06-01'),
('veronica', 'delcature', '123', 'Mellachthon Prinses Irene', '2021-06-01');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `teachers`
--

CREATE TABLE `teachers` (
  `TeacherName` varchar(150) CHARACTER SET utf8 NOT NULL,
  `TeacherLastName` varchar(150) CHARACTER SET utf8 NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(120) CHARACTER SET utf8 NOT NULL,
  `DateOfBirth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `teachers`
--

INSERT INTO `teachers` (`TeacherName`, `TeacherLastName`, `password`, `email`, `DateOfBirth`) VALUES
('bosje', 'sewdas', '$2y$10$crPI1DyGf7VsR11SHKTNu.C41uIp.z7rLh5FcO', 'chaman_ewdas@hotmail.com', '1998-01-26'),
('bosje', 'sewdas', '$2y$10$8pu877nLTFIErJqISsQbTe78ZReZO0c4TFjtP7', 'chaman_sewdas@hotmail.com', '1998-01-26'),
('toast', 'tests', '$2y$10$eB8vfKvDtB9QWTarqaeGV.fuxz8j3jSgjmRXR8', 'test@hotmail.com', '2021-06-16');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `score` int(11) NOT NULL,
  `email` int(11) NOT NULL,
  `roledid` int(11) NOT NULL,
  `classname` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`username`, `firstname`, `lastname`, `password`, `score`, `email`, `roledid`, `classname`) VALUES
('1', '1', '1', '$2y$10$iUTVfAQz53.pJXy19Tzjue6WT41t5Aes3Pw.GKdLLhX0xJ.heZ.2i', 0, 0, 0, ''),
('11', '1', '1', '$2y$10$paJfLaPbRN6eWPVzFfVW5.b5gs1riBoNZrOZQjkezRxuLCVhBicrK', 0, 0, 0, ''),
('123', '$2y$10$dBvh8JkbUlJna', '$2y$10$sRYuP7SLGYBkz', '$2y$10$Q36c/FpWHEB8.yCSGMCa/e6Y.XKJ6nWyVycHDpIwTkGCL3vrCNcLK', 0, 0, 0, ''),
('2', '1', '1', '$2y$10$A/62.szjl6P3tTaGDRj8AuRqXl/uUemawRPMl3.p8UBd7ywm6.iNy', 10, 0, 0, ''),
('20', '$2y$10$ySWH6oV.SclNm', '$2y$10$6LjL84sXYo/79', '$2y$10$6VdDiRx3BBgepxySyjIxYu108qIJM9YGd1eBSgd98rcTzivNB0eLy', 0, 0, 0, ''),
('21', '$2y$10$DOiuqyK1qIi8x', '$2y$10$8BSR5cD9b7LM5', '$2y$10$4lZLEauZYyc3K9B4s8OKLeuBUFCeXMUxge295x3mx3puR1fQ74hK2', 0, 0, 0, ''),
('22', '$2y$10$QsJVL5SWJP/K6', '$2y$10$.GVqCiGds8NiN', '$2y$10$cTvJ0ibxCNI0IjJRJOCWL.tqJ4yi3k7t2TmnkvxSm6syeekEN8266', 0, 0, 0, ''),
('26', '$2y$10$nunPnMMRegLG8', '$2y$10$TMCQz7AwV.Km/', '$2y$10$LDRqJdUsucxzBVk3/WH7fucziF94/hOFr8WDA7C81nqka89w2hrZa', 0, 0, 0, '.6b'),
('28', '$2y$10$sh8tEzb5zZv7I', '$2y$10$JSWZX1vO.Gwby', '$2y$10$pOLzPI0djJEEXpHJ5CwTGu7PRrn3lOI3FtL.y0gVDHnQI9zMiQTZC', 0, 0, 0, '.6b'),
('3', '3', '3', '$2y$10$z.wSDLXplhuadeoV/oQapuCnQ/Ke7qAx3fXRAuvvgE72J3ayzjOq6', 0, 0, 0, ''),
('567', '6', 'tesla union drop tab', '$2y$10$WgrvwrOV969ZrCZ6kYma0OVijE8s3IyhEVMHpRk2QAtheoRxIrATK', 0, 0, 0, ''),
('6', '6', 'union drop table use', '$2y$10$3v2CmZhneQQ39qYseS2D5.3K1XlAF6zSG33sUR/sIYNHSFMqWlu6G', 0, 0, 0, ''),
('8', '8', '8', '$2y$10$1LgOpEKsKd.BHwio4B5Up.1qBp47b0AbW9Z7FjT4UguPXa9F6YxeS', 0, 0, 0, ''),
('88', '$2y$10$sANX.s7ezuYOw', '$2y$10$FCCNdLykH7mPM', '$2y$10$GeM7etEGNU5B7ZYam5SvmOZBp33oDTDtKmdepmmNoxPmeii/FlGFa', 0, 0, 0, ''),
('blah', '$2y$10$65nVXISkQgYda', '$2y$10$4/Oc4.neDqzQY', '$2y$10$mepD/6nfdEvQd6WTXDVn5uCTTYVODGMopaB.WPWK67lE87ACAHCDy', 0, 0, 0, '.6b'),
('chaman123456789', '$2y$10$TWox7oHo/DGlt', '$2y$10$w8CCCZYrGL/gt', '$2y$10$vbJJ.qNkY5U.IoKv1ObiB.2OuYDZw25m2U2nuqpjsh91rnFrwB1BG', 0, 0, 0, ''),
('chamanishomo', '$2y$10$.Q3KjT5qo67L5', '$2y$10$DGMKzr5dwEulu', '$2y$10$C4NJr7jL1vak2x5ZMJ9HyOVc3iOfD1Vzgay/uuitf/seWUZbBdwxK', 0, 0, 0, ''),
('h', '$2y$10$L5CMfkcevx3zf', '$2y$10$.tcAK.ul7ovI5', '$2y$10$lgxonMZQIpluBT7QWP99TunPpry3VADiKSu.5pqZcxmtsdFGDJfbu', 0, 0, 0, ''),
('ok', '6', ' drop table user', '$2y$10$RSinWy9HPnz/KMzJOp1a8O.1gXUzuEcvyFN.ghQ8a1EUxHtGZz0bq', 0, 0, 0, ''),
('q', '$2y$10$bOvKeeLf/xBVx', '$2y$10$1f3RGp6333Cs2', '$2y$10$3K0M0yGresPHr5sFXxU4qe1KNCC2ioWeCPFVqF/JGF3LV1dBv1rd.', 0, 0, 0, ''),
('test1', 'test1', 'test1', 'test', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user_roles`
--

CREATE TABLE `user_roles` (
  `user_role` int(20) NOT NULL,
  `roleid` int(20) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`classname`),
  ADD KEY `schoolname` (`schoolname`);

--
-- Indexen voor tabel `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`language`);

--
-- Indexen voor tabel `plasticname`
--
ALTER TABLE `plasticname`
  ADD PRIMARY KEY (`plasticid`);

--
-- Indexen voor tabel `plastiglog`
--
ALTER TABLE `plastiglog`
  ADD PRIMARY KEY (`datetime`),
  ADD KEY `plasticid` (`plasticid`);

--
-- Indexen voor tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`idrole`);

--
-- Indexen voor tabel `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`schoolname`),
  ADD KEY `language` (`language`);

--
-- Indexen voor tabel `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`scoreid`),
  ADD KEY `username` (`username`);

--
-- Indexen voor tabel `teachers`
--
ALTER TABLE `teachers`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexen voor tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_role`),
  ADD KEY `username` (`username`),
  ADD KEY `roleid` (`roleid`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `plasticname`
--
ALTER TABLE `plasticname`
  MODIFY `plasticid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `role`
--
ALTER TABLE `role`
  MODIFY `idrole` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `score`
--
ALTER TABLE `score`
  MODIFY `scoreid` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `user_role` int(20) NOT NULL AUTO_INCREMENT;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`schoolname`) REFERENCES `school` (`schoolname`);

--
-- Beperkingen voor tabel `plastiglog`
--
ALTER TABLE `plastiglog`
  ADD CONSTRAINT `plastiglog_ibfk_1` FOREIGN KEY (`plasticid`) REFERENCES `plasticname` (`plasticid`);

--
-- Beperkingen voor tabel `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Beperkingen voor tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`roleid`) REFERENCES `role` (`idrole`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
