-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Okt 10. 09:38
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `users`
--
CREATE DATABASE IF NOT EXISTS `users` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `users`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `newusers`
--

CREATE TABLE `newusers` (
  `Id` char(36) NOT NULL,
  `Name` longtext NOT NULL,
  `Age` int(11) NOT NULL,
  `License` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `newusers`
--

INSERT INTO `newusers` (`Id`, `Name`, `Age`, `License`) VALUES
('020a6827-2cb2-41ef-9629-c22f0c9776ef', 'Gan Pabelik', 32, 1),
('0405b1d6-bbff-401b-b7c4-10f9dd3eb1cb', 'Farlay Massimo', 46, 1),
('0757f9ee-74a7-44c6-ba30-b400b55275b8', 'Jeremie Brookwood', 66, 1),
('0bb4787b-dc53-4b48-bad2-b2208c712ea4', 'Dane McCalum', 41, 1),
('0dc2f227-0f87-4620-adb2-b24558de3913', 'Christoper Scholtz', 39, 1),
('0f39a376-f7a2-4d50-9feb-6c9c922cb3f6', 'Shanon Piotrowski', 45, 0),
('13920b2e-8b46-4b56-bc75-404e57553306', 'Silvie Lownes', 32, 1),
('149548b6-d068-45bd-b93c-7a80a5ddcffa', 'Helenelizabeth Bruton', 35, 0),
('149ca5b0-ae58-4148-8c50-0b5eeeca2783', 'Carlie Oldcroft', 53, 0),
('15de98c5-85ae-420e-9b7c-eebd3c72e7a0', 'Anallese Avo', 68, 1),
('1601e88e-3160-48ed-97ea-0aaaa0a6155c', 'Georgeanna Zuanazzi', 40, 0),
('18cbc411-09ed-40c2-a918-d736cd7a3a0d', 'Leoline Stannard', 94, 0),
('1b88e769-c152-4034-a4b0-56163acad98e', 'Ursula Rous', 19, 0),
('1de7d39b-48a8-4e47-abda-3811949c151e', 'Emmalyn Schimek', 76, 0),
('1e6a7573-314b-43e4-86f1-75cccdf319ff', 'Eileen Foley', 59, 1),
('26634f16-edea-4625-851b-3a7e6d30209f', 'Gena Attenburrow', 69, 0),
('2b063fe0-a509-47d3-a588-1931f9c046c5', 'Midge Skoughman', 3, 1),
('2ef53d36-0957-488d-ab37-c920968df8bd', 'Robert Francom', 90, 1),
('30ad2c92-ebb4-45dd-ad6d-13bcd1d25600', 'Leopold Elmhurst', 91, 0),
('310e259c-1ba4-460a-b165-da052fd0bbbf', 'Odelia Verma', 22, 1),
('3615679b-3f68-494d-9570-eccbbdf9994e', 'Reginauld Pharro', 38, 1),
('3838b556-31ce-468d-ad2a-de4251801357', 'Noby Morrissey', 9, 0),
('3f7c37dd-9397-4c19-9943-a0ed39874b24', 'Terri Jahnig', 2, 0),
('3fc1a42b-0d93-4f28-ac40-c16033bf685f', 'Charleen Shinner', 43, 0),
('403bdd52-43d6-48d8-8f56-3ae6c13c88eb', 'Marijn Tungate', 50, 1),
('42634369-b596-4026-a3a3-95c690cc84d6', 'Marthena Headon', 42, 1),
('43eba28c-4ef5-4215-8e04-97b0dc2b4131', 'Michell Estcot', 29, 0),
('485bb567-b0c5-46ba-b3d3-5df09ed26563', 'Haze Dandy', 70, 1),
('48667c46-2833-4045-b1b7-bfaccc80fdb2', 'Aggy Cattini', 74, 1),
('4b38a3ad-ce52-4f5d-82e6-07e15ac43830', 'Mariann Stinchcombe', 29, 1),
('4b78a175-6b22-4a5d-8292-db5bb2ec4413', 'Lacy Costock', 3, 1),
('4e37d4f1-ce45-4a09-a256-3b55838fdedb', 'Camile Hyams', 10, 1),
('501b0a79-989b-4ac2-9486-aaa28a483699', 'Northrup Domenicone', 53, 0),
('53ad57a7-3f2b-46d5-896d-456e030276ff', 'Gianni Ebbin', 76, 1),
('548a1235-5d53-4811-ba2f-afa52711a723', 'Uriel Ruler', 21, 1),
('593b2cfd-ef2c-4107-86c5-623d2d5c5499', 'Priscilla Salters', 65, 0),
('5bd9b278-4470-4d22-a3ce-0f17bbadc814', 'Shurlocke Sterman', 78, 0),
('5d02d769-97a5-40f5-9c4b-09628c07f75a', 'Sonja Coffin', 46, 1),
('606cf009-3d57-4605-9256-9e0f0b19e893', 'Brien David', 88, 0),
('64e833c5-377b-4c17-8030-8aa3e9d2e5b6', 'Portia Patron', 25, 1),
('6752a8e8-c440-47da-b6ee-687f7aff29b6', 'Chere Lintot', 18, 1),
('67d9c234-4cbb-43c2-9eba-473e948b7d72', 'Marget Lucken', 98, 1),
('6954bae8-34eb-4e3b-8205-1ca5d31ed4ac', 'Teresa O\'Donoghue', 99, 0),
('6af7acbf-73fb-4aab-8ce5-30e3513e2818', 'Curr Niven', 52, 0),
('6c435842-9475-496c-9018-d3628ba77585', 'Carin Benninck', 17, 0),
('6dac483a-c0ee-44a0-9862-9649ddd0f3e8', 'Harlan Letertre', 67, 0),
('75f6b7db-87b2-4211-a656-8af734d2a38c', 'Chastity Bortolini', 44, 0),
('7911349c-f0b8-461f-9ebd-8e23269a7782', 'Gerti Wooffitt', 43, 0),
('7984e357-5c8f-405e-af35-62f72b92ee4f', 'Maynard Schiersch', 54, 0),
('7e261c31-77fe-4eca-87ee-9e31ca67a8aa', 'Marve Prall', 33, 0),
('7e27782a-fe41-4bc5-bdea-12a5c3f2ae98', 'Ashlan Thaller', 69, 0),
('80315df1-d58f-4b87-9b09-29bb22b72f4e', 'Hale Rodgers', 21, 1),
('8157727a-b3be-4f69-86f4-327818e6d798', 'Granthem Jurisch', 63, 1),
('8b35a5f8-01dc-4e59-9cb9-7e9c1a86daa2', 'Feodor Cordes', 9, 1),
('8bf067eb-00fe-4ce4-94da-564534d2174a', 'Ferguson Krabbe', 19, 1),
('8cb97212-2bd3-498e-ae44-28f20be4b065', 'Marlon Antuk', 7, 0),
('8cd9c332-85a2-41f4-9e62-eab217b27673', 'Cecily Twohig', 49, 1),
('9252d8f1-7811-407d-9c2a-45baae7e0f3c', 'Nalani Saffran', 55, 0),
('940f09e8-d59f-48e8-bf38-e66f54da36d0', 'Wendel Yurocjkin', 91, 1),
('958bd0b5-8407-4053-bbda-137b7b250511', 'Car Gittings', 90, 1),
('9e1ba839-5e62-4760-be53-3fb10be6e7ef', 'Elene Gillions', 51, 1),
('9f44750f-0740-4529-ba2b-4f39ffeb510c', 'Philomena Quest', 8, 0),
('a081794b-81ff-4b10-903b-96ecf72010c8', 'Giorgio Ovendon', 67, 0),
('a32c1531-6e41-4e1f-b2eb-4b42baf2f583', 'Jen MacGuigan', 46, 1),
('a514beb9-2f8f-4f1b-9b12-c23bdd9c4bd3', 'Renell Mibourne', 58, 0),
('a5746393-12a3-42e8-aace-189747ae384a', 'Camille Thorneloe', 79, 0),
('ab4bf812-5245-4942-a01f-17212bfeeceb', 'Bernice Brain', 10, 1),
('ac42b0eb-1855-4c6b-9358-c9ca2f582186', 'Christian Kettlewell', 60, 0),
('b2670073-cf8a-4258-b76b-0a3c60f274a6', 'Frants Findley', 10, 0),
('b6e8c237-b4e5-4083-b718-09548cf56f6e', 'Ike Carville', 22, 1),
('b8102c16-24ae-43da-96d9-64b704849382', 'Tabbi Croke', 1, 1),
('ba39c3c5-17aa-4318-9207-44e301eb850b', 'Ameline Dulling', 79, 1),
('bb770884-096f-4bb4-b02c-8c5acb2ac473', 'Tull Salamon', 10, 0),
('c08ed97b-db7c-4918-af5d-11d0511394e7', 'Jeffry Gildersleeve', 71, 1),
('c0f5d86e-03e1-4a06-87e4-9b0e321bf33d', 'Gerry Kinkead', 50, 1),
('c3acc70a-4377-4ac3-a393-cb631a01434a', 'Maurise Hansel', 37, 0),
('c3dd758a-55e2-4940-8306-2b4f9f9295ea', 'Lona Rashleigh', 98, 0),
('c43eda65-622d-4a3a-9ad2-95abcee3131f', 'Harrison Flemming', 22, 0),
('c5fbc90b-efef-4a5c-aa69-e4ab5ca759e9', 'Benjy Clynman', 77, 0),
('cad2c071-b4dd-4aa4-b073-91ca7efee62e', 'Erek Wilcinskis', 40, 0),
('cc7df798-cdbf-460c-900b-7a8a484ff3b7', 'Nicol Picardo', 80, 1),
('d016463a-ae9b-4069-8985-1988f333ae1a', 'Sammie Alejandre', 50, 1),
('d0e22ef3-2a5c-4a4b-b163-018b8d57e507', 'Odie Maps', 34, 0),
('d612a4d9-6e5d-4d19-b744-69609f9773ac', 'Stanwood Gallie', 45, 0),
('d621d293-4510-4cc4-94e0-6bf158e69aaf', 'Darice Vasiltsov', 33, 0),
('d7b1ee20-cd82-4125-b889-ca60fa580c8c', 'Carmella Dillow', 63, 1),
('d81572b4-fbcf-4394-bec6-ecfaf3417fb4', 'Phillie Frusher', 53, 0),
('d951a4e4-9b0e-4927-9389-2a7dda959008', 'Billie Morforth', 44, 0),
('dacf9fd7-351c-4667-9d2c-6478a7336f03', 'Ambrosius Partridge', 55, 1),
('dea67583-c45f-4685-8b5e-0906965899b7', 'Stillmann Verrechia', 85, 0),
('e2ad3872-3466-4e1e-8106-e38e450c2a0a', 'Almire Blas', 14, 1),
('e76298ff-1447-459f-998a-7fd9dca6dae7', 'Bing Heckner', 67, 0),
('e7c0c719-6964-4149-9950-a305bc62da6e', 'Bradly Amos', 5, 1),
('ee3e2321-7f86-43d4-a112-df4e30a2aea9', 'Elliot Ausiello', 98, 0),
('f2501ac0-8c7a-48cd-9234-61964494eb75', 'Samara Lapham', 91, 0),
('f5fa3739-9f0f-40d1-8bc4-e50f64a29832', 'Min Rosell', 20, 1),
('f6adcb61-03d5-4f00-aebc-582c9c7114d1', 'Georgy Carabine', 8, 0),
('f75007c6-be65-486d-91a2-7e6adbc3812c', 'Haily Loughlan', 28, 0),
('fb255e85-0561-4526-b300-fa13b7d3b884', 'Loria Bastock', 4, 0),
('fc5f454b-9f55-4bc1-8105-46dfca305955', 'Maiga Shovelton', 79, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20241010072127_CreateUserDatabase', '8.0.10');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `newusers`
--
ALTER TABLE `newusers`
  ADD PRIMARY KEY (`Id`);

--
-- A tábla indexei `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
