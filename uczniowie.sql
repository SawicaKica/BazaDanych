-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 17 Lut 2021, 21:39
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
-- Baza danych: `uczniowie`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dataurodzenia`
--

CREATE TABLE `dataurodzenia` (
  `id` int(11) NOT NULL,
  `dataUrodzenia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `dataurodzenia`
--

INSERT INTO `dataurodzenia` (`id`, `dataUrodzenia`) VALUES
(1, '12.02.1995'),
(2, '1995.11.21'),
(3, '1995.08.30'),
(4, '1995.06.12'),
(5, '1995.02.21'),
(6, '1995.10.23'),
(7, '1995.01.04'),
(8, '1995.06.17'),
(9, '1995.03.12'),
(10, '1995.03.22'),
(11, '1995.11.04'),
(12, '1995.02.15'),
(13, '1995.08.23'),
(14, '1995.04.05'),
(15, '1995.04.18');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `imie`
--

CREATE TABLE `imie` (
  `id` int(11) NOT NULL,
  `imie` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `imie`
--

INSERT INTO `imie` (`id`, `imie`) VALUES
(1, 'Artur'),
(2, 'Marek'),
(3, 'Anna'),
(4, 'Wlademar'),
(5, 'Wioletta'),
(6, 'Jakub'),
(7, 'Monika'),
(8, 'Jarosław'),
(9, 'Rafał'),
(10, 'Aleksandra'),
(11, 'Robert'),
(12, 'Adam'),
(13, 'Magdalena'),
(14, 'Róża');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasa`
--

CREATE TABLE `klasa` (
  `id` int(11) NOT NULL,
  `klasa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `klasa`
--

INSERT INTO `klasa` (`id`, `klasa`) VALUES
(1, 'III C'),
(2, 'III B'),
(3, 'III C'),
(4, 'III A'),
(5, 'III B'),
(6, 'III C'),
(7, 'III A'),
(8, 'III B'),
(9, 'III C'),
(10, 'III A'),
(11, 'III B'),
(12, 'III A'),
(13, 'III C'),
(14, 'III B'),
(15, 'III A');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `miejscezamieszkania`
--

CREATE TABLE `miejscezamieszkania` (
  `id` int(11) NOT NULL,
  `miejsceZamieszkania` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `miejscezamieszkania`
--

INSERT INTO `miejscezamieszkania` (`id`, `miejsceZamieszkania`) VALUES
(1, 'Bydgoszcz'),
(2, 'Koronowo'),
(3, 'Bydgoszcz'),
(4, 'Białe Błota'),
(5, 'Bydgoszcz'),
(6, 'Szubin'),
(7, 'Bydgoszcz'),
(8, 'Bydgoszcz'),
(9, 'Nakło nad Notecią'),
(10, 'Bydgoszcz'),
(11, 'Inowrocław'),
(12, 'Bydgoszcz'),
(13, 'Białe Błota'),
(14, 'Otorowo'),
(15, 'Bydgoszcz');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nazwisko`
--

CREATE TABLE `nazwisko` (
  `id` int(11) NOT NULL,
  `nazwisko` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `nazwisko`
--

INSERT INTO `nazwisko` (`id`, `nazwisko`) VALUES
(1, 'Andrzejczak'),
(2, 'Borowicz'),
(3, 'Cybul'),
(4, 'Dębowska'),
(5, 'Jędrych'),
(6, 'Kowalik'),
(7, 'Lorentz'),
(8, 'Muszyńska'),
(9, 'Nowak'),
(10, 'Oparczyk'),
(11, 'Oller'),
(12, 'Priewe'),
(13, 'Spitzza'),
(14, 'Sikorska'),
(15, 'Tomczak');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `telefon`
--

CREATE TABLE `telefon` (
  `id` int(11) NOT NULL,
  `telefon` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `telefon`
--

INSERT INTO `telefon` (`id`, `telefon`) VALUES
(1, 634213643),
(2, 829192322),
(3, 509834231),
(4, 526643983),
(5, 645543234),
(6, 643212322),
(7, 523437456),
(8, 524312345),
(9, 675423325),
(10, 543453321),
(11, 524365421),
(12, 524323423),
(13, 506231334),
(14, 607543543),
(15, 524323244);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie`
--

CREATE TABLE `uczniowie` (
  `id` int(11) NOT NULL,
  `nazwisko_id` int(11) NOT NULL,
  `imie_id` int(11) NOT NULL,
  `klasa_id` int(11) NOT NULL,
  `miejsceZamieszkania_id` int(11) NOT NULL,
  `dataUrodzenia` int(11) NOT NULL,
  `telefon` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dataurodzenia`
--
ALTER TABLE `dataurodzenia`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `imie`
--
ALTER TABLE `imie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `klasa`
--
ALTER TABLE `klasa`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `miejscezamieszkania`
--
ALTER TABLE `miejscezamieszkania`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `nazwisko`
--
ALTER TABLE `nazwisko`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `telefon`
--
ALTER TABLE `telefon`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uczniowie`
--
ALTER TABLE `uczniowie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dataUrodzenia` (`dataUrodzenia`),
  ADD KEY `imie_id` (`imie_id`),
  ADD KEY `nazwisko_id` (`nazwisko_id`),
  ADD KEY `telefon` (`telefon`),
  ADD KEY `klasa_id` (`klasa_id`),
  ADD KEY `miejsceZamieszkania_id` (`miejsceZamieszkania_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `dataurodzenia`
--
ALTER TABLE `dataurodzenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `imie`
--
ALTER TABLE `imie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `klasa`
--
ALTER TABLE `klasa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `miejscezamieszkania`
--
ALTER TABLE `miejscezamieszkania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `nazwisko`
--
ALTER TABLE `nazwisko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `telefon`
--
ALTER TABLE `telefon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `uczniowie`
--
ALTER TABLE `uczniowie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `uczniowie`
--
ALTER TABLE `uczniowie`
  ADD CONSTRAINT `uczniowie_ibfk_1` FOREIGN KEY (`dataUrodzenia`) REFERENCES `dataurodzenia` (`id`),
  ADD CONSTRAINT `uczniowie_ibfk_2` FOREIGN KEY (`imie_id`) REFERENCES `imie` (`id`),
  ADD CONSTRAINT `uczniowie_ibfk_3` FOREIGN KEY (`nazwisko_id`) REFERENCES `nazwisko` (`id`),
  ADD CONSTRAINT `uczniowie_ibfk_4` FOREIGN KEY (`telefon`) REFERENCES `telefon` (`id`),
  ADD CONSTRAINT `uczniowie_ibfk_5` FOREIGN KEY (`klasa_id`) REFERENCES `klasa` (`id`),
  ADD CONSTRAINT `uczniowie_ibfk_6` FOREIGN KEY (`miejsceZamieszkania_id`) REFERENCES `miejscezamieszkania` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
