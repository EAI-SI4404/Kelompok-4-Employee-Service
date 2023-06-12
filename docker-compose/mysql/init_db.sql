CREATE TABLE `jabatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jabatan` varchar(255) NOT NULL,
  `divisi` varchar(255) NOT NULL,
  `gaji_per_jam` double(8,2) NOT NULL,
  `pajak` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `gaji_harian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_absen` bigint(20) UNSIGNED NOT NULL,
  `id_karyawan` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `gaji_harian` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;