-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2019 at 05:56 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weather`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` decimal(6,3) NOT NULL,
  `longitude` decimal(6,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `latitude`, `longitude`) VALUES
(1, 'Sydney', '-33.790', '151.270'),
(2, 'Melbourne', '-37.810', '144.970'),
(3, 'Brisbane', '-27.470', '153.030'),
(4, 'Perth', '-31.920', '115.910'),
(5, 'Adelaide', '-34.930', '138.600'),
(6, 'Newcastle', '-32.940', '151.770'),
(7, 'Canberra', '-35.310', '149.140'),
(8, 'Wollongong', '-34.440', '150.890'),
(9, 'Geelong', '-38.180', '145.110'),
(10, 'Townsville', '-19.250', '146.800'),
(11, 'Cairns', '-16.880', '145.750'),
(12, 'Toowoomba', '-27.620', '151.770'),
(13, 'Darwin', '-12.800', '130.960'),
(14, 'Launceston', '-41.460', '147.080'),
(15, 'Ballarat', '-37.560', '143.820'),
(16, 'Bendigo', '-36.760', '144.280'),
(17, 'Mackay', '-21.160', '149.100'),
(18, 'Mandurah', '-32.550', '115.750'),
(19, 'Rockhampton', '-23.390', '150.500'),
(20, 'Bundaberg', '-24.840', '152.020'),
(21, 'Bunbury', '-36.240', '139.970'),
(22, 'Wagga Wagga', '-35.160', '147.510'),
(23, 'Hervey Bay', '-25.350', '152.890'),
(24, 'Coffs Harbour', '-30.340', '153.070'),
(25, 'Mildura', '-34.180', '142.160'),
(26, 'Gladstone', '-31.060', '152.770'),
(27, 'Shepparton', '-36.360', '145.400'),
(28, 'Tamworth', '-30.960', '150.830'),
(29, 'Port Macquarie', '-31.400', '152.850'),
(30, 'Orange', '-33.120', '149.030'),
(31, 'Dubbo', '-32.200', '148.900'),
(32, 'Geraldton', '-28.790', '114.600'),
(33, 'Bathurst', '-33.910', '149.330'),
(34, 'Warrnambool', '-38.360', '142.440'),
(35, 'Lismore', '-28.610', '153.040');

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20181231071423');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
