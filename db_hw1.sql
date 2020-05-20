-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2018 at 07:11 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hw1`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID` char(5) NOT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Password` varchar(10) DEFAULT NULL,
  `FirstName` varchar(10) DEFAULT NULL,
  `LastName` varchar(10) DEFAULT NULL,
  `Sex` varchar(6) DEFAULT NULL,
  `Credit` varchar(10) DEFAULT NULL,
  `Cellphone` char(11) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID`, `Email`, `Password`, `FirstName`, `LastName`, `Sex`, `Credit`, `Cellphone`, `Address`) VALUES
('10000', 'a@yahoo.com', '11111', 'aghaye', 'samadi', 'male', '1000000', '22111111', 'c-0'),
('10001', 'b@yahoo.com', '22222', 'rana', 'shamim', 'female', '1000000', '22222222', 'c-1'),
('10002', 'c@yahoo.com', '33333', 'parsa', 'enami', 'male', '1000000', '22333333', 'c-2'),
('10003', 'd@yahoo.com', '44444', 'ali', 'morty', 'male', '1000000', '22444444', 'c-3'),
('10004', 'e@yahoo.com', '55555', 'mamad', 'rezaei', 'male', '1000000', '22555555', 'c-4'),
('10005', 'f@yahoo.com', '66666', 'ashkan', 'mirza', 'male', '1000000', '22666666', 'c-5'),
('10006', 'g@yahoo.com', '77777', 'maryam', 'mohamadi', 'female', '1000000', '22777777', 'c-6'),
('10007', 'h@yahoo.com', '88888', 'maryam', 'masoumi', 'female', '1000000', '22888888', 'c-7'),
('10008', 'i@yahoo.com', '99999', 'ali', 'daghighi', 'male', '1000000', '22999999', 'c-8'),
('10009', 'j@yahoo.com', '111110', 'zahra', 'yousefi', 'female', '1000000', '66444444', 'c-9'),
('10010', 'k@yahoo.com', '122221', 'eisa', 'keramati', 'male', '1000000', '66555555', 'c-10');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `ID` char(5) NOT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Password` varchar(10) DEFAULT NULL,
  `FirstName` varchar(10) DEFAULT NULL,
  `LastName` varchar(10) DEFAULT NULL,
  `Sex` varchar(6) DEFAULT NULL,
  `Cellphone` char(11) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`ID`, `Email`, `Password`, `FirstName`, `LastName`, `Sex`, `Cellphone`, `Address`) VALUES
('11111', 'l@yahoo.com', '12345', 'asghar', 'asghari', 'male', '44111111', 'm-1'),
('22222', 'l@yahoo.com', '12345', 'akbar', 'akbari', 'male', '44222222', 'm-2'),
('33333', 'm@yahoo.com', '12345', 'ahmad', 'ahmadi', 'male', '44333333', 'm-3'),
('44444', 'n@yahoo.com', '12345', 'aghdas', 'aghdasi', 'female', '44444444', 'm-4'),
('55555', 'o@yahoo.com', '12345', 'akram', 'akrami', 'female', '44555555', 'm-5');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `ID` char(5) NOT NULL,
  `VendorID` char(5) NOT NULL,
  `CustomerID` char(5) NOT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `PaymentType` varchar(10) DEFAULT NULL,
  `CreatedAt` varchar(10) DEFAULT NULL,
  `DeliveryAddress` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`ID`, `VendorID`, `CustomerID`, `Status`, `PaymentType`, `CreatedAt`, `DeliveryAddress`) VALUES
('30001', '20001', '10002', 'delivered', 'atm', '11', 'c-2'),
('30002', '20002', '10005', 'registered', 'atm', '3', 'c-555'),
('30003', '20001', '10001', 'delivered', 'cash', '4', 'c-1'),
('30004', '20004', '10002', 'delivered', 'atm', '11', 'c-2'),
('30005', '20003', '10010', 'coming', 'cash', '3', 'c-777'),
('30006', '20005', '10006', 'registered', 'cash', '11', 'c-6'),
('30007', '20001', '10000', 'coming', 'cash', '11', 'c-0'),
('30008', '20001', '10002', 'coming', 'atm', '5', 'c-2'),
('30009', '20001', '10001', 'delivered', 'atm', '8', 'c-4'),
('30010', '20001', '10007', 'coming', 'atm', '8', 'c-7'),
('30011', '20001', '10009', 'coming', 'cash', '7', 'c-9'),
('30012', '20001', '10008', 'delivered', 'cash', '9', 'c-543'),
('30013', '20001', '10003', 'registered', 'atm', '5', 'c-3'),
('30014', '20001', '10004', 'registered', 'cash', '10', 'c-4');

-- --------------------------------------------------------

--
-- Table structure for table `orderproduct`
--

CREATE TABLE `orderproduct` (
  `OrderID` char(5) NOT NULL,
  `ProductID` char(5) NOT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderproduct`
--

INSERT INTO `orderproduct` (`OrderID`, `ProductID`, `Amount`) VALUES
('30001', '40001', 5),
('30001', '40002', 9),
('30001', '40003', 5),
('30001', '40004', 5),
('30001', '40005', 6),
('30001', '40006', 8),
('30001', '40012', 9),
('30001', '40008', 3),
('30001', '40009', 1),
('30001', '40010', 7),
('30002', '40001', 3),
('30002', '40007', 6),
('30002', '40011', 9),
('30003', '40001', 2),
('30003', '40012', 1),
('30004', '40001', 7),
('30004', '40013', 3),
('30004', '40014', 5),
('30004', '40015', 7),
('30005', '40001', 7),
('30006', '40001', 5),
('30007', '40001', 2),
('30008', '40001', 8),
('30009', '40001', 9),
('30010', '40001', 8),
('30011', '40001', 4),
('30012', '40001', 5),
('30013', '40001', 2),
('30014', '40001', 9),
('30014', '40016', 8),
('30014', '40017', 9),
('30014', '40018', 8),
('30014', '40019', 6),
('30014', '40020', 7),
('30006', '40007', 2),
('30006', '40008', 3),
('30006', '40009', 4),
('30006', '40020', 5);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` char(5) NOT NULL,
  `Title` varchar(10) DEFAULT NULL,
  `Price` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `Title`, `Price`) VALUES
('40001', 'book', '12000'),
('40002', 'shoe', '20000'),
('40003', 'glass', '3000'),
('40004', 'pen', '2000'),
('40005', 'hat', '30000'),
('40006', 'pencil', '1000'),
('40007', 'car', '1000000'),
('40008', 'mobile', '800000'),
('40009', 'marker', '1500'),
('40010', 'headphone', '200000'),
('40011', 'fan', '110000'),
('40012', 'lamp', '20000'),
('40013', 'meat', '80000'),
('40014', 'ham', '90000'),
('40015', 'umberlla', '60000'),
('40016', 'banana', '5000'),
('40017', 'apple', '4000'),
('40018', 'ball', '90000'),
('40019', 'scarf', '30000'),
('40020', 'laptop', '900000');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `ID` char(5) NOT NULL,
  `Title` varchar(10) DEFAULT NULL,
  `City` varchar(10) DEFAULT NULL,
  `ManagerID` char(5) NOT NULL,
  `Phone` char(8) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`ID`, `Title`, `City`, `ManagerID`, `Phone`, `Address`) VALUES
('20001', 'pasdaran', 'tehran', '22222', 'v-1', '55222222'),
('20002', 'varamin', 'karaj', '44444', 'v-2', '55333333'),
('20003', 'shush', 'tehran', '11111', 'v-3', '55444444'),
('20004', 'abrisham', 'yazd', '33333', 'v-4', '55555555'),
('20005', 'saadatabad', 'tehran', '55555', 'v-5', '55666666');

-- --------------------------------------------------------

--
-- Table structure for table `vendorproduct`
--

CREATE TABLE `vendorproduct` (
  `VendorID` char(5) NOT NULL,
  `ProductID` char(5) NOT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendorproduct`
--

INSERT INTO `vendorproduct` (`VendorID`, `ProductID`, `Amount`) VALUES
('20001', '40001', 50),
('20001', '40002', 30),
('20001', '40003', 15),
('20001', '40004', 10),
('20002', '40001', 20),
('20002', '40005', 500),
('20002', '40008', 5),
('20002', '40009', 60),
('20003', '40003', 10),
('20003', '40007', 40),
('20003', '40010', 10),
('20003', '40012', 90),
('20003', '40018', 80),
('20003', '40019', 70),
('20004', '40009', 10),
('20004', '40020', 110),
('20004', '40011', 100),
('20004', '40006', 50),
('20004', '40013', 20),
('20004', '40014', 25),
('20004', '40002', 10),
('20004', '40001', 15),
('20004', '40003', 45),
('20004', '40019', 75),
('20004', '40016', 65),
('20005', '40006', 30),
('20005', '40009', 35),
('20005', '40016', 45),
('20005', '40019', 5),
('20005', '40020', 15),
('20005', '40008', 3),
('20005', '40007', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `VendorID` (`VendorID`) USING BTREE;

--
-- Indexes for table `orderproduct`
--
ALTER TABLE `orderproduct`
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ManagerID` (`ManagerID`);

--
-- Indexes for table `vendorproduct`
--
ALTER TABLE `vendorproduct`
  ADD KEY `VendorID` (`VendorID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `order` (`CustomerID`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`VendorID`) REFERENCES `vendor` (`ID`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`ID`);

--
-- Constraints for table `orderproduct`
--
ALTER TABLE `orderproduct`
  ADD CONSTRAINT `orderproduct_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order` (`ID`),
  ADD CONSTRAINT `orderproduct_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ID`);

--
-- Constraints for table `vendor`
--
ALTER TABLE `vendor`
  ADD CONSTRAINT `vendor_ibfk_1` FOREIGN KEY (`ManagerID`) REFERENCES `manager` (`ID`);

--
-- Constraints for table `vendorproduct`
--
ALTER TABLE `vendorproduct`
  ADD CONSTRAINT `vendorproduct_ibfk_1` FOREIGN KEY (`VendorID`) REFERENCES `vendor` (`ID`),
  ADD CONSTRAINT `vendorproduct_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
