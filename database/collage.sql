-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2025 at 03:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collage`
--

-- --------------------------------------------------------

--
-- Table structure for table `event_registrations`
--

CREATE TABLE `event_registrations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_date` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_registrations`
--

INSERT INTO `event_registrations` (`id`, `user_id`, `event_id`, `event_name`, `event_date`, `name`, `email`, `phone`, `payment_method`, `created_at`) VALUES
(4, 4, 1, 'AI & Robotics Expo', '2025-10-01', 'Spoorti Patil', 'spoortikp@gmail.com', '08147406687', '1200', '2025-10-13 07:08:42'),
(4, 4, 3, 'Tech Entrepreneurship Summit', '2025-10-05', 'Spoorti Patil', 'spoortikp@gmail.com', '8147406687', '1300', '2025-10-12 16:30:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `application_no` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `otp` varchar(10) DEFAULT NULL,
  `otp_expiry` datetime DEFAULT NULL,
  `admin_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `application_no`, `created_at`, `otp`, `otp_expiry`, `admin_key`) VALUES
(1, 'samrudhi s', 'samrudhisbhandary@gmail.com', '$2y$10$Hub0OH.YFW9d9E8RxBhYjejgwHwtPgEDfUeqWKjFfInJBjIFJykZC', 'user', NULL, '2025-10-06 09:10:24', NULL, NULL, NULL),
(2, 'Administrator', 'admin@gmail.com', '$2y$10$Kg.tAaI7N2uO5vvz11wSf.WSN01lZF9q1m519riw6T82M1c9mKhSK', 'admin', NULL, '2025-10-10 01:35:19', '318710', '2025-10-10 09:25:04', 'MITADMIN2025'),
(3, 'ashish', 'shettyashish57@gmail.com', '$2y$10$TYC/IvTjI6U6c3pSGVoiX.hZdTXsB0fwds36FNHQJAbwWwnhEDtda', 'user', NULL, '2025-10-10 01:46:27', '762065', '2025-10-10 09:26:42', NULL),
(4, 'sneha patil', 'sneha@gmail.com', '$2y$10$9DeVoYwR.WSUF3ISvlAueeeOb22DU0TRRrww0uuQB5EfwhejTuHMK', 'user', 'CB20255F727', '2025-10-11 06:01:17', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event_registrations`
--
ALTER TABLE `event_registrations`
  ADD PRIMARY KEY (`id`,`event_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `application_no` (`application_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
