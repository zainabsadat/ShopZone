-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2022 at 06:54 AM
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
-- Database: `shop_zon`
--

-- --------------------------------------------------------

--
-- Table structure for table `acount`
--

CREATE TABLE `acount` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `age` int(3) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acount`
--

INSERT INTO `acount` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `age`, `phone`, `date`) VALUES
(7, 'zainab', 'sadat', 'sadatsadat', 'zain@gmail.com', 'zain123786', 22, '0731277889', '2022-07-10');

-- --------------------------------------------------------

--
-- Table structure for table `catagori`
--

CREATE TABLE `catagori` (
  `id` int(11) NOT NULL,
  `catagori_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catagori`
--

INSERT INTO `catagori` (`id`, `catagori_name`) VALUES
(1, 'زیور آلات'),
(2, 'کمپیوتر'),
(3, 'بوت'),
(4, 'چادر');

-- --------------------------------------------------------

--
-- Table structure for table `froshat`
--

CREATE TABLE `froshat` (
  `id` int(11) NOT NULL,
  `barcode_id` int(11) DEFAULT NULL,
  `name_of_m` varchar(60) NOT NULL,
  `type_of_m` varchar(60) NOT NULL,
  `material_amount` int(6) NOT NULL,
  `sell_price` int(11) NOT NULL,
  `delivery_price` int(11) NOT NULL,
  `date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `froshat`
--

INSERT INTO `froshat` (`id`, `barcode_id`, `name_of_m`, `type_of_m`, `material_amount`, `sell_price`, `delivery_price`, `date`) VALUES
(3, NULL, 'pv', 'کمپیوتر', 11, 200, 20, '2022-07-08'),
(4, NULL, 'pc', 'کمپیوتر', 12, 200, 100, '2022-07-08'),
(5, NULL, 'pc', 'کمپیوتر', 12, 200, 12, '2022-07-08'),
(6, NULL, 'pc', 'کمپیوتر', 12, 200, 12, '2022-07-08'),
(7, NULL, 'pc', 'کمپیوتر', 67, 200, 12, '2022-07-08'),
(8, NULL, 'pc', 'کمپیوتر', 2, 200, 12, '2022-07-08'),
(9, NULL, 'pc', 'کمپیوتر', 2, 200, 12, '2022-07-08'),
(10, NULL, 'pc', 'کمپیوتر', 2, 200, 12, '2022-07-08'),
(11, NULL, 'pc', 'کمپیوتر', 2, 200, 12, '2022-07-08'),
(12, NULL, 'pc', 'کمپیوتر', 2, 200, 12, '2022-07-08'),
(13, NULL, 'pc', 'کمپیوتر', 2, 200, 12, '2022-07-08'),
(14, NULL, 'pc', 'کمپیوتر', 2, 200, 10, '2022-07-08'),
(15, NULL, 'pc', 'کمپیوتر', 3, 300, 50, '2022-07-08'),
(16, NULL, 'pc', 'کمپیوتر', 4, 200, 100, '2022-07-08'),
(17, NULL, 'pc', 'کمپیوتر', 6, 200, 12, '2022-07-08'),
(18, NULL, 'pc', 'کمپیوتر', 2, 200, 100, '2022-07-08'),
(19, NULL, 'pc', 'کمپیوتر', 3, 100, 23, '2022-07-08'),
(20, NULL, 'pc', 'کمپیوتر', 1, 200, 12, '2022-07-08'),
(21, NULL, 'pc', 'کمپیوتر', 1, 200, 12, '2022-07-08'),
(22, NULL, 'pc', 'کمپیوتر', 3, 200, 100, '2022-07-08'),
(23, NULL, 'pc', 'کمپیوتر', 5, 200, 30, '2022-07-08'),
(24, 5, '', 'کمپیوتر', 0, 0, 10, '2022-07-12'),
(25, 5, 'dell', 'کمپیوتر', 2, 200, 10, '2022-07-12'),
(26, 5, 'dell', 'کمپیوتر', 2, 200, 10, '2022-07-12'),
(27, 5, 'dell', 'کمپیوتر', 2, 200, 10, '2022-07-12'),
(28, 5, 'dell', 'کمپیوتر', 12, 200, 21, '2022-07-12');

-- --------------------------------------------------------

--
-- Table structure for table `godam`
--

CREATE TABLE `godam` (
  `id` int(11) NOT NULL,
  `barcode` varchar(30) NOT NULL,
  `name_of_m` varchar(30) NOT NULL,
  `catagori_name` int(11) DEFAULT NULL,
  `numbers` int(11) NOT NULL,
  `main_price` int(11) NOT NULL,
  `delivery_price` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `sales_price` int(11) NOT NULL,
  `price_per_item` int(11) NOT NULL,
  `date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `godam`
--

INSERT INTO `godam` (`id`, `barcode`, `name_of_m`, `catagori_name`, `numbers`, `main_price`, `delivery_price`, `tax`, `total_price`, `sales_price`, `price_per_item`, `date`) VALUES
(5, '123zxc', 'dell', 2, 10, 100, 20, 20, 1400, 2000, 200, '2022-07-10'),
(6, 'aa22', 'ring', 1, 10, 7, 1, 1, 90, 140, 14, '2022-07-10');

-- --------------------------------------------------------

--
-- Table structure for table `masaref`
--

CREATE TABLE `masaref` (
  `id` int(11) NOT NULL,
  `id_type` int(11) DEFAULT NULL,
  `discription` varchar(200) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masaref`
--

INSERT INTO `masaref` (`id`, `id_type`, `discription`, `amount`, `price`, `date`) VALUES
(5, 1, 'lksd lakjdsf', 10, 100, '2022-07-11'),
(6, 2, 'sdfd sdf', 4, 150, '2022-07-07');

-- --------------------------------------------------------

--
-- Table structure for table `masaref_type`
--

CREATE TABLE `masaref_type` (
  `id` int(11) NOT NULL,
  `name_masraf` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masaref_type`
--

INSERT INTO `masaref_type` (`id`, `name_masraf`) VALUES
(1, 'قابلی پلو'),
(2, 'کباب'),
(3, 'شوربا'),
(4, 'لوبیا');

-- --------------------------------------------------------

--
-- Table structure for table `pardakht_mash`
--

CREATE TABLE `pardakht_mash` (
  `id` int(11) NOT NULL,
  `name_fk_sk` int(11) DEFAULT NULL,
  `position` varchar(60) NOT NULL,
  `salary` varchar(60) NOT NULL,
  `bardasht` int(11) DEFAULT NULL,
  `rest_amount` int(11) DEFAULT NULL,
  `explain_payment` varchar(200) NOT NULL,
  `date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pardakht_mash`
--

INSERT INTO `pardakht_mash` (`id`, `name_fk_sk`, `position`, `salary`, `bardasht`, `rest_amount`, `explain_payment`, `date`) VALUES
(5, 7, 'محاسب', '100', 0, 0, 'lsjf ', '2022-07-10');

-- --------------------------------------------------------

--
-- Table structure for table `sabt_karmand`
--

CREATE TABLE `sabt_karmand` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `fathername` varchar(40) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `salary` int(11) NOT NULL,
  `position` varchar(20) DEFAULT NULL,
  `date` date DEFAULT current_timestamp(),
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sabt_karmand`
--

INSERT INTO `sabt_karmand` (`id`, `firstname`, `lastname`, `fathername`, `phone`, `salary`, `position`, `date`, `address`) VALUES
(5, 'جمشید', 'احمدی', 'احمد', '08765845383', 10000, 'کارگر', '2022-07-07', 'مزار آریانا...'),
(7, 'Zainab', 'Sadat', 'ali aqa', '07677892698', 100, 'محاسب', '2022-07-08', 'khorasan markit');

-- --------------------------------------------------------

--
-- Table structure for table `sale_to_customer`
--

CREATE TABLE `sale_to_customer` (
  `id` int(11) NOT NULL,
  `costumer_name` varchar(40) NOT NULL,
  `supermarketName` varchar(100) NOT NULL,
  `id_invice` int(11) NOT NULL,
  `total` int(7) NOT NULL,
  `payed` int(7) NOT NULL,
  `rest` int(7) NOT NULL,
  `date` date DEFAULT current_timestamp(),
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sale_to_customer`
--

INSERT INTO `sale_to_customer` (`id`, `costumer_name`, `supermarketName`, `id_invice`, `total`, `payed`, `rest`, `date`, `address`) VALUES
(1, 'سوفیا', 'بیگ هوم', 1234, 1000, 100, 0, '2022-07-02', '');

-- --------------------------------------------------------

--
-- Table structure for table `shop_info`
--

CREATE TABLE `shop_info` (
  `id` int(11) NOT NULL,
  `firstname` varchar(13) NOT NULL,
  `fnumber` varchar(13) DEFAULT NULL,
  `snumber` varchar(40) DEFAULT NULL,
  `shopaddress` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop_info`
--

INSERT INTO `shop_info` (`id`, `firstname`, `fnumber`, `snumber`, `shopaddress`, `note`, `date`) VALUES
(2, 'zainab', '0987654321', '0731277889', 'iuhouhiu', 'kohjoijoi', '2022-07-04'),
(4, 'AWPOrgan', '9898765544', '4325256767', 'apsojdfp asdofh pasdfh psd', 'abilityofafghanwomen', '2022-07-07'),
(5, 'kjooij', '98789798798', '8798798798798', 'ijhjihoihiuhiuhiu', 'oojiojiojioj', '2022-07-07'),
(6, 'lkjnkljlkj', '9809809890', '987098098908', 'lklkjlkjkljlkjlk', 'oijiojoij', '2022-07-07'),
(7, 'lllllllllllll', '980989809', '809809808', 'oijiojoijioji', 'oijiojoijioj', '2022-07-07'),
(8, 'kkkkkkkkkkkkk', '98098098908', '9809809809', 'llkjihjiuiuhui', 'ohjoihoih', '2022-07-07'),
(9, 'oihjioj', '9809809809809', '908098098809', 'pojiohiohijihiohoih', 'oijiojiojiojiojiojio', '2022-07-07'),
(10, 'kniuohihioh', '9878909879878', '987897897987897', 'ihiggihkuhiuhiu', 'jhuiuhjkjlkkn', '2022-07-07'),
(11, 'kjnhjiiuhijio', '9878798798789', '7798789789798', 'jhioiuhihhiuhuih', 'ihiuhhoojihiuiujhi', '2022-07-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acount`
--
ALTER TABLE `acount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagori`
--
ALTER TABLE `catagori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `froshat`
--
ALTER TABLE `froshat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barcode_id` (`barcode_id`);

--
-- Indexes for table `godam`
--
ALTER TABLE `godam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catagori_name` (`catagori_name`);

--
-- Indexes for table `masaref`
--
ALTER TABLE `masaref`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`);

--
-- Indexes for table `masaref_type`
--
ALTER TABLE `masaref_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pardakht_mash`
--
ALTER TABLE `pardakht_mash`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_fk_sk` (`name_fk_sk`);

--
-- Indexes for table `sabt_karmand`
--
ALTER TABLE `sabt_karmand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_to_customer`
--
ALTER TABLE `sale_to_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_info`
--
ALTER TABLE `shop_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acount`
--
ALTER TABLE `acount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `catagori`
--
ALTER TABLE `catagori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `froshat`
--
ALTER TABLE `froshat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `godam`
--
ALTER TABLE `godam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `masaref`
--
ALTER TABLE `masaref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `masaref_type`
--
ALTER TABLE `masaref_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pardakht_mash`
--
ALTER TABLE `pardakht_mash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sabt_karmand`
--
ALTER TABLE `sabt_karmand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sale_to_customer`
--
ALTER TABLE `sale_to_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shop_info`
--
ALTER TABLE `shop_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `froshat`
--
ALTER TABLE `froshat`
  ADD CONSTRAINT `froshat_ibfk_1` FOREIGN KEY (`barcode_id`) REFERENCES `godam` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `godam`
--
ALTER TABLE `godam`
  ADD CONSTRAINT `godam_ibfk_1` FOREIGN KEY (`catagori_name`) REFERENCES `catagori` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `masaref`
--
ALTER TABLE `masaref`
  ADD CONSTRAINT `masaref_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `masaref_type` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `pardakht_mash`
--
ALTER TABLE `pardakht_mash`
  ADD CONSTRAINT `pardakht_mash_ibfk_1` FOREIGN KEY (`name_fk_sk`) REFERENCES `sabt_karmand` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
