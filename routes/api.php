<?php

use App\Http\Controllers\api\GajiController;
use App\Http\Controllers\api\JabatanController;
use App\Http\Controllers\api\KaryawanController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Karyawan
Route::get('/karyawan/getAll', [KaryawanController::class, 'getAllEmployee']);
Route::get('/karyawan/{id}', [KaryawanController::class, 'getEmployeeById']);
Route::post('/karyawan/create', [KaryawanController::class, 'addEmployee']);
Route::post('/karyawan/update/{id}', [KaryawanController::class, 'updateEmployee']);
Route::post('/karyawan/delete/{id}', [KaryawanController::class, 'deleteEmployee']);

// Jabatan
Route::get('/jabatan/getAll', [JabatanController::class, 'getAllJabatan']);
Route::get('/jabatan/{id}', [JabatanController::class, 'getJabatanById']);
Route::post('/jabatan/create', [JabatanController::class, 'addJabatan']);
Route::post('/jabatan/update/{id}', [JabatanController::class, 'updateJabatan']);
Route::post('/jabatan/delete/{id}', [JabatanController::class, 'deleteJabatan']);

// Gaji
Route::get('/gaji/getAll', [GajiController::class, 'getAllGaji']);
Route::get('/karyawan/{id}/gaji', [GajiController::class, 'getGajiKaryawan']);


// Route::middleware('auth:sanctum')->group(function() {
//     Route::get('/karyawan/getAll', [KaryawanController::class, 'getAll']);
// });
