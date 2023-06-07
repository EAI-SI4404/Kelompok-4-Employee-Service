<?php

namespace Database\Seeders;

use App\Models\Absen;
use App\Models\Gaji;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class AbsenSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Absen::insert([
            [
                "durasi_kerja" => "10:19:37",
                "jam_masuk" => "6:07:59",
                "jam_keluar" => "16:07:59",
                "keterangan" => "hadir pagi",
                "status" => "hadir",
                "tanggal" => "2023-05-10",
                "id_karyawan" => 1
            ],

            [
                "durasi_kerja" => "9:43:27",
                "jam_masuk" => "6:07:59",
                "jam_keluar" => "15:07:59",
                "keterangan" => "pulang lebih cepat",
                "status" => "hadir",
                "tanggal" => "2023-05-10",
                "id_karyawan" => 2
            ],

            [
                "durasi_kerja" => "9:55:07",
                "jam_masuk" => "6:07:59",
                "jam_keluar" => "14:07:59",
                "keterangan" => "pulang lebih cepat",
                "status" => "hadir",
                "tanggal" => "2023-05-12",
                "id_karyawan" => 1
            ],

            [
                "durasi_kerja" => "7:43:01",
                "jam_masuk" => "6:07:59",
                "jam_keluar" => "13:07:59",
                "keterangan" => "pulang lebih cepat",
                "status" => "hadir",
                "tanggal" => "2023-05-13",
                "id_karyawan" => 1
            ],

            [
                "durasi_kerja" => "7:09:01",
                "jam_masuk" => "6:07:59",
                "jam_keluar" => "13:07:59",
                "keterangan" => "pulang lebih cepat",
                "status" => "hadir",
                "tanggal" => "2023-05-14",
                "id_karyawan" => 1
            ],

            [
                "durasi_kerja" => "7:00:00",
                "jam_masuk" => "6:07:59",
                "jam_keluar" => "13:07:59",
                "keterangan" => "pulang lebih cepat",
                "status" => "hadir",
                "tanggal" => "2023-05-11",
                "id_karyawan" => 2
            ],

            [
                "durasi_kerja" => "7:09:01",
                "jam_masuk" => "6:07:59",
                "jam_keluar" => "13:07:59",
                "keterangan" => "pulang lebih cepat",
                "status" => "hadir",
                "tanggal" => "2023-06-10",
                "id_karyawan" => 1
            ],

            [
                "durasi_kerja" => "8:09:01",
                "jam_masuk" => "6:07:59",
                "jam_keluar" => "14:07:59",
                "keterangan" => "pulang lebih cepat",
                "status" => "hadir",
                "tanggal" => "2023-06-11",
                "id_karyawan" => 1
            ],

            [
                "durasi_kerja" => "9:09:01",
                "jam_masuk" => "6:07:59",
                "jam_keluar" => "15:07:59",
                "keterangan" => "pulang lebih cepat",
                "status" => "hadir",
                "tanggal" => "2023-06-12",
                "id_karyawan" => 1
            ],

            [
                "durasi_kerja" => "9:09:01",
                "jam_masuk" => "6:07:59",
                "jam_keluar" => "15:07:59",
                "keterangan" => "pulang lebih cepat",
                "status" => "hadir",
                "tanggal" => "2023-06-10",
                "id_karyawan" => 2
            ],

            [
                "durasi_kerja" => "8:09:01",
                "jam_masuk" => "6:07:59",
                "jam_keluar" => "14:07:59",
                "keterangan" => "pulang lebih cepat",
                "status" => "hadir",
                "tanggal" => "2023-06-11",
                "id_karyawan" => 2
            ],

            [
                "durasi_kerja" => "7:09:01",
                "jam_masuk" => "6:07:59",
                "jam_keluar" => "13:07:59",
                "keterangan" => "pulang lebih cepat",
                "status" => "hadir",
                "tanggal" => "2023-06-12",
                "id_karyawan" => 2
            ]
        ]);
    }
}
