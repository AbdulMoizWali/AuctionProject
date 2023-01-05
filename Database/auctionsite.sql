-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2023 at 01:42 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auctionsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `auctioned product`
--

CREATE TABLE `auctioned product` (
  `AuctionID` int(11) NOT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Start` datetime DEFAULT NULL,
  `Ended` datetime DEFAULT NULL,
  `minBidPrice` int(11) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `Approval` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auctioned product`
--

INSERT INTO `auctioned product` (`AuctionID`, `ProductID`, `Start`, `Ended`, `minBidPrice`, `Status`, `Approval`) VALUES
(8, 1, '2022-12-16 19:17:20', '2022-12-17 19:17:20', 6000, 'Available', 'true'),
(9, 2, '2022-12-17 15:13:55', '2022-12-18 15:13:55', 6000, 'Not Available', 'false'),
(10, 5, '2023-01-12 16:00:00', '2023-01-13 16:00:00', 6000, NULL, 'False'),
(11, 8, '2023-01-18 16:25:00', '2023-01-19 16:25:00', 8568, NULL, 'false');

-- --------------------------------------------------------

--
-- Table structure for table `normal sell product`
--

CREATE TABLE `normal sell product` (
  `SellingID` int(11) NOT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `UploadDate` datetime DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `normal sell product`
--

INSERT INTO `normal sell product` (`SellingID`, `ProductID`, `UploadDate`, `price`, `Status`) VALUES
(3, 6, '2023-01-05 16:03:00', 697, 'Available'),
(4, 7, '2023-01-05 16:21:00', 75678, 'Available'),
(5, 9, '2023-01-05 16:26:00', 7476, 'Available'),
(6, 10, '2023-01-05 16:27:00', 65, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `Title`, `Description`, `Category`, `Location`, `UserID`) VALUES
(1, 'Probduct6', 'Descrdgbgipdgntion', 'Catsbdgegory', 'Locatbvifgon', 1),
(2, 'Product1', 'fbfdb', 'fdbdfb', 'dgfbgb', 2),
(3, 'Product22', 'this is product', 'catproduct', 'lahore', 3),
(4, 'Product4', 'dasfgsd', 'Bike', 'punjab', 1),
(5, 'Pen', 'A pen is used for writing', 'Electronics', 'Location', 3),
(6, 'Book', 'Book description', 'Clothing, Shoes & Accessories', 'Book Location', 3),
(7, 'egj', 'ergh', 'Clothing, Shoes & Accessories', 'bkk', 3),
(8, 'jskfgbfskj', 'kbkb', 'Clothing, Shoes & Accessories', 'kk', 3),
(9, 'dgbd', 'hhhh', 'Clothing, Shoes & Accessories', 'hjvj', 3),
(10, 'fyj', 'jhjh', 'Clothing, Shoes & Accessories', 'jhj', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `First_Name` varchar(10) DEFAULT NULL,
  `Last_Name` varchar(10) DEFAULT NULL,
  `Phone` varchar(11) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Balance` int(11) DEFAULT NULL,
  `CNIC` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Username`, `Password`, `First_Name`, `Last_Name`, `Phone`, `Address`, `Balance`, `CNIC`) VALUES
(1, 'siddique', '98765', 'Gulsher', 'Siddique', '03160102314', 'karachi', 1000, '423012110571'),
(2, NULL, NULL, 'Abdul', 'Moiz', '4264326326', 'karachi', 7000, '512351235215'),
(3, 'A_moiz', '12345', 'AbdulMoiz', 'Wali', 'null', 'dbg', 2147476647, '46137'),
(4, 'khizerzakir', 'abc123', 'Khizer', 'Zakir', '99868932', 'hyderabad', NULL, '8631443453');

-- --------------------------------------------------------

--
-- Table structure for table `user buy auction`
--

CREATE TABLE `user buy auction` (
  `UserID` int(11) DEFAULT NULL,
  `AuctionID` int(11) DEFAULT NULL,
  `BidAmount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user buy auction`
--

INSERT INTO `user buy auction` (`UserID`, `AuctionID`, `BidAmount`) VALUES
(3, 8, 7000),
(3, 9, 6030);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auctioned product`
--
ALTER TABLE `auctioned product`
  ADD PRIMARY KEY (`AuctionID`),
  ADD UNIQUE KEY `ProductID` (`ProductID`),
  ADD KEY `UQ` (`ProductID`);

--
-- Indexes for table `normal sell product`
--
ALTER TABLE `normal sell product`
  ADD PRIMARY KEY (`SellingID`),
  ADD KEY `UQ` (`ProductID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `product_to_user` (`UserID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `user buy auction`
--
ALTER TABLE `user buy auction`
  ADD UNIQUE KEY `AuctionID` (`UserID`,`AuctionID`),
  ADD KEY `AuctionID_2` (`AuctionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auctioned product`
--
ALTER TABLE `auctioned product`
  MODIFY `AuctionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `normal sell product`
--
ALTER TABLE `normal sell product`
  MODIFY `SellingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auctioned product`
--
ALTER TABLE `auctioned product`
  ADD CONSTRAINT `auctioned product_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`);

--
-- Constraints for table `normal sell product`
--
ALTER TABLE `normal sell product`
  ADD CONSTRAINT `normal sell product_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_to_user` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Constraints for table `user buy auction`
--
ALTER TABLE `user buy auction`
  ADD CONSTRAINT `user buy auction_ibfk_1` FOREIGN KEY (`AuctionID`) REFERENCES `auctioned product` (`AuctionID`),
  ADD CONSTRAINT `user buy auction_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
