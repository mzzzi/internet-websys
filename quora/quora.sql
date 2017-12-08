-- Adminer 4.3.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE DATABASE `quora` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `quora`;

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `sno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` int(11) NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topic` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `questions` (`sno`, `question`, `answer`, `star`, `location`, `topic`, `created_at`, `updated_at`) VALUES
(7,	'Why did all the Europeans leave India and the subcontinent after its independence, while that is not the case with the Americas, South Africa, and Australia?',	'When their traditional privileges went, they were more exposed with India poverty and like many in India upper middle class, found better pastures.\r\n\r\n',	1,	'New Delhi',	15,	'2017-11-30 13:05:06',	'2017-11-30 13:05:06'),
(8,	'Which country has the worst geographical disadvantage?',	'Maldives',	1,	'Chennai',	16,	'2017-11-30 13:06:06',	'2017-11-30 13:06:06'),
(9,	'What is the biggest country?',	'Russia',	1,	'Bangalore',	16,	'2017-11-30 13:07:06',	'2017-11-30 13:07:06'),
(10,	'What was the longest war, and why?',	'Dutch-Scilly War (1651-1986; 335 years)',	1,	'Hyderabad',	15,	'2017-11-30 13:08:06',	'2017-11-30 13:08:06'),
(11,	'What is the craziest element in the periodic table?',	'Bismuth',	0,	'Kolkata',	17,	'2017-11-30 13:06:57',	'2017-11-30 13:06:57'),
(12,	'What is the smallest atom?',	'Hydrogen',	0,	'Ahmedabad',	17,	'2017-11-30 13:07:25',	'2017-11-30 13:07:25'),
(13,	'Are companies like Google or Amazon using their computing power to mine crypto-currencies?',	'It is not worth it.',	0,	'Kolkata',	18,	'2017-11-30 13:11:09',	'2017-11-30 13:11:09'),
(14,	'Everyone keeps talking about ethereum as the next bitcoin, what makes ethereum highly potential of increasing in value?',	'The interesting thing about Ethereum is that it is not just a clone of Bitcoin.',	0,	'New Delhi',	18,	'2017-11-30 13:14:29',	'2017-11-30 13:14:29');

DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `topics` (`id`, `topic`) VALUES
(15,	'History'),
(16,	'Geography'),
(17,	'Science'),
(18,	'Cryptocoins');

-- 2017-12-01 10:10:30
