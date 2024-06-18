-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 28, 2023 at 06:05 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21286678_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `keterangan` varchar(300) NOT NULL,
  `harga` double NOT NULL,
  `gambar` varchar(300) NOT NULL,
  `promo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `keterangan`, `harga`, `gambar`, `promo`) VALUES
(1, 'APPLE iPhone 13 Pro Max', 'Chipset: A15 Bionic\nKamera Belakang: 12MP + 12MP + 12MP\nKamera Depan: 12MP\nUkuran Layar: 6.7 Inch, Baterai: 4352 mAh', 27299000, 'https://assets.bmdstatic.com/web/image?model=product.product&field=image_1024&id=63665&unique=e2c9323', 16998000),
(2, 'SAMSUNG Galaxy Z Flip4 ', 'Chipset :Snapdragon 8+ Gen 1\nKamera Belakang : 12 MP + 12MP, Kamera Depan : 10 MP\nBaterai : 3700 mAh\nSistem Operasi : Android\n', 16999000, 'https://assets.bmdstatic.com/web/image?model=product.product&field=image_1024&id=75914&unique=2248e8c', 14899000),
(3, 'LOGITECH Bluetooth Multi-Device Keyboard ', 'Multi-Device Keyboard\nBluetooth\nOn/Off power switch\nBattery life indicator light\n', 736000, 'https://assets.bmdstatic.com/web/image?model=product.template&field=image_1024&id=1713&unique=1a81671', 499900),
(4, 'LENOVO ThinkPad E14 Gen 4', 'Processor: Intel Core i5-1235U\nRAM: 8GB DDR4 Onboard + 1 Slot Free, SSD: 512GB\nVGA: Integrated, Ukuran Layar: 14 Inch FHD (1920 x 1080) TN; Anti-Glare; Non-Touch; 250 nits', 15500000, 'https://assets.bmdstatic.com/web/image?model=product.product&field=image_1024&id=70335&unique=16444d1', 14700000),
(5, 'HP Business Notebook 240', 'Processor: Intel Core i5-1135G7\nRAM: 8GB DDR4, SSD: 512GB\nGrafis: Intel UHD Graphics\nUkuran Layar: 14 inch HD\nKonektivitas: WiFi + Bluetooth, Sistem Operasi: Windows 11 Home, Non Bag\nHP 240 G8\nVariant : HP Business Notebook 240 G8 [61G52PA], Free Product : HP Active Backpack 15.6\" 1LU23AA', 12800000, 'https://assets.bmdstatic.com/web/image?model=product.product&field=image_1024&id=64953&unique=06e21ed', 8999000),
(6, 'XIAOMI Smart Band 7', 'Layar AMOLED 1.62 inch resolusi tinggi dengan mode AOD (always-on mode)\r\nMendukung 110+ mode olahraga\r\nDaya tahan baterai 14 hari\r\nTahan air 5ATM\r\nPemantauan detak jantung & Pemantauan tidur\r\nXiaomi Smart Band 7', 699000, 'https://assets.bmdstatic.com/web/image?model=product.product&field=image_1024&id=67660&unique=e8e88e8', 490000),
(7, 'ASUS ROG Zephyrus G15', 'Processor : AMD Ryzen R7-6800HS\r\nRAM : 8GB DDR5 on board + 8GB DDR5-4800 SO-DIMM, SSD : 512GB\r\nVGA : NVIDIA RTX3060 6GB\r\nKonektiviitas : Wifi + Bluetooth\r\nUkuran Layar : 15.6-inch WQHD 165Hz, SIstem Operasi : Windows 11 Home, Software Lain : Office Home and Student 2021\r\nUnit Utama', 29499000, 'https://assets.bmdstatic.com/web/image?model=product.product&field=image_1024&id=67482&unique=6f065ba', 26525000),
(8, 'APPLE iPad Pro (Gen-5)', 'Chipset: Apple M1 chip with 8-core CPU\r\nKamera Belakang: 12MP + 10MP, Kamera Depan: 12MP\r\nUkuran Layar: 12.9 Inch Liquid Retina XDR display\r\nKonektivitas: Wi-Fi, Interface: USB-C\r\nBattery: 40.88 Wh, Sistem Operasi: iPadOS\r\niPad Pro', 19199000, 'https://assets.bmdstatic.com/web/image?model=product.product&field=image_1024&id=73015&unique=366497d', 17498000),
(9, 'AUDIO-TECHNICA Headphone', 'Headphone\r\nFrequency 15 - 22000 Hz\r\nImpedance 32 Ohm\r\nMaximum input power 500 mW\r\nOutput sound 104 dB/mW\r\nUnit Utama', 599000, 'https://assets.bmdstatic.com/web/image?model=product.product&field=image_1024&id=9281&unique=36d0374', 549000),
(10, 'micro:bit Bluetooth 4.0', 'Nordic nRF5182216 MHz 32-bit ARM Cortex\nM0 micro controller\nBluetooth 4.0 low energy/2.4GHz RF SoC\n16kB RAM, 256kB Flash', 804500, 'https://assets.bmdstatic.com/web/image?model=product.product&field=image_1024&id=64621&unique=35f6b8a', 689000),
(17, 'FITBIT Charge 4 Special Edition', '3-axis accelerometer, Optical heart rate monitor, GPS, NFC\nWater Resistance, Heart Rate\nSyncing range: Up to 30 feet\nUnit Utama', 2699000, 'https://assets.bmdstatic.com/web/image?model=product.product&field=image_1024&id=49936&unique=2aaea59', 2299000),
(18, 'DJI Mini 3 Pro', 'Up to 4K60p Video & 48MP Raw Stills\nRegulation-Friendly 8.8 oz Weight, Up to 34 Minutes of Flight Time', 12370000, 'https://assets.bmdstatic.com/web/image?model=product.template&field=image_1024&id=52936&unique=2aec3e0', 11170000),
(20, 'HP Desktop 280 Pro G6 Microtower', 'Processor: Intel Core i7-10700\nRAM: 8GB DDR4, HDD: 1TB, SSD: 256GB\nODD: DVD RW, VGA: Intel UHD Graphics 630', 20800000, 'https://assets.bmdstatic.com/web/image?model=product.product&field=image_1024&id=55320&unique=e0dc772', 16499000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
