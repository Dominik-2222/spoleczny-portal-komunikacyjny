-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Czas generowania: 23 Paź 2022, 15:43
-- Wersja serwera: 10.5.15-MariaDB-10+deb11u1
-- Wersja PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `dominik2043`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admin`
--

CREATE TABLE `admin` (
  `login` int(11) NOT NULL,
  `haslo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `firmy`
--

CREATE TABLE `firmy` (
  `id` int(11) NOT NULL,
  `nazwa` text COLLATE utf8_polish_ci NOT NULL,
  `krs` text COLLATE utf8_polish_ci NOT NULL,
  `www` text COLLATE utf8_polish_ci NOT NULL,
  `Opis` longtext COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `firmy`
--

INSERT INTO `firmy` (`id`, `nazwa`, `krs`, `www`, `Opis`) VALUES
(1, 'Pomoc dla zwierząt', '0000675878', 'https://www.dla-zwierzat.pl', 'Fundacja powstała w maju 2017 roku. Założyła ją grupa wolontariuszy o niezwykłej wrażliwości na cierpienie zwierząt.\r\n\r\nNaszą pasją jest niesienie pomocy tym, którzy o tę pomoc sami nie mogą prosić. Jesteśmy ich głosem. Na co dzień ratujemy bezdomne zwierzęta, które ze względu na swój wiek czy stan zdrowia nie odnajdują się w ciężkich schroniskowych warunkach. Razem z ludźmi dobrej woli tworzymy domy tymczasowe, gdzie zwierzęta przechodzą cudowne metamorfozy i dzięki temu szybciej znajdują swoich stałych opiekunów. Nie można jednak skutecznie pomagać bez zwracania się o pomoc do innych.\r\n\r\nJesteśmy organizacją charytatywną, czyli nie prowadzimy działalności gospodarczej, a całość naszych środków pochodzi jedynie z darowizn. Naszym marzeniem jest utworzenie ośrodka dla zwierząt po trudnych przejściach, w którym odzyskają radość życia i skąd trafią do nowych domów. Ludzie zrobili już zbyt wiele złego, nadszedł czas, aby to naprawić.'),
(2, 'OTOZ', '0000069730', 'https://otoz.pl', 'Obecnie OTOZ Animals prowadzi 10 schronisk dla bezdomnych zwierząt, w tym przytulisko dla zwierząt gospodarskich „Rogate Ranczo”. Pod naszą opieką znajduje się ponad 2000 porzuconych psów i kotów oraz zwierzęta gospodarskie: konie, kucyki, krowy, cielęta, świnki, kozy, króliki, i osiołek. Wszystkie zostały odebrane ludziom, którzy je źle traktowali – bili, głodzili, czasami wręcz katowali.\r\nNasi Inspektorzy codziennie przeprowadzają interwencje w sprawach niehumanitarnego traktowania zwierząt. W 2019 r. przeprowadziliśmy takich interwencji 6046. W wielu sprawach walczymy w sądach o kary dla oprawców zwierząt. Działamy zgodnie z Ustawą o ochronie zwierząt oraz Ustawą o działalności Organizacji Pożytku Publicznego i Wolontariatu. Staramy się jak najlepiej odmienić los naszych podopiecznych. Często pod skrzydłami OTOZ Animals uratowane zwierzaki zmieniają się nie do poznania! Wcześniej skatowane, zagłodzone, chore, zaniedbane – teraz zdrowe, najedzone i choć trochę szczęśliwe. Trochę, bo pełnię szczęścia daje dopiero adopcja. Regularnie prowadzimy akcje adopcyjne, do końca października 2019 roku udało się nam uratować i znaleźć nowe domy dla 4912 psów oraz 2879 kotów.\r\nŚrodki uzyskane dzięki Państwa hojności umożliwiają nam remonty w prowadzonych przez nas schroniskach: co roku modernizujemy i budujemy nowe kojce i wybiegi dla psiaków. Przed zbliżającą się zimą szczególną uwagę zwracamy na stan techniczny bud dla psiaków znajdujących w schroniskach. Wiele trafiających do nas zwierząt wymaga natychmiastowej opieki lekarza weterynarii, dlatego więc dla ponad 2000 zwierząt kupujemy olbrzymią ilość leków i szczepionek – finansujemy stałą opiekę weterynaryjną. Trafia do nas wiele psów i kotów po wypadkach komunikacyjnych, wówczas najczęściej konieczna jest natychmiastowa operacja ratująca życie.'),
(3, 'Stowarzyszenie Dzieci Serc', '0000121276', 'https://dzieciserc.pl/', '“Tylko życie poświęcone innym warte jest przeżycia”\r\nAlbert Einstein\r\n\r\nStowarzyszenie Dzieci Serc działa od czerwca 2000r. i skupia w swych szeregach dzieci i młodzież niepełnosprawną z terenu Gmin: Radziechowy-Wieprz, Węgierskiej Górki, Ujsół, Rajczy, Łękawicy, Czernichowa, Lipowej i częściowo z Wilkowic, Łodygowic i Żywca.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `slownik`
--

CREATE TABLE `slownik` (
  `id` int(11) NOT NULL,
  `pojecie` text COLLATE utf8_polish_ci NOT NULL,
  `definicja` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `slownik`
--

INSERT INTO `slownik` (`id`, `pojecie`, `definicja`) VALUES
(1, 'wolontarisz', 'Wolontariusz to osoba pracująca na zasadzie wolontariatu. Według ustawy o działalności pożytku publicznego i o wolontariacie wolontariuszem jest ten, kto dobrowolnie i świadomie oraz bez wynagrodzenia angażuje się w pracę na rzecz osób, organizacji pozarządowych, a także rozmaitych instytucji działających w różnych obszarach społecznych. Instytucje te nie mogą korzystać z pracy wolontariuszy przy prowadzonej działalności gospodarczej, czego wprost zakazuje ustawa.'),
(2, 'Organizacja non-profit', ' organizacja pozarządowa, której działania nie mają na celu przyniesienie zysku organom nią zarządzającym. Jest finansowana z budżetów publicznych: państwowych, regionalnych, lokalnych. {żrdło: wikipedia}'),
(3, 'Szum informacyjny', 'Nadmiar informacji utrudniający wyodrębnienie informacji prawdziwych i istotnych.\r\nW literaturze nazywany również przeciążeniem informacyjnym, eksplozją, bombą informacyjną, wykładniczym wzrostem informacji, zalewem, potopem informacji. Zjawisko to narasta od połowy XX wieku, jednak obecnie, w związku z rozwojem zasobów WWW, a także serwisów i zasobów społecznościowych, przybiera znacząco na sile. W jego wyniku, w odczuciu użytkowników informacji, powstaje „szum informacyjny” – nierównowaga między ilością dostarczanej informacji a możliwością jej przetworzenia przez człowieka. Pojawia się tzw. stres informacyjny (stres poznawczy, info-stres).\r\nCechy jakie charakteryzują szum informacyjny to:\r\n-niska jakość informacji\r\n-fragmentaryczność\r\n-chaotyczność\r\n-niespójność\r\n-nieaktualność\r\n-podawanie informacji częściowo lub całościowo nieprawdziwej\r\n{żródło: Wikipedia}'),
(4, 'Schronisko dla zwierząt', 'Placówka przeznaczona dla bezdomnych zwierząt domowych, w której otoczone są one podstawową opieką.\r\n\r\nSchroniska dla zwierząt tworzone są zwykle z funduszy gmin oraz datków pieniężnych i rzeczowych od osób prywatnych i instytucji charytatywnych. Ich działalność jest podstawową formą rozwiązywania problemu bezpańskich zwierząt.\r\n\r\nTworzone są również schroniska komercyjne działające na zasadach zbliżonych do zasad gospodarki rynkowej – zwykle współpracujące z gminami – oraz placówki typowo komercyjne działające na zasadach hoteli dla zwierząt. Te ostatnie nie są przeznaczone dla zwierząt bezdomnych, ale umożliwiają opiekunom pozostawienie (odpłatne) zwierząt na okres na przykład urlopu.\r\n{żródło: Wikipedia}'),
(5, 'Powiatowe Centrum Pomocy Rodzinie', 'są jednostkami samodzielnymi, organizacyjno–budżetowymi. Są one podporządkowane pod zarząd powiatu. Zadania wykonywane przez Powiatowe Centra Pomocy Rodzinie wynikają m.in. z ustawy z dnia 12.03.2004 roku o pomocy społecznej.\r\n{żródło: www.infor.pl}'),
(6, 'Praca socjalna', 'Według polskiej ustawy o pomocy społecznej: interdyscyplinarna działalność zawodowa mająca na celu pomoc osobom i rodzinom we wzmacnianiu lub odzyskiwaniu zdolności do funkcjonowania w społeczeństwie poprzez pełnienie odpowiednich ról społecznych oraz tworzenie warunków sprzyjających temu celów. {źródło: Wikipedia}'),
(7, 'Grupa wsparcia', 'Forma wsparcia psychospołecznego, funkcjonująca również w rzeczywistości wirtualnej, w której członkowie świadczą sobie różnego rodzaju pomoc, informacje, zazwyczaj nieprofesjonalnie. Niekoniecznie jest to pomoc materialna. Członkowie grupy zrzeszają się zazwyczaj ze względu na jakąś wspólną, obciążającą psychicznie lub społecznie cechę[1] (np. własna choroba psychiczna lub choroba występującą w najbliższej rodzinie, problem z uzależnieniem). Mogą jednak istnieć grupy wsparcia dotyczące rodziców i ich lepszego funkcjonowania.\r\n\r\nGrupy mogą mieć charakter otwarty, jak i zamknięty. Pomoc może przyjmować formę dostarczania pożytecznych informacji, relacjonowania własnych doświadczeń związanych z danym problemem, słuchania i akceptacji doświadczeń innych, empatycznego zrozumienia i nawiązania kontaktów społecznych z osobami o podobnych trudnościach. Grupa wsparcia może także funkcjonować celem informowania społeczeństwa lub celem obrony danej kwestii.\r\n{źródło: Wikipedia}'),
(8, 'Usługi opiekuńcze', 'Rodzaj pomocy świadczonej często przez gminę, instytucję pomocy społecznej lub inną instytucję działającą na rzecz osób wymagających takiej pomocy.\r\n\r\nUstawa o pomocy społecznej wskazuje, że pomoc w formie usług przysługuje osobom samotnym, które z powodu wieku, choroby, niepełnosprawności lub innej przyczyny wymagają pomocy innych osób, a są jej pozbawione. Usługi opiekuńcze mogą być przyznane również osobom, które wymagają pomocy innych osób, a rodzina nie może takiej pomocy zapewnić. Usługi świadczone są w mieszkaniu osoby, która potrzebuje pomocy lub w ośrodkach wsparcia takich jak środowiskowe domy samopomocy, kluby samopomocy, dzienne domy pomocy.\r\n\r\nUsługi opiekuńcze obejmują pomoc w zaspokajaniu codziennych potrzeb życiowych, opiekę higieniczną, zaleconą przez lekarza pielęgnację oraz, w miarę możliwości, zapewnienie kontaktów z otoczeniem.\r\n{źródło: Wikipedia}'),
(9, 'Asystent rodziny', 'Osoba przez pewien czas wspierająca rodzinę, aby w przyszłości samodzielnie potrafiła pokonywać trudności życiowe, zwłaszcza dotyczące opieki i wychowania dzieci. Termin asystent został wyprowadzony od słowa „asysta”, które jest określeniem na osobę towarzyszącą komuś, współobecną, pomagającą, będącą w pogotowiu. Asystent rodziny towarzyszy rodzicom we wprowadzeniu zmian w swoim myśleniu, zachowaniu oraz otoczeniu, koniecznych do tego, aby środowisko rodzinne sprzyjało bezpieczeństwu i prawidłowemu rozwojowi dzieci.\r\n{źródło Wikipedia}'),
(10, 'Nowy system wsparcia rodzin z \r\ndziećmi', 'Link do prezentacji źródłowej:\r\n\r\nhttp://skape.naszops.pl/pliki/plik/nowy-system-wsparcia-rodzin-z-dziecmi-1601293088.pdf'),
(11, 'Wolontariat Zapalonych Strażaków', 'fikcyjna organizacja z serii książek Seria Niefortunnych Zdarzeń.\r\n{źródło: Wikipedia}'),
(12, 'Ochotnicza straż pożarna w Polsce', 'Umundurowana, wyposażona w specjalistyczny sprzęt jednostka ratownicza, przeznaczona w szczególności do walki z pożarami, klęskami żywiołowymi i innymi miejscowymi zagrożeniami.\r\n{źródło: Wikipedia}'),
(13, 'Młodzieżowe Drużyny Pożarnicze przy OSP', 'Przy ochotniczych strażach pożarnych powoływane są również Młodzieżowe Drużyny Pożarnicze (MDP), które stanowią w pewnym sensie przyszłe kadrowe zaplecze każdej jednostki. Młodzieżowa drużyna pożarnicza jest integralną częścią składową danej jednostki OSP. Osoby działające w takiej drużynie poznają zasady funkcjonowania ochrony przeciwpożarowej w Polsce, zapoznają się ze sprzętem będącym na wyposażeniu danej OSP, uczą się zachowania w sytuacjach niecodziennych, od najmłodszych lat wyrabiają w sobie poczucie odpowiedzialności, uczą się opanowania, dyscypliny, a także podnoszą swoją sprawność fizyczną poprzez udział w zawodach sportowo-pożarniczych.\r\n{źródło: Wikipedia}'),
(14, 'OSP Radziechowy', 'Link do strony:\r\n\r\nhttps://www.facebook.com/ospradziechowy/');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `firmy`
--
ALTER TABLE `firmy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `slownik`
--
ALTER TABLE `slownik`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `firmy`
--
ALTER TABLE `firmy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `slownik`
--
ALTER TABLE `slownik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
