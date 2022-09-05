-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2022 at 08:06 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookshop.db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(0, 4, 'gggd', 'asd@gmail.com', '21', 'Hello\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'panding'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(0, 4, 'gggd', '111', 'abcd@gmail.com', 'cash on delivery', 'area 34/c, Chayataru, Sylhet, Bangladesh - 3100', ', Think like a Programmer (1) ', 100, '17-Jul-2022', 'completed'),
(0, 4, 'AB', '555', 'ab@gmail.com', 'cash on delivery', 'area 34/c, Chayataru, Sylhet, Bangladesh - 3100', ', Think like a Programmer (1) , রূপ-রূপালী (2) ', 260, '22-Jul-2022', 'completed'),
(0, 5, 'AB', '66', 'ab@gmail.com', 'cash on delivery', 'area 34/c, Chayataru, Sylhet, Bangladesh - 3100', ', Think like a Programmer (1) , Algorithms, the book for professionals (1) ', 700, '22-Jul-2022', 'completed'),
(0, 4, 'gggd', '222', 'abcd@gmail.com', 'cash on delivery', 'area 34/c, Chayataru, Sylhet, Bangladesh - 3100', ', Statistics by Robert S. Witte (8) , হিমু  রিমান্ডে  (1) ', 1210, '24-Jul-2022', 'completed'),
(0, 4, 'gggd', '11', 'abcd@gmail.com', 'cash on delivery', 'area 34/c, Chayataru, Sylhet, Bangladesh - 3100', ', Hacking Rasberry PI (1) , Think like a Programmer (3) , Algorithms, the book for professionals (1) ', 1010, '24-Jul-2022', 'panding');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(5, 'Think like a Programmer', 100, '1.Think Like a Programmer.jpg'),
(6, 'Algorithms, the book for professionals', 600, '2.Free Programming Books; HTML5, CSS3, JavaScript, PHP, Python___ (1).png'),
(7, 'Statistics by Robert S. Witte', 120, 'The Best Statistics Books Of All-Time - Book Scrolling.jpg'),
(8, 'গীতাঞ্জলি', 100, 'gitangoli.jpg'),
(10, 'Hacking Rasberry PI', 110, '3.Noelito Flow.jpg'),
(11, 'হিমু  রিমান্ডে ', 250, 'remand himu.jpg'),
(12, 'স্বপ্ন দেখার অধিকার', 100, 'swapna-dekhar-adhikar.jpg'),
(13, 'Theory of Seismic Imaging ', 700, 'Theory of Seismic Imaging - Paperback.jpg'),
(14, 'Harry Potter & the Sorcerers Stone', 1100, 'R.jpg'),
(15, 'CSS , notes for Professionals', 130, 'Free Programming Books; HTML5, CSS3, JavaScript, PHP, Python___.png'),
(16, 'রূপ-রূপালী', 80, 'Rup Rupali by muhammed-zafar-iqbal PDF.jpg'),
(17, 'The Alchemist', 900, '3220b8a79942b0e6421b1bb6877412e3--the-alchemist-paulo-coelho-feeling-lost.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'AB', 'ab@gmail.com', 'e2fc714c4727ee9395f324cd2e7f331f', 'user'),
(2, 'abcd', 'abc@gmail.com', '523af537946b79c4f8369ed39ba78605', 'admin'),
(3, 'gggd', 'asd@gmail.com', '7815696ecbf1c96e6894b779456d330e', 'user'),
(4, 'gggd', 'abcd@gmail.com', '187ef4436122d1cc2f40dc2b92f0eba0', 'user'),
(5, 'daads', 'ab@gmail.com', '0cc175b9c0f1b6a831c399e269772661', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
