-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 22, 2012 at 03:52 AM
-- Server version: 5.1.44
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `amannagappa`
--

-- --------------------------------------------------------

--
-- Table structure for table `ama_activities`
--

CREATE TABLE IF NOT EXISTS `ama_activities` (
  `activities_id` int(11) NOT NULL AUTO_INCREMENT,
  `activities_name` varchar(100) NOT NULL,
  `activities_details` varchar(150) NOT NULL,
  `activities_value` decimal(5,2) NOT NULL,
  PRIMARY KEY (`activities_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ama_activities`
--

INSERT INTO `ama_activities` (`activities_id`, `activities_name`, `activities_details`, `activities_value`) VALUES
(1, 'Return Snorkeling And Round Island Excursion', '1 Boat - 4 stops, 3-4 Hours, 2-4pax', 450.00),
(2, 'Return Snorkeling And Round Island Excursion', '1 Boat - 2 stops, 1-2 Hours, 2-4pax', 250.00),
(3, 'Return Single Destination Boat Excursion', 'Laguna/Berjaya/Redang Airport, 1 Boat, 1 Pax (Min. 2 Pax)', 40.00),
(4, 'Round Trip Boat Cruise', '1 Boat, 4-5 Hours, 4-5 Pax', 500.00),
(5, '1 Way Merang To Redang Boat Ride', '1 Boat, 2-4 Pax', 400.00),
(6, '1 Way Redang To Perhentian Boat Ride', '1 Boat, 2-4 Pax', 600.00);

-- --------------------------------------------------------

--
-- Table structure for table `ama_admin`
--

CREATE TABLE IF NOT EXISTS `ama_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(20) NOT NULL,
  `admin_password` varchar(20) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ama_admin`
--


-- --------------------------------------------------------

--
-- Table structure for table `ama_currentstay`
--

CREATE TABLE IF NOT EXISTS `ama_currentstay` (
  `currentstay_id` int(11) NOT NULL AUTO_INCREMENT,
  `currentstay_guest_id` int(11) NOT NULL,
  `currentstay_checkin` date NOT NULL,
  `currentstay_checkout` date NOT NULL,
  PRIMARY KEY (`currentstay_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ama_currentstay`
--


-- --------------------------------------------------------

--
-- Table structure for table `ama_guest`
--

CREATE TABLE IF NOT EXISTS `ama_guest` (
  `guest_id` int(11) NOT NULL AUTO_INCREMENT,
  `guest_room_id` int(2) NOT NULL,
  `guest_invoice_id` int(2) NOT NULL,
  `guest_name` varchar(100) NOT NULL,
  `guest_type` int(2) NOT NULL,
  `guest_gender` int(2) NOT NULL,
  `guest_address` varchar(100) NOT NULL,
  `guest_country` int(2) NOT NULL,
  `guest_state` int(2) NOT NULL,
  `guest_city` int(2) NOT NULL,
  `guest_zip` varchar(10) NOT NULL,
  `guest_id_type` int(2) NOT NULL,
  `guest_id_number` varchar(25) NOT NULL,
  `guest_phone` varchar(25) NOT NULL,
  `guest_mobile` varchar(25) NOT NULL,
  `guest_fax` varchar(25) NOT NULL,
  `guest_email` varchar(50) NOT NULL,
  `guest_dob` varchar(10) NOT NULL,
  `guest_nationality` int(2) NOT NULL,
  PRIMARY KEY (`guest_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ama_guest`
--


-- --------------------------------------------------------

--
-- Table structure for table `ama_house_type`
--

CREATE TABLE IF NOT EXISTS `ama_house_type` (
  `house_id` int(11) NOT NULL AUTO_INCREMENT,
  `house_name` varchar(100) NOT NULL,
  `house_room_id` int(2) NOT NULL,
  PRIMARY KEY (`house_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ama_house_type`
--

INSERT INTO `ama_house_type` (`house_id`, `house_name`, `house_room_id`) VALUES
(1, 'Matoa Duplex Villa', 1),
(2, 'Patao Chalet', 2),
(3, 'Arung Terrace', 3);

-- --------------------------------------------------------

--
-- Table structure for table `ama_invoice`
--

CREATE TABLE IF NOT EXISTS `ama_invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_guest_id` int(11) NOT NULL,
  `invoice_value` varchar(5) NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ama_invoice`
--


-- --------------------------------------------------------

--
-- Table structure for table `ama_rate`
--

CREATE TABLE IF NOT EXISTS `ama_rate` (
  `rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `rate_type` varchar(25) NOT NULL,
  `rate_house_id` int(2) NOT NULL,
  `rate_value` decimal(5,2) NOT NULL,
  PRIMARY KEY (`rate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ama_rate`
--

INSERT INTO `ama_rate` (`rate_id`, `rate_type`, `rate_house_id`, `rate_value`) VALUES
(1, '3 Days 2 Nights', 1, 700.00),
(2, 'Extra Night', 1, 350.00),
(3, '3 Days 2 Nights', 2, 800.00),
(4, 'Extra Night', 2, 400.00),
(5, '3 Days 2 Nights', 3, 600.00),
(6, 'Extra Night', 3, 300.00);

-- --------------------------------------------------------

--
-- Table structure for table `ama_reservation`
--

CREATE TABLE IF NOT EXISTS `ama_reservation` (
  `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  `reservation_guest_id` int(11) NOT NULL,
  `reservation_arrival` date NOT NULL,
  `reservation_departure` date NOT NULL,
  `reservation_room_id` int(2) NOT NULL,
  `reservation_adult` int(5) NOT NULL,
  `reservation_children` int(5) NOT NULL,
  `reservation_value` int(5) NOT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ama_reservation`
--


-- --------------------------------------------------------

--
-- Table structure for table `ama_room`
--

CREATE TABLE IF NOT EXISTS `ama_room` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_house_id` int(2) NOT NULL,
  `room_name` varchar(50) NOT NULL,
  `room_unit_number` varchar(2) NOT NULL,
  `room_status` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`room_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ama_room`
--

INSERT INTO `ama_room` (`room_id`, `room_house_id`, `room_name`, `room_unit_number`, `room_status`) VALUES
(1, 1, 'Matoa 1', 'M1', 0),
(2, 1, 'Matoa 2', 'M2', 0),
(3, 2, 'Patao 1', 'P1', 0),
(4, 2, 'Patao 2', 'P2', 0),
(5, 2, 'Patao 3', 'P3', 0),
(6, 2, 'Patao 4', 'P4', 0),
(7, 2, 'Patao 5', 'P5', 0),
(8, 3, 'Arung 1', 'A1', 0),
(9, 3, 'Arung 2', 'A2', 0),
(10, 3, 'Arung 3', 'A3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ama_surcharge`
--

CREATE TABLE IF NOT EXISTS `ama_surcharge` (
  `surcharge_id` int(11) NOT NULL AUTO_INCREMENT,
  `surcharge_name` varchar(50) NOT NULL,
  `surcharge_days` int(2) NOT NULL,
  `surcharge_value` decimal(5,2) NOT NULL,
  PRIMARY KEY (`surcharge_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ama_surcharge`
--


-- --------------------------------------------------------

--
-- Table structure for table `ama_transport`
--

CREATE TABLE IF NOT EXISTS `ama_transport` (
  `transport_id` int(11) NOT NULL AUTO_INCREMENT,
  `transport_name` varchar(100) NOT NULL,
  `transport_waypoint` varchar(100) NOT NULL,
  `transport_adult_value` decimal(5,2) NOT NULL,
  `transport_children_value` decimal(5,2) NOT NULL,
  PRIMARY KEY (`transport_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ama_transport`
--

INSERT INTO `ama_transport` (`transport_id`, `transport_name`, `transport_waypoint`, `transport_adult_value`, `transport_children_value`) VALUES
(1, '1 Way Airport Van Transfer', 'Airport -> Merang Jetty', 20.00, 10.00),
(2, '1 Way Boat Transfer', 'Redang Kampung Jetty -> Amannagappa', 30.00, 15.00),
(3, '1 Way Speedboat Ride', 'Merang Jetty -> Amannagappa', 80.00, 60.00),
(4, '1 Way Ferry Ride', 'Shahbandar Jetty -> Redang Kampung Jetty -> Amannagappa', 65.00, 32.50),
(5, '1 Way Taxi Land Transfer', 'Airport -> Merang/Shahbandar Jetty', 50.00, 0.00),
(6, '1 Way Taxi Land Transfer', 'Bus Terminal -> Merang/Shahbandar Jetty', 50.00, 0.00);
