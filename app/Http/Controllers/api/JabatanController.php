<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Http\Resources\JabatanResource;
use App\Models\Jabatan;
use Illuminate\Http\Request;

class JabatanController extends Controller
{
    public function getAllJabatan() {
        $jabatan = Jabatan::all();
        $result = JabatanResource::collection($jabatan);

        if ($jabatan->count() > 0) {
            return response()->json([
                'success' => true,
                'status_code' => 200,
                'message' => 'Berhasil menampilkan semua jabatan yang tersedia!',
                'data' => $result
            ], 200);
        } else {
            return response()->json([
                'success' => true,
                'status_code' => 200,
                'message' => 'Tidak ada jabatan yang tersedia!',
            ], 200);
        }
    }

    public function getJabatanById(Request $request) {
        $jabatan = Jabatan::find($request->id);

        if ($jabatan) {
            return response()->json([
                'success' => true,
                'status_code' => 200,
                'message' => 'Berhasil menampilkan jabatan yang tersedia!',
                'data' => $jabatan
            ], 200);
        } else {
            return response()->json([
                'success' => true,
                'status_code' => 200,
                'message' => 'Tidak ada jabatan yang tersedia!',
            ], 200);
        }
    }

    public function addJabatan(Request $request) {
        $validatedData = $request->validate([
            'nama_jabatan' => 'required',
            'divisi' => 'required',
            'gaji_per_jam' => 'required',
            'pajak' => 'required',
        ]);

        if ($validatedData) {
            $jabatan = Jabatan::create($validatedData);
            $result = new JabatanResource($jabatan);

            return response()->json([
                'success' => true,
                'status_code' => 200,
                'message' => 'Berhasil menambahkan jabatan!',
                'data' => $result
            ], 200);
        } else {
            return response()->json([
                'success' => false,
                'status_code' => 404,
                'message' => 'Gagal menambahkan jabatan!',
            ], 404);
        }
    }

    public function updateJabatan(Request $request) {
        $jabatan = Jabatan::find($request->id);

        if ($jabatan) {
            $jabatan->update($request->all());
    
            return response()->json([
                'success' => true,
                'status_code' => 200,
                'message' => 'Berhasil mengubah jabatan!',
                'data' => $jabatan
            ], 200);
        } else {
            return response()->json([
                'success' => false,
                'status_code' => 404,
                'message' => 'Jabatan tidak ditemukan!',
            ], 404);
        }
    }

    public function deleteJabatan(Request $request) {
        $jabatan = Jabatan::find($request->id);

        if ($jabatan) {
            $jabatan->delete();
    
            return response()->json([
                'success' => true,
                'status_code' => 200,
                'message' => 'Berhasil menghapus jabatan!',
                'data' => $jabatan
            ], 200);
        } else {
            return response()->json([
                'success' => false,
                'status_code' => 404,
                'message' => 'Jabatan tidak ditemukan!',
            ], 404);
        }
    }
}
