-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2018 at 09:05 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizzeria`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(120) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `user_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `street` varchar(45) NOT NULL,
  `buildingNumber` varchar(45) NOT NULL,
  `apartmentNumber` varchar(45) DEFAULT NULL,
  `district` varchar(45) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `status` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `status`) VALUES
(1, 'México', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `creditcard`
--

CREATE TABLE `creditcard` (
  `user_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `credictardNumb` varchar(45) NOT NULL,
  `creditcardOwner` varchar(45) NOT NULL,
  `creditcardExpiration` varchar(45) NOT NULL,
  `creditcardSecurity` varchar(45) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `extratopping`
--

CREATE TABLE `extratopping` (
  `Toppingextra_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `orderDate` varchar(45) NOT NULL,
  `total` double NOT NULL,
  `paymentMethod` varchar(45) NOT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `OrderElementName` varchar(80) NOT NULL,
  `extraToppings` bit(1) NOT NULL,
  `price` double NOT NULL,
  `quantity` varchar(45) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pizza`
--

CREATE TABLE `pizza` (
  `id` int(11) NOT NULL,
  `pizzaName` varchar(80) NOT NULL,
  `pizzaImage` varchar(100) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  `categoryName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pizza`
--

INSERT INTO `pizza` (`id`, `pizzaName`, `pizzaImage`, `status`, `categoryName`) VALUES
(1, 'Veggie', 'assets/pizzas/tradicionales/vegetariana.png', b'1', 'Sabores Tradicionales'),
(2, 'Pepperoni y Jalapeño', 'assets/pizzas/tradicionales/pepperonijalapeno.png', b'1', 'Sabores Tradicionales'),
(3, 'Pepperoni', 'assets/pizzas/tradicionales/peperonni.png', b'1', 'Sabores Tradicionales'),
(4, 'Carnes', 'assets/pizzas/tradicionales/carnes.png', b'1', 'Sabores Tradicionales'),
(5, 'Alfredo', 'assets/pizzas/tradicionales/alfredo.png', b'1', 'Sabores Tradicionales'),
(6, 'Salchicha Italiana', 'assets/pizzas/tradicionales/salchicha.png', b'1', 'Sabores Tradicionales'),
(7, 'Cerdo BBQ', 'assets/pizzas/especiales/puerco-bbq.png', b'1', 'Sabores Especiales'),
(8, 'Pollo Buffalo', 'assets/pizzas/especiales/buffalopollo.png', b'1', 'Sabores Especiales'),
(9, 'Jamón Cheddar', 'assets/pizzas/especiales/hamcheddar.png', b'1', 'Sabores Especiales'),
(10, 'Hawaiiana', 'assets/pizzas/especiales/hawaiiana.png', b'1', 'Sabores Especiales'),
(11, 'Mac & Cheese', 'assets/pizzas/especiales/maccheese.png', b'1', 'Sabores Especiales'),
(12, 'Veggie picante', 'assets/pizzas/especiales/zestyveggie.png', b'1', 'Sabores Especiales');

-- --------------------------------------------------------

--
-- Table structure for table `pizzasize`
--

CREATE TABLE `pizzasize` (
  `id` int(11) NOT NULL,
  `pizza_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `precio` double NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pizzasize`
--

INSERT INTO `pizzasize` (`id`, `pizza_id`, `size_id`, `precio`, `status`) VALUES
(73, 1, 1, 106, b'1'),
(74, 1, 2, 140, b'1'),
(75, 1, 3, 160, b'1'),
(76, 2, 1, 106, b'1'),
(77, 2, 2, 146, b'1'),
(78, 2, 3, 161, b'1'),
(79, 3, 1, 109, b'1'),
(80, 3, 2, 156, b'1'),
(81, 3, 3, 181, b'1'),
(82, 4, 1, 112, b'1'),
(83, 4, 2, 153, b'1'),
(84, 4, 3, 170, b'1'),
(85, 5, 1, 112, b'1'),
(86, 5, 2, 140, b'1'),
(87, 5, 3, 161, b'1'),
(88, 6, 1, 112, b'1'),
(89, 6, 2, 145, b'1'),
(90, 6, 3, 184, b'1'),
(91, 7, 1, 107, b'1'),
(92, 7, 2, 151, b'1'),
(93, 7, 3, 161, b'1'),
(94, 8, 1, 106, b'1'),
(95, 8, 2, 158, b'1'),
(96, 8, 3, 175, b'1'),
(97, 9, 1, 118, b'1'),
(98, 9, 2, 152, b'1'),
(99, 9, 3, 185, b'1'),
(100, 10, 1, 110, b'1'),
(101, 10, 2, 157, b'1'),
(102, 10, 3, 163, b'1'),
(103, 11, 1, 114, b'1'),
(104, 11, 2, 130, b'1'),
(105, 11, 3, 171, b'1'),
(106, 12, 1, 107, b'1'),
(107, 12, 2, 148, b'1'),
(108, 12, 3, 161, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `pizzatoppings`
--

CREATE TABLE `pizzatoppings` (
  `Topping_id` int(11) NOT NULL,
  `Pizza_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pizzatoppings`
--

INSERT INTO `pizzatoppings` (`Topping_id`, `Pizza_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 10),
(1, 11),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(3, 5),
(4, 1),
(4, 12),
(5, 1),
(5, 12),
(6, 1),
(7, 1),
(8, 2),
(8, 3),
(8, 4),
(9, 4),
(9, 9),
(9, 10),
(10, 4),
(11, 4),
(12, 2),
(13, 6),
(14, 11),
(15, 8),
(16, 8),
(17, 7),
(18, 7),
(19, 10),
(20, 9),
(20, 12),
(21, 9),
(21, 12),
(22, 12);

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `id` int(11) NOT NULL,
  `clientModule` bit(1) NOT NULL,
  `adminModule` bit(1) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `status` bit(1) DEFAULT b'1',
  `Country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `name`, `status`, `Country_id`) VALUES
(2, 'Jalisco', b'1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `privileges_id` int(11) NOT NULL,
  `roleName` varchar(45) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `name`, `status`) VALUES
(1, 'Mediana', b'1'),
(2, 'Grande', b'1'),
(3, 'Familiar', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `topping`
--

CREATE TABLE `topping` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `canBeExtra` bit(1) NOT NULL DEFAULT b'1',
  `status` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topping`
--

INSERT INTO `topping` (`id`, `name`, `price`, `canBeExtra`, `status`) VALUES
(1, 'Queso', 0, b'0', b'1'),
(2, 'Salsa de tomate', 0, b'0', b'1'),
(3, 'Salsa Alfredo', 0, b'0', b'1'),
(4, 'Cebolla morada', 8, b'1', b'1'),
(5, 'Pimiento verde', 9, b'1', b'1'),
(6, 'Champiñones', 9, b'1', b'1'),
(7, 'Aceitunas negras', 11, b'1', b'1'),
(8, 'Pepperoni', 10, b'1', b'1'),
(9, 'Jamón', 9, b'1', b'1'),
(10, 'Carne de res', 0, b'0', b'1'),
(11, 'Salchicha', 10, b'1', b'1'),
(12, 'Jalapeño', 9, b'1', b'1'),
(13, 'Salchicha italiana', 0, b'0', b'1'),
(14, 'Macarrones con queso', 0, b'0', b'1'),
(15, 'Pollo', 0, b'0', b'1'),
(16, 'Salsa Buffalo', 0, b'0', b'1'),
(17, 'Carne de cerdo', 0, b'0', b'1'),
(18, 'Salsa Barbecue', 0, b'0', b'1'),
(19, 'Piña', 10, b'1', b'1'),
(20, 'Orilla con salsa ranch y parmesano picante', 0, b'0', b'1'),
(21, 'Cheddar', 0, b'0', b'1'),
(22, 'Oregano', 0, b'0', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `Province_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(60) NOT NULL,
  `lastName` varchar(60) NOT NULL,
  `secondLastName` varchar(60) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Account_Role_idx` (`rol_id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_Address_User_idx` (`user_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `creditcard`
--
ALTER TABLE `creditcard`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_Creditcard_User1_idx` (`user_id`);

--
-- Indexes for table `extratopping`
--
ALTER TABLE `extratopping`
  ADD PRIMARY KEY (`Toppingextra_id`,`order_id`,`item_id`),
  ADD KEY `fk_ExtraTopping_Topping1_idx` (`Toppingextra_id`),
  ADD KEY `fk_ExtraTopping_OrderItem1_idx` (`order_id`,`item_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Order_User_idx` (`user_id`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`order_id`,`item_id`),
  ADD KEY `fk_Element_Order1_idx` (`order_id`),
  ADD KEY `fk_Element_Pizza_idx` (`item_id`);

--
-- Indexes for table `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pizzasize`
--
ALTER TABLE `pizzasize`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1_idx` (`pizza_id`),
  ADD KEY `fk2_idx` (`size_id`);

--
-- Indexes for table `pizzatoppings`
--
ALTER TABLE `pizzatoppings`
  ADD PRIMARY KEY (`Topping_id`,`Pizza_id`),
  ADD KEY `fk_PizzaToppings_Topping1_idx` (`Topping_id`),
  ADD KEY `fk_PizzaToppings_Pizza1_idx` (`Pizza_id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Province_Country1_idx` (`Country_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Role_Privileges1_idx` (`privileges_id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topping`
--
ALTER TABLE `topping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_User_Account1_idx` (`account_id`),
  ADD KEY `fk_User_Province1_idx` (`Province_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pizza`
--
ALTER TABLE `pizza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `pizzasize`
--
ALTER TABLE `pizzasize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `topping`
--
ALTER TABLE `topping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `fk_Account_Role` FOREIGN KEY (`rol_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `fk_Address_User` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `creditcard`
--
ALTER TABLE `creditcard`
  ADD CONSTRAINT `fk_Creditcard_User1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `extratopping`
--
ALTER TABLE `extratopping`
  ADD CONSTRAINT `fk_ExtraTopping_OrderItem1` FOREIGN KEY (`order_id`,`item_id`) REFERENCES `orderitem` (`order_id`, `item_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ExtraTopping_Topping1` FOREIGN KEY (`Toppingextra_id`) REFERENCES `topping` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_Order_User` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `fk_Element_Order1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Element_Pizza` FOREIGN KEY (`item_id`) REFERENCES `pizza` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pizzasize`
--
ALTER TABLE `pizzasize`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`pizza_id`) REFERENCES `pizza` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk2` FOREIGN KEY (`size_id`) REFERENCES `size` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pizzatoppings`
--
ALTER TABLE `pizzatoppings`
  ADD CONSTRAINT `fk_PizzaToppings_Pizza1` FOREIGN KEY (`Pizza_id`) REFERENCES `pizza` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PizzaToppings_Topping1` FOREIGN KEY (`Topping_id`) REFERENCES `topping` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `province`
--
ALTER TABLE `province`
  ADD CONSTRAINT `fk_Province_Country1` FOREIGN KEY (`Country_id`) REFERENCES `country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `fk_Role_Privileges1` FOREIGN KEY (`privileges_id`) REFERENCES `privileges` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_User_Account1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_User_Province1` FOREIGN KEY (`Province_id`) REFERENCES `province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
