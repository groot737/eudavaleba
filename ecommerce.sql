-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 11:26 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'ლეპტოპები'),
(2, 'ტელეფონები'),
(3, 'კონსოლები'),
(4, 'სმარტ გაჯეტები'),
(5, 'ტელევიზორები'),
(6, 'ფოტო | ვიდეო'),
(7, 'აუდიო სისტემა'),
(8, 'დრონები'),
(9, 'ყურსასმენები'),
(10, 'დამტენები');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `image`) VALUES
(1, 2, 'iPhone 15 Pro Max', 4099.00, 'iphone15.png'),
(2, 2, 'Samsung galaxy S23', 3900.00, 'galaxys23.png'),
(3, 1, '2019 Dell Alienware', 8000.00, 'dellalienware.jpeg'),
(4, 1, 'Asus ROG Zephyrus G14 ', 8000.00, 'asusrog.webp'),
(5, 3, 'Playstation 5', 1500.00, 'ps5.jpeg'),
(6, 3, 'Xbox series X', 1500.00, 'xboxseriesx.webp'),
(7, 4, 'ჭკვიანი ნათურა', 30.00, 'smartlight.jpeg'),
(8, 4, 'რობოტი მტვერსასრუტი', 3000.00, 'mtversasruti.jpeg'),
(9, 5, 'Samsung 50\" Crystal UHD 4K ', 10000.00, 'samsung50tv.jpeg'),
(10, 5, 'Wall Mount LG', 8000.00, 'lgtv.webp'),
(11, 6, 'Nikon Z 6', 7800.00, 'nikoncamera.webp'),
(12, 6, 'Canon EOS R50', 9000.00, 'canoncamera.webp'),
(13, 7, 'დინამიკი - Trust - Torro', 1000.00, 'dinamikitrust.jpg'),
(14, 7, 'Jbl Party Box', 5000.00, 'jbldinamiki.jpeg'),
(15, 8, 'DJI mini 3 pro drone', 6000.00, 'djimini.webp'),
(16, 8, 'DJI MAVIC AIR', 11000.00, 'djmavicair.jpeg'),
(17, 9, 'Apple headset', 3215.00, 'appleheadset.jpeg'),
(18, 9, 'Marshall headset', 500.00, 'marshall.jpeg'),
(19, 10, 'Apple charger', 30.00, 'damteni.webp'),
(20, 10, 'Macbook pro charger', 120.00, 'maccharger.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
