-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2021 at 04:26 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uns`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_article`
--

CREATE TABLE `tb_article` (
  `id_article` int(5) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `content` text NOT NULL,
  `jml_komen` int(3) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_article`
--

INSERT INTO `tb_article` (`id_article`, `title`, `image`, `content`, `jml_komen`, `added_on`) VALUES
(10, 'Waktu yang Tepat Untuk Meminum Kopi', '1627870971.jpg', '<p>Waktu untuk meminum kopi sebenarnya bisa kapan saja.&nbsp;Tetapi menurut penelitian, waktu paling ideal untuk meminum kopi adalah pukul 10 pagi dan 6 sore. Di waktu tersebut efek kafein akan lebih optimal.</p>\r\n', 0, '2021-08-02 09:22:51'),
(11, 'Jenis Jenis Minuman Kopi', '1627871015.jpg', '<p>Kopi dapat diolah menjadi berbagai banyak jenis dari minumam.&nbsp;&nbsp;Beberapa yang paling terkenal di Indonesia diantaranya Americano, Latte, Cappuccino, Kopi Tubruk.</p>\r\n', 0, '2021-08-02 09:23:35'),
(12, 'Kopi Termahal Berasal dari Indonesia', '1627871051.jpg', '<p>Kopi luwak Indonesia menjadi salah satu jenis kopi yang paling mahal di dunia.&nbsp;Kopi ini memiliki nilai eksotis dan tergolong langka karena berasal dari biji kopi yang dipanen dari feses luwak liar yang dibersihkan.</p>\r\n', 0, '2021-08-02 09:24:11');

-- --------------------------------------------------------

--
-- Table structure for table `tb_profil`
--

CREATE TABLE `tb_profil` (
  `id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `logo` text NOT NULL,
  `description` text NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `location` varchar(50) NOT NULL,
  `instagram` varchar(30) NOT NULL,
  `facebook` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_profil`
--

INSERT INTO `tb_profil` (`id`, `name`, `logo`, `description`, `phone`, `email`, `location`, `instagram`, `facebook`) VALUES
(11, 'myCoffee', 'logo.jpg', 'Our business is focused on serving you the high quality coffee in various forms such as roasted beans, coffee powder, even ready-to-drink coffee. We also have some merchandise with a coffee theme.', '81234567890', 'drink.mycoffee@email.com', 'Malang, East Java', '@my_coffee', 'my_coffee');

-- --------------------------------------------------------

--
-- Table structure for table `tb_review`
--

CREATE TABLE `tb_review` (
  `email_user` varchar(25) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `narasi` varchar(1000) NOT NULL,
  `tgl_upload` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_review`
--

INSERT INTO `tb_review` (`email_user`, `nama_user`, `narasi`, `tgl_upload`) VALUES
('dedenprabowo@email.com', 'Deden Prabowo', 'Wahh kopinya enak banget, udah gitu promonya banyak banget lagii.', '2021-08-02 09:20:37'),
('jelitahayani@email.com', 'Jelita Hayani', 'Harga murah tapi kualitas gak murahan, emang mantep banget nih kopi.', '2021-08-02 09:21:36'),
('maidahartati@email.com', 'Maida Hartati', 'Ga cuma kopinya aja yang enak, tapi tumblr nya juga lucu banget jadi pengen beli lagi dehh.', '2021-08-02 09:21:17'),
('wajirpradana@email.com', 'Wajir Pradana', 'Kopinya cocok banget buat anak senja seperti aku. Menikmati sore dengan secangkir kopi diiringi alunan gitar.', '2021-08-02 09:20:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_article`
--
ALTER TABLE `tb_article`
  ADD PRIMARY KEY (`id_article`);

--
-- Indexes for table `tb_profil`
--
ALTER TABLE `tb_profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_review`
--
ALTER TABLE `tb_review`
  ADD PRIMARY KEY (`email_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_article`
--
ALTER TABLE `tb_article`
  MODIFY `id_article` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
