-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4001
-- Generation Time: Oct 18, 2018 at 07:31 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- --------------------------------------------------------

--
-- Table structure for table `mega`
--

CREATE TABLE `mega` (
  `name` varchar(50) NOT NULL,
  `num` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mega`
--

INSERT INTO `mega` (`name`, `num`, `type`) VALUES
('Mega Abomasnow', 460, 'Grass Ice'),
('Mega Absol', 359, 'Dark'),
('Mega Audino', 531, 'Normal Fairy'),
('Mega Gallade', 475, 'Psychic Fighting'),
('Mega Garchomp', 445, 'Dragon Ground'),
('Mega Glalie', 326, 'Ice'),
('Mega Latias', 380, 'Dragon Psychic'),
('Mega Latios', 381, 'Dragon Psychic'),
('Mega Lopunny', 428, 'Normal Fighting'),
('Mega Lucario', 448, 'Fighting Steel'),
('Mega Metagross', 376, 'Steel Psychic'),
('Mega Rayquaza', 384, 'Dragon Flying'),
('Mega Salamence', 375, 'Dragon Flying');

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
  `natid` int(11) DEFAULT NULL,
  `hoennid` varchar(10) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `hp` int(11) DEFAULT NULL,
  `atk` int(11) DEFAULT NULL,
  `def` int(11) DEFAULT NULL,
  `satk` int(11) DEFAULT NULL,
  `sdef` int(11) DEFAULT NULL,
  `spd` int(11) DEFAULT NULL,
  `bst` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`natid`, `hoennid`, `name`, `type`, `hp`, `atk`, `def`, `satk`, `sdef`, `spd`, `bst`) VALUES
(460, '-', 'Abomasnow', 'Grass Ice', 90, 92, 75, 92, 85, 60, 494),
(617, '-', 'Accelgor', 'Bug', 80, 70, 40, 100, 60, 145, 495),
(594, '-', 'Alomomola', 'Water', 165, 75, 80, 40, 45, 65, 470),
(424, '-', 'Ambipom', 'Normal', 75, 100, 66, 60, 66, 115, 482),
(591, '-', 'Amoonguss', 'Grass Poison', 114, 85, 70, 85, 80, 30, 464),
(493, '-', 'Arceus', 'Normal', 120, 120, 120, 120, 120, 120, 720),
(566, '-', 'Archen', 'Rock Flying', 55, 112, 45, 74, 45, 70, 401),
(567, '-', 'Archeops', 'Rock Flying', 75, 140, 65, 112, 65, 110, 567),
(531, '-', 'Audino', 'Normal', 103, 60, 86, 60, 86, 50, 445),
(610, '-', 'Axew', 'Dragon', 46, 87, 60, 30, 40, 57, 320),
(482, '-', 'Azelf', 'Psychic', 75, 125, 70, 125, 70, 115, 580),
(550, '-', 'Basculin\n*(Blue-Striped Form)*', 'Water', 70, 92, 65, 80, 55, 98, 460),
(550, '-', 'Basculin', 'Water', 70, 92, 65, 80, 55, 98, 460),
(411, '-', 'Bastiodon', 'Rock Steel', 60, 52, 168, 47, 138, 30, 495),
(614, '-', 'Beartic', 'Ice', 95, 110, 80, 70, 80, 50, 485),
(606, '-', 'Beheeyem', 'Psychic', 75, 75, 75, 125, 95, 40, 485),
(400, '-', 'Bibarel', 'Normal Water', 79, 85, 60, 55, 60, 71, 410),
(399, '-', 'Bidoof', 'Normal', 59, 45, 40, 35, 40, 31, 250),
(625, '-', 'Bisharp', 'Dark Steel', 65, 125, 100, 60, 70, 70, 490),
(522, '-', 'Blitzle', 'Electric', 45, 60, 32, 50, 32, 76, 295),
(525, '-', 'Boldore', 'Rock', 70, 105, 105, 50, 40, 20, 390),
(438, '-', 'Bonsly', 'Rock', 50, 80, 95, 10, 45, 10, 290),
(626, '-', 'Bouffalant', 'Normal', 95, 110, 95, 40, 95, 55, 490),
(437, '-', 'Bronzong', 'Steel Psychic', 67, 89, 116, 79, 116, 33, 500),
(436, '-', 'Bronzor', 'Steel Psychic', 57, 24, 86, 24, 86, 23, 300),
(406, '97', 'Budew', 'Grass Poison', 40, 30, 35, 50, 70, 55, 280),
(418, '-', 'Buizel', 'Water', 55, 65, 35, 60, 30, 85, 330),
(427, '-', 'Buneary', 'Normal', 55, 66, 44, 44, 56, 85, 350),
(412, '-', 'Burmy', 'Bug', 40, 29, 45, 29, 45, 36, 224),
(455, '-', 'Carnivine', 'Grass', 74, 100, 72, 90, 72, 46, 454),
(565, '-', 'Carracosta', 'Water Rock', 74, 108, 133, 83, 65, 32, 495),
(609, '-', 'Chandelure', 'Ghost Fire', 60, 55, 90, 145, 90, 80, 520),
(441, '-', 'Chatot', 'Normal Flying', 76, 65, 45, 92, 42, 91, 411),
(421, '-', 'Cherrim\n*(Sunshine Form)*', 'Grass', 70, 60, 70, 87, 78, 85, 450),
(421, '-', 'Cherrim', 'Grass', 70, 60, 70, 87, 78, 85, 450),
(420, '-', 'Cherubi', 'Grass', 45, 35, 45, 62, 53, 35, 275),
(390, '-', 'Chimchar', 'Fire', 44, 58, 44, 58, 44, 61, 309),
(433, '157', 'Chingling', 'Psychic', 45, 30, 50, 65, 50, 45, 285),
(573, '-', 'Cinccino', 'Normal', 75, 95, 60, 65, 60, 115, 470),
(563, '-', 'Cofagrigus', 'Ghost', 58, 50, 145, 95, 105, 30, 483),
(415, '-', 'Combee', 'Bug Flying', 30, 30, 42, 30, 42, 70, 244),
(534, '-', 'Conkeldurr', 'Fighting', 105, 140, 95, 55, 65, 45, 505),
(546, '-', 'Cottonee', 'Grass Fairy', 40, 27, 60, 37, 50, 66, 280),
(408, '-', 'Cranidos', 'Rock', 67, 125, 40, 30, 30, 58, 350),
(488, '-', 'Cresselia', 'Psychic', 120, 70, 120, 75, 130, 85, 600),
(453, '-', 'Croagunk', 'Poison Fighting', 48, 61, 40, 61, 40, 50, 300),
(558, '-', 'Crustle', 'Bug Rock', 70, 95, 125, 65, 75, 45, 475),
(615, '-', 'Cryogonal', 'Ice', 70, 50, 30, 95, 135, 105, 485),
(613, '-', 'Cubchoo', 'Ice', 55, 70, 40, 60, 40, 40, 305),
(491, '-', 'Darkrai', 'Dark', 70, 90, 90, 135, 90, 125, 600),
(555, '-', 'Darmanitan\n*(Zen Mode)*', 'Fire Psychic', 105, 30, 105, 140, 105, 55, 540),
(555, '-', 'Darmanitan', 'Fire', 105, 140, 55, 30, 55, 95, 480),
(554, '-', 'Darumaka', 'Fire', 70, 90, 45, 15, 45, 50, 315),
(585, '-', 'Deerling', 'Normal Grass', 60, 60, 50, 40, 50, 75, 335),
(502, '-', 'Dewott', 'Water', 75, 75, 60, 83, 60, 60, 413),
(483, '-', 'Dialga', 'Steel Dragon', 100, 120, 120, 150, 100, 90, 680),
(452, '-', 'Drapion', 'Poison Dark', 70, 90, 110, 60, 75, 95, 500),
(426, '-', 'Drifblim', 'Ghost Flying', 150, 80, 44, 90, 54, 80, 498),
(425, '-', 'Drifloon', 'Ghost Flying', 90, 50, 34, 60, 44, 70, 348),
(529, '-', 'Drilbur', 'Ground', 60, 85, 40, 30, 45, 68, 328),
(621, '-', 'Druddigon', 'Dragon', 77, 120, 90, 60, 90, 48, 485),
(580, '-', 'Ducklett', 'Water Flying', 62, 44, 50, 44, 50, 55, 305),
(578, '-', 'Duosion', 'Psychic', 65, 40, 50, 125, 60, 30, 370),
(477, '155', 'Dusknoir', 'Ghost', 45, 100, 135, 65, 135, 45, 525),
(557, '-', 'Dwebble', 'Bug Rock', 50, 65, 85, 35, 35, 55, 325),
(603, '-', 'Eelektrik', 'Electric', 65, 85, 70, 75, 70, 40, 405),
(604, '-', 'Eelektross', 'Electric', 85, 115, 80, 105, 80, 50, 515),
(466, '-', 'Electivire', 'Electric', 75, 123, 67, 95, 85, 95, 540),
(605, '-', 'Elgyem', 'Psychic', 55, 55, 55, 85, 55, 30, 335),
(500, '-', 'Emboar', 'Fire Fighting', 110, 123, 65, 100, 65, 65, 528),
(587, '-', 'Emolga', 'Electric Flying', 55, 75, 60, 75, 60, 103, 428),
(395, '-', 'Empoleon', 'Water Steel', 84, 86, 88, 111, 101, 60, 530),
(589, '-', 'Escavalier', 'Bug Steel', 70, 135, 105, 60, 105, 20, 495),
(530, '-', 'Excadrill', 'Ground Steel', 110, 135, 60, 50, 65, 88, 508),
(597, '-', 'Ferroseed', 'Grass Steel', 44, 50, 91, 24, 86, 10, 305),
(598, '-', 'Ferrothorn', 'Grass Steel', 74, 94, 131, 54, 116, 20, 489),
(456, '-', 'Finneon', 'Water', 49, 49, 56, 49, 61, 66, 330),
(419, '-', 'Floatzel', 'Water', 85, 105, 55, 85, 50, 115, 495),
(590, '-', 'Foongus', 'Grass Poison', 69, 55, 45, 55, 55, 15, 294),
(611, '-', 'Fraxure', 'Dragon', 66, 117, 70, 40, 50, 67, 410),
(592, '-', 'Frillish', 'Water Ghost', 55, 40, 50, 65, 85, 40, 335),
(478, '181', 'Froslass', 'Ice Ghost', 70, 80, 70, 80, 70, 110, 480),
(444, '-', 'Gabite', 'Dragon Ground', 68, 90, 65, 50, 55, 82, 410),
(475, '32', 'Gallade', 'Psychic Fighting', 68, 125, 65, 65, 115, 80, 518),
(596, '-', 'Galvantula', 'Bug Electric', 70, 77, 60, 97, 60, 108, 472),
(569, '-', 'Garbodor', 'Poison', 80, 95, 82, 60, 82, 75, 474),
(445, '-', 'Garchomp', 'Dragon Ground', 108, 130, 95, 80, 85, 102, 600),
(423, '-', 'Gastrodon', 'Water Ground', 111, 83, 68, 92, 82, 39, 475),
(443, '-', 'Gible', 'Dragon Ground', 58, 70, 45, 40, 45, 42, 300),
(526, '-', 'Gigalith', 'Rock', 85, 135, 130, 60, 80, 25, 515),
(487, '-', 'Giratina\n*(Origin Forme)*', 'Ghost Dragon', 150, 120, 100, 120, 100, 90, 680),
(487, '-', 'Giratina', 'Ghost Dragon', 150, 100, 120, 100, 120, 90, 680),
(471, '-', 'Glaceon', 'Ice', 65, 60, 110, 130, 95, 65, 525),
(431, '-', 'Glameow', 'Normal', 49, 55, 42, 42, 37, 85, 310),
(472, '-', 'Gliscor', 'Ground Flying', 75, 95, 125, 45, 75, 95, 510),
(622, '-', 'Golett', 'Ground Ghost', 59, 74, 50, 35, 50, 35, 303),
(623, '-', 'Golurk', 'Ground Ghost', 89, 124, 80, 55, 80, 55, 483),
(574, '-', 'Gothita', 'Psychic', 45, 30, 50, 55, 65, 45, 290),
(576, '-', 'Gothitelle', 'Psychic', 70, 55, 95, 95, 110, 65, 490),
(575, '-', 'Gothorita', 'Psychic', 60, 45, 70, 75, 85, 55, 390),
(388, '-', 'Grotle', 'Grass', 75, 89, 85, 55, 65, 36, 405),
(533, '-', 'Gurdurr', 'Fighting', 85, 105, 85, 40, 50, 40, 405),
(440, '-', 'Happiny', 'Normal', 100, 5, 5, 15, 65, 30, 220),
(612, '-', 'Haxorus', 'Dragon', 76, 147, 90, 60, 70, 97, 540),
(485, '-', 'Heatran', 'Fire Steel', 91, 90, 106, 130, 106, 77, 600),
(507, '-', 'Herdier', 'Normal', 65, 80, 65, 35, 65, 60, 370),
(449, '-', 'Hippopotas', 'Ground', 68, 72, 78, 38, 42, 32, 330),
(450, '-', 'Hippowdon', 'Ground', 108, 112, 118, 68, 72, 47, 525),
(430, '-', 'Honchkrow', 'Dark Flying', 100, 125, 52, 105, 52, 71, 505),
(392, '-', 'Infernape', 'Fire Fighting', 76, 104, 71, 104, 71, 108, 534),
(593, '-', 'Jellicent', 'Water Ghost', 100, 60, 70, 85, 105, 60, 480),
(595, '-', 'Joltik', 'Bug Electric', 50, 47, 50, 57, 50, 65, 319),
(588, '-', 'Karrablast', 'Bug', 50, 75, 45, 40, 45, 60, 315),
(600, '-', 'Klang', 'Steel', 60, 80, 95, 70, 85, 50, 440),
(599, '-', 'Klink', 'Steel', 40, 55, 70, 45, 60, 30, 300),
(601, '-', 'Klinklang', 'Steel', 60, 100, 115, 70, 85, 90, 520),
(401, '-', 'Kricketot', 'Bug', 37, 25, 41, 25, 41, 25, 194),
(402, '-', 'Kricketune', 'Bug', 77, 85, 51, 55, 51, 65, 384),
(552, '-', 'Krokorok', 'Ground Dark', 60, 82, 45, 45, 45, 74, 351),
(553, '-', 'Krookodile', 'Ground Dark', 95, 117, 80, 65, 70, 92, 519),
(608, '-', 'Lampent', 'Ghost Fire', 60, 40, 60, 95, 60, 55, 370),
(470, '-', 'Leafeon', 'Grass', 65, 110, 130, 60, 65, 95, 525),
(542, '-', 'Leavanny', 'Bug Grass', 75, 103, 80, 70, 80, 92, 500),
(463, '-', 'Lickilicky', 'Normal', 110, 85, 95, 80, 95, 50, 515),
(510, '-', 'Liepard', 'Dark', 64, 88, 50, 88, 50, 106, 446),
(549, '-', 'Lilligant', 'Grass', 70, 60, 75, 110, 75, 90, 480),
(506, '-', 'Lillipup', 'Normal', 45, 60, 45, 25, 45, 55, 275),
(607, '-', 'Litwick', 'Ghost Fire', 50, 30, 55, 65, 55, 20, 275),
(428, '-', 'Lopunny', 'Normal', 65, 76, 84, 54, 96, 105, 480),
(448, '-', 'Lucario', 'Fighting Steel', 70, 110, 70, 115, 70, 90, 525),
(457, '-', 'Lumineon', 'Water', 69, 69, 76, 69, 86, 91, 460),
(404, '-', 'Luxio', 'Electric', 60, 85, 49, 60, 49, 60, 363),
(405, '-', 'Luxray', 'Electric', 80, 120, 79, 95, 79, 70, 523),
(467, '-', 'Magmortar', 'Fire', 75, 95, 67, 125, 95, 83, 540),
(462, '86', 'Magnezone', 'Electric Steel', 70, 70, 115, 130, 90, 60, 535),
(473, '-', 'Mamoswine', 'Ice Ground', 110, 130, 80, 70, 60, 80, 530),
(490, '-', 'Manaphy', 'Water', 100, 100, 100, 100, 100, 100, 600),
(458, '-', 'Mantyke', 'Water Flying', 45, 20, 50, 60, 120, 50, 345),
(556, '-', 'Maractus', 'Grass', 75, 86, 67, 106, 67, 60, 461),
(460, '-', 'Mega Abomasnow', 'Grass Ice', 90, 132, 105, 132, 105, 30, 594),
(531, '-', 'Mega Audino', 'Normal Fairy', 103, 60, 126, 80, 126, 50, 545),
(475, '32', 'Mega Gallade', 'Psychic Fighting', 68, 165, 95, 65, 115, 110, 618),
(445, '-', 'Mega Garchomp', 'Dragon Ground', 108, 170, 115, 120, 95, 92, 700),
(428, '-', 'Mega Lopunny', 'Normal Fighting', 65, 136, 94, 54, 96, 135, 580),
(448, '-', 'Mega Lucario', 'Fighting Steel', 70, 145, 88, 140, 70, 112, 625),
(481, '-', 'Mesprit', 'Psychic', 80, 105, 105, 105, 105, 80, 580),
(619, '-', 'Mienfoo', 'Fighting', 45, 85, 50, 55, 50, 65, 350),
(620, '-', 'Mienshao', 'Fighting', 65, 125, 60, 95, 60, 105, 510),
(439, '-', 'Mime Jr.', 'Psychic Fairy', 20, 25, 45, 70, 90, 60, 310),
(572, '-', 'Minccino', 'Normal', 55, 50, 40, 40, 40, 75, 300),
(429, '-', 'Mismagius', 'Ghost', 60, 60, 60, 105, 105, 105, 495),
(391, '-', 'Monferno', 'Fire Fighting', 64, 78, 52, 78, 52, 81, 405),
(414, '-', 'Mothim', 'Bug Flying', 70, 94, 50, 94, 50, 66, 424),
(446, '-', 'Munchlax', 'Normal', 135, 85, 40, 40, 85, 5, 390),
(517, '-', 'Munna', 'Psychic', 76, 25, 45, 67, 55, 24, 292),
(518, '-', 'Musharna', 'Psychic', 116, 55, 85, 107, 95, 29, 487),
(501, '-', 'Oshawott', 'Water', 55, 55, 45, 63, 45, 45, 308),
(417, '-', 'Pachirisu', 'Electric', 60, 45, 70, 45, 90, 95, 405),
(484, '-', 'Palkia', 'Water Dragon', 90, 120, 100, 150, 120, 100, 680),
(536, '-', 'Palpitoad', 'Water Ground', 75, 65, 55, 65, 55, 69, 384),
(515, '-', 'Panpour', 'Water', 50, 53, 48, 53, 48, 64, 316),
(511, '-', 'Pansage', 'Grass', 50, 53, 48, 53, 48, 64, 316),
(513, '-', 'Pansear', 'Fire', 50, 53, 48, 53, 48, 64, 316),
(504, '-', 'Patrat', 'Normal', 45, 55, 39, 35, 39, 42, 255),
(624, '-', 'Pawniard', 'Dark Steel', 45, 85, 70, 40, 40, 60, 340),
(548, '-', 'Petilil', 'Grass', 45, 35, 50, 70, 50, 30, 280),
(489, '-', 'Phione', 'Water', 80, 80, 80, 80, 80, 80, 480),
(519, '-', 'Pidove', 'Normal Flying', 50, 55, 50, 36, 30, 43, 264),
(499, '-', 'Pignite', 'Fire Fighting', 90, 93, 55, 70, 55, 55, 418),
(393, '-', 'Piplup', 'Water', 53, 51, 53, 61, 56, 40, 314),
(474, '-', 'Porygon-Z', 'Normal', 85, 80, 70, 135, 75, 90, 535),
(394, '-', 'Prinplup', 'Water', 64, 66, 68, 81, 76, 50, 405),
(476, '62', 'Probopass', 'Rock Steel', 60, 55, 145, 75, 150, 40, 525),
(509, '-', 'Purrloin', 'Dark', 41, 50, 37, 50, 37, 66, 281),
(432, '-', 'Purugly', 'Normal', 71, 82, 64, 64, 59, 112, 452),
(409, '-', 'Rampardos', 'Rock', 97, 165, 60, 65, 50, 58, 495),
(486, '-', 'Regigigas', 'Normal', 110, 160, 110, 80, 110, 100, 670),
(579, '-', 'Reuniclus', 'Psychic', 110, 65, 75, 125, 85, 30, 490),
(464, '178', 'Rhyperior', 'Ground Rock', 115, 140, 130, 55, 55, 40, 535),
(447, '-', 'Riolu', 'Fighting', 40, 70, 40, 35, 40, 60, 285),
(524, '-', 'Roggenrola', 'Rock', 55, 75, 85, 25, 25, 15, 280),
(407, '99', 'Roserade', 'Grass Poison', 60, 70, 65, 125, 105, 90, 515),
(479, '-', 'Rotom\n*(Fan Rotom)*', 'Electric Flying', 50, 65, 107, 105, 107, 86, 520),
(479, '-', 'Rotom\n*(Frost Rotom)*', 'Electric Ice', 50, 65, 107, 105, 107, 86, 520),
(479, '-', 'Rotom\n*(Heat Rotom)*', 'Electric Fire', 50, 65, 107, 105, 107, 86, 520),
(479, '-', 'Rotom\n*(Mow Rotom)*', 'Electric Grass', 50, 65, 107, 105, 107, 86, 520),
(479, '-', 'Rotom\n*(Wash Rotom)*', 'Electric Water', 50, 65, 107, 105, 107, 86, 520),
(479, '-', 'Rotom', 'Electric Ghost', 50, 50, 77, 95, 77, 91, 440),
(627, '-', 'Rufflet', 'Normal Flying', 70, 83, 50, 37, 50, 60, 350),
(503, '-', 'Samurott', 'Water', 95, 100, 85, 108, 70, 70, 528),
(551, '-', 'Sandile', 'Ground Dark', 50, 72, 35, 35, 35, 65, 292),
(539, '-', 'Sawk', 'Fighting', 75, 125, 75, 30, 75, 85, 465),
(586, '-', 'Sawsbuck', 'Normal Grass', 80, 100, 70, 60, 70, 95, 475),
(545, '-', 'Scolipede', 'Bug Poison', 60, 100, 89, 55, 69, 112, 485),
(560, '-', 'Scrafty', 'Dark Fighting', 65, 90, 115, 45, 115, 58, 488),
(559, '-', 'Scraggy', 'Dark Fighting', 50, 75, 70, 35, 70, 48, 348),
(537, '-', 'Seismitoad', 'Water Ground', 105, 95, 75, 85, 75, 74, 509),
(497, '-', 'Serperior', 'Grass', 75, 75, 95, 75, 95, 113, 528),
(496, '-', 'Servine', 'Grass', 60, 60, 75, 60, 75, 83, 413),
(540, '-', 'Sewaddle', 'Bug Grass', 45, 53, 70, 40, 60, 42, 310),
(492, '-', 'Shaymin\n*(Sky Forme)*', 'Grass Flying', 100, 103, 75, 120, 75, 127, 600),
(492, '-', 'Shaymin', 'Grass', 100, 100, 100, 100, 100, 100, 600),
(422, '-', 'Shellos', 'Water', 76, 48, 48, 57, 62, 34, 325),
(616, '-', 'Shelmet', 'Bug', 50, 40, 85, 40, 65, 25, 305),
(410, '-', 'Shieldon', 'Rock Steel', 30, 42, 118, 42, 88, 30, 350),
(403, '-', 'Shinx', 'Electric', 45, 65, 34, 40, 34, 45, 263),
(561, '-', 'Sigilyph', 'Psychic Flying', 72, 58, 80, 103, 80, 97, 490),
(516, '-', 'Simipour', 'Water', 75, 98, 63, 98, 63, 101, 498),
(512, '-', 'Simisage', 'Grass', 75, 98, 63, 98, 63, 101, 498),
(514, '-', 'Simisear', 'Fire', 75, 98, 63, 98, 63, 101, 498),
(451, '-', 'Skorupi', 'Poison Bug', 40, 50, 90, 30, 55, 65, 330),
(435, '-', 'Skuntank', 'Poison Dark', 103, 93, 67, 71, 61, 84, 479),
(495, '-', 'Snivy', 'Grass', 45, 45, 55, 45, 55, 63, 308),
(459, '-', 'Snover', 'Grass Ice', 60, 62, 50, 62, 60, 40, 334),
(577, '-', 'Solosis', 'Psychic', 45, 30, 40, 105, 50, 20, 290),
(442, '-', 'Spiritomb', 'Ghost Dark', 50, 92, 108, 92, 108, 35, 485),
(398, '-', 'Staraptor', 'Normal Flying', 85, 120, 70, 50, 60, 100, 485),
(397, '-', 'Staravia', 'Normal Flying', 55, 75, 50, 40, 40, 80, 340),
(396, '-', 'Starly', 'Normal Flying', 40, 55, 30, 30, 30, 60, 245),
(508, '-', 'Stoutland', 'Normal', 85, 110, 90, 45, 90, 80, 500),
(618, '-', 'Stunfisk', 'Ground Electric', 109, 66, 84, 81, 99, 32, 471),
(434, '-', 'Stunky', 'Poison Dark', 63, 63, 47, 41, 41, 74, 329),
(541, '-', 'Swadloon', 'Bug Grass', 55, 63, 90, 50, 80, 42, 380),
(581, '-', 'Swanna', 'Water Flying', 75, 87, 63, 87, 63, 98, 473),
(528, '-', 'Swoobat', 'Psychic Flying', 67, 57, 55, 77, 55, 114, 425),
(465, '-', 'Tangrowth', 'Grass', 100, 100, 125, 110, 50, 50, 535),
(498, '-', 'Tepig', 'Fire', 65, 63, 45, 45, 45, 45, 308),
(538, '-', 'Throh', 'Fighting', 120, 100, 85, 30, 85, 45, 465),
(532, '-', 'Timburr', 'Fighting', 75, 80, 55, 25, 35, 35, 305),
(564, '-', 'Tirtouga', 'Water Rock', 54, 78, 103, 53, 45, 22, 355),
(468, '-', 'Togekiss', 'Fairy Flying', 85, 50, 95, 120, 115, 80, 545),
(389, '-', 'Torterra', 'Grass Ground', 95, 109, 105, 75, 85, 56, 525),
(454, '-', 'Toxicroak', 'Poison Fighting', 83, 106, 65, 86, 65, 85, 490),
(520, '-', 'Tranquill', 'Normal Flying', 62, 77, 62, 50, 42, 65, 358),
(568, '-', 'Trubbish', 'Poison', 50, 50, 62, 40, 62, 65, 329),
(387, '-', 'Turtwig', 'Grass', 55, 68, 64, 45, 55, 31, 318),
(535, '-', 'Tympole', 'Water', 50, 50, 40, 50, 40, 64, 294),
(602, '-', 'Tynamo', 'Electric', 35, 55, 40, 45, 40, 60, 275),
(521, '-', 'Unfezant', 'Normal Flying', 80, 115, 80, 65, 55, 93, 488),
(480, '-', 'Uxie', 'Psychic', 75, 75, 130, 75, 130, 95, 580),
(583, '-', 'Vanillish', 'Ice', 51, 65, 65, 80, 75, 59, 395),
(582, '-', 'Vanillite', 'Ice', 36, 50, 50, 65, 60, 44, 305),
(584, '-', 'Vanilluxe', 'Ice', 71, 95, 85, 110, 95, 79, 535),
(543, '-', 'Venipede', 'Bug Poison', 30, 45, 59, 30, 39, 57, 260),
(416, '-', 'Vespiquen', 'Bug Flying', 70, 80, 102, 80, 102, 40, 474),
(494, '-', 'Victini', 'Psychic Fire', 100, 100, 100, 100, 100, 100, 600),
(505, '-', 'Watchog', 'Normal', 60, 85, 69, 60, 69, 77, 420),
(461, '-', 'Weavile', 'Dark Ice', 70, 120, 65, 45, 85, 125, 510),
(547, '-', 'Whimsicott', 'Grass Fairy', 60, 67, 85, 77, 75, 116, 480),
(544, '-', 'Whirlipede', 'Bug Poison', 40, 55, 99, 40, 79, 47, 360),
(527, '-', 'Woobat', 'Psychic Flying', 55, 45, 43, 55, 43, 72, 313),
(413, '-', 'Wormadam\n*(Sandy Cloak)*', 'Bug Ground', 60, 79, 105, 59, 85, 36, 424),
(413, '-', 'Wormadam\n*(Trash Cloak)*', 'Bug Steel', 60, 69, 95, 69, 95, 36, 424),
(413, '-', 'Wormadam', 'Bug Grass', 60, 59, 85, 79, 105, 36, 424),
(562, '-', 'Yamask', 'Ghost', 38, 30, 85, 55, 65, 30, 303),
(469, '-', 'Yanmega', 'Bug Flying', 86, 76, 86, 116, 56, 95, 515),
(523, '-', 'Zebstrika', 'Electric', 75, 100, 63, 80, 63, 116, 497),
(571, '-', 'Zoroark', 'Dark', 60, 105, 60, 120, 60, 105, 510),
(570, '-', 'Zorua', 'Dark', 40, 65, 40, 80, 40, 65, 330),
(625, '-', ' Bisharp', 'Dark Steel', 65, 125, 100, 60, 70, 70, 490),
(626, '-', ' Bouffalant', 'Normal', 95, 110, 95, 40, 95, 55, 490),
(623, '-', ' Golurk', 'Ground Ghost', 89, 124, 80, 55, 80, 55, 483),
(624, '-', ' Pawniard', 'Dark Steel', 45, 85, 70, 40, 40, 60, 340),
(627, '-', ' Rufflet', 'Normal Flying', 70, 83, 50, 37, 50, 60, 350);

-- --------------------------------------------------------

--
-- Table structure for table `resistant`
--

CREATE TABLE `resistant` (
  `Type` varchar(50) DEFAULT NULL,
  `Resistant To` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resistant`
--

INSERT INTO `resistant` (`Type`, `Resistant To`) VALUES
('Normal', 'Ghost'),
('Fighting', 'Rock'),
('Fighting', 'Bug'),
('Fighting', 'Dark'),
('Flying', 'Fighting'),
('Flying', 'Ground'),
('Flying', 'Bug'),
('Flying', 'Grass'),
('Poison', 'Fighting'),
('Poison', 'Poison'),
('Poison', 'Grass'),
('Poison', 'Fairy'),
('Ground', 'Poison'),
('Ground', 'Rock'),
('Ground', 'Electric'),
('Rock', 'Normal'),
('Rock', 'Flying'),
('Rock', 'Poison'),
('Rock', 'Fire'),
('Bug', 'Fighting'),
('Bug', 'Ground'),
('Bug', 'Grass'),
('Ghost', 'Normal'),
('Ghost', 'Fighting'),
('Ghost', 'Poison'),
('Ghost', 'Bug'),
('Steel', 'Normal'),
('Steel', 'Flying'),
('Steel', 'Poison'),
('Steel', 'Rock'),
('Steel', 'Bug'),
('Steel', 'Steel'),
('Steel', 'Grass'),
('Steel', 'Psychic'),
('Steel', 'Ice'),
('Steel', 'Dragon'),
('Steel', 'Fairy'),
('Fire', 'Bug'),
('Fire', 'Steel'),
('Fire', 'Fire'),
('Fire', 'Grass'),
('Fire', 'Ice'),
('Water', 'Steel'),
('Water', 'Fire'),
('Water', 'Water'),
('Water', 'Ice'),
('Grass', 'Ground'),
('Grass', 'Water'),
('Grass', 'Grass'),
('Grass', 'Electric'),
('Electric', 'Flying'),
('Electric', 'Steel'),
('Electric', 'Electric'),
('Psychic', 'Fighting'),
('Psychic', 'Psychic'),
('Ice', 'Ice'),
('Dragon', 'Fire'),
('Dragon', 'Water'),
('Dragon', 'Grass'),
('Dragon', 'Electric'),
('Fairy', 'Fighting'),
('Fairy', 'Bug'),
('Fairy', 'Dragon'),
('Fairy', 'Dark'),
('Dark', 'Ghost'),
('Dark', 'Psychic'),
('Dark', 'Dark');

-- --------------------------------------------------------

--
-- Table structure for table `strong`
--

CREATE TABLE `strong` (
  `Type` varchar(50) DEFAULT NULL,
  `Strong Against` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `strong`
--

INSERT INTO `strong` (`Type`, `Strong Against`) VALUES
('Fighting', 'Normal'),
('Fighting', 'Rock'),
('Fighting', 'Steel'),
('Fighting', 'Ice'),
('Fighting', 'Dark'),
('Flying', 'Fighting'),
('Flying', 'Bug'),
('Flying', 'Grass'),
('Poison', 'Grass'),
('Poison', 'Fairy'),
('Ground', 'Poison'),
('Ground', 'Rock'),
('Ground', 'Steel'),
('Ground', 'Fire'),
('Ground', 'Electric'),
('Rock', 'Flying'),
('Rock', 'Bug'),
('Rock', 'Fire'),
('Rock', 'Ice'),
('Bug', 'Grass'),
('Bug', 'Psychic'),
('Bug', 'Dark'),
('Ghost', 'Ghost'),
('Ghost', 'Psychic'),
('Steel', 'Rock'),
('Steel', 'Ice'),
('Steel', 'Fairy'),
('Fire', 'Bug'),
('Fire', 'Steel'),
('Fire', 'Grass'),
('Fire', 'Ice'),
('Water', 'Ground'),
('Water', 'Rock'),
('Water', 'Fire'),
('Grass', 'Ground'),
('Grass', 'Rock'),
('Grass', 'Water'),
('Electric', 'Flying'),
('Electric', 'Water'),
('Psychic', 'Fighting'),
('Psychic', 'Poison'),
('Ice', 'Flying'),
('Ice', 'Ground'),
('Ice', 'Grass'),
('Ice', 'Dragon'),
('Dragon', 'Dragon'),
('Fairy', 'Fighting'),
('Fairy', 'Dragon'),
('Fairy', 'Dark'),
('Dark', 'Ghost'),
('Dark', 'Psychic');

-- --------------------------------------------------------

--
-- Table structure for table `vulnerable`
--

CREATE TABLE `vulnerable` (
  `Type` varchar(50) DEFAULT NULL,
  `Vulnerable To` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vulnerable`
--

INSERT INTO `vulnerable` (`Type`, `Vulnerable To`) VALUES
('Normal', 'Fighting'),
('Fighting', 'Flying'),
('Fighting', 'Psychic'),
('Fighting', 'Fairy'),
('Flying', 'Rock'),
('Flying', 'Electric'),
('Flying', 'Ice'),
('Poison', 'Ground'),
('Poison', 'Psychic'),
('Ground', 'Water'),
('Ground', 'Grass'),
('Ground', 'Ice'),
('Rock', 'Fighting'),
('Rock', 'Ground'),
('Rock', 'Steel'),
('Rock', 'Water'),
('Rock', 'Grass'),
('Bug', 'Flying'),
('Bug', 'Rock'),
('Bug', 'Fire'),
('Ghost', 'Ghost'),
('Ghost', 'Dark'),
('Steel', 'Fighting'),
('Steel', 'Ground'),
('Steel', 'Fire'),
('Fire', 'Ground'),
('Fire', 'Rock'),
('Fire', 'Water'),
('Water', 'Grass'),
('Water', 'Electric'),
('Grass', 'Flying'),
('Grass', 'Poison'),
('Grass', 'Bug'),
('Grass', 'Fire'),
('Grass', 'Ice'),
('Electric', 'Ground'),
('Psychic', 'Bug'),
('Psychic', 'Ghost'),
('Psychic', 'Dark'),
('Ice', 'Fighting'),
('Ice', 'Rock'),
('Ice', 'Steel'),
('Ice', 'Fire'),
('Dragon', 'Ice'),
('Dragon', 'Dragon'),
('Dragon', 'Fairy'),
('Fairy', 'Poison'),
('Fairy', 'Steel'),
('Dark', 'Fighting'),
('Dark', 'Bug'),
('Dark', 'Fairy');

-- --------------------------------------------------------

--
-- Table structure for table `weak`
--

CREATE TABLE `weak` (
  `Type` varchar(50) DEFAULT NULL,
  `Weak Against` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weak`
--

INSERT INTO `weak` (`Type`, `Weak Against`) VALUES
('Normal', 'Rock'),
('Normal', 'Ghost'),
('Normal', 'Steel'),
('Fighting', 'Flying'),
('Fighting', 'Poison'),
('Fighting', 'Psychic'),
('Fighting', 'Bug'),
('Fighting', 'Ghost'),
('Fighting', 'Fairy'),
('Flying', 'Rock'),
('Flying', 'Steel'),
('Flying', 'Electric'),
('Poison', 'Poison'),
('Poison', 'Ground'),
('Poison', 'Rock'),
('Poison', 'Ghost'),
('Poison', 'Steel'),
('Ground', 'Flying'),
('Ground', 'Bug'),
('Ground', 'Grass'),
('Rock', 'Fighting'),
('Rock', 'Ground'),
('Rock', 'Steel'),
('Bug', 'Fighting'),
('Bug', 'Flying'),
('Bug', 'Poison'),
('Bug', 'Ghost'),
('Bug', 'Steel'),
('Bug', 'Fire'),
('Bug', 'Fairy'),
('Ghost', 'Normal'),
('Ghost', 'Dark'),
('Steel', 'Steel'),
('Steel', 'Fire'),
('Steel', 'Water'),
('Steel', 'Electric'),
('Fire', 'Rock'),
('Fire', 'Fire'),
('Fire', 'Water'),
('Fire', 'Dragon'),
('Water', 'Water'),
('Water', 'Grass'),
('Water', 'Dragon'),
('Grass', 'Flying'),
('Grass', 'Poison'),
('Grass', 'Bug'),
('Grass', 'Steel'),
('Grass', 'Fire'),
('Grass', 'Grass'),
('Grass', 'Dragon'),
('Electric', 'Ground'),
('Electric', 'Grass'),
('Electric', 'Electric'),
('Electric', 'Dragon'),
('Psychic', 'Steel'),
('Psychic', 'Psychic'),
('Psychic', 'Dark'),
('Ice', 'Steel'),
('Ice', 'Fire'),
('Ice', 'Water'),
('Ice', 'Ice'),
('Dragon', 'Steel'),
('Dragon', 'Fairy'),
('Fairy', 'Poison'),
('Fairy', 'Steel'),
('Fairy', 'Fire'),
('Dark', 'Fighting'),
('Dark', 'Dark'),
('Dark', 'Fairy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mega`
--
ALTER TABLE `mega`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
