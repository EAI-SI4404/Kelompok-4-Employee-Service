<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Http\Resources\KaryawanResource;
use App\Models\Karyawan;
use Illuminate\Http\Request;

class KaryawanController extends Controller
{
    //

    public function getAllEmployee() {
        $karyawan = Karyawan::all();
        $result = KaryawanResource::collection($karyawan);

        if ($karyawan->count() > 0) {
            return response()->json([
                'success' => true,
                'status_code' => 200,
                'message' => 'Berhasil menampilkan semua karyawan yang tersedia!',
                'data' => $result
            ], 200);
        } else {
            return response()->json([
                'success' => true,
                'status_code' => 200,
                'message' => 'Tidak ada karyawan yang tersedia!',
            ], 200);
        }
    }

    public function getEmployeeById(Request $request) {
        $karyawan = Karyawan::find($request->id);

        if ($karyawan) {
            return response()->json([
                'success' => true,
                'status_code' => 200,
                'message' => 'Berhasil menampilkan karyawan yang tersedia!',
                'data' => $karyawan
            ], 200);
        } else {
            return response()->json([
                'success' => true,
                'status_code' => 200,
                'message' => 'Tidak ada karyawan yang tersedia!',
            ], 200);
        }
    }

    public function addEmployee(Request $request) {
        $validatedData = $request->validate([
            'nama_lengkap' => 'required',
            'jenis_kelamin' => 'required',
            'alamat' => 'required',
            'no_rekening' => 'required',
            'id_jabatan' => 'required',
        ]);

        if ($validatedData) {
            $karyawan = Karyawan::create($validatedData);
            $result = new KaryawanResource($karyawan);

            return response()->json([
                'success' => true,
                'status_code' => 200,
                'message' => 'Berhasil menambahkan karyawan!',
                'data' => $result
            ], 200);
        } else {
            return response()->json([
                'success' => false,
                'status_code' => 404,
                'message' => 'Gagal menambahkan karyawan!',
            ], 404);
        }
    }

    public function updateEmployee(Request $request) {
        $karyawan = Karyawan::find($request->id);

        if ($karyawan) {
            $karyawan->update($request->all());
    
            return response()->json([
                'success' => true,
                'status_code' => 200,
                'message' => 'Berhasil mengubah karyawan!',
                'data' => $karyawan
            ], 200);
        } else {
            return response()->json([
                'success' => false,
                'status_code' => 404,
                'message' => 'Karyawan tidak ditemukan!',
            ], 404);
        }
    }

    public function deleteEmployee(Request $request) {
        $karyawan = Karyawan::find($request->id);

        if ($karyawan) {
            $karyawan->delete();
    
            return response()->json([
                'success' => true,
                'status_code' => 200,
                'message' => 'Berhasil menghapus karyawan!',
                'data' => $karyawan
            ], 200);
        } else {
            return response()->json([
                'success' => false,
                'status_code' => 404,
                'message' => 'Karyawan tidak ditemukan!',
            ], 404);
        }
    }



}
