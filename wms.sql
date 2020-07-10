-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2020 at 11:44 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wms`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUSTOMERID` varchar(36) NOT NULL,
  `NAME` text NOT NULL,
  `ADRES` text NOT NULL,
  `POSTALCODE` text NOT NULL,
  `LOCATIONNAME` text NOT NULL,
  `SHIPPINGADRES` text DEFAULT NULL,
  `SHIPPINGPOSTALCODE` text DEFAULT NULL,
  `SHIPPINGLOCATIONNAME` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `ATTRIBUTE_15` int(11) NOT NULL,
  `INVENTORY_MINIMUM` int(11) DEFAULT NULL,
  `INVENTORY_PRICE_EURO` int(11) DEFAULT NULL,
  `INVENTORY_PRICE_DOLLAR` int(11) DEFAULT NULL,
  `MINIMUM_ORDER_AMOUNT` int(11) DEFAULT NULL,
  `REMARKS` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `picklist`
--

CREATE TABLE `picklist` (
  `ARTIKELNUMBER` int(11) NOT NULL,
  `WORKORDERNUMBER` text DEFAULT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `UNIT` text DEFAULT NULL,
  `PICKLISTAMOUNT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `ATTRIBUTE_20` int(11) NOT NULL,
  `BUYIN_PRICE_EURO` int(11) DEFAULT NULL,
  `BUYIN_PRICE_DOLLAR` int(11) DEFAULT NULL,
  `SELLING_PRICE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `CODE` int(11) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `LENGTH` int(11) DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  `HEIGHT` int(11) DEFAULT NULL,
  `WEIGHT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reserverd_inventory`
--

CREATE TABLE `reserverd_inventory` (
  `PRODUCTCODE` int(11) DEFAULT NULL,
  `WORKORDERNUMBER` int(11) DEFAULT NULL,
  `INVENTORYAMOUNT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_info`
--

CREATE TABLE `supplier_info` (
  `SUPPLIERNAME` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_of_product`
--

CREATE TABLE `supplier_of_product` (
  `SUPPLIER_PRODUCT_CODE` text NOT NULL,
  `PRODUCT_CODE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_product_info`
--

CREATE TABLE `supplier_product_info` (
  `SUPPLIER` text NOT NULL,
  `ARTICLECODE_SUPPLIER` int(11) NOT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `LEAD_TIME` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `workorder`
--

CREATE TABLE `workorder` (
  `WORKORDERNUMBER` int(11) NOT NULL,
  `ORDERNUMBER` int(11) NOT NULL,
  `CUSTOMERID` varchar(36) NOT NULL,
  `RECIEVINGDATE` date NOT NULL,
  `DELIVERYDATE` date NOT NULL,
  `SENDDATE` date NOT NULL,
  `PRODUCTIONSTART` date NOT NULL,
  `PRODUCTIONEND` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
