<?php

namespace App\Http\Controllers\api;

use App\Models\Absen;
use App\Models\Karyawan;
use App\Models\GajiHarian;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\GajiHarianResource;

class GajiController extends Controller
{
    public function getAllGajiHarian() {
        $gaji = GajiHarian::all();
        $result = GajiHarianResource::collection($gaji);

        if ($gaji->count() > 0) {
            return response()->json([
                'success' => true,
                'status_code' => 200,
                'message' => 'Berhasil menampilkan semua gaji harian!',
                'data' => $result
            ], 200);
        } else {
            return response()->json([
                'success' => true,
                'status_code' => 200,
                'message' => 'Tidak ada gaji harian yang tersedia!',
            ], 200);
        }
    }

    public function getGajiBulananKaryawan(Request $request) {
        $karyawan = Karyawan::where('id', $request->id_karyawan)->with('jabatan')->first();

        $gaji_kotor_bulanan = GajiHarian::where('id_karyawan', $request->id_karyawan)
                            ->where('tanggal', 'LIKE', '%'. $request->tahun. '-' . $request->bulan. '%')->sum('gaji_harian');
        
        if ($gaji_kotor_bulanan) {
            $pajak = $gaji_kotor_bulanan * $karyawan->jabatan->pajak;
            $gaji_bersih_bulanan = $gaji_kotor_bulanan - $pajak;
            $total_hari_kerja = GajiHarian::where('id_karyawan', $request->id_karyawan)
                                            ->where('tanggal', 'LIKE', '%'. $request->tahun. '-' . $request->bulan. '%')->count();

            return response()->json([
                'success' => true,
                'status_code' => 200,
                'message' => 'Berhasil menampilkan gaji!',
                'data' => [
                    "id_karyawan" => $karyawan->id,
                    "bulan" => $request->bulan,
                    "total_hari_kerja" => $total_hari_kerja,
                    "gaji_kotor" => $gaji_kotor_bulanan,
                    "gaji_bersih" => $gaji_bersih_bulanan,
                    "pajak" => $karyawan->jabatan->pajak
                ]
            ], 200);
        } else {
            return response()->json([
                'success' => false,
                'status_code' => 404,
                'message' => 'Gagal menemukan absen karyawan pada bulan tersebut!',
            ], 404);
        }

    }

//     === RUMUS ===
// gaji kotor = ([Jabatan] gaji per jam x [Absensi] jam kerja)
// pajak = gaji kotor * [Jabatan] pajak
// gaji bersih = gaji kotor - pajak

    public function addGajiHarian(Request $request){
        $absen = Absen::where('id_karyawan', $request->id_karyawan)
                        ->where('id', $request->id_absen)
                        ->where('tanggal', $request->tanggal)->first();
        
        if ($absen) {
            $validatedData = $request->validate([
                'id_karyawan' => 'required',
                'tanggal' => 'required',
                'id_absen' => 'required'
            ]);

            $gaji_harian = GajiHarian::where('id_karyawan', $request->id_karyawan)
                                        ->where('id_absen', $request->id_absen)
                                        ->where('tanggal', $request->tanggal)->first();
            if ($gaji_harian) {
                return response()->json([
                    'success' => false,
                    'status_code' => 404,
                    'message' => 'Gaji harian pada tanggal tersebut sudah ditambah!'
                ], 404);
            }

            $karyawan = Karyawan::where('id', $request->id_karyawan)->with('jabatan')->first();
            $gaji_per_jam = $karyawan->jabatan->gaji_per_jam;
            $durasi_kerja = (int)$absen->durasi_kerja;
            $gaji_harian = $durasi_kerja * $gaji_per_jam;

            $validatedData["gaji_harian"] = $gaji_harian;

            if ($validatedData) {
                $gaji_daily = GajiHarian::create($validatedData);
                $result = new GajiHarianResource($gaji_daily);
    
                return response()->json([
                    'success' => true,
                    'status_code' => 200,
                    'message' => 'Berhasil menambahkan gaji harian!',
                    'data' => $result
                ], 200);
            } else {
                return response()->json([
                    'success' => false,
                    'status_code' => 404,
                    'message' => 'Gagal menambahkan gaji harian!',
                ], 404);
            }
        } else {
            return response()->json([
                'success' => false,
                'status_code' => 404,
                'message' => 'Gagal menemukan absen!',
            ], 404);
        }  
    }

    // public function getGajiTahunan(Request $request) {
    //     $gaji_tahunan = GajiHarian::where('tanggal', 'LIKE', '%'. $request->tahun. '%')->sum('gaji_harian');
    //     dd($gaji_tahunan);
    // }
}
