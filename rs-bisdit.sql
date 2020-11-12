-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2020 at 03:19 AM
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
-- Database: `rs-bisdit`
--

-- --------------------------------------------------------

--
-- Table structure for table `fitness`
--

CREATE TABLE `fitness` (
  `timestamp` varchar(19) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(6) DEFAULT NULL,
  `usia` varchar(12) DEFAULT NULL,
  `kebugaran` varchar(11) DEFAULT NULL,
  `diet` varchar(13) DEFAULT NULL,
  `motivasi` varchar(175) DEFAULT NULL,
  `olahraga` varchar(85) DEFAULT NULL,
  `lama` varchar(17) DEFAULT NULL,
  `sering` varchar(24) DEFAULT NULL,
  `penyakit` varchar(56) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fitness`
--

INSERT INTO `fitness` (`timestamp`, `nama`, `jenis_kelamin`, `usia`, `kebugaran`, `diet`, `motivasi`, `olahraga`, `lama`, `sering`, `penyakit`) VALUES
('11/10/2020 9:54:00', '', 'Wanita', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin menurunkan berat badan', 'Berjalan atau Jogging', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 9:54:22', 'Mus', 'Pria', '19 hingga 25', 'Rata-Rata', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan', 'Badminton, Berenang, Skiping', '1 jam', '1 hingga 2 kali seminggu', 'Tekanan Darah Rendah, Magh'),
('11/10/2020 9:54:51', '', 'Pria', '19 hingga 25', 'Kurang Fit', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin meningkatkan massa otot dan kekuatan', 'Berjalan atau Jogging, Bersepeda', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 9:55:28', '', 'Pria', '19 hingga 25', 'Sangat Baik', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin meningkatkan massa otot dan kekuatan, Saya ingin menurunkan berat badan', 'Berjalan atau Jogging', '1 jam', '3 hingga 4 kali seminggu', 'Tidak Ada'),
('11/10/2020 9:55:34', '', 'Wanita', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin melepas stress', 'Badminton, Bola Basket, Futsal/Sepak Bola', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 9:55:39', 'zip', 'Wanita', '19 hingga 25', 'Rata-Rata', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel', 'Badminton, Berjalan atau Jogging', '30 menit', '1 hingga 2 kali seminggu', 'Tekanan Darah Rendah'),
('11/10/2020 9:55:45', 'Anonim', 'Pria', '19 hingga 25', 'Kurang Fit', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan', 'Badminton, Berenang, Berjalan atau Jogging, Bersepeda, Skiping', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 9:56:18', '', 'Pria', '19 hingga 25', 'Rata-Rata', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress', 'Badminton, Bersepeda', '2 jam', '1 hingga 2 kali seminggu', 'Bronchitis'),
('11/10/2020 9:56:34', '', 'Pria', '19 hingga 25', 'Rata-Rata', 'Kadang-kadang', 'Saya ingin menjadi lebih fleksibel', 'Berjalan atau Jogging', '30 menit', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 9:57:47', '', 'Pria', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress', 'Berjalan atau Jogging, Bola Basket', '30 menit', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 9:59:26', '', 'Wanita', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin menjadi lebih fleksibel', 'Bersepeda', '2 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 10:02:30', '', 'Pria', '19 hingga 25', 'Rata-Rata', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress, Saya ingin menurunkan berat badan', 'Badminton, Berenang, Bersepeda, Futsal/Sepak Bola', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 10:02:49', '', 'Pria', '19 hingga 25', 'Kurang Fit', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin menurunkan berat badan', 'Berenang, Berjalan atau Jogging, Skiping, Calisthenics', '30 menit', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 10:04:52', 'Masaji', 'Pria', '19 hingga 25', 'Baik', 'Kadang-kadang', 'Saya ingin meningkatkan massa otot dan kekuatan, Saya ingin menurunkan berat badan', 'Berjalan atau Jogging', '30 menit', '3 hingga 4 kali seminggu', 'Tidak Ada'),
('11/10/2020 10:05:26', '', 'Wanita', '19 hingga 25', 'Sangat Baik', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress, Saya ingin menurunkan berat badan', 'Berenang, Berjalan atau Jogging, Bersepeda, Senam Aerobik, Zumba', '1 jam', 'Setiap hari', 'Tekanan Darah Rendah'),
('11/10/2020 10:08:32', '', 'Pria', '19 hingga 25', 'Kurang Fit', 'Tidak', 'Saya ingin melepas stress', 'Mahjong Jepang (olahraga otak), kadang juga shogi atau go', '1 jam', '1 hingga 2 kali seminggu', 'Tekanan Darah Tinggi, Demam berdarah, maag, asam lambung'),
('11/10/2020 10:08:47', '', 'Pria', '19 hingga 25', 'Baik', 'Ya', 'Saya ingin menjadi lebih fit, Saya ingin meningkatkan massa otot dan kekuatan', 'Mendaki, Skiping', '30 menit', '1 hingga 2 kali seminggu', 'Asthma'),
('11/10/2020 10:08:55', '', 'Wanita', '19 hingga 25', 'Sangat Baik', 'Tidak', 'Saya ingin menjadi lebih fit', 'Bersepeda', '30 menit', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 10:09:54', 'Hans Kresnawan', 'Pria', '19 hingga 25', 'Kurang Fit', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin menurunkan berat badan', 'Berjalan atau Jogging, Bersepeda', '1 jam', '1 hingga 2 kali seminggu', 'Gastritis'),
('11/10/2020 10:11:02', 'Reyna', 'Wanita', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress', 'Berjalan atau Jogging, Skiping, Dart', '30 menit', '1 hingga 2 kali seminggu', 'Asthma'),
('11/10/2020 10:12:43', '', 'Pria', '19 hingga 25', 'Kurang Fit', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan', 'Badminton, Berenang, Berjalan atau Jogging, Bersepeda, Gym, Skiping', '1 jam', '1 hingga 2 kali seminggu', 'Gastritis'),
('11/10/2020 10:19:03', 'putri', 'Wanita', '19 hingga 25', 'Rata-Rata', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress', 'Berjalan atau Jogging', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 10:19:23', '', 'Wanita', '19 hingga 25', 'Baik', 'Ya', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress', 'Yoga', '30 menit', '1 hingga 2 kali seminggu', 'Gastritis, Tekanan Darah Rendah'),
('11/10/2020 10:21:47', '', 'Wanita', '19 hingga 25', 'Sangat Baik', 'Ya', 'Saya ingin menjadi lebih fit, Saya ingin menurunkan berat badan', 'Senam Aerobik, Softball', '30 menit', '3 hingga 4 kali seminggu', 'Tidak Ada'),
('11/10/2020 10:23:02', '', 'Wanita', '19 hingga 25', 'Baik', 'Kadang-kadang', 'Saya ingin menjadi lebih fit', 'Badminton', '30 menit', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 10:24:07', 'anon yes', 'Wanita', '19 hingga 25', 'Rata-Rata', 'Kadang-kadang', 'Saya ingin melepas stress, Saya ingin menurunkan berat badan', 'Badminton, Berenang, Berjalan atau Jogging, Futsal/Sepak Bola', '30 menit', '1 hingga 2 kali seminggu', 'alergi debu'),
('11/10/2020 10:24:36', '', 'Wanita', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin melepas stress', 'Berjalan atau Jogging', '30 menit', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 10:27:08', 'Radeva', 'Pria', '19 hingga 25', 'Rata-Rata', 'Kadang-kadang', 'Saya ingin menurunkan berat badan', 'Berjalan atau Jogging, Skiping', '30 menit', '1 hingga 2 kali seminggu', 'Maag'),
('11/10/2020 10:27:55', 'Agnes', 'Wanita', '19 hingga 25', 'Kurang Fit', 'Tidak', 'Saya ingin menurunkan berat badan', 'Berenang, Berjalan atau Jogging, Bersepeda, Senam Aerobik', '30 menit', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 10:29:17', '', 'Wanita', '19 hingga 25', 'Rata-Rata', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin menurunkan berat badan', 'Gym', '30 menit', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 10:29:18', 'Andik Kurniawian Santoso', 'Pria', '19 hingga 25', 'Rata-Rata', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress, Saya ingin menurunkan berat badan', 'Badminton, Berjalan atau Jogging, Bersepeda', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 10:30:05', '', 'Pria', '15 hingga 18', 'Baik', 'Tidak', 'Saya ingin menjadi lebih fit', 'Bola Basket', '2 jam', '1 hingga 2 kali seminggu', 'Asthma'),
('11/10/2020 10:30:44', 'Irma Riyas ', 'Wanita', '19 hingga 25', 'Baik', 'Kadang-kadang', 'Saya ingin menjadi lebih fit', 'Zumba', '30 menit', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 10:31:23', 'Diki', 'Pria', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin meningkatkan massa otot dan kekuatan', 'Gym', '1 jam', '3 hingga 4 kali seminggu', 'Asthma'),
('11/10/2020 10:42:03', 'Andik Kurniawian Santoso', 'Pria', '19 hingga 25', 'Rata-Rata', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress, Saya ingin menurunkan berat badan', 'Badminton, Berjalan atau Jogging, Bersepeda', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 10:42:31', 'Nobita', 'Pria', '19 hingga 25', 'Rata-Rata', 'Tidak', 'Saya ingin melepas stress', 'Badminton, Berenang, Futsal/Sepak Bola, Gym', '30 menit', '1 hingga 2 kali seminggu', 'Maag'),
('11/10/2020 10:43:26', '', 'Pria', '19 hingga 25', 'Rata-Rata', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan, Saya ingin menurunkan berat badan', 'Berjalan atau Jogging, Bersepeda', '1 jam', '1 hingga 2 kali seminggu', 'Maag'),
('11/10/2020 10:43:58', 'Nurhadi aldo', 'Pria', '15 hingga 18', 'Baik', 'Tidak', 'Saya ingin meningkatkan massa otot dan kekuatan', 'Berenang, Berjalan atau Jogging, Gym, Mendaki', '30 menit', '1 hingga 2 kali seminggu', 'Tekanan Darah Rendah'),
('11/10/2020 10:52:49', '', 'Pria', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan', 'Martial Arts', '2 jam', 'Setiap hari', 'Tidak Ada'),
('11/10/2020 10:57:34', 'Godiva', 'Wanita', '19 hingga 25', 'Rata-Rata', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin melepas stress, Saya ingin menurunkan berat badan', 'Berjalan atau Jogging, Bersepeda', '30 menit', '3 hingga 4 kali seminggu', 'Tidak Ada'),
('11/10/2020 10:58:07', '', 'Pria', '19 hingga 25', 'Rata-Rata', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan', 'Bersepeda, Golf', '30 menit', '3 hingga 4 kali seminggu', 'Tidak Ada'),
('11/10/2020 11:01:05', '', 'Pria', '15 hingga 18', 'Rata-Rata', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan, Saya ingin menurunkan berat badan', 'Berenang, Berjalan atau Jogging', '30 menit', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 11:01:54', '', 'Wanita', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin menjadi lebih fit', 'Badminton, Senam Aerobik, Workout', '30 menit', '1 hingga 2 kali seminggu', 'Maag, Nyeri Lutut'),
('11/10/2020 11:04:02', 'Besty Angela Hartono', 'Wanita', '15 hingga 18', 'Baik', 'Tidak', 'Saya ingin menjadi lebih fleksibel', 'Berenang', '1 jam', '3 hingga 4 kali seminggu', 'Tidak Ada'),
('11/10/2020 11:06:17', '', 'Pria', '19 hingga 25', 'Sangat Baik', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan', 'Angkat beban', '2 jam', '3 hingga 4 kali seminggu', 'Maag'),
('11/10/2020 11:08:27', 'Tasya', 'Wanita', '15 hingga 18', 'Baik', 'Kadang-kadang', 'Saya ingin menurunkan berat badan', 'Bersepeda', '30 menit', '1 hingga 2 kali seminggu', 'Maag'),
('11/10/2020 11:09:52', '', 'Pria', '19 hingga 25', 'Rata-Rata', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin meningkatkan massa otot dan kekuatan, Saya ingin menurunkan berat badan', 'Badminton, Bersepeda', '30 menit', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 11:10:33', 'Mario', 'Pria', '19 hingga 25', 'Sempurna', 'Ya', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan', 'Bersepeda, Bola Basket, Futsal/Sepak Bola', '2 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 11:11:19', 'Nauval rend', 'Pria', '19 hingga 25', 'Baik', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan, Saya ingin menurunkan berat badan', 'Badminton, Berenang, Berjalan atau Jogging, Bersepeda, Mendaki', '1 jam', '1 hingga 2 kali seminggu', 'sinusitis'),
('11/10/2020 11:13:28', 'Rizqy Qurnia Abadi', 'Pria', '15 hingga 18', 'Kurang Fit', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress', 'Lari :v', '30 menit', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 11:13:48', '', 'Pria', '19 hingga 25', 'Rata-Rata', 'Tidak', 'Saya ingin menjadi lebih fit', 'Badminton', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 11:16:49', 'Icha', 'Wanita', '15 hingga 18', 'Rata-Rata', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin menurunkan berat badan', 'Badminton, Senam Aerobik', '30 menit', '1 hingga 2 kali seminggu', 'Tekanan Darah Rendah'),
('11/10/2020 11:20:32', 'Syfrrr ', 'Wanita', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin menurunkan berat badan', 'Berenang', '2 jam', '1 hingga 2 kali seminggu', 'Maag'),
('11/10/2020 11:21:05', 'Rizka ', 'Wanita', '19 hingga 25', 'Rata-Rata', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin meningkatkan massa otot dan kekuatan', 'Senam Aerobik', '30 menit', '1 hingga 2 kali seminggu', 'Tekanan Darah Rendah'),
('11/10/2020 11:26:39', 'Rudy Galon ', 'Pria', '19 hingga 25', 'Sangat Baik', 'Kadang-kadang', 'Saya ingin menjadi lebih fit', 'Berjalan atau Jogging, Gym, Skiping', '30 menit', '3 hingga 4 kali seminggu', 'Diabetes'),
('11/10/2020 11:35:12', 'Gita Krismurti Romadhani', 'Wanita', '19 hingga 25', 'Sangat Baik', 'Ya', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin melepas stress', 'Berjalan atau Jogging, Bersepeda, Senam Aerobik', '30 menit', '3 hingga 4 kali seminggu', 'Tidak Ada'),
('11/10/2020 11:36:26', '', 'Wanita', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan', 'Badminton, Berjalan atau Jogging, Bersepeda', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 11:48:27', 'Venus', 'Wanita', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan', 'Berenang, Berjalan atau Jogging, Tennis', '2 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 11:51:41', 'Steve Aoki', 'Pria', '19 hingga 25', 'Rata-Rata', 'Kadang-kadang', 'Saya ingin melepas stress', 'Berenang, Berjalan atau Jogging, Bersepeda, Bola Basket, Gym, Mendaki, Tawuran', '2 jam', '1 hingga 2 kali seminggu', 'Tidak Ada, Tekanan Darah Tinggi'),
('11/10/2020 11:52:19', '', 'Wanita', '19 hingga 25', 'Sangat Baik', 'Ya', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan, Saya ingin menurunkan berat badan', 'Berjalan atau Jogging, Bersepeda, Gym, Senam Aerobik, Yoga', '30 menit', 'Setiap hari', 'Radang tenggorokan'),
('11/10/2020 11:54:15', 'Nana', 'Wanita', '19 hingga 25', 'Baik', 'Ya', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress, Saya ingin menurunkan berat badan', 'Berenang, Berjalan atau Jogging, Skiping', '30 menit', '1 hingga 2 kali seminggu', 'Tekanan Darah Rendah'),
('11/10/2020 11:56:21', 'Wildan', 'Wanita', '40 ke atas', 'Rata-Rata', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress', 'Berjalan atau Jogging, Yoga', '30 menit', '1 hingga 2 kali seminggu', 'Maag, Tekanan Darah Tinggi'),
('11/10/2020 11:59:29', '', 'Pria', '19 hingga 25', 'Baik', 'Ya', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin meningkatkan massa otot dan kekuatan, Saya ingin menurunkan berat badan', 'Badminton, Berjalan atau Jogging, Bersepeda, Futsal/Sepak Bola', '3 jam ke atas', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 11:59:37', 'Imroatus Sholihah', 'Wanita', '15 hingga 18', 'Rata-Rata', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress, Saya ingin menurunkan berat badan', 'Berjalan atau Jogging, Senam Aerobik, Yoga', '30 menit', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 12:03:40', 'Gabriella Icasia', 'Wanita', '19 hingga 25', 'Baik', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress, Saya ingin menurunkan berat badan', 'Berenang, Berjalan atau Jogging, Bersepeda, Gym, Mendaki', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 12:04:49', 'Leo', 'Pria', '19 hingga 25', 'Baik', 'Ya', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin meningkatkan massa otot dan kekuatan', 'Gym, Home workout: calisthenic+gym', '1 jam', '3 hingga 4 kali seminggu', 'Tidak Ada, Alergi'),
('11/10/2020 12:05:05', '', 'Wanita', '19 hingga 25', 'Sempurna', 'Tidak', 'Saya ingin menurunkan berat badan', 'Bersepeda', '2 jam', '1 hingga 2 kali seminggu', 'Maag'),
('11/10/2020 12:07:09', '', 'Pria', '19 hingga 25', 'Baik', 'Ya', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin meningkatkan massa otot dan kekuatan, Saya ingin menurunkan berat badan', 'Badminton, Berjalan atau Jogging, Bersepeda, Futsal/Sepak Bola', '3 jam ke atas', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 12:08:15', 'Annisa Afisina', 'Wanita', '19 hingga 25', 'Kurang Fit', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress', 'Berenang, Senam Aerobik, Workout', '30 menit', '1 hingga 2 kali seminggu', 'DBD'),
('11/10/2020 12:08:59', 'Hamidah', 'Wanita', '15 hingga 18', 'Rata-Rata', 'Tidak', 'Saya ingin menjadi lebih fit', 'Bersepeda', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 12:09:02', 'Ian', 'Pria', '19 hingga 25', 'Rata-Rata', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress', 'Badminton, Berenang, Berjalan atau Jogging, Bersepeda, Bola Basket, Futsal/Sepak Bola', '2 jam', '1 hingga 2 kali seminggu', 'Asthma, Maag'),
('11/10/2020 12:11:56', '', 'Pria', '19 hingga 25', 'Kurang Fit', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan, Saya ingin menurunkan berat badan', 'Berenang, Berjalan atau Jogging, Bersepeda, Mendaki', '30 menit', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 12:11:57', 'Saad', 'Pria', '19 hingga 25', 'Kurang Fit', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin meningkatkan massa otot dan kekuatan', 'Berjalan atau Jogging, Bersepeda', '30 menit', '1 hingga 2 kali seminggu', 'Apendiks kronis, hernia'),
('11/10/2020 12:12:28', 'Prilis', 'Wanita', '19 hingga 25', 'Baik', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin menurunkan berat badan', 'Badminton, Bersepeda, Skiping', '30 menit', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 12:16:07', '', 'Pria', '15 hingga 18', 'Baik', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan, Saya ingin menurunkan berat badan', 'Berjalan atau Jogging', '30 menit', 'Setiap hari', 'Tidak Ada'),
('11/10/2020 12:16:17', '', 'Wanita', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin melepas stress, Saya ingin menurunkan berat badan', 'Berjalan atau Jogging', '30 menit', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 12:18:23', 'Syaaaaa', 'Wanita', '19 hingga 25', 'Rata-Rata', 'Ya', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress, Saya ingin menurunkan berat badan', 'Badminton, Berjalan atau Jogging, Bersepeda', '1 jam', '3 hingga 4 kali seminggu', 'Maag'),
('11/10/2020 12:18:30', 'M. Firman Ardiansyah', 'Pria', '15 hingga 18', 'Baik', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan', 'Badminton, Berenang, Berjalan atau Jogging, Bersepeda', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 12:18:35', 'Teote', 'Pria', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin menurunkan berat badan', 'Badminton, Futsal/Sepak Bola', '2 jam', '1 hingga 2 kali seminggu', 'Tekanan Darah Tinggi'),
('11/10/2020 12:19:15', '', 'Wanita', '19 hingga 25', 'Baik', 'Kadang-kadang', 'Saya ingin menjadi lebih fit', 'Senam Aerobik', '30 menit ke bawah', 'Setiap hari', 'Maag'),
('11/10/2020 12:20:20', '', 'Wanita', '19 hingga 25', 'Rata-Rata', 'Tidak', 'Saya ingin meningkatkan massa otot dan kekuatan, Saya ingin menurunkan berat badan', 'Berenang, Bersepeda, Zumba', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 12:27:40', '', 'Wanita', '19 hingga 25', 'Sangat Baik', 'Tidak', 'Saya ingin menjadi lebih fit', 'Berjalan atau Jogging', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 12:28:39', '', 'Wanita', '19 hingga 25', 'Rata-Rata', 'Tidak', 'Saya ingin menjadi lebih fit', 'Badminton, Berjalan atau Jogging', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 12:29:17', 'Fitria L', 'Wanita', '19 hingga 25', 'Baik', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin meningkatkan massa otot dan kekuatan', 'Bersepeda, Yoga', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 12:30:49', 'Muhammad Ali Zamroni', 'Pria', '19 hingga 25', 'Sangat Baik', 'Tidak', 'Saya ingin meningkatkan massa otot dan kekuatan', 'Berenang, Futsal/Sepak Bola, Gym', '1 jam', '1 hingga 2 kali seminggu', 'Maag'),
('11/10/2020 12:39:26', 'Afifa Farha', 'Wanita', '31 hingga 39', 'Baik', 'Kadang-kadang', 'Saya ingin menurunkan berat badan', 'Berjalan atau Jogging', '30 menit ke bawah', 'Setiap hari', 'Tidak Ada'),
('11/10/2020 12:40:31', 'Muhammad Nur Taufik', 'Pria', '31 hingga 39', 'Baik', 'Ya', 'Saya ingin menjadi lebih fit', 'Berjalan atau Jogging', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 12:40:37', 'SNI', 'Wanita', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress', 'Berenang, Berjalan atau Jogging', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Skizofrenia paranoid '),
('11/10/2020 12:40:42', 'Aisy Lubna N', 'Wanita', '19 hingga 25', 'Rata-Rata', 'Ya', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan', 'Berjalan atau Jogging, Bersepeda', '1 jam', 'Setiap hari', 'Asthma'),
('11/10/2020 12:41:36', '', 'Wanita', '19 hingga 25', 'Baik', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan', 'Berjalan atau Jogging', '30 menit ke bawah', 'Setiap hari', 'Miopi ( rabun jauh)'),
('11/10/2020 12:42:31', 'Dewi Johanna', 'Wanita', '19 hingga 25', 'Rata-Rata', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel', 'Berjalan atau Jogging, Skiping, Yoga', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Maag'),
('11/10/2020 12:46:49', 'Karimatul Millah', 'Wanita', '19 hingga 25', 'Rata-Rata', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress', 'Berjalan atau Jogging, Yoga', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Asthma, Maag, Tekanan Darah Rendah'),
('11/10/2020 12:49:50', 'Anita', 'Wanita', '31 hingga 39', 'Kurang Fit', 'Tidak', 'Saya ingin menjadi lebih fit', 'Senam Aerobik', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Maag'),
('11/10/2020 12:50:14', 'Ayu', 'Wanita', '31 hingga 39', 'Baik', 'Ya', 'Saya ingin menjadi lebih fit', 'Badminton, Berjalan atau Jogging, Bersepeda', '1 jam', '1 hingga 2 kali seminggu', 'Maag, Tekanan Darah Rendah'),
('11/10/2020 12:50:27', '', 'Wanita', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin menurunkan berat badan', 'Berenang, Berjalan atau Jogging, Bola Basket', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 12:51:16', '', 'Wanita', '19 hingga 25', 'Baik', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan, Saya ingin menurunkan berat badan', 'Berjalan atau Jogging, Bersepeda, SKJ', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 12:53:24', 'Rahma', 'Wanita', '19 hingga 25', 'Rata-Rata', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress', 'Berenang, Berjalan atau Jogging, Bersepeda, Workout 7 menit', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Tekanan Darah Tinggi'),
('11/10/2020 13:12:01', 'Mita Mustahidah', 'Wanita', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin melepas stress', 'Bersepeda, Skiping, Yoga', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Maag'),
('11/10/2020 13:30:04', '', 'Wanita', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin menjadi lebih fit', 'Berenang, Berjalan atau Jogging', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 13:39:29', '', 'Wanita', '19 hingga 25', 'Rata-Rata', 'Tidak', 'Saya ingin menjadi lebih fit', 'Berjalan atau Jogging, Senam Aerobik', '1 jam', '1 hingga 2 kali seminggu', 'Tekanan Darah Rendah'),
('11/10/2020 13:42:05', 'Nidia', 'Wanita', '31 hingga 39', 'Rata-Rata', 'Kadang-kadang', 'Saya ingin menjadi lebih fit', 'Berenang, Berjalan atau Jogging', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Maag'),
('11/10/2020 13:42:24', '', 'Pria', '19 hingga 25', 'Sangat Baik', 'Tidak', 'Saya ingin melepas stress', 'Futsal/Sepak Bola', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 13:47:10', 'Made', 'Pria', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin menurunkan berat badan', 'Berjalan atau Jogging', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 13:47:43', 'Cahyaningsih', 'Wanita', '40 ke atas', 'Rata-Rata', 'Ya', 'Saya ingin menurunkan berat badan', 'Berjalan atau Jogging', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Diabetes, Tekanan Darah Tinggi'),
('11/10/2020 13:48:55', 'Juan Jan', 'Pria', '19 hingga 25', 'Baik', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin meningkatkan massa otot dan kekuatan', 'Senam Aerobik', '30 menit ke bawah', '3 hingga 4 kali seminggu', 'Tidak Ada'),
('11/10/2020 13:50:17', 'Putri', 'Wanita', '19 hingga 25', 'Rata-Rata', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin melepas stress', 'Badminton, Bersepeda, Bola Basket', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 13:51:44', 'Moh. Adam R.', 'Pria', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin menjadi lebih fit', 'Pemanasan ringan baik statis maupun dinamis', '30 menit ke bawah', '3 hingga 4 kali seminggu', 'Tidak Ada'),
('11/10/2020 13:55:19', 'Hamba Allah', 'Wanita', '19 hingga 25', 'Baik', 'Kadang-kadang', 'Saya ingin melepas stress, Saya ingin menurunkan berat badan', 'Berenang, Berjalan atau Jogging, Bersepeda', '2 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 13:58:28', 'Lia Aszhari Rohmah', 'Wanita', '15 hingga 18', 'Rata-Rata', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress', 'Berjalan atau Jogging, Bersepeda, Skiping', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Batuk bronkitis'),
('11/10/2020 14:00:01', 'Orang', 'Wanita', '15 hingga 18', 'Rata-Rata', 'Kadang-kadang', 'Saya ingin menurunkan berat badan', 'Berjalan atau Jogging, Yoga', '1 jam', '1 hingga 2 kali seminggu', 'Maag, Tekanan Darah Rendah'),
('11/10/2020 14:01:03', 'Liddin', 'Pria', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin melepas stress', 'Berjalan atau Jogging, Bersepeda, Pull up,  push up , sprint ', '30 menit ke bawah', 'Setiap hari', 'Tidak Ada'),
('11/10/2020 14:04:49', '', 'Wanita', '15 hingga 18', 'Kurang Fit', 'Tidak', 'Saya ingin melepas stress, Saya ingin menurunkan berat badan', 'Senam Aerobik', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Tekanan Darah Tinggi, Ambeien'),
('11/10/2020 14:07:19', 'AN', 'Wanita', '19 hingga 25', 'Kurang Fit', 'Tidak', 'Saya ingin menjadi lebih fit', 'Badminton, Berjalan atau Jogging, Bersepeda, Mendaki', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Asthma'),
('11/10/2020 14:14:01', '', 'Wanita', '19 hingga 25', 'Kurang Fit', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin melepas stress, Saya ingin menurunkan berat badan', 'Senam Aerobik', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Maag, Asam Lambung, Bronchitis, Sinus'),
('11/10/2020 14:21:20', '', 'Wanita', '31 hingga 39', 'Kurang Fit', 'Tidak', 'Saya ingin menurunkan berat badan', 'Berjalan atau Jogging, Bersepeda', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 14:22:58', '', 'Wanita', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin meningkatkan massa otot dan kekuatan', 'Badminton, Bersepeda, Skiping', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 14:55:40', '', 'Wanita', '19 hingga 25', 'Rata-Rata', 'Tidak', 'Saya ingin melepas stress', 'Gym, Senam Aerobik, Zumba', '1 jam', '1 hingga 2 kali seminggu', 'Maag'),
('11/10/2020 15:13:15', '', 'Wanita', '19 hingga 25', 'Rata-Rata', 'Tidak', 'Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan', 'Berjalan atau Jogging', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 15:17:13', '', 'Pria', '31 hingga 39', 'Rata-Rata', 'Ya', 'Saya ingin meningkatkan massa otot dan kekuatan', 'Bersepeda', '1 jam', '3 hingga 4 kali seminggu', 'Nyeri Lutut'),
('11/10/2020 15:36:57', 'Favian Aryasatya Rizqullah', 'Pria', '15 hingga 18', 'Baik', 'Tidak', 'Saya ingin menjadi lebih fleksibel, Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan', 'Berjalan atau Jogging, Bersepeda, Futsal/Sepak Bola', '3 jam ke atas', '1 hingga 2 kali seminggu', 'Maag'),
('11/10/2020 16:29:38', '', 'Wanita', '19 hingga 25', 'Rata-Rata', 'Tidak', 'Saya ingin meningkatkan massa otot dan kekuatan', 'Badminton, Berjalan atau Jogging, Bersepeda', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 16:31:17', '', 'Pria', '19 hingga 25', 'Kurang Fit', 'Tidak', 'Saya ingin menjadi lebih fleksibel, Saya ingin meningkatkan massa otot dan kekuatan', 'Berenang', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Pilek'),
('11/10/2020 16:47:44', '', 'Pria', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin melepas stress, Saya ingin meningkatkan massa otot dan kekuatan', 'Badminton, Berjalan atau Jogging, Tenis Meja', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 16:59:50', '', 'Wanita', '19 hingga 25', 'Rata-Rata', 'Kadang-kadang', 'Saya ingin menurunkan berat badan', 'Badminton, Bersepeda', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Typhus'),
('11/10/2020 17:05:11', 'Bayu', 'Pria', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin menjadi lebih fit, Saya ingin menurunkan berat badan', 'Badminton, Futsal/Sepak Bola', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 17:05:16', '', 'Wanita', '19 hingga 25', 'Rata-Rata', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin melepas stress, Saya ingin menurunkan berat badan', 'Badminton, Bersepeda', '2 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 17:08:59', 'sal', 'Wanita', '19 hingga 25', 'Baik', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin menurunkan berat badan', 'Berenang, Berjalan atau Jogging, Senam Aerobik, Skiping, Zumba', '1 jam', '1 hingga 2 kali seminggu', 'Maag, Tekanan Darah Rendah'),
('11/10/2020 18:25:20', 'ehe', 'Wanita', '19 hingga 25', 'Rata-Rata', 'Kadang-kadang', 'Saya ingin menjadi lebih fit, Saya ingin menjadi lebih fleksibel, Saya ingin meningkatkan massa otot dan kekuatan', 'Berenang, Berjalan atau Jogging, Bersepeda, Gym, Mendaki, Skiping, Yoga', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 19:38:21', '', 'Pria', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin melepas stress', 'Badminton, Berjalan atau Jogging, Bersepeda, Gym', '1 jam', '3 hingga 4 kali seminggu', 'Tidak Ada'),
('11/10/2020 19:51:28', 'Ernita', 'Wanita', '19 hingga 25', 'Kurang Fit', 'Tidak', 'Saya ingin menjadi lebih fit', 'Berenang', '30 menit ke bawah', '1 hingga 2 kali seminggu', 'Tidak Ada'),
('11/10/2020 20:24:23', 'Jodoh renjun suga seonho nam joohyuk harry styles.', 'Wanita', '19 hingga 25', 'Baik', 'Tidak', 'Saya ingin melepas stress', 'Berjalan atau Jogging', '1 jam', '1 hingga 2 kali seminggu', 'Tidak Ada');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
