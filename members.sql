-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 24, 2023 at 01:40 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanta_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name_english` varchar(50) NOT NULL,
  `name_bangla` varchar(50) NOT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `mother_name` varchar(50) DEFAULT NULL,
  `quantaa_id` varchar(10) NOT NULL,
  `birthday` varchar(19) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `clazz_name` varchar(10) NOT NULL,
  `institution` varchar(50) NOT NULL DEFAULT 'Quantum Cosmo School',
  `district` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name_english`, `name_bangla`, `father_name`, `mother_name`, `quantaa_id`, `birthday`, `gender`, `clazz_name`, `institution`, `district`) VALUES
(1, 'Chingthoaihla Chak', 'চিংথোয়াইলা চাক', NULL, NULL, '1424', '2011-12-20 00:00:00', 'Male', 'Six', 'Quantum Cosmo School (High)', 'বান্দরবান জেলা'),
(2, 'Bishal Kora', 'বিশাল কড়া', NULL, NULL, '1485', '2010-05-31 00:00:00', 'Male', 'Six', 'Quantum Cosmo School (High)', 'দিনাজপুর'),
(3, 'Nayon Tripura', 'নয়ন ত্রিপুরা', NULL, NULL, '1707', '2010-08-17 00:00:00', 'Male', 'Six', 'Quantum Cosmo School (High)', 'বান্দরবান'),
(4, 'Uchingthoai Chak', 'উচিংথোয়াই চাক', NULL, NULL, '557', '2013-03-14 00:00:00', 'Male', 'Six', 'Quantum Cosmo School (High)', 'বান্দরবান জেলা'),
(5, 'Utpol Tanchangya', 'উত্পল তঞ্চগ্যা', NULL, NULL, '972', '2011-03-27 00:00:00', 'Male', 'Six', 'Quantum Cosmo School (High)', 'বান্দরবান'),
(6, 'Sujon Chakma', 'সুজন চাকমা', NULL, NULL, '1296', '2011-01-03 00:00:00', 'Male', 'Six', 'Quantum Cosmo School (High)', 'রাঙামাটি জেলা'),
(7, 'Menhajul Islam Rahul', 'মিনহাজুল ইসলাম', NULL, NULL, '989', '2010-03-26 00:00:00', 'Male', 'Seven', 'Quantum Cosmo School (High)', 'ফেনী'),
(8, 'Bobar Tripura', 'ববার ত্রিপুরা', NULL, NULL, '1576', NULL, 'Male', 'Seven', 'Quantum Cosmo School (High)', 'খাগড়াছড়ি জেলা'),
(9, 'Rajnarayan Purkayastha Becon', 'রাজনারায়ণ পুরকায়স্থ বিকন', NULL, NULL, '1805', '2010-10-18 00:00:00', 'Male', 'Seven', 'Quantum Cosmo School (High)', 'ঢাকা জেলা'),
(10, 'Usainue Marma', 'উসাইনু মারমা', NULL, NULL, '2357', '2011-12-15 00:00:00', 'Male', 'Seven', 'Quantum Cosmo School (High)', 'বান্দরবান'),
(11, 'M. Zohir Rayhan', 'মো. জহির রায়হান', NULL, NULL, '1097', '2010-01-01 00:00:00', 'Male', 'Eight', 'Quantum Cosmo School (High)', 'নীলফামারী'),
(12, 'M. Mahmud Hossen Tahmid', 'মো. মাহমুদ হোসাইন তাহমিদ', 'মো: সাহাদ আলী', 'মরিয়ম বেগম', '554', '2009-07-18 00:00:00', 'Male', 'Eight', 'Quantum Cosmo School (High)', 'বরিশাল জেলা'),
(13, 'M. Arifur Rohman Antor', 'মো. আরিফুর রহমান', NULL, NULL, '450', '2009-12-30 00:00:00', 'Male', 'Eight', 'Quantum Cosmo School (High)', 'গাজীপুর'),
(14, 'Arpon Barua Manop', 'অর্পন বড়ুয়া মানপ', NULL, NULL, '1789', NULL, 'Male', 'Ten', 'Quantum Cosmo School (High)', 'বান্দরবান জেলা'),
(15, 'S M Imran Khan', 'এস এম ইমরান খান', NULL, NULL, '472', '2009-01-01 00:00:00', 'Male', 'Ten', 'Quantum Cosmo School (High)', 'বান্দরবান জেলা'),
(16, 'Krikel Tripura', 'ক্রিকেল ত্রিপুরা', NULL, NULL, '1046', '2011-05-18 00:00:00', 'Male', 'Seven', 'Quantum Cosmo School (High)', 'খাগড়াছড়ি জেলা'),
(17, 'Abdul Kadir Jilani', 'আব্দুল কাদের জিলানী', NULL, NULL, '1774', '2011-06-08 00:00:00', 'Male', 'Seven', 'Quantum Cosmo School (High)', 'ঢাকা'),
(18, 'Touqir Ahmed Nishad', 'তৌকির আহম্মেদ নিশাদ', NULL, NULL, '1185', NULL, 'Male', 'Eight', 'Quantum Cosmo School (High)', 'গাইবান্ধা জেলা'),
(19, 'M. Azijul Haqim Miji', 'মো. আজিজুল হাকিম মিজি', NULL, NULL, '1535', '2011-02-09 00:00:00', 'Male', 'Eight', 'Quantum Cosmo School (High)', 'লক্ষীপুর'),
(20, 'Monghaising Marma', 'মংহাইসিং মার্মা', NULL, NULL, '984', '2009-12-30 00:00:00', 'Male', 'Eight', 'Quantum Cosmo School (High)', 'বান্দরবান'),
(21, 'Uttaran Chakma', 'উত্তরন চাকমা', NULL, NULL, '490', '2008-02-08 00:00:00', 'Male', 'Nine', 'Quantum Cosmo School (High)', 'রাঙামাটি জেলা'),
(22, 'Rangchong Mro', 'রেংচ্যং ম্রো', NULL, NULL, '492', '2009-01-01 00:00:00', 'Male', 'Nine', 'Quantum Cosmo School (High)', 'বান্দরবান জেলা'),
(23, 'Asabul Yamin', 'আসাবুল ইয়ামিন', NULL, NULL, '2592', '2008-12-10 00:00:00', 'Male', 'Ten', 'Quantum Cosmo School (High)', 'জয়পুরহাট'),
(24, 'Mohammad Rakibujjaman Rasel', 'মোহাম্মদ রাকিবুজ্জামান রাসেল', NULL, NULL, '2932', '2008-12-05 00:00:00', 'Male', 'Ten', 'Quantum Cosmo School (High)', 'বান্দরবান'),
(25, 'Shofiqul Islam', 'শফিকুল ইসলাম', NULL, NULL, '336', '2007-11-15 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (High)', 'বান্দরবান জেলা'),
(26, 'Boqul Tanchangya', 'বকুল তংচংগ্যা', NULL, NULL, '1005', '2007-02-16 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (High)', 'বান্দরবান'),
(27, 'Genuine Chakma', 'জেনুইন চাকমা', NULL, NULL, '1821', '2007-07-02 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (High)', 'রাঙামাটি জেলা'),
(28, 'Md. Readul Jannat Sifat', 'মো. রিয়াদুল জান্নাত সিফাত', NULL, NULL, '1524', '2006-11-03 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (High)', 'রাজশাহী জেলা'),
(29, 'Ushoinu Marma', 'উশৈনু মার্মা', NULL, 'মেয়ই মার্মা', '580', '2008-02-01 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (High)', 'বান্দরবান জেলা'),
(30, 'Limon Shekh', 'লিমন শেখ', NULL, NULL, '1142', '2008-11-10 00:00:00', 'Male', 'Nine', 'Quantum Cosmo School (High)', 'ফরিদপুর জেলা'),
(31, 'Arafat Sorder', 'আরাফত্ সরদার', NULL, NULL, '1558', '2005-04-11 00:00:00', 'Male', 'HSC', 'Quantum Cosmo College', 'খুলনা'),
(32, 'Md. Shoriful Islam', 'মো: শরিফুল ইসলাম', 'শাহেদ আলী', 'আনোয়ারা বেগম', '2604', '2008-08-06 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(33, 'Md. Hasan', 'মোহাম্মদ হাছান', 'ইয়াছিন আলী মুন্সী', 'ভালাজায় বিবি', '2610', '2005-01-05 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(34, 'Shuvo Karmakar', 'শুভ কর্মকার', 'চন্দ্র কুমার কর্মকার', 'রক্কিনা বালা কর্মকার', '2614', '2007-01-01 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(35, 'Trinoy Kanti Rudra', 'তৃনয় কান্তি রুদ্র', 'দেবেন্দ্র রুদ্র', 'তিলোতমা রুদ্র', '2615', '2008-10-20 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(36, 'Naim Uddin', 'নাঈম উদ্দিন', 'হাছান আলী', 'হায়াতেন্নেছা', '2626', '2007-03-16 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(37, 'Md. Sakibul Islam', 'মো: সাকিবুল ইসলাম', 'আবদুল জব্বার', 'রাবেয়া বেগম', '2628', '2007-11-12 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(38, 'Md. Imran Majumder', 'মো: ইমরান মজুমদার', 'আলী আকবর', 'আনোয়ারা বেগম', '2637', '2007-04-19 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(39, 'Md. Abdul Zobbar Meraz', 'মো: আব্দুল জব্বার মেরাজ', 'নুর আহমদ', 'ছানোয়ারা বেগম', '2641', '2005-12-30 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(40, 'Mong Tai Shaway Chak', 'মংতাইশৈ চাক', 'মংনু চাক', 'ছাইংদা চাক', '2647', '2005-01-10 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(41, 'Usatihowai Chak', 'উছাইথোয়াই চাক', 'চিং হলা অং চাক', 'য়োদুং চাক', '2653', '2007-10-14 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(42, 'Md. Atik Hasan', 'মো: আতিক হাছান', 'আ: লতিফ', 'রহিমা খাতুন', '2656', '2005-05-20 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(43, 'Nazmul Islam Nasim', 'নাজমুল ইসলাম নাছিম', 'আব্দুর রব', 'কমলা', '2667', '2005-04-30 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(44, 'Kya Sai Ching Marma', 'ক্য সাই চিং মারমা', 'উসাময় মার্মা', 'মাছোমা মার্মা', '2678', '2004-04-07 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(45, 'Uchasing Marma', 'উছাসিং মারমা', 'অংক্যউ মার্মা', 'হ্লাম্রাচিং মার্মা', '2688', '2005-12-19 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(46, 'Mong Moi Ching Marma', 'মং মুই চিং মারমা', 'শৈজাই প্রু', 'ওয়াং সাং প্রু মার্মা', '2693', '2008-10-08 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(47, 'Muktajoy Tanchangya', 'মুক্তাজয় তঞ্চঙ্গ্যা', NULL, NULL, '2697', '2007-01-22 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(48, 'Ponting Chakma', 'পন্টিং চাকমা', 'সূর্য্য মোহন চাকমা', 'কৃষ্ণা রানী চাকমা', '2747', '2007-03-27 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'রাঙ্গামাটি'),
(49, 'Sukal Chakma', 'সুকেল চাকমা', 'প্রভাত কুমার চাকমা', 'সুন্দর মুখী চাকমা', '2748', '2007-01-12 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'রাঙ্গামাটি'),
(50, 'Hirak Chakma', 'হীরক চাকমা', 'শশী চাকমা', 'রাঙ্গাবী চাকমা', '2750', '2007-06-17 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'রাঙ্গামাটি'),
(51, 'Mothi Tripura', 'মতি ত্রিপুরা', 'চান্দুলা ত্রিপুরা', 'চাওরংত্রি ত্রিপুরা', '2753', '2007-12-27 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'চট্রগ্রাম'),
(52, 'Karunamoy Tanchangya', 'করানাময় তনচংগ্যা', 'হনু মোহন তঞ্চঙ্গ্যা', 'পুরন্ন মালা তঞ্চঙ্গ্যা', '2761', '2006-03-20 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'রাংগামাটি'),
(53, 'Poran Joti Chakma', 'পরান জ্যোতি চাকমা', 'প্রভাত চন্দ্র চাকমা', 'কালো দেবী চাকমা', '2762', '2006-11-17 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'রাঙামাটি'),
(54, 'Rahim Chakma', 'রহিম চাকমা', 'গুনেন্দ্র চাকমা', 'দুংগোবী চাকমা', '2776', '2004-10-20 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'রাঙ্গামাটি'),
(55, 'Amar Kanti Chakma', 'অমর কান্তি চাকমা', 'রাজ কুমার চাকমা', 'মালেনী চাকমা', '2777', '2005-04-13 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'রাঙ্গামাটি'),
(56, 'Md. Joburaj Bin Azim', 'মোঃ যুবরাজ বিন আজিম', 'কাজী খায়েছ আহম্মদ', 'জালে নুর বেগম', '2829', '2007-12-30 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'চট্টগ্রাম'),
(57, 'Azaz Mahmud', 'এজাজ মাহমুদ', 'আহমদ মিয়া', 'বেলাত জান', '2834', '2006-10-08 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'চট্রগ্রাম'),
(58, 'Tarekul Islam', 'তারেকুল ইসলাম', 'কবির আহমেদ', 'রৌশন আকতার', '2835', '2005-08-07 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'চট্টগ্রাম'),
(59, 'Meer Raisul Islam', 'মীর রাইসুল ইসলাম', 'মীর শফিকুল ইসলাম', 'মোছাম্মৎ রওশন আরা বেগম', '2836', '2008-03-17 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'চট্টগ্রাম'),
(60, 'Sahadat Hossain Shanto', 'সাহাদত হোসেন শান্ত', 'আনু মিয়া', 'মোবাশ্বেরা বেগম', '2837', '2005-06-03 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'কুমিল্লা'),
(61, 'Khingchamong', 'খিংছামং', NULL, NULL, '2839', '2006-06-10 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'কক্সবাজার'),
(62, 'AbdullaH Tushar', 'আব্দুল্লাহ তুষার', 'কালার মিঞা', 'জরিনা বেগম', '2844', '2004-09-12 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'চট্টগ্রাম'),
(63, 'Palash Das', 'পলাশ দাশ', 'বাশিরাম দাশ', 'সুর বালা', '2846', '2005-01-01 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'ব্রাক্ষণবাড়িয়া'),
(64, 'Ramij Uddin', 'রমিজ উদ্দিন', 'ছৈয়দ আহমদ', 'মোহছেনা', '2847', '2007-10-04 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'চট্টগ্রাম'),
(65, 'MD.Nazmul Hasan (Sajit)', 'মোঃ নাজমুল হাসান (সাজিদ)', 'মোঃ শামসুল আলাম', 'মোছাঃ হাফেজা খাতুন', '2855', '2006-06-23 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'চট্টগ্রাম'),
(66, 'Md.Taohid', 'মোঃ তাওহীদ', 'আবদুল মালেক', 'আনোয়ারা বেগম', '2857', '2006-06-01 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'চট্টগ্রাম'),
(67, 'Al-Amin Hossain Biplob', 'আল আমিন হোসেন বিপ্লব', 'কুদ্দুস মন্ডল', 'মোসা: এলেমা বেগম', '2865', '2004-10-13 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'নারায়ণগঞ্জ'),
(68, 'Md. Arafat Hossain', 'মোহাম্মদ আরফাত হোসেন', 'বাদশা মিয়া', 'খতিজা বেগম', '2874', '2006-12-09 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'চট্রগ্রাম'),
(69, 'Md. Waoresul Huq Riyad', 'মো: ওয়ারেছুল হক রিয়াদ', NULL, NULL, '2903', '2008-09-27 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'রংপুর'),
(70, 'Faisal Karim', 'ফয়সাল করিম', 'আব্দুল করিম', 'রাজিয়া বেগম', '2904', '2007-03-16 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'চট্রগ্রাম'),
(71, 'Manwai Mro', 'মেনওয়াই ম্রো', NULL, NULL, '2611', '2007-01-01 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(72, 'Shahidul Islam Shahin', 'শহিদুল ইসলাম শাহীন', 'নুরুজ্জামান ভুইয়া', 'নুরজাহান বেগম', '2623', '2007-03-10 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(73, 'Thowai Mong Sing Marma', 'থোয়াইমং সিং মার্মা', 'ফাচিং মার্মা', 'চিংওয়াংপ্রু মার্মা', '2624', '2007-03-05 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(74, 'Salman Sha', 'সালমান শাহ', 'আবদু ছমদ', 'আলম সাইর', '2627', '2006-04-24 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(75, 'Shakawat Hossen', 'সাখাওয়াত হোসেন', 'নুরুল আমিন', 'মোস্তফা খাতুন', '2630', NULL, 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(76, 'Mahim Hasan Bappy', 'মাহিম হাসান বাপ্পি', NULL, NULL, '2635', '2007-07-26 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(77, 'Robiul Alom', 'মো: রাবিউল আলম', 'আবুল কাসেম', 'মাকসুদা বেগম', '2642', '2006-02-17 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(78, 'Md. Asif Uddin', 'মো: আসিফ উদ্দিন', 'কালা মিয়া', 'নুরজাহান বেগম', '2644', '2007-04-09 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(79, 'Md. Sahed Hasan', 'মো: শাহেদ হাসান', 'আমির হোসেন', 'ওমতু ন্নেছা', '2649', '2006-02-10 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(80, 'Thonlok Mro', 'থনলক ম্রো', 'মেনরই ম্রো', 'কাইচা ম্রো', '2663', '2004-10-20 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(81, 'Manpre Mro', 'মেনপ্রে ম্রো', 'পর ওয়হি ম্রো', 'সংকক ম্রো', '2669', '2006-08-17 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(82, 'Shaw Sa Prue Marma', 'শৈসা প্রু মারমা রনি', 'নিসামং মারমা', 'হ্নাংমাপ্রু মারমা', '2679', '2007-05-18 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(83, 'Monghi Sing Marma', 'মংহাইসিং মারমা', 'সিংসাহ্লা মারমা', 'মানংচিং মারমা', '2684', '2005-07-25 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(84, 'UHla Sing Marma', 'উহ্লাসিং মারমা', 'পনোয়অং মার্মা', 'গ্যইমা মার্মা', '2694', '2006-03-19 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(85, 'Sujon Kumar Tanchangya', 'সুজন কুমার তঞ্চঙ্গ্যা', 'ইনন্দ তঞ্চঙ্গ্যা', 'খনজনী তঞ্চঙ্গ্যা', '2698', '2007-03-05 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(86, 'Pronob Tanchangya', 'প্রনব তঞ্চঙ্গ্যা', 'কান্দারাচিং তঞ্চঙ্গ্যা', 'গমপূরী তঞ্চঙ্গ্যা', '2699', '2008-10-02 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(87, 'Rahim Tripura', 'রহিম ত্রিপুরা', 'ধনচারাই ত্রিপুরা', 'তবরুং ত্রিপুরা', '2707', '2007-03-28 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(88, 'U Hla Sai Marma', 'উহ্লাসাই মারমা', 'ফোহ্লাচিং মারমা', 'মাউসাং মারমা', '2708', '2004-07-17 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(89, 'David Bawm', 'ডাভিট বম', 'লালমুন থোয়াম বম', 'রোয়াল নেম বম', '2714', '2005-10-06 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(90, 'Lalminlu Bawm', 'লালমিং লিয়ান বম', 'তংহলা বম', 'নং কিম বম', '2716', '2004-04-12 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(91, 'Ringgyong Mro', 'রিংয়ং ম্রো', 'মেনদুই ম্রো', 'চামরুং ম্রো', '2723', '2004-08-17 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(92, 'Erick Bawm', 'এরিক বম', 'তুমবিল বম', 'জিংকিম বম', '2733', '2008-06-01 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(93, 'Prenpong Mro', 'প্রেনপং মুরুং', 'রুইপিয় মুরুং', 'পিয়পাও মুরুং', '2734', '2005-10-09 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(94, 'Jayanta Kanti Das', 'জয়ন্ত কান্তি দাশ', 'অমূল্য কান্তি দাশ', 'জোছনা রানী দাশ', '2737', '2006-05-24 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(95, 'Mohd.Wasif Hoque Jarif', 'মো: ওয়াসিফ হক জারিফ', 'এস এম ইসহাক', 'মাজেদা বানু', '2830', '2006-04-07 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'চট্রগ্রাম'),
(96, 'Suihla Ching Marma', 'সোইহ্লাচিং মারমা', 'কেপাই মার্মা', 'মালা মা মার্মা', '2831', '2005-04-09 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'রাঙ্গামাটি'),
(97, 'Umonghla', 'উমংহ্লা', NULL, NULL, '2838', '2006-05-02 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'কক্সবাজার'),
(98, 'Mongal Bikash Tanchangya', 'মঙ্গল বিকাশ তঞ্চগ্যা', NULL, NULL, '2840', '2007-03-01 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'বান্দরবান'),
(99, 'Md. Arife Hossan Rifat', 'মো: আরিফ হোসেন রিফাত', NULL, NULL, '2843', '2006-12-16 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'চট্টগ্রাম'),
(100, 'Md. Oasif Mahbub jarif', 'মো: ওয়াসিফ মাহবুব জারিফ', 'মো: আনোয়ার হোসেন', 'ফিরুজা বেগম', '2860', '2006-12-19 00:00:00', 'Male', 'SSC', 'Quantum Cosmo School (Vocational)', 'ঢাকা');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quantaa_id` (`quantaa_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
