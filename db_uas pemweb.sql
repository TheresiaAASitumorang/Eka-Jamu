-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 16, 2025 at 03:04 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email`, `no_telp`, `alamat`) VALUES
(1, 'Siti Nurhaliza', 'siti@gmail.com', '081234567890', 'Jl. Kenanga No.12, Jakarta'),
(2, 'Budi Santoso', 'budi_santoso@yahoo.com', '082134567891', 'Jl. Merpati No.5, Bandung'),
(3, 'Ani Wijaya', 'ani.wijaya@mail.com', '083145678912', 'Jl. Dahlia No.7, Surabaya'),
(4, 'Dewi Lestari', 'dewi.lestari@outlook.com', '085267891234', 'Jl. Mawar No.2, Yogyakarta'),
(5, 'Rian Pratama', 'rianp@gmail.com', '081298765432', 'Jl. Melati No.9, Semarang'),
(6, 'Linda Kusuma', 'lindakusuma@hotmail.com', '082198765431', 'Jl. Anggrek No.4, Medan'),
(7, 'Fajar Nugroho', 'fajarnugroho@domain.com', '083198765430', 'Jl. Teratai No.8, Denpasar'),
(8, 'Maya Sari', 'mayasari@gmail.com', '084298765429', 'Jl. Cempaka No.3, Makassar'),
(9, 'Agus Saputra', 'agus.saputra@ymail.com', '085398765428', 'Jl. Kamboja No.1, Palembang'),
(10, 'Nina Putri', 'ninaputri@gmail.com', '081398765427', 'Jl. Flamboyan No.6, Bogor');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `nama_pemesan` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `nama_produk` varchar(100) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `catatan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `nama_pemesan`, `email`, `no_telp`, `alamat`, `nama_produk`, `jumlah`, `tanggal`, `catatan`) VALUES
(1, 'Dewi Lestari', 'dewi@gmail.com', '08123456789', 'Jl. Melati No. 10', 'Jamu Kunyit Asam', 2, '2025-06-15', 'Tanpa gula'),
(2, 'Budi Santoso', 'budi123@yahoo.com', '08987654321', 'Jl. Kenanga No. 25', 'Jamu Beras Kencur', 1, '2025-06-14', ''),
(3, 'Siti Aminah', 'siti.aminah@mail.com', '082112345678', 'Jl. Mawar No. 5', 'Jamu Temulawak', 3, '2025-06-13', 'Dikirim siang hari'),
(4, 'Andi Wijaya', 'andi@gmail.com', '08123456700', 'Jl. Flamboyan No. 8', 'Jamu Kunyit Asam', 1, '2025-06-12', ''),
(5, 'Rina Oktaviani', 'rina.oktaviani@gmail.com', '08331234567', 'Jl. Dahlia No. 12', 'Jamu Jahe Merah', 2, '2025-06-11', 'Pesan untuk acara keluarga'),
(6, 'Cila', 'cila@gmail.com', '23456789', 'Jl. UPN', 'Jamu Kunyit Asam', 6, '2025-06-06', ''),
(8, 'pwaong', 'pwaong@gmail.com', '9876', 'Jl. UPN', 'Jamu Kunyit Asam', 3, '2027-03-31', ''),
(9, 'nanda', 'nanda@gmail.com', '09876543', 'Jl. UPN', 'Jamu Beras Kencur', 3, '2029-12-12', ''),
(10, 'dilon', 'dilon@gmail.com', '098765', 'Jl. UPN', 'Jamu Beras Kencur', 100, '2024-12-23', 'tambah gula 2kg');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `deskripsi`, `harga`, `kategori`, `gambar`) VALUES
(1, 'Jamu Kunyit Asam', 'Perpaduan kunyit dan asam jawa yang menyegarkan, membantu melancarkan peredaran darah dan pencernaan.', 250000, 'Serbuk', 'Applications/XAMPP/xamppfiles/htdocs/uas/dist/img/produk/kunyit_asam.png\r\n'),
(2, 'Jamu Beras Kencur', 'Minuman tradisional yang meningkatkan nafsu makan dan menjaga stamina tubuh tetap prima.', 28000, 'Serbuk', 'beras_kencur_serbuk.png'),
(3, 'Jamu Temulawak', 'Ramuan tradisional untuk menjaga kesehatan hati dan meningkatkan sistem kekebalan tubuh.', 30000, 'Serbuk', 'temulawak_serbuk.png'),
(4, 'Sirup Kunyit Asam', 'Sirup konsentrat kunyit asam yang praktis, tinggal diseduh dengan air panas atau dingin.', 35000, 'Sirup Cair', 'sirup_kunyit_asam.png'),
(5, 'Sirup Beras Kencur', 'Ekstrak beras kencur dalam bentuk sirup untuk meningkatkan nafsu makan dan menjaga stamina.', 38000, 'Sirup Cair', 'sirup_beras_kencur.png'),
(6, 'Kapsul Temulawak', 'Ekstrak temulawak terkonsentrasi dalam bentuk kapsul untuk meningkatkan kesehatan hati.', 45000, 'Kapsul', 'kapsul_temulawak.png'),
(7, 'Kapsul Jahe Merah', 'Kapsul jahe merah untuk meningkatkan daya tahan tubuh dan menghangatkan badan.', 48000, 'Kapsul', 'kapsul_jahe_merah.png'),
(8, 'Paket Sehat Harian', 'Paket berisi 3 jenis jamu (kunyit asam, beras kencur, dan temulawak) untuk kebutuhan sehari-hari.', 75000, 'Paket', 'paket_sehat.png'),
(9, 'Paket Detox', 'Paket khusus untuk detoksifikasi tubuh berisi sirup kunyit asam dan kapsul temulawak.', 95000, 'Paket', 'paket_detox.png'),
(11, 'Jamu Beras China', 'Asli China', 200000, 'Serbuk', NULL),
(12, 'Jamu Beras China', 'Asli China', 200000, 'Serbuk', NULL),
(13, 'Jamu asli arab', 'Asli arab', 20000000, 'Paket', NULL),
(14, 'Jamu asli arab', 'Asli Arab', 50000000, 'Sirup Cair', NULL),
(15, 'Jamu asli arab', 'Asli Arab', 50000000, 'Sirup Cair', NULL),
(16, 'Jamu asli arab', 'Asli Arab', 50000000, 'Sirup Cair', NULL),
(17, 'Jamu asli arab', 'Asli Arab', 50000000, 'Sirup Cair', NULL),
(18, 'Jamu asli arab', 'Asli Arab', 50000000, 'Sirup Cair', NULL),
(19, 'Jamu tes', 't', 987654, 'Serbuk', NULL),
(20, 'Jamu tes', 't', 987654, 'Serbuk', NULL),
(21, 'Jamu tes', 'tes', 1000000, 'Serbuk', NULL),
(22, 'Jamu Kapsul China', 's', 1, 'Serbuk', NULL),
(23, 'tes', 'tes', 500000, 'Serbuk', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('superadmin','operator') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin@gmail.com', 'adminLTE', 'admin123', 'superadmin'),
(5, 'Nanda', 'nanda@gmail.com', 'nanda', 'nanda123', 'operator'),
(6, 'Theresia', 'there@gmail.com', 'there', 'there123', 'operator'),
(7, 'Siti Aminah', 'siti@gmail.com', 'siti', 'siti123', 'operator'),
(8, 'paong', 'paong@gmail.com', 'paong', '$2y$10$h69kGOW4DUpQvaI0k1WZr.q.DXv9qvBg9rYpST7MJNtm/sOaIiQLe', 'operator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
