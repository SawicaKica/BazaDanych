-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 30 Maj 2021, 21:12
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `projekt_roczny`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategoria`
--

CREATE TABLE `kategoria` (
  `ID_Kategoria` int(11) NOT NULL,
  `Kategoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `kategoria`
--

INSERT INTO `kategoria` (`ID_Kategoria`, `Kategoria`) VALUES
(2, 'Modyfikowanie tabeli'),
(3, 'Pytania ogolne'),
(4, 'Teoria'),
(1, 'Typy danych');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `poprawna`
--

CREATE TABLE `poprawna` (
  `ID_Poprawna` int(11) NOT NULL,
  `ODP1` int(11) NOT NULL,
  `ODP2` int(11) NOT NULL,
  `Punkt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `poprawna`
--

INSERT INTO `poprawna` (`ID_Poprawna`, `ODP1`, `ODP2`, `Punkt`) VALUES
(9, 1, 0, 1),
(17, 1, 0, 1),
(18, 1, 0, 1),
(19, 1, 0, 1),
(2, 2, 0, 1),
(8, 2, 0, 1),
(10, 2, 0, 1),
(11, 2, 0, 1),
(12, 2, 0, 1),
(14, 2, 0, 1),
(15, 2, 0, 1),
(16, 2, 0, 1),
(5, 3, 0, 1),
(6, 3, 0, 1),
(13, 3, 0, 1),
(20, 3, 0, 1),
(1, 4, 0, 1),
(3, 4, 0, 1),
(4, 4, 0, 1),
(7, 4, 0, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pytania`
--

CREATE TABLE `pytania` (
  `ID_Pytanie` int(11) NOT NULL,
  `ID_Kategoria` int(11) NOT NULL,
  `Pytanie` varchar(20) NOT NULL,
  `ODP1` varchar(20) NOT NULL,
  `ODP2` varchar(20) NOT NULL,
  `ODP3` varchar(20) NOT NULL,
  `ODP4` varchar(20) NOT NULL,
  `ID_Poprawna` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pytania`
--

INSERT INTO `pytania` (`ID_Pytanie`, `ID_Kategoria`, `Pytanie`, `ODP1`, `ODP2`, `ODP3`, `ODP4`, `ID_Poprawna`) VALUES
(1, 1, 'Który typ danych odp', 'VARCHARDOUBLE', 'DOUBLE', 'TEXT', 'INT', 1),
(4, 1, 'Który z poniższych t', 'CHAR', 'TEXT', 'NVARCHAR', 'VARCHAR', 4),
(2, 1, 'Który z poniższych t', 'REAL', 'DATE', 'DATETIME', 'TEXT', 2),
(5, 1, 'Który z poniższych t', 'REAL', 'DATETIME', 'MONEY', 'NUMERIC', 5),
(3, 1, 'Typ danych, z stałą ', 'FLOAT(N)', 'NUMERIC', 'BIT', 'DECIMAL', 3),
(7, 2, 'Co należy dopisać do', '\"Key\"', '\"Klucz podstawowy\"', '\"Klucz\"', '\"Primary key\"', 7),
(10, 2, 'Jak dodać do istniej', 'add nazwaKolumny 5;', 'add nazwaKolumny VAR', 'add nazwaKolumny INT', 'Dodaj nazwaKolumny V', 10),
(9, 2, 'Jak usunąć daną baze', 'Drop database nazwaB', 'usuń nazwaBazyDanych', 'Drop nazwaBazyDanych', 'usuń bazeDanych nazw', 9),
(8, 2, 'Jak usunąć daną tabe', 'Usuń tabela nazwaTab', 'Drop table nazwaTabe', 'Drop nazwaTabeli;', 'Usuń nazwaTabeli;', 8),
(6, 2, 'Które z poniższych p', 'TABLE CREATE nazwaTa', 'STWORZ TABELA nazwaT', 'CREATE TABLE nazwaTa', 'TABELA STWORZ nazwaT', 6),
(15, 3, 'Czy można założyć in', 'Nie można', 'Można', 'Można tylko na jedne', 'Można, ale pod pewny', 15),
(14, 3, 'Czym jest transakcja', 'Transakcje to masz w', 'Jest to zbiór operac', 'Jest udcziwa wymiana', 'Wymiana produktu za ', 14),
(11, 3, 'Do czego służy AVG?', 'Do niczego.', 'Wylicza średnie z da', 'Liczy sume wszystkic', 'Dodaje do tabeli rel', 11),
(13, 3, 'Do czego służy COUNT', 'Zlicza puste miejsca', 'Dodaje do tabeli now', 'Pozwala nam zliczyć ', 'Funkcja count nie is', 13),
(12, 3, 'Do czego służy SUM?', 'Do wyliczania sumy', 'Do liczenia średniej', 'Do jedzenia', 'Do niczego', 12),
(18, 4, 'Czym jest klucz obcy', 'Klucz obcy określany', 'Losowych hasłem', 'Uprawnia do modyfiko', 'Niczym', 18),
(16, 4, 'Czym jest SQL?', 'Czym jest SQL?', 'Językiem baz danych', 'Niczym', 'Inna.', 16),
(17, 4, 'Do czego służy SQL?', 'Do wykonywania zapyt', 'Do zabezpieczania st', 'Do produkcji filmów', 'Do niczego.', 17),
(20, 4, 'Jaka funkcja służy d', 'WWD', 'RLS', 'MOD', 'DOM', 20),
(19, 4, 'Jaka funkcja służy d', 'WWD', 'RLS', 'MOD', 'LKM', 19);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `test`
--

CREATE TABLE `test` (
  `ID` int(11) NOT NULL,
  `ID_Uzytkownik` int(11) NOT NULL,
  `ID_Pytanie` int(11) NOT NULL,
  `Odpowiedz` int(11) NOT NULL,
  `Zdobyte_Punkty` int(11) NOT NULL,
  `Czas_Odp` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `test`
--

INSERT INTO `test` (`ID`, `ID_Uzytkownik`, `ID_Pytanie`, `Odpowiedz`, `Zdobyte_Punkty`, `Czas_Odp`) VALUES
(1, 1, 5, 3, 1, '00:00:14'),
(2, 1, 15, 2, 1, '00:00:06'),
(3, 1, 2, 4, 0, '00:00:19'),
(4, 1, 17, 1, 1, '00:00:30'),
(5, 1, 7, 2, 0, '00:00:03');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownik`
--

CREATE TABLE `uzytkownik` (
  `ID_Uzytkownik` int(11) NOT NULL,
  `nazwa` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `haslo` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `uzytkownik`
--

INSERT INTO `uzytkownik` (`ID_Uzytkownik`, `nazwa`, `email`, `haslo`) VALUES
(1, 'Sawica', 'micakica@gmail.com', '1da4bbb01390a211cbe69987fd7bb9f0');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`ID_Kategoria`),
  ADD KEY `Kategoria` (`Kategoria`);

--
-- Indeksy dla tabeli `poprawna`
--
ALTER TABLE `poprawna`
  ADD PRIMARY KEY (`ID_Poprawna`),
  ADD KEY `ODP1` (`ODP1`,`ODP2`,`Punkt`);

--
-- Indeksy dla tabeli `pytania`
--
ALTER TABLE `pytania`
  ADD PRIMARY KEY (`ID_Pytanie`),
  ADD KEY `ID_Kategoria` (`ID_Kategoria`,`Pytanie`,`ODP1`,`ODP2`,`ODP3`,`ODP4`,`ID_Poprawna`),
  ADD KEY `ID_Poprawna` (`ID_Poprawna`);

--
-- Indeksy dla tabeli `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Uzytkownik` (`ID_Uzytkownik`,`ID_Pytanie`,`Odpowiedz`,`Zdobyte_Punkty`),
  ADD KEY `ID_Pytanie` (`ID_Pytanie`);

--
-- Indeksy dla tabeli `uzytkownik`
--
ALTER TABLE `uzytkownik`
  ADD PRIMARY KEY (`ID_Uzytkownik`),
  ADD KEY `nazwa` (`nazwa`,`email`,`haslo`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `ID_Kategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `poprawna`
--
ALTER TABLE `poprawna`
  MODIFY `ID_Poprawna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `pytania`
--
ALTER TABLE `pytania`
  MODIFY `ID_Pytanie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT dla tabeli `uzytkownik`
--
ALTER TABLE `uzytkownik`
  MODIFY `ID_Uzytkownik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `pytania`
--
ALTER TABLE `pytania`
  ADD CONSTRAINT `pytania_ibfk_1` FOREIGN KEY (`ID_Kategoria`) REFERENCES `kategoria` (`ID_Kategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pytania_ibfk_2` FOREIGN KEY (`ID_Poprawna`) REFERENCES `poprawna` (`ID_Poprawna`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`ID_Uzytkownik`) REFERENCES `uzytkownik` (`ID_Uzytkownik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test_ibfk_2` FOREIGN KEY (`ID_Pytanie`) REFERENCES `pytania` (`ID_Pytanie`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
