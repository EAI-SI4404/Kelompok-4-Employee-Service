<?php

namespace Database\Seeders;

use App\Models\Jabatan;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class JabatanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Jabatan::insert([
            [
                "nama_jabatan" => "Purchasing Manager",
                "divisi" => "Purchasing",
                "gaji_per_jam" => 21500,
                "pajak" => 0.08
            ],

            [
                "nama_jabatan" => "Marketing Executive",
                "divisi" => "Marketing",
                "gaji_per_jam" => 21000,
                "pajak" => 0.07
            ],

            [
                "nama_jabatan" => "Warehouse Supervisor",
                "divisi" => "Warehouse",
                "gaji_per_jam" => 22500,
                "pajak" => 0.08
            ],

            [
                "nama_jabatan" => "Financial Analyst",
                "divisi" => "Keuangan",
                "gaji_per_jam" => 24000,
                "pajak" => 0.08
            ],

            [
                "nama_jabatan" => "Customer Service Representative",
                "divisi" => "Customer service",
                "gaji_per_jam" => 19500,
                "pajak" => 0.06
            ],

            [
                "nama_jabatan" => "HR Manager",
                "divisi" => "HRD",
                "gaji_per_jam" => 23500,
                "pajak" => 0.08
            ], 

            [
                "nama_jabatan" => "Senior Technician",
                "divisi" => "Teknisi",
                "gaji_per_jam" => 20500,
                "pajak" => 0.06
            ],

            [
                "nama_jabatan" => "Procurement Specialist",
                "divisi" => "Purchasing",
                "gaji_per_jam" => 20000,
                "pajak" => 0.05
            ],

            [
                "nama_jabatan" => "Marketing Coordinator",
                "divisi" => "Marketing",
                "gaji_per_jam" => 22500,
                "pajak" => 0.07
            ],

            [
                "nama_jabatan" => "Warehouse Associate", 
                "divisi" => "Warehouse",
                "gaji_per_jam" => 19500, 
                "pajak" => 0.05
            ],

            [
                "nama_jabatan" => "Accountant", 
                "divisi" => "Keuangan", 
                "gaji_per_jam" => 24500, 
                "pajak" => 0.07
            ],

            [
                "nama_jabatan" => "Customer Support Specialist", 
                "divisi" => "Customer service", 
                "gaji_per_jam" => 20500, 
                "pajak" => 0.06
            ],

            [
                "nama_jabatan" => "HR Officer", 
                "divisi" => "HRD", 
                "gaji_per_jam" => 22000, 
                "pajak" => 0.06
            ],

            [
                "nama_jabatan" => "Maintenance Technician", 
                "divisi" => "Teknisi", 
                "gaji_per_jam" => 23000, 
                "pajak" => 0.07
            ],
            
            [
                "nama_jabatan" => "Purchasing Assistant", 
                "divisi" => "Purchasing", 
                "gaji_per_jam" => 19000, 
                "pajak" => 0.05
            ],
            
            [
                "nama_jabatan" => "Marketing Specialist", 
                "divisi" => "Marketing", 
                "gaji_per_jam" => 23500, 
                "pajak" => 0.07
            ],

            [
                "nama_jabatan" => "Warehouse Manager", 
                "divisi" => "Warehouse", 
                "gaji_per_jam" => 25000, 
                "pajak" => 0.08
            ],

            [
                "nama_jabatan" => "Financial Controller", 
                "divisi" => "Keuangan", 
                "gaji_per_jam" => 23000, 
                "pajak" => 0.05
            ],
            
            [
                "nama_jabatan" => "Customer Service Supervisor", 
                "divisi" => "Customer service", 
                "gaji_per_jam" => 22000, 
                "pajak" => 0.07
            ],
            
            [
                "nama_jabatan" => "HR Assistant", 
                "divisi" => "HRD", 
                "gaji_per_jam" => 20000, 
                "pajak" => 0.05
            ]
        ]);
    }
}
