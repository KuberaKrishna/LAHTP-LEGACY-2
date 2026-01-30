SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';
SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `Poster_DB`;
CREATE DATABASE `Poster_DB`;
USE `Poster_DB`;

DROP TABLE IF EXISTS `DP_Users`;
CREATE TABLE `DP_Users` (
  `Username` varchar(256) NOT NULL,
  `Password` varchar(1024) NOT NULL,
  `EmailAddress` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `DP_Users` (`Username`, `Password`, `EmailAddress`) VALUES
('admin',	'f865b53623b121fd34ee5426c792e5c33af8c227',	'admin-dp@gmail.com'),
('John Abraham',	'7afd2900f75778c8836b4f46a39b4669',	'johnab@gmail.com'),
('Mhd bin Salman',	'2ba30c84218592d4dece3bb092e6656a7b0df17e',	'moosa@gmail.com'),
('Ban Ladder',	'36d8bb53bb46e4b9fd7ad798d44bf15e',	'iloveamerica@gmail.com'),
('dev-dp',	'32069097830d66063f333cd0b9d86de9892464d2',	'dev-dp@gmail.com'),
('Cactus Jack',	'9ef27ee9273cd5876b51b5b5cc4b515e967da3ef',	'cactusjack912@gmail.com'),
('Osama Binden',	'49377bdb7453cb4b493c1a7baed77586',	'bindenOsama@gmail.com');

DROP TABLE IF EXISTS `Posters_Table`;
CREATE TABLE `Posters_Table` (
  `PosterID` tinyint NOT NULL AUTO_INCREMENT,
  `Poster` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PosterName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PosterPrice` varchar(64) NOT NULL,
  `PosterFile` varchar(256) NOT NULL,
  `CouponCode` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`PosterID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `Posters_Table` (`PosterID`, `Poster`, `PosterName`, `PosterPrice`, `PosterFile`, `CouponCode`) VALUES
(1,	'The Weeknd',	'The Weeknd Colorful Paint Poster',	'&#8377;416',	'poster_0.jpg',	'088701fa'),
(2,	'Spider Man',	'Spider Man into the verse 2018 Poster',	'&#8377;399',	'poster_6.jpg',	'088301f7'),
(3,	'Spider Man',	'Spider Man Homecoming Boat Fight Poster',	'&#8377;299',	'poster_7.jpg',	'07b501d2'),
(4,	'Joker',	'Joker 2019 Poster',	'&#8377;420',	'poster_1.jpg',	'079401c7'),
(5,	'Deadpool',	'Deadpool Raining Bullet Poster',	'&#8377;415',	'poster_3.jpg',	'089f01f2'),
(6,	'Joker',	'Madman Joker Poster',	'&#8377;417',	'poster_2.jpg',	'07b301d0'),
(7,	'Metallica Poster',	'Metallica Poster',	'&#8377;419',	'poster_19.png',	'dd8c2057'),
(8,	'Black Hole',	'Black Hole Poster',	'&#8377;399',	'poster_5.jpg',	'084c01c3'),
(9,	'Tenet ',	'Tenet Movie Poster | Protagonist',	'&#8377;220',	'poster_4.jpg',	'08b50201'),
(10,	'Homelander',	'The Boys Homelander Poster',	'&#8377;417',	'poster_8.jpg',	'1f7304a3'),
(11,	'Daft Punk',	'Daft Punk | Pulp Fiction Poster',	'&#8377;406',	'poster_9.jpg',	'09eb022d'),
(12,	'Reservoir Dogs',	'Reservoir Dogs Red Poster',	'&#8377;428',	'poster_10.jpg',	'097d0229'),
(13,	'Fight Club',	'Fight Club | Tyler Durden Poster',	'&#8377;416',	'poster_11.png',	'084801d2'),
(14,	'Peaky Blinder',	'Cillian Murphy | Peaky Blinder Poster',	'&#8377;400',	'poster_12.jpeg',	'07ad01cc'),
(15,	'Deadpool & Wolverine',	'Deadpool & Wolverine Poster',	'&#8377;249',	'poster_13.jpg',	'09bf0254'),
(16,	'Goat',	'Goat 2026 Poster',	'&#8377;199',	'poster_14.png',	'094501fc'),
(17,	'The Weeknd',	'The Weeknd Canadian singer Poster',	'&#8377;400',	'poster_15.jpg',	'0b670289'),
(18,	'Spider Man',	'Spider Man Listenting Music Poster',	'&#8377;300',	'poster_16.jpg',	'088c01d3'),
(19,	'Spider Man',	'Marvel\'s Spider Man 2 Superheroes Poster',	'&#8377;310',	'poster_17.jpeg',	'211203f7'),
(20,	'Godzilla',	'Godzilla: King of the Monsters Poster',	'&#8377;200',	'poster_18.jpeg',	'41a10ff7');