-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 15 Novembre 2017 à 07:39
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `lafriperie`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `size` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_size` int(11) DEFAULT NULL,
  `added` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL,
  `sold` datetime DEFAULT NULL,
  `fos_user_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `name`, `category`, `brand`, `model`, `gender`, `description`, `size`, `quantity`, `price`, `image`, `image_size`, `added`, `updated`, `deleted`, `sold`, `fos_user_id_id`) VALUES
(202, 'article 0', 'pantalons', 'nike', 'boze', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 53, 80, 'black_sweat.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(203, 'article 1', 'sous-vêtements', 'caporal', 'running', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 92, 40, 'blue_jeans.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(204, 'article 2', 'sweat', 'caporal', 'running', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'S', 16, 91, 'ceinture.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(205, 'article 3', 'pantalons', 'gucci', 'smoked', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 55, 57, 'ceinture.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(206, 'article 4', 'sweat', 'caporal', 'running', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'S', 65, 90, 'black_pants.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(207, 'article 5', 'sweat', 'adidas', 'boze', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 61, 34, 'ceinture.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(208, 'article 6', 'chaussures', 'nike', 'smoked', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XXL', 58, 69, 'black_pants.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(209, 'article 7', 'sous-vêtements', 'adidas', 'running', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 53, 100, 'IMG_7846.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(210, 'article 8', 'pantalons', 'nike', 'smoked', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'S', 33, 78, 'tee_shirt.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(211, 'article 9', 'sous-vêtements', 'gucci', 'running', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 93, 61, 'black_pants.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(212, 'article 10', 'sous-vêtements', 'oxbow', 'running', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XXL', 83, 30, 'black_sweat.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(213, 'article 11', 'chaussures', 'oxbow', 'running', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 58, 17, 'black_pants.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(214, 'article 12', 'sous-vêtements', 'oxbow', 'running', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'S', 69, 17, 'black_sweat.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(215, 'article 13', 'pantalons', 'caporal', 'boze', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 63, 25, 'ceinture.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(216, 'article 14', 'chaussures', 'nike', 'boze', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 62, 53, 'black_pants.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(217, 'article 15', 'chaussures', 'gucci', 'running', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XL', 48, 59, 'IMG_7846.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(218, 'article 16', 'pantalons', 'oxbow', 'boze', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XXL', 32, 39, 'black_pants.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(219, 'article 17', 'chaussures', 'nike', 'smoked', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 84, 53, 'black_pants.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(220, 'article 18', 'chaussures', 'adidas', 'running', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 3, 14, 'black_sweat.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(221, 'article 19', 'chaussures', 'gucci', 'running', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XL', 62, 18, 'black_pants.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(222, 'article 20', 'sweat', 'gucci', 'running', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 89, 75, 'calecon.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(223, 'article 21', 'pantalons', 'nike', 'boze', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XL', 36, 38, 'ceinture.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(224, 'article 22', 'pantalons', 'oxbow', 'running', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XXL', 88, 61, 'calecon.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(225, 'article 23', 'pantalons', 'oxbow', 'boze', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 54, 21, 'black_sweat.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(226, 'article 24', 'pantalons', 'oxbow', 'running', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'S', 57, 95, 'black_pants.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(227, 'article 25', 'sous-vêtements', 'gucci', 'smoked', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 21, 50, 'blue_jeans.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(228, 'article 26', 'sous-vêtements', 'caporal', 'smoked', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XL', 76, 64, 'ceinture.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(229, 'article 27', 'sweat', 'adidas', 'boze', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 54, 63, 'blue_jeans.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(230, 'article 28', 'sous-vêtements', 'nike', 'running', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XL', 43, 87, 'black_sweat.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(231, 'article 29', 'pantalons', 'adidas', 'smoked', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 96, 16, 'black_sweat.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(232, 'article 30', 'chaussures', 'adidas', 'boze', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XXL', 99, 56, 'black_pants.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(233, 'article 31', 'chaussures', 'nike', 'running', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 68, 40, 'ceinture.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(234, 'article 32', 'sous-vêtements', 'caporal', 'smoked', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 45, 65, 'black_sweat.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(235, 'article 33', 'sweat', 'nike', 'smoked', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'S', 63, 73, 'tee_shirt.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(236, 'article 34', 'pantalons', 'nike', 'running', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 38, 11, 'black_sweat.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(237, 'article 35', 'sweat', 'gucci', 'smoked', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'S', 31, 60, 'blue_jeans.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(238, 'article 36', 'sous-vêtements', 'oxbow', 'boze', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 80, 89, 'IMG_7846.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(239, 'article 37', 'sweat', 'gucci', 'boze', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XL', 16, 79, 'ceinture.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(240, 'article 38', 'chaussures', 'oxbow', 'running', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XXL', 17, 36, 'IMG_7846.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(241, 'article 39', 'sweat', 'caporal', 'smoked', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 82, 63, 'blue_jeans.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(242, 'article 40', 'sweat', 'gucci', 'smoked', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XXL', 96, 15, 'tee_shirt.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(243, 'article 41', 'chaussures', 'gucci', 'boze', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XL', 4, 26, 'IMG_7846.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(244, 'article 42', 'sweat', 'oxbow', 'boze', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'S', 34, 16, 'calecon.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(245, 'article 43', 'chaussures', 'nike', 'smoked', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XL', 99, 31, 'blue_jeans.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(246, 'article 44', 'sous-vêtements', 'nike', 'smoked', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XXL', 70, 83, 'calecon.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(247, 'article 45', 'sous-vêtements', 'gucci', 'running', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XL', 29, 73, 'black_pants.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(248, 'article 46', 'chaussures', 'nike', 'running', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 13, 67, 'IMG_7846.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(249, 'article 47', 'chaussures', 'gucci', 'smoked', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XL', 26, 38, 'IMG_7846.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(250, 'article 48', 'sous-vêtements', 'caporal', 'running', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 14, 34, 'IMG_7846.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(251, 'article 49', 'chaussures', 'nike', 'running', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XXL', 58, 58, 'blue_jeans.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(252, 'article 50', 'pantalons', 'oxbow', 'boze', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XXL', 39, 28, 'blue_jeans.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(253, 'article 51', 'sweat', 'oxbow', 'running', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 67, 33, 'IMG_7846.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(254, 'article 52', 'sweat', 'gucci', 'running', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 77, 14, 'ceinture.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(255, 'article 53', 'chaussures', 'nike', 'running', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 67, 88, 'blue_jeans.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(256, 'article 54', 'pantalons', 'caporal', 'smoked', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'S', 31, 28, 'black_pants.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(257, 'article 55', 'pantalons', 'gucci', 'running', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XXL', 89, 36, 'blue_jeans.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(258, 'article 56', 'chaussures', 'adidas', 'running', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 49, 14, 'tee_shirt.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(259, 'article 57', 'pantalons', 'oxbow', 'running', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 56, 70, 'blue_jeans.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(260, 'article 58', 'pantalons', 'gucci', 'smoked', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'S', 94, 23, 'black_pants.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(261, 'article 59', 'chaussures', 'adidas', 'boze', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XL', 31, 49, 'black_sweat.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(262, 'article 60', 'sweat', 'caporal', 'smoked', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 49, 93, 'black_pants.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(263, 'article 61', 'sous-vêtements', 'caporal', 'running', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 12, 75, 'blue_jeans.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(264, 'article 62', 'pantalons', 'gucci', 'boze', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 9, 36, 'ceinture.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(265, 'article 63', 'chaussures', 'gucci', 'running', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XL', 57, 59, 'black_pants.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(266, 'article 64', 'pantalons', 'adidas', 'smoked', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'S', 69, 19, 'black_sweat.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(267, 'article 65', 'sweat', 'adidas', 'running', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XXL', 20, 28, 'black_sweat.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(268, 'article 66', 'sous-vêtements', 'adidas', 'smoked', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 82, 90, 'tee_shirt.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(269, 'article 67', 'sous-vêtements', 'adidas', 'running', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 8, 35, 'tee_shirt.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(270, 'article 68', 'sous-vêtements', 'adidas', 'smoked', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 12, 29, 'black_sweat.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(271, 'article 69', 'pantalons', 'nike', 'boze', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'S', 13, 49, 'black_sweat.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(272, 'article 70', 'sweat', 'gucci', 'smoked', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XL', 5, 14, 'black_pants.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(273, 'article 71', 'pantalons', 'caporal', 'boze', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'S', 29, 17, 'black_sweat.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(274, 'article 72', 'pantalons', 'gucci', 'running', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XL', 64, 49, 'ceinture.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(275, 'article 73', 'pantalons', 'nike', 'running', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 28, 95, 'calecon.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(276, 'article 74', 'sous-vêtements', 'nike', 'running', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XXL', 18, 98, 'tee_shirt.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(277, 'article 75', 'sous-vêtements', 'nike', 'running', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 49, 96, 'blue_jeans.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(278, 'article 76', 'sweat', 'oxbow', 'boze', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'S', 53, 32, 'ceinture.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(279, 'article 77', 'sweat', 'gucci', 'running', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XXL', 85, 96, 'black_sweat.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(280, 'article 78', 'pantalons', 'caporal', 'boze', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 5, 94, 'black_pants.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(281, 'article 79', 'chaussures', 'gucci', 'running', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XL', 11, 14, 'IMG_7846.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(282, 'article 80', 'sweat', 'nike', 'smoked', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 4, 87, 'black_pants.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(283, 'article 81', 'pantalons', 'adidas', 'boze', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XL', 24, 98, 'blue_jeans.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(284, 'article 82', 'sous-vêtements', 'adidas', 'smoked', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 37, 29, 'black_pants.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(285, 'article 83', 'chaussures', 'caporal', 'smoked', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'S', 50, 43, 'blue_jeans.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(286, 'article 84', 'chaussures', 'nike', 'smoked', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 96, 63, 'calecon.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(287, 'article 85', 'sous-vêtements', 'oxbow', 'smoked', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 55, 68, 'tee_shirt.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(288, 'article 86', 'sous-vêtements', 'nike', 'smoked', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 23, 35, 'tee_shirt.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(289, 'article 87', 'sous-vêtements', 'gucci', 'boze', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 7, 94, 'IMG_7846.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(290, 'article 88', 'pantalons', 'gucci', 'boze', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XXL', 35, 80, 'calecon.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(291, 'article 89', 'sous-vêtements', 'adidas', 'smoked', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 2, 97, 'black_sweat.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(292, 'article 90', 'sous-vêtements', 'oxbow', 'boze', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'S', 50, 84, 'IMG_7846.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(293, 'article 91', 'pantalons', 'gucci', 'smoked', 'femme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XXL', 23, 73, 'tee_shirt.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(294, 'article 92', 'sweat', 'adidas', 'running', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 40, 93, 'blue_jeans.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(295, 'article 93', 'sweat', 'adidas', 'boze', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XXL', 3, 64, 'tee_shirt.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(296, 'article 94', 'sous-vêtements', 'nike', 'running', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'L', 31, 27, 'black_pants.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(297, 'article 95', 'chaussures', 'nike', 'boze', 'unisex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 67, 92, 'black_pants.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(298, 'article 96', 'sweat', 'adidas', 'smoked', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'S', 7, 88, 'IMG_7846.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(299, 'article 97', 'pantalons', 'caporal', 'boze', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XL', 23, 43, 'ceinture.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(300, 'article 98', 'pantalons', 'caporal', 'running', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'XXL', 80, 51, 'ceinture.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL),
(301, 'article 99', 'pantalons', 'adidas', 'running', 'homme', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.', 'M', 7, 54, 'IMG_7846.jpg', NULL, '2017-10-17 01:33:57', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(39, 'user_0', 'user_0', 'test_0@gmail.com', 'test_0@gmail.com', 1, NULL, '$2y$13$Q7BBr/rCI/d308UEntqRweGn478F.aNDNI0spognk4d.vdntnrtnq', NULL, NULL, NULL, 'a:0:{}'),
(40, 'user_1', 'user_1', 'test_1@gmail.com', 'test_1@gmail.com', 1, NULL, '$2y$13$7bq5aDG58sZrKtnbMzycXOt3ASWEoZYKHdwR19/NXOw.YaQnjpePy', NULL, NULL, NULL, 'a:0:{}'),
(41, 'user_2', 'user_2', 'test_2@gmail.com', 'test_2@gmail.com', 1, NULL, '$2y$13$QT.Xn669lkWZiFOHuRNX9.kkcoHvsB3Bx2kym2GM3P5OLdpa7p8ly', NULL, NULL, NULL, 'a:0:{}'),
(42, 'user_3', 'user_3', 'test_3@gmail.com', 'test_3@gmail.com', 1, NULL, '$2y$13$l5jqRlkqRJ0NkGAKDVR5Re3xCmbd3V57VWpqi6afPOAUvAxhIbaSG', NULL, NULL, NULL, 'a:0:{}'),
(43, 'user_4', 'user_4', 'test_4@gmail.com', 'test_4@gmail.com', 1, NULL, '$2y$13$ok8LWK/hVOSDdakkYbCmQeFJZSLiKlj2Gx9Yj/1nc.Al5jxzrSAya', NULL, NULL, NULL, 'a:0:{}'),
(44, 'user_5', 'user_5', 'test_5@gmail.com', 'test_5@gmail.com', 1, NULL, '$2y$13$w6LkITuWNDN6jc5uNfsux.XGocnXCYxASyPMHV.l59ep2Tw5fwAy.', NULL, NULL, NULL, 'a:0:{}'),
(45, 'user_6', 'user_6', 'test_6@gmail.com', 'test_6@gmail.com', 1, NULL, '$2y$13$2ITZda3/3hpCAPmX7wKSdubi7GA0mewGVvD2xGDO/deXP1Gk8MWLu', NULL, NULL, NULL, 'a:0:{}'),
(46, 'user_7', 'user_7', 'test_7@gmail.com', 'test_7@gmail.com', 1, NULL, '$2y$13$fwDqaKGbYW3ASUmn8TzVGegHBmd0iM.nm9tvoCZ2HQZZIeVs8631G', NULL, NULL, NULL, 'a:0:{}'),
(47, 'user_8', 'user_8', 'test_8@gmail.com', 'test_8@gmail.com', 1, NULL, '$2y$13$tPN5G2JqBCr4sfjNBM1f/OOwEwT8atZ9Hr25r/H285VC0Vrasb0iq', NULL, NULL, NULL, 'a:0:{}'),
(48, 'user_9', 'user_9', 'test_9@gmail.com', 'test_9@gmail.com', 1, NULL, '$2y$13$Le7ehv6gKV1xSn/QWdEW1Oe/vdBmZvlrMW9D06wpcRTybmNqrjIgW', NULL, NULL, NULL, 'a:0:{}');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_23A0E664AB9C5AC` (`fos_user_id_id`);

--
-- Index pour la table `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;
--
-- AUTO_INCREMENT pour la table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E664AB9C5AC` FOREIGN KEY (`fos_user_id_id`) REFERENCES `fos_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
