-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 13, 2022 at 06:49 PM
-- Server version: 5.7.38
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `burgosd2_online_banking`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `accNum` varchar(10) NOT NULL,
  `currentBal` decimal(10,2) NOT NULL DEFAULT '0.00',
  `LName` varchar(20) NOT NULL,
  `FName` varchar(20) NOT NULL,
  `add_street` varchar(40) NOT NULL,
  `add_town` varchar(40) NOT NULL,
  `add_state` varchar(2) NOT NULL,
  `add_zip` varchar(9) NOT NULL,
  `add_aptNum` varchar(5) DEFAULT NULL,
  `createdDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`accNum`, `currentBal`, `LName`, `FName`, `add_street`, `add_town`, `add_state`, `add_zip`, `add_aptNum`, `createdDate`) VALUES
('1234567890', '0.00', 'LastName', 'Admin', '231 Crook St', 'Brooklyn', 'NY', '11201', '1', '2022-04-21'),
('1234567891', '500.00', 'Smith', 'John', '232 Crook St', 'Brooklyn', 'NY', '11201', NULL, '2022-02-12'),
('2152939220', '274.00', 'Davidson', 'Pete', '123 Street Name', 'City', 'SD', '11201', '4', '2022-05-01'),
('6558856680', '0.00', 'Name', 'User', '111 Place', 'Oakland', 'NJ', '11201', NULL, '2022-04-15'),
('6804999096', '100.00', 'Lastname', 'Test', '231 Crook St', 'Brooklyn', 'AL', '07465', NULL, '2022-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_table`
--

CREATE TABLE `transaction_table` (
  `accNum` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `withdrawl` decimal(10,2) NOT NULL,
  `deposit` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `transaction_name` varchar(50) NOT NULL,
  `transaction_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_table`
--

INSERT INTO `transaction_table` (`accNum`, `date`, `withdrawl`, `deposit`, `balance`, `transaction_name`, `transaction_id`) VALUES
('1234567891', '2022-04-11', '0.00', '100.00', '100.00', 'TEST1', 5),
('1234567891', '2022-04-11', '30.00', '150.00', '120.00', 'TEST2', 6),
('1234567891', '2022-04-11', '0.00', '0.00', '0.00', 'TEST3', 7),
('1234567891', '2022-04-11', '0.00', '0.00', '0.00', 'TEST4', 8),
('1234567891', '2022-04-11', '0.00', '0.00', '0.00', 'TEST5', 9),
('1234567891', '2022-04-11', '-232.00', '0.00', '0.00', 'TEST6', 10),
('1234567891', '2022-04-19', '0.00', '0.00', '0.00', 'TEST1', 11),
('1234567891', '2022-04-19', '0.00', '0.00', '0.00', 'TEST1', 12),
('1234567891', '2022-05-08', '0.00', '100.00', '600.00', '#879', 13),
('1234567891', '2022-05-08', '0.00', '100.00', '700.00', '#344', 14),
('1234567891', '2022-05-08', '0.00', '100.00', '800.00', '#461', 15),
('1234567891', '2022-05-08', '0.00', '100.00', '900.00', '#866', 16),
('1234567891', '2022-05-08', '100.00', '0.00', '800.00', '#760', 17),
('1234567891', '2022-05-08', '0.00', '100.00', '900.00', '#694', 18),
('1234567891', '2022-05-08', '100.00', '0.00', '800.00', 'TRANSFER', 19),
('1234567891', '2022-05-08', '1.00', '0.00', '899.00', 'TRANSFER', 20),
('1234567891', '2022-05-08', '111.00', '0.00', '788.00', 'TRANSFER', 21),
('1234567891', '2022-05-08', '1.00', '0.00', '898.00', 'TRANSFER', 22),
('1234567891', '2022-05-08', '1.00', '0.00', '898.00', 'TRANSFER', 23),
('1234567891', '2022-05-08', '1.00', '0.00', '898.00', 'TRANSFER', 24),
('1234567891', '2022-05-08', '1.00', '0.00', '897.00', 'TRANSFER', 25),
('1234567891', '2022-05-08', '1.00', '0.00', '896.00', 'TRANSFER', 26),
('1234567891', '2022-05-08', '1.00', '0.00', '896.00', 'TRANSFER', 27),
('1234567891', '2022-05-08', '1.00', '0.00', '896.00', 'TRANSFER', 28),
('1234567891', '2022-05-08', '1.00', '0.00', '895.00', 'TRANSFER', 29),
('1234567891', '2022-05-08', '1.00', '0.00', '894.00', 'TRANSFER', 30),
('1234567891', '2022-05-08', '11.00', '0.00', '884.00', 'TRANSFER', 31),
('1234567891', '2022-05-08', '1.00', '0.00', '894.00', 'TRANSFER', 32),
('1234567891', '2022-05-08', '1.00', '0.00', '894.00', 'TRANSFER', 33),
('1234567891', '2022-05-08', '1.00', '0.00', '894.00', 'TRANSFER', 34),
('1234567891', '2022-05-08', '1.00', '0.00', '893.00', 'TRANSFER', 35),
('2152939220', '2022-05-08', '0.00', '1.00', '1.00', 'TRANSFER', 36),
('1234567891', '2022-05-08', '1.00', '0.00', '892.00', 'TRANSFER', 37),
('2152939220', '2022-05-08', '0.00', '1.00', '2.00', 'TRANSFER', 38),
('1234567891', '2022-05-08', '1.00', '0.00', '891.00', 'TRANSFER TO #2152939220', 39),
('2152939220', '2022-05-08', '0.00', '1.00', '3.00', 'TRANSFER FROM #1234567891', 40),
('1234567891', '2022-05-08', '11.00', '0.00', '880.00', 'TRANSFER TO #2152939220', 41),
('2152939220', '2022-05-08', '0.00', '11.00', '14.00', 'TRANSFER FROM #1234567891', 42),
('1234567891', '2022-05-08', '0.00', '230.00', '1110.00', '#284', 43),
('1234567891', '2022-05-08', '100.00', '0.00', '1010.00', '#372', 44),
('1234567891', '2022-05-08', '20.00', '0.00', '990.00', 'TRANSFER TO #2152939220', 45),
('2152939220', '2022-05-08', '0.00', '20.00', '34.00', 'TRANSFER FROM #1234567891', 46),
('1234567891', '2022-05-10', '0.00', '250.00', '1240.00', '#791', 47),
('1234567891', '2022-05-10', '240.00', '0.00', '1000.00', 'TRANSFER TO #2152939220', 48),
('2152939220', '2022-05-10', '0.00', '240.00', '274.00', 'TRANSFER FROM #1234567891', 49),
('1234567891', '2022-05-11', '0.00', '100.00', '1100.00', '#207', 50),
('1234567891', '2022-05-11', '500.00', '0.00', '600.00', '#318', 51),
('1234567891', '2022-05-11', '100.00', '0.00', '500.00', 'TRANSFER TO #6804999096', 52),
('6804999096', '2022-05-11', '0.00', '100.00', '100.00', 'TRANSFER FROM #1234567891', 53);

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `accNum` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(80) NOT NULL,
  `acc_type` tinyint(2) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`accNum`, `username`, `password`, `email`, `acc_type`, `approved`) VALUES
('1234567890', 'test1', '$2y$10$0zS/UfnMKNE/CbuwQl4isOJ/Z4/z8c9v9ggVq/fdhTKJsPuWD.k1y', 'test@email.com', 1, 1),
('1234567891', 'customer1', '$2y$10$ZM1bVL0p5nkKBsAfr9GhK.26R1fRtH8EpGsuPv/aKVF0/dDRPgTlO', 'test@email.com', 0, 1),
('2152939220', 'sketedavidson', '$2y$10$W.a1dNxFmj3lry1rqxQR7O/cLoTx/SAeVzRtsFfSHNrkYnBlZqEqa', 'skete@gmail.com', 0, 1),
('6558856680', 'testuser', '$2y$10$N95dowsDC287pXgycxjW6e6d.Ogt4RYi0JHs2p5RTyxwyEbh0BkZe', 'test@email.com', 0, 1),
('6804999096', 'test2', '$2y$10$yLSyEhs4xoEQeOz9PNzP.Ood7IHOelZmk2oCemo8mWqpneLOrHX6.', 'test@email.com', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`accNum`);

--
-- Indexes for table `transaction_table`
--
ALTER TABLE `transaction_table`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `accNum` (`accNum`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`accNum`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction_table`
--
ALTER TABLE `transaction_table`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD CONSTRAINT `customer_info_ibfk_1` FOREIGN KEY (`accNum`) REFERENCES `user_table` (`accNum`);

--
-- Constraints for table `transaction_table`
--
ALTER TABLE `transaction_table`
  ADD CONSTRAINT `transaction_table_ibfk_1` FOREIGN KEY (`accNum`) REFERENCES `user_table` (`accNum`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
