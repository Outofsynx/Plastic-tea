
SET SQL_MODE
= "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT
= 0;
START TRANSACTION;
SET time_zone
= "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `students`
--

CREATE TABLE `students`
(
  `username` varchar
(10) NOT NULL,
  `firstname` varchar
(10) NOT NULL,
  `lastname` varchar
(10) NOT NULL,
  `password` varchar
(10) NOT NULL,
  `id` int
(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `students`
--

INSERT INTO `students` (`
username`,
`firstname
`, `lastname`, `password`, `id`) VALUES
('', ' lj l ', ' lll lkm', 'mlkmlk', 1),
(',m ln ', 'nklnk', 'nkllnk', 'nklkln', 2),
('hello', 'nlknkl', 'nkln', 'nlklklk', 3),
('*', '', '', '', 4),
('*', '**', '**', '**', 5),
('*', '**', '**', '**', 6),
('hello', 'nlknkl', 'nkln', 'nlklklk', 7),
('hello', 'nlknkl', 'nkln', '/', 8),
('*', '**', 'http://loc', '**', 9),
('union sele', 'nlknkl', 'nkln', '/', 10),
('*', '**', 'http://loc', '$2y$10$.f3', 11),
('', '', '', '$2y$10$5s/', 12),
('jkvbkjkb', 'blkllkb', 'bklkllk', '$2y$10$jFn', 13),
('', '', '', '$2y$10$bvu', 14),
('niooi', 'niooniio', 'niooinoiio', '$2y$10$FdV', 15),
('*', '**', 'http://loc', '$2y$10$t5B', 16),
('test1', '', '', '$2y$10$b.H', 17),
('test2', '', '', '$2y$10$ucI', 18),
('test3', '', '', '$2y$10$FJu', 19),
('1', '', '', '$2y$10$vUo', 20);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `students`
--
ALTER TABLE `students`
ADD PRIMARY KEY
(`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` int
(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
