-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 23 Mar 2021, 16:10
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `projekt`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `accounts`
--

CREATE TABLE `accounts` (
  `login` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `id_accounts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `accounts`
--

INSERT INTO `accounts` (`login`, `pass`, `id_accounts`) VALUES
('mati', '123', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oferty`
--

CREATE TABLE `oferty` (
  `title` varchar(150) NOT NULL,
  `prices` varchar(10) NOT NULL,
  `rooms` varchar(70) NOT NULL,
  `pricesPerMeter` varchar(70) NOT NULL,
  `areas` varchar(10) NOT NULL,
  `id_oferta` int(11) NOT NULL,
  `date_added` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `oferty`
--

INSERT INTO `oferty` (`title`, `prices`, `rooms`, `pricesPerMeter`, `areas`, `id_oferta`, `date_added`) VALUES
('Mieszkanie 3 pokojowe z gara?em Stawki 63 m2', '555 000 z?', '3 pokoje', '8 810 z?/m²', '63 m²', 1, '2021-03-23'),
('Mieszkanie 36m2, 2 pokoje, po remoncie', '287 000 z?', '2 pokoje', '7 972 z?/m²', '36 m²', 2, '2021-03-23'),
('Od w?a?ciciela, 4 pokoje, 1-sze pi?tro,', '379 000 z?', '4 pokoje', '6 093 z?/m²', '62,20 m²', 3, '2021-03-23'),
('Trzypokojowe na Parterze w bloku w spokojnej okoli', '273 000 z?', '3 pokoje', '5 570 z?/m²', '49,01 m²', 4, '2021-03-23'),
('Przepi?kne luksusowe dwupokojowe Zamkni?te Osiedle', '335 000 z?', '2 pokoje', '8 816 z?/m²', '38 m²', 5, '2021-03-23'),
('PODDASZE 76m2 w odnowionej kamienicy FV 23%', '209 000 z?', '1 pokój', '2 750 z?/m²', '76 m²', 6, '2021-03-23'),
('Nowoczesne, wyko?czone dwupokojowe mieszkanie', '293 000 z?', '2 pokoje', '5 978 z?/m²', '49,01 m²', 7, '2021-03-23'),
('BEZPO?REDNIO mieszkanie na SKARPIE ulica Raszei', '249 900 z?', '2 pokoje', '6 576 z?/m²', '38 m²', 8, '2021-03-23'),
('Mieszkanie z 2 balkonami! Nowy blok, niska cena!', '327 804 z?', '2 pokoje', '5 900 z?/m²', '55,56 m²', 9, '2021-03-23'),
('Nowe Wn?trza 2pok 36m2 du?y balkon Niski Czynsz', '287 000 z?', '2 pokoje', '7 972 z?/m²', '36 m²', 10, '2021-03-23'),
('Przestronne 2 pokoje na Che?mi?skim!', '350 000 z?', '2 pokoje', '4 795 z?/m²', '73 m²', 11, '2021-03-23'),
('3 pokoje przy ul. ?wi?tope?ka - blisko Starówki', '299 000 z?', '3 pokoje', '7 475 z?/m²', '40 m²', 12, '2021-03-23'),
('Mohna! Pierwsze Pi?tro! Ceg?a!', '420 000 z?', '3 pokoje', '6 563 z?/m²', '64 m²', 13, '2021-03-23'),
('Mieszkanie Na Winnicy! Dwa Pokoje! Winda!', '369 000 z?', '2 pokoje', '8 110 z?/m²', '45,50 m²', 14, '2021-03-23'),
('W Pe?ni Umeblowane M-4!', '349 000 z?', '3 pokoje', '6 712 z?/m²', '52 m²', 15, '2021-03-23'),
('2 pokoje w spokojnej okolicy', '295 000 z?', '2 pokoje', '6 277 z?/m²', '47 m²', 16, '2021-03-23'),
('Wrzosy !!! Najlepsze Miejsce W Toruniu !', '679 000 z?', '4 pokoje', '6 986 z?/m²', '97,20 m²', 17, '2021-03-23'),
('Nowa Ni?sza Cena !! Dwa Pokoje - Mokre', '269 000 z?', '2 pokoje', '7 079 z?/m²', '38 m²', 18, '2021-03-23'),
('2 pokoje na Podgórzu', '295 000 z?', '2 pokoje', '6 455 z?/m²', '45,70 m²', 19, '2021-03-23'),
('Urz?dzone mieszkanie gotowe do wprowadzenia', '499 000 z?', '3 pokoje', '5 254 z?/m²', '94,97 m²', 20, '2021-03-23'),
('Mieszkanie - S?oneczne tarasy', '460 000 z?', '3 pokoje', '7 324 z?/m²', '62,81 m²', 21, '2021-03-23'),
('Nowe mieszkanie od Dewelopera ul. Kniaziewicza 42', '625 000 z?', '4 pokoje', '7 444 z?/m²', '83,96 m²', 22, '2021-03-23'),
('Bezpo?rednio - Wyj?tkowe mieszkanie na Koniuchach', '439 000 z?', '3 pokoje', '6 437 z?/m²', '68,20 m²', 23, '2021-03-23'),
('Apartamenty gotowy pod klucz,meble i Agd w cenie', '399 000 z?', '2 pokoje', '9 187 z?/m²', '43,43 m²', 24, '2021-03-23'),
('Trzypokojowe na Parterze w bloku w spokojnej okoli', '273 000 z?', '3 pokoje', '5 570 z?/m²', '49,01 m²', 25, '2021-03-23'),
('Przepi?kne luksusowe dwupokojowe Zamkni?te Osiedle', '335 000 z?', '2 pokoje', '8 816 z?/m²', '38 m²', 26, '2021-03-23'),
('PODDASZE 76m2 w odnowionej kamienicy FV 23%', '209 000 z?', '1 pokój', '2 750 z?/m²', '76 m²', 27, '2021-03-23'),
('Nowoczesne, wyko?czone dwupokojowe mieszkanie', '293 000 z?', '2 pokoje', '5 978 z?/m²', '49,01 m²', 28, '2021-03-23'),
('BEZPO?REDNIO mieszkanie na SKARPIE ulica Raszei', '249 900 z?', '2 pokoje', '6 576 z?/m²', '38 m²', 29, '2021-03-23'),
('Mieszkanie z 2 balkonami! Nowy blok, niska cena!', '327 804 z?', '2 pokoje', '5 900 z?/m²', '55,56 m²', 30, '2021-03-23'),
('Nowe Wn?trza 2pok 36m2 du?y balkon Niski Czynsz', '287 000 z?', '2 pokoje', '7 972 z?/m²', '36 m²', 31, '2021-03-23'),
('Przestronne 2 pokoje na Che?mi?skim!', '350 000 z?', '2 pokoje', '4 795 z?/m²', '73 m²', 32, '2021-03-23'),
('3 pokoje przy ul. ?wi?tope?ka - blisko Starówki', '299 000 z?', '3 pokoje', '7 475 z?/m²', '40 m²', 33, '2021-03-23'),
('Mohna! Pierwsze Pi?tro! Ceg?a!', '420 000 z?', '3 pokoje', '6 563 z?/m²', '64 m²', 34, '2021-03-23'),
('Mieszkanie Na Winnicy! Dwa Pokoje! Winda!', '369 000 z?', '2 pokoje', '8 110 z?/m²', '45,50 m²', 35, '2021-03-23'),
('W Pe?ni Umeblowane M-4!', '349 000 z?', '3 pokoje', '6 712 z?/m²', '52 m²', 36, '2021-03-23'),
('2 pokoje w spokojnej okolicy', '295 000 z?', '2 pokoje', '6 277 z?/m²', '47 m²', 37, '2021-03-23'),
('Wrzosy !!! Najlepsze Miejsce W Toruniu !', '679 000 z?', '4 pokoje', '6 986 z?/m²', '97,20 m²', 38, '2021-03-23'),
('Nowa Ni?sza Cena !! Dwa Pokoje - Mokre', '269 000 z?', '2 pokoje', '7 079 z?/m²', '38 m²', 39, '2021-03-23'),
('2 pokoje na Podgórzu', '295 000 z?', '2 pokoje', '6 455 z?/m²', '45,70 m²', 40, '2021-03-23'),
('4 pokoje z balkonem , 58.7 m2 , blok', '325 000 z?', '4 pokoje', '5 617 z?/m²', '57,86 m²', 41, '2021-03-23'),
('Mieszkanie bez po?rednika', '335 000 z?', '3 pokoje', '5 786 z?/m²', '57,90 m²', 42, '2021-03-23'),
('Mieszkanie Winnica odst?pi? partycypacj? TBS/TTBS', '175 000 z?', '3 pokoje', '3 241 z?/m²', '54 m²', 43, '2021-03-23'),
('Apartamenty gotowy pod klucz,meble i Agd w cenie', '399 000 z?', '2 pokoje', '9 187 z?/m²', '43,43 m²', 44, '2021-03-23'),
('Trzypokojowe na Parterze w bloku w spokojnej okoli', '273 000 z?', '3 pokoje', '5 570 z?/m²', '49,01 m²', 45, '2021-03-23'),
('Przepi?kne luksusowe dwupokojowe Zamkni?te Osiedle', '335 000 z?', '2 pokoje', '8 816 z?/m²', '38 m²', 46, '2021-03-23'),
('PODDASZE 76m2 w odnowionej kamienicy FV 23%', '209 000 z?', '1 pokój', '2 750 z?/m²', '76 m²', 47, '2021-03-23'),
('Nowoczesne, wyko?czone dwupokojowe mieszkanie', '293 000 z?', '2 pokoje', '5 978 z?/m²', '49,01 m²', 48, '2021-03-23'),
('BEZPO?REDNIO mieszkanie na SKARPIE ulica Raszei', '249 900 z?', '2 pokoje', '6 576 z?/m²', '38 m²', 49, '2021-03-23'),
('Mieszkanie z 2 balkonami! Nowy blok, niska cena!', '327 804 z?', '2 pokoje', '5 900 z?/m²', '55,56 m²', 50, '2021-03-23'),
('Nowe Wn?trza 2pok 36m2 du?y balkon Niski Czynsz', '287 000 z?', '2 pokoje', '7 972 z?/m²', '36 m²', 51, '2021-03-23'),
('Przestronne 2 pokoje na Che?mi?skim!', '350 000 z?', '2 pokoje', '4 795 z?/m²', '73 m²', 52, '2021-03-23'),
('3 pokoje przy ul. ?wi?tope?ka - blisko Starówki', '299 000 z?', '3 pokoje', '7 475 z?/m²', '40 m²', 53, '2021-03-23'),
('Mohna! Pierwsze Pi?tro! Ceg?a!', '420 000 z?', '3 pokoje', '6 563 z?/m²', '64 m²', 54, '2021-03-23'),
('Mieszkanie Na Winnicy! Dwa Pokoje! Winda!', '369 000 z?', '2 pokoje', '8 110 z?/m²', '45,50 m²', 55, '2021-03-23'),
('W Pe?ni Umeblowane M-4!', '349 000 z?', '3 pokoje', '6 712 z?/m²', '52 m²', 56, '2021-03-23'),
('2 pokoje w spokojnej okolicy', '295 000 z?', '2 pokoje', '6 277 z?/m²', '47 m²', 57, '2021-03-23'),
('Wrzosy !!! Najlepsze Miejsce W Toruniu !', '679 000 z?', '4 pokoje', '6 986 z?/m²', '97,20 m²', 58, '2021-03-23'),
('Nowa Ni?sza Cena !! Dwa Pokoje - Mokre', '269 000 z?', '2 pokoje', '7 079 z?/m²', '38 m²', 59, '2021-03-23'),
('2 pokoje na Podgórzu', '295 000 z?', '2 pokoje', '6 455 z?/m²', '45,70 m²', 60, '2021-03-23');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id_accounts`);

--
-- Indeksy dla tabeli `oferty`
--
ALTER TABLE `oferty`
  ADD PRIMARY KEY (`id_oferta`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id_accounts` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `oferty`
--
ALTER TABLE `oferty`
  MODIFY `id_oferta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
