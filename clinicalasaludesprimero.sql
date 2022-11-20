-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2021 at 09:53 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinicalasaludesprimero`
--

-- --------------------------------------------------------

--
-- Table structure for table `p_branches_dir`
--

CREATE TABLE `p_branches_dir` (
  `id` bigint(20) NOT NULL,
  `guardian` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `contact` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_branches_dir`
--

INSERT INTO `p_branches_dir` (`id`, `guardian`, `name`, `address`, `location`, `contact`, `type`, `last_update`) VALUES
(1, '1', 'La Salud es Primero', 'Avenida Olímpica #47', 'San Salvador, San Salvador', '5032233445566', 'Head Office', '2021-04-01 17:07:48'),
(13, '1', 'Antiguo Cuscatlán ', 'asdfghjkl', 'asdfghjkl', '8005243233', 'Branch', '2021-04-01 19:25:44'),
(11, '1', 'Santa Elena', 'Asdfghjkl', 'asgjddfs', '8005248232', 'Branch', '2021-04-02 17:07:05');

-- --------------------------------------------------------

--
-- Table structure for table `p_global_permissions`
--

CREATE TABLE `p_global_permissions` (
  `id` varchar(250) NOT NULL DEFAULT '',
  `portal_name` varchar(250) NOT NULL,
  `version` varchar(250) NOT NULL,
  `guardian_short_name` varchar(250) NOT NULL,
  `guardian_name` varchar(250) NOT NULL,
  `register_patient` varchar(20) NOT NULL,
  `prescribe_patient` varchar(20) NOT NULL,
  `patients_directory` varchar(20) NOT NULL,
  `pending_prescriptions` varchar(20) NOT NULL,
  `add_staff` varchar(20) NOT NULL,
  `staff_directory` varchar(20) NOT NULL,
  `my_porfile` varchar(20) NOT NULL,
  `staff_profile` varchar(20) NOT NULL,
  `add_branch` varchar(20) NOT NULL,
  `branches_directory` varchar(20) NOT NULL,
  `global_settings` varchar(20) NOT NULL,
  `introduce_medicine` varchar(20) NOT NULL,
  `update_stock` varchar(20) NOT NULL,
  `consumed_stock_local` varchar(20) NOT NULL,
  `consumed_stock_global` varchar(20) NOT NULL,
  `opening_time` varchar(250) NOT NULL,
  `closing_time` varchar(250) NOT NULL,
  `during_close_time` varchar(20) NOT NULL,
  `theme` varchar(250) NOT NULL,
  `timezone` varchar(250) NOT NULL,
  `charge_mode_a` varchar(250) NOT NULL,
  `charge_mode_b` varchar(250) NOT NULL,
  `charge_mode_c` varchar(250) NOT NULL,
  `charge_mode_d` varchar(250) NOT NULL,
  `access_level_6` varchar(250) NOT NULL,
  `access_level_5` varchar(250) NOT NULL,
  `access_level_4` varchar(250) NOT NULL,
  `access_level_3` varchar(250) NOT NULL,
  `access_level_2` varchar(250) NOT NULL,
  `access_level_1` varchar(250) NOT NULL,
  `mobile_number` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `sign_level` varchar(250) NOT NULL,
  `medicine_directory` varchar(250) NOT NULL,
  `medicine_profile` varchar(250) NOT NULL,
  `patient_contact` varchar(250) NOT NULL,
  `patient_address` varchar(250) NOT NULL,
  `patient_email` varchar(250) NOT NULL,
  `edit_patient` varchar(250) NOT NULL,
  `manage_patients` varchar(250) NOT NULL,
  `auto_refresh` varchar(250) NOT NULL,
  `currency` varchar(250) NOT NULL,
  `charge_mode_a_value` int(20) NOT NULL,
  `charge_mode_b_value` int(20) NOT NULL,
  `charge_mode_c_value` int(20) NOT NULL,
  `charge_mode_d_value` int(20) NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `last_update` datetime NOT NULL,
  `recent_hours` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_global_permissions`
--

INSERT INTO `p_global_permissions` (`id`, `portal_name`, `version`, `guardian_short_name`, `guardian_name`, `register_patient`, `prescribe_patient`, `patients_directory`, `pending_prescriptions`, `add_staff`, `staff_directory`, `my_porfile`, `staff_profile`, `add_branch`, `branches_directory`, `global_settings`, `introduce_medicine`, `update_stock`, `consumed_stock_local`, `consumed_stock_global`, `opening_time`, `closing_time`, `during_close_time`, `theme`, `timezone`, `charge_mode_a`, `charge_mode_b`, `charge_mode_c`, `charge_mode_d`, `access_level_6`, `access_level_5`, `access_level_4`, `access_level_3`, `access_level_2`, `access_level_1`, `mobile_number`, `address`, `sign_level`, `medicine_directory`, `medicine_profile`, `patient_contact`, `patient_address`, `patient_email`, `edit_patient`, `manage_patients`, `auto_refresh`, `currency`, `charge_mode_a_value`, `charge_mode_b_value`, `charge_mode_c_value`, `charge_mode_d_value`, `updated_by`, `last_update`, `recent_hours`) VALUES
('1', 'Clinica La Salud es Primero', '2.0', 'CLSEP', 'LaSaludEsPrimero', '3', '4', '3', '4', '5', '3', '3', '3', '5', '3', '5', '5', '5', '3', '4', '08', '16', '3', '', 'Asia/Karachi', '5', '1', '0.50', '0', 'Super Admin', 'Doctor', 'Triage / Nurse Practitioner', 'Staff Nurse', 'Receptionist', 'Guest', '4', '5', '4', '3', '4', '5', '5', '4', '4', '5', '60', 'KES', 5, 3, 1, 0, '6', '2017-04-05 22:51:06', '168');

-- --------------------------------------------------------

--
-- Table structure for table `p_logs`
--

CREATE TABLE `p_logs` (
  `id` bigint(20) NOT NULL,
  `user` varchar(250) NOT NULL,
  `at` datetime NOT NULL,
  `action` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL,
  `priority` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_logs`
--

INSERT INTO `p_logs` (`id`, `user`, `at`, `action`, `type`, `priority`) VALUES
(2026, '6', '2021-04-25 00:52:11', 'LoggedIn', 'staff', '10'),
(2025, '6', '2021-04-25 00:49:29', 'LoggedOut', 'staff', '10'),
(2024, '6', '2021-04-25 00:48:55', 'LoggedOut', 'staff', '10'),
(2023, '6', '2021-04-25 00:42:24', 'LoggedIn', 'staff', '10'),
(1998, '6', '2021-02-01 02:16:59', 'LoggedIn', 'staff', '10'),
(1999, '6', '2021-02-01 02:18:26', 'registered patient Mauricio Amaya at RC 1', 'patient', '20'),
(2000, '6', '2021-02-01 02:19:27', 'created a report for Mauricio Amaya at RC1', 'report', '20'),
(2001, '6', '2021-02-01 02:20:22', 'updated their profile', 'staff', '30'),
(2002, '6', '2021-02-02 01:48:02', 'LoggedIn', 'staff', '10'),
(2003, '6', '2021-02-02 03:28:38', 'introduced new Medicine with the name of Acetaminofen and code 001', 'medicine', '30'),
(2004, '6', '2021-03-18 22:20:18', 'LoggedIn', 'staff', '10'),
(2005, '6', '2021-03-18 22:53:46', 'LoggedOut', 'staff', '10'),
(2006, '6', '2021-03-18 22:55:31', 'updated their profile', 'staff', '30'),
(2007, '6', '2021-03-18 22:56:29', 'updated their profile', 'staff', '30'),
(2008, '6', '2021-03-18 22:59:19', 'updated their profile', 'staff', '30'),
(2009, '6', '2021-03-18 23:19:03', 'registered new staff member Dr. Mauricio Amaya', 'staff', '50'),
(2010, '6', '2021-03-18 23:30:12', 'updated their profile', 'staff', '30'),
(2011, '6', '2021-03-18 23:30:36', 'updated their profile', 'staff', '30'),
(2012, '6', '2021-03-18 23:30:55', 'LoggedOut', 'staff', '10'),
(2013, '6', '2021-03-18 23:32:03', 'LoggedOut', 'staff', '10'),
(2014, '6', '2021-03-18 23:37:27', 'LoggedOut', 'staff', '10'),
(2015, '6', '2021-03-18 23:41:23', 'updated profile for Dr. Buckley Taylor', 'staff', '40'),
(2016, '6', '2021-03-18 23:49:25', 'updated their profile', 'staff', '30'),
(2017, '6', '2021-03-18 23:54:12', 'LoggedOut', 'staff', '10'),
(2018, '6', '2021-03-18 23:54:29', 'LoggedOut', 'staff', '10'),
(2019, '6', '2021-03-19 00:02:15', 'introduced new Medicine with the name of Acetaminofen and code ACE1', 'medicine', '30'),
(2020, '6', '2021-03-19 00:02:41', 'deleted Medicine Acetaminofen - 001', 'medicine', '30'),
(2021, '6', '2021-03-19 09:54:40', 'LoggedOut', 'staff', '10'),
(2022, '6', '2021-03-20 08:48:35', 'LoggedIn', 'staff', '10');

-- --------------------------------------------------------

--
-- Table structure for table `p_medicine_dir`
--

CREATE TABLE `p_medicine_dir` (
  `id` bigint(20) NOT NULL,
  `category` varchar(250) NOT NULL,
  `code` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL,
  `added_by` varchar(250) NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_medicine_dir`
--

INSERT INTO `p_medicine_dir` (`id`, `category`, `code`, `name`, `price`, `added_by`, `last_update`) VALUES
(1, 'Bottle', 'PR34', 'Paracetamol', '5', '1', '2012-01-28 16:29:26'),
(22, 'Bottle', 'JQ46', 'Acetaminofen', '5', '1', '2012-01-28 19:16:40'),
(23, 'Bottle', 'ZD87', 'Intestinomicina', '5', '1', '2012-01-28 19:17:08'),
(24, 'Bottle', 'NP98', 'Yodoclorina', '5', '1', '2012-01-28 19:17:14'),
(25, 'Bottle', 'WU44', 'Cloprin', '5', '1', '2012-01-28 19:17:17'),
(26, 'Syrup', 'CT53', 'Atorvastalina', '12', '6', '2012-01-31 23:18:02'),
(27, 'Bottle', 'VJ87', 'Aspirina', '5', '1', '2012-01-28 19:17:25'),
(28, 'Bottle', 'MM80', 'Omeprazol', '5', '1', '2012-01-28 19:17:28'),
(29, 'Bottle', 'HF79', 'Simbastatina', '5', '1', '2012-01-28 19:17:32'),
(30, 'Bottle', 'AZ84', 'Amlodipina', '5', '6', '2017-03-18 23:35:17'),
(31, 'Syrup', 'KS33', 'Salbutamol', '5', '1', '2012-01-28 19:17:40'),
(32, 'Tablets', 'PQ94', 'Ramipril', '5', '1', '2012-01-28 19:17:45'),
(33, 'Syrup', 'WS97', 'Amoxicilina', '5', '1', '2012-01-28 19:17:49'),
(34, 'Bottle', 'TN56', 'Warfarina sodica', '5', '1', '2012-01-28 19:17:54'),
(35, 'Bottle', 'YG78', 'Diazepm', '5', '1', '2012-01-28 19:17:57'),
(36, 'Bottle', 'VV82', 'Prometazina', '5', '1', '2012-01-28 19:18:00'),
(37, 'Bottle', 'HV51', 'Ibuprofeno', '5', '1', '2012-01-28 19:18:03'),
(38, 'Bottle', 'RI68', 'Acetilcisteina', '5', '1', '2012-01-28 19:18:07'),
(39, 'Bottle', 'JM63', 'Dimercaprol', '5', '1', '2012-01-28 19:18:11'),
(40, 'Bottle', 'UU30', 'Clorafenicol', '5', '1', '2012-01-28 19:18:14'),
(41, 'Bottle', 'KO26', 'Diclofenac', '5', '1', '2012-01-28 19:18:19'),
(42, 'Bottle', 'OI83', 'Aspirina', '5', '1', '2012-01-28 19:18:21'),
(43, 'Tablets', 'RT52', 'Etambutol', '5', '1', '2012-01-28 19:18:27'),
(44, 'Bottle', 'WK59', 'Ranitidina', '5', '1', '2012-01-28 19:18:30'),
(45, 'Syrup', 'GN67', 'Paracetamol', '10', '6', '2012-01-31 23:18:44'),
(46, 'Bottle', 'IW20', 'Cardioblock', '5', '1', '2012-01-28 19:18:35'),
(47, 'Bottle', 'SK64', 'Cloprin', '5', '1', '2012-01-28 19:18:38'),
(48, 'Bottle', 'PN64', 'Amoxicilina', '5', '1', '2012-01-28 19:18:42'),
(49, 'Syrup', 'CJ78', 'Ranitidina', '5', '1', '2012-01-28 19:18:46'),
(50, 'Bottle', 'SY75', 'Anlodipina', '5', '1', '2012-01-28 19:18:51'),
(112, 'Tablets', 'ACE1', 'Acetaminofen', '005', '6', '2021-03-19 00:02:15');

-- --------------------------------------------------------

--
-- Table structure for table `p_med_record`
--

CREATE TABLE `p_med_record` (
  `id` bigint(20) NOT NULL,
  `medicine` varchar(250) NOT NULL,
  `doses` varchar(250) NOT NULL,
  `timings` varchar(250) NOT NULL,
  `days` varchar(250) NOT NULL,
  `total` int(20) NOT NULL,
  `physician_id` varchar(250) NOT NULL,
  `report_id` varchar(250) NOT NULL,
  `last_update` datetime NOT NULL,
  `total_charge` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `p_patients_dir`
--

CREATE TABLE `p_patients_dir` (
  `id` bigint(20) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `age` varchar(250) NOT NULL,
  `serial` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `contact` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `weight` varchar(250) NOT NULL,
  `profession` varchar(250) NOT NULL,
  `ref_contact` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `branch` varchar(250) NOT NULL,
  `physician` varchar(250) NOT NULL,
  `last_update` datetime NOT NULL,
  `friendly_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_patients_dir`
--

INSERT INTO `p_patients_dir` (`id`, `gender`, `age`, `serial`, `name`, `contact`, `email`, `weight`, `profession`, `ref_contact`, `address`, `branch`, `physician`, `last_update`, `friendly_name`) VALUES
(151, 'Male', '22', 'PA', 'Alejandro Smith ', '22121212', 'n/a', '57', 'Student', 'n/a', 'n/a', '1', '6', '2021-03-11 19:46:08', 'Alejandro Smith'),
(159, 'Male', '80', 'PA', 'Mauricio Amaya', '1234567', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '1', '6', '2021-02-01 02:18:26', 'Mauricio Amaya');

-- --------------------------------------------------------

--
-- Table structure for table `p_reports`
--

CREATE TABLE `p_reports` (
  `id` bigint(20) NOT NULL,
  `patient` varchar(250) NOT NULL,
  `charge` varchar(250) NOT NULL,
  `charging_for` varchar(250) DEFAULT NULL,
  `fever` varchar(250) NOT NULL,
  `blood_pressure` varchar(250) NOT NULL,
  `symptoms` longtext NOT NULL,
  `attachement` varchar(250) NOT NULL DEFAULT '0',
  `composed_by` varchar(250) NOT NULL,
  `engaged_by` varchar(250) NOT NULL,
  `signed_by` varchar(250) NOT NULL,
  `notes` longtext NOT NULL,
  `reply` longtext NOT NULL,
  `last_update` datetime NOT NULL,
  `branch` varchar(250) NOT NULL,
  `checkout_charges` varchar(250) NOT NULL,
  `cc` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_reports`
--

INSERT INTO `p_reports` (`id`, `patient`, `charge`, `charging_for`, `fever`, `blood_pressure`, `symptoms`, `attachement`, `composed_by`, `engaged_by`, `signed_by`, `notes`, `reply`, `last_update`, `branch`, `checkout_charges`, `cc`) VALUES
(71, 'Juan Antonio Morales', 'paciente', NULL, '', '', 'Fiebre alta, dolor de garganta y cabeza', '0', '6', '11', '', '', '', '2021-04-23 11:29:47', '1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `p_staff_dir`
--

CREATE TABLE `p_staff_dir` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `access_level` varchar(50) NOT NULL,
  `userid` varchar(250) NOT NULL,
  `passkey` varchar(250) NOT NULL,
  `contact` varchar(250) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `skype` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `branch` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `registered_by` varchar(250) NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_staff_dir`
--

INSERT INTO `p_staff_dir` (`id`, `first_name`, `last_name`, `full_name`, `title`, `access_level`, `userid`, `passkey`, `contact`, `mobile`, `skype`, `address`, `branch`, `status`, `registered_by`, `last_update`) VALUES
(1, 'Lucia', 'Araujo', 'Miss. Lucia Araujo', 'Miss.', '5', 'laac@domain.ext', 'bd3b535b4f6392dce69c4068b95fae42', '00108090807', '00108090807', 'laac', 'RemoteClinic.io', '1', 'active', '1', '2021-01-31 15:17:50'),
(6, 'Kevin', 'Robalo', 'Dr. Kevin Robalo', 'Dr.', '6', 'admin@domain.ext', 'bd3b535b4f6392dce69c4068b95fae42', '00108090807', '00108090807', 'ian', 'arce@clinica.com', '1', 'active', '1', '2021-04-25 00:52:11'),
(10, 'Mauricio', 'Bonifacio', 'Mr. Mauricio Bonifacio', 'Mr.', '4', 'mauboni@domain.ext', 'bd3b535b4f6392dce69c4068b95fae42', '00102030405', '00102030405', 'boni', 'bonifacio Residence', '13', 'active', '6', '2021-02-05 21:02:34'),
(11, 'Alex', 'Cooper', 'Dr. Alex Cooper', 'Dr.', '5', 'alcoop@domain.ext', 'bd3b535b4f6392dce69c4068b95fae42', '00102030405', '00102030405', 'alex', 'cooper  Residence', '1', 'active', '6', '2020-03-29 21:49:44'),
(12, 'Roberto', 'Cruz', 'Dr. Roberto Cruz', 'Dr.', '5', 'robcru@domain.ext', 'bd3b535b4f6392dce69c4068b95fae42', '00102030405', '00102030405', 'robcru', 'Roberto Residence', '11', 'active', '6', '2021-01-28 22:54:52'),
(15, 'Nixon', 'Canizalez', 'Dr. Nixon Canizalez', 'Dr.', '5', 'nixca@domain.ext', 'bd3b535b4f6392dce69c4068b95fae42', '00108090807', '00108090807', 'Nix', 'Nix Residence', '1', 'active', '6', '2021-03-29 21:39:30'),
(17, 'Karina', 'Dayanara', 'Miss. Karina Dayanara', 'Miss.', '4', 'kada@domain.ext', 'bd3b535b4f6392dce69c4068b95fae42', '123', '123', '123', 'Karin Residence', '1', 'blocked', '6', '2021-01-30 23:06:45'),
(19, 'Valentina', 'Ortega', 'Miss. Valentina Ortega', 'Miss.', '4', 'valenor@domain.ext', 'bd3b535b4f6392dce69c4068b95fae42', '00102030405', '00102030405', 'Valentina', 'Valentina Residence', '11', 'active', '6', '2021-01-28 22:57:02'),
(21, 'Laura', 'Lopez', 'Miss. Laura Lopez', 'Miss.', '4', 'laulo@domain.ext', 'bd3b535b4f6392dce69c4068b95fae42', '0100032434', '0100032434', 'laura', 'Laura Residence', '13', 'active', '6', '2021-01-30 13:37:13'),
(23, 'Stanley', 'Cruz', 'Dr. Stanle Cruz', 'Dr.', '3', 'stancru@domain.ext', 'bd3b535b4f6392dce69c4068b95fae42', '00108090803', '00108090803', 'stancru', 'Stanley Residence', '11', 'active', '6', '2021-03-29 19:50:36'),
(25, 'Carlos', 'Tito', 'Mr. Carlos Tito', 'Mr.', '3', 'cartito@domain.ext', 'bd3b535b4f6392dce69c4068b95fae42', '123', '123', 'skype', 'Tito Residence', '1', 'active', '6', '2021-04-05 22:51:33'),
(28, 'Scarlet', 'Ayala', 'Miss. Scarlet Ayala', 'Miss.', '3', 'scaaya@domain.ext', 'bd3b535b4f6392dce69c4068b95fae42', '00108090807', '00108090807', 'scarlet', 'Scarlet Residence', '1', 'active', '6', '2021-01-28 23:00:07'),
(33, 'William', 'Levi', 'Dr. William Levi', 'Dr.', '5', 'willilev@clinica.com', '49342000ca291986c11b009b3127356f', '1234567', '7654321', 'Willy', 'william residence', '1', 'active', '6', '2021-03-18 23:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `p_stock`
--

CREATE TABLE `p_stock` (
  `id` bigint(20) NOT NULL,
  `code` varchar(250) NOT NULL,
  `remaining` varchar(250) NOT NULL,
  `total` varchar(250) NOT NULL,
  `branch` varchar(250) NOT NULL,
  `added_by` varchar(250) NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_stock`
--

INSERT INTO `p_stock` (`id`, `code`, `remaining`, `total`, `branch`, `added_by`, `last_update`) VALUES
(2, 'PR34', '1', '68', '5', '1', '2012-02-01 10:06:16'),
(24, 'PN64', '5', '50', '11', '6', '2017-04-02 21:39:40'),
(12, 'HF61', '34', '45', '3', '1', '2017-03-15 13:04:09'),
(19, 'FT48', '23', '43', '2', '1', '2012-01-31 15:19:11'),
(27, 'UU30', '10', '10', '1', '6', '2017-03-19 18:20:38'),
(20, 'JI50', '551', '554', '2', '1', '2012-02-01 00:05:12'),
(30, 'AZ84', '89', '100', '13', '6', '2017-04-05 21:42:47'),
(31, 'CT53', '20', '20', '13', '6', '2017-03-29 17:17:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `p_branches_dir`
--
ALTER TABLE `p_branches_dir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_global_permissions`
--
ALTER TABLE `p_global_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_logs`
--
ALTER TABLE `p_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_medicine_dir`
--
ALTER TABLE `p_medicine_dir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_med_record`
--
ALTER TABLE `p_med_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_patients_dir`
--
ALTER TABLE `p_patients_dir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_reports`
--
ALTER TABLE `p_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_staff_dir`
--
ALTER TABLE `p_staff_dir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_stock`
--
ALTER TABLE `p_stock`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `p_branches_dir`
--
ALTER TABLE `p_branches_dir`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `p_logs`
--
ALTER TABLE `p_logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2027;

--
-- AUTO_INCREMENT for table `p_medicine_dir`
--
ALTER TABLE `p_medicine_dir`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `p_med_record`
--
ALTER TABLE `p_med_record`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `p_patients_dir`
--
ALTER TABLE `p_patients_dir`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `p_reports`
--
ALTER TABLE `p_reports`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `p_staff_dir`
--
ALTER TABLE `p_staff_dir`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `p_stock`
--
ALTER TABLE `p_stock`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
