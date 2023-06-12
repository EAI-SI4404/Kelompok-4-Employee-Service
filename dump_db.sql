-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 02:16 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes_eai_2023`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen`
--

CREATE TABLE `absen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `durasi_kerja` time NOT NULL,
  `id_karyawan` bigint(20) UNSIGNED NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_keluar` time NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `absen`
--

INSERT INTO `absen` (`id`, `durasi_kerja`, `id_karyawan`, `jam_masuk`, `jam_keluar`, `keterangan`, `status`, `tanggal`, `created_at`, `updated_at`) VALUES
(1, '10:19:37', 1, '06:07:59', '16:07:59', 'hadir pagi', 'hadir', '2023-05-10', NULL, NULL),
(2, '09:43:27', 2, '06:07:59', '15:07:59', 'pulang lebih cepat', 'hadir', '2023-05-10', NULL, NULL),
(3, '09:55:07', 1, '06:07:59', '14:07:59', 'pulang lebih cepat', 'hadir', '2023-05-12', NULL, NULL),
(4, '07:43:01', 1, '06:07:59', '13:07:59', 'pulang lebih cepat', 'hadir', '2023-05-13', NULL, NULL),
(5, '07:09:01', 1, '06:07:59', '13:07:59', 'pulang lebih cepat', 'hadir', '2023-05-14', NULL, NULL),
(6, '07:00:00', 2, '06:07:59', '13:07:59', 'pulang lebih cepat', 'hadir', '2023-05-11', NULL, NULL),
(7, '07:09:01', 1, '06:07:59', '13:07:59', 'pulang lebih cepat', 'hadir', '2023-06-10', NULL, NULL),
(8, '08:09:01', 1, '06:07:59', '14:07:59', 'pulang lebih cepat', 'hadir', '2023-06-11', NULL, NULL),
(9, '09:09:01', 1, '06:07:59', '15:07:59', 'pulang lebih cepat', 'hadir', '2023-06-12', NULL, NULL),
(10, '09:09:01', 2, '06:07:59', '15:07:59', 'pulang lebih cepat', 'hadir', '2023-06-10', NULL, NULL),
(11, '08:09:01', 2, '06:07:59', '14:07:59', 'pulang lebih cepat', 'hadir', '2023-06-11', NULL, NULL),
(12, '07:09:01', 2, '06:07:59', '13:07:59', 'pulang lebih cepat', 'hadir', '2023-06-12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gaji_harian`
--

CREATE TABLE `gaji_harian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_absen` bigint(20) UNSIGNED NOT NULL,
  `id_karyawan` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `gaji_harian` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gaji_harian`
--

INSERT INTO `gaji_harian` (`id`, `id_absen`, `id_karyawan`, `tanggal`, `gaji_harian`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-05-10', 200000.00, '2023-06-06 18:33:21', '2023-06-06 18:33:21'),
(3, 3, 1, '2023-05-12', 180000.00, '2023-06-06 18:37:13', '2023-06-06 18:37:13'),
(4, 4, 1, '2023-05-13', 140000.00, '2023-06-06 18:37:17', '2023-06-06 18:37:17'),
(5, 5, 1, '2023-05-14', 140000.00, '2023-06-06 18:37:21', '2023-06-06 18:37:21'),
(6, 2, 2, '2023-05-10', 225000.00, '2023-06-06 18:37:48', '2023-06-06 18:37:48'),
(7, 6, 2, '2023-05-11', 175000.00, '2023-06-06 18:38:02', '2023-06-06 18:38:02'),
(8, 7, 1, '2023-06-10', 140000.00, '2023-06-06 18:49:01', '2023-06-06 18:49:01'),
(9, 8, 1, '2023-06-11', 160000.00, '2023-06-06 18:49:39', '2023-06-06 18:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jabatan` varchar(255) NOT NULL,
  `divisi` varchar(255) NOT NULL,
  `gaji_per_jam` double(8,2) NOT NULL,
  `pajak` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id`, `nama_jabatan`, `divisi`, `gaji_per_jam`, `pajak`, `created_at`, `updated_at`) VALUES
(1, 'Purchasing Manager', 'Purchasing', 21500.00, 0.08, NULL, NULL),
(2, 'Marketing Executive', 'Marketing', 21000.00, 0.07, NULL, NULL),
(3, 'Warehouse Supervisor', 'Warehouse', 22500.00, 0.08, NULL, NULL),
(4, 'Financial Analyst', 'Keuangan', 24000.00, 0.08, NULL, NULL),
(5, 'Customer Service Representative', 'Customer service', 19500.00, 0.06, NULL, NULL),
(6, 'HR Manager', 'HRD', 23500.00, 0.08, NULL, NULL),
(7, 'Senior Technician', 'Teknisi', 20500.00, 0.06, NULL, NULL),
(8, 'Procurement Specialist', 'Purchasing', 20000.00, 0.05, NULL, NULL),
(9, 'Marketing Coordinator', 'Marketing', 22500.00, 0.07, NULL, NULL),
(10, 'Warehouse Associate', 'Warehouse', 19500.00, 0.05, NULL, NULL),
(11, 'Accountant', 'Keuangan', 24500.00, 0.07, NULL, NULL),
(12, 'Customer Support Specialist', 'Customer service', 20500.00, 0.06, NULL, NULL),
(13, 'HR Officer', 'HRD', 22000.00, 0.06, NULL, NULL),
(14, 'Maintenance Technician', 'Teknisi', 23000.00, 0.07, NULL, NULL),
(15, 'Purchasing Assistant', 'Purchasing', 19000.00, 0.05, NULL, NULL),
(16, 'Marketing Specialist', 'Marketing', 23500.00, 0.07, NULL, NULL),
(17, 'Warehouse Manager', 'Warehouse', 25000.00, 0.08, NULL, NULL),
(18, 'Financial Controller', 'Keuangan', 23000.00, 0.05, NULL, NULL),
(19, 'Customer Service Supervisor', 'Customer service', 22000.00, 0.07, NULL, NULL),
(20, 'HR Assistant', 'HRD', 20000.00, 0.05, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_jabatan` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `jenis_kelamin` enum('P','W') NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_rekening` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `id_jabatan`, `nama_lengkap`, `jenis_kelamin`, `alamat`, `no_rekening`, `created_at`, `updated_at`) VALUES
(1, 8, 'Fitri Anggraini', 'W', 'Jl. Melati No. 10', '12345678', NULL, NULL),
(2, 17, 'Budi Santoso', 'P', 'Jl. Mawar No. 5', '87654321', NULL, NULL),
(3, 3, 'Siti Rahayu', 'W', 'Jl. Anggrek No. 15', '65432109', NULL, NULL),
(4, 12, 'Hendrik Wijaya', 'P', 'Jl. Dahlia No. 20', '21098765', NULL, NULL),
(5, 6, 'Rina Setiawan', 'W', 'Jl. Melati No. 8', '56789012', NULL, NULL),
(6, 11, 'Andi Susanto', 'P', 'Jl. Anggrek No. 12', '98765432', NULL, NULL),
(7, 20, 'Linda Kusuma', 'W', 'Jl. Mawar No. 7', '23456789', NULL, NULL),
(8, 15, 'Agus Prasetyo', 'P', 'Jl. Dahlia No. 18', '90876543', NULL, NULL),
(9, 5, 'Dewi Wijaya', 'W', 'Jl. Anggrek No. 9', '65432109', NULL, NULL),
(10, 10, 'Santoso Kusuma', 'P', 'Jl. Dahlia No. 16', '43210987', NULL, NULL),
(11, 4, 'Rina Sari', 'W', 'Jl. Melati No. 6', '12457890', NULL, NULL),
(12, 9, 'Agung Prasetyo', 'P', 'Jl. Anggrek No. 11', '90876543', NULL, NULL),
(13, 18, 'Dewi Anggraini', 'W', 'Jl. Dahlia No. 17', '23456789', NULL, NULL),
(14, 7, 'Budi Santoso', 'P', 'Jl. Mawar No. 5', '87654321', NULL, NULL),
(15, 2, 'Linda Wijaya', 'W', 'Jl. Anggrek No. 14', '56789012', NULL, NULL),
(16, 13, 'Denny Kurniawan', 'P', 'Jl. Dahlia No. 19', '43210987', NULL, NULL),
(17, 1, 'Siti Rahayu', 'W', 'Jl. Melati No. 10', '65432109', NULL, NULL),
(18, 16, 'Hendrik Wijaya', 'P', 'Jl. Mawar No. 12', '21098765', NULL, NULL),
(19, 14, 'Rina Setiawan', 'W', 'Jl. Anggrek No. 8', '56789012', NULL, NULL),
(20, 19, 'Andi Susanto', 'P', 'Jl. Dahlia No. 15', '98765432', NULL, NULL),
(21, 3, 'Linda Kusuma', 'W', 'Jl. Mawar No. 7', '23456789', NULL, NULL),
(22, 20, 'Agus Prasetyo', 'P', 'Jl. Anggrek No. 10', '90876543', NULL, NULL),
(23, 8, 'Dewi Wijaya', 'W', 'Jl. Dahlia No. 16', '65432109', NULL, NULL),
(24, 17, 'Santoso Kusuma', 'P', 'Jl. Mawar No. 9', '43210987', NULL, NULL),
(25, 5, 'Rina Sari', 'W', 'Jl. Anggrek No. 6', '12457890', NULL, NULL),
(26, 12, 'Fitri Anggraini', 'W', 'Jl. Melati No. 1', '24680135', NULL, NULL),
(27, 19, 'Budi Setiawan', 'P', 'Jl. Mawar No. 14', '86420973', NULL, NULL),
(28, 6, 'Siti Wijaya', 'W', 'Jl. Anggrek No. 18', '97531042', NULL, NULL),
(29, 15, 'Hendrik Santoso', 'P', 'Jl. Dahlia No. 7', '53108492', NULL, NULL),
(30, 2, 'Rina Anggraini', 'W', 'Jl. Melati No. 16', '79854213', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_23_160552_create_jabatan_table', 1),
(6, '2023_05_23_160607_create_karyawan_table', 1),
(7, '2023_05_23_160619_create_gaji_table', 1),
(8, '2023_06_04_121845_create_absen_table', 1),
(9, '2023_06_04_125435_add_foreign_key_karyawan_to_absen_table', 1),
(10, '2023_06_04_130401_add_foreign_key_absen_to_gaji_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `absen_id_karyawan_foreign` (`id_karyawan`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gaji_harian`
--
ALTER TABLE `gaji_harian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gaji_harian_id_karyawan_foreign` (`id_karyawan`),
  ADD KEY `gaji_harian_id_absen_foreign` (`id_absen`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `karyawan_id_jabatan_foreign` (`id_jabatan`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen`
--
ALTER TABLE `absen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gaji_harian`
--
ALTER TABLE `gaji_harian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absen`
--
ALTER TABLE `absen`
  ADD CONSTRAINT `absen_id_karyawan_foreign` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id`);

--
-- Constraints for table `gaji_harian`
--
ALTER TABLE `gaji_harian`
  ADD CONSTRAINT `gaji_harian_id_absen_foreign` FOREIGN KEY (`id_absen`) REFERENCES `absen` (`id`),
  ADD CONSTRAINT `gaji_harian_id_karyawan_foreign` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id`);

--
-- Constraints for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `karyawan_id_jabatan_foreign` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
