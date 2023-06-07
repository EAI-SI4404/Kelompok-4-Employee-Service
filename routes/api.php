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
Route::put('/karyawan/update/{id}', [KaryawanController::class, 'updateEmployee']);
Route::delete('/karyawan/delete/{id}', [KaryawanController::class, 'deleteEmployee']);

// Jabatan
Route::get('/jabatan/getAll', [JabatanController::class, 'getAllJabatan']);
Route::get('/jabatan/{id}', [JabatanController::class, 'getJabatanById']);
Route::post('/jabatan/create', [JabatanController::class, 'addJabatan']);
Route::put('/jabatan/update/{id}', [JabatanController::class, 'updateJabatan']);
Route::delete('/jabatan/delete/{id}', [JabatanController::class, 'deleteJabatan']);

// Gaji
Route::get('/gaji/getAllHarian', [GajiController::class, 'getAllGajiHarian']);
Route::post('/gajiHarian/create', [GajiController::class, 'addGajiHarian']);
Route::get('/karyawan/{id_karyawan}/gaji/{bulan}', [GajiController::class, 'getGajiBulananKaryawan']);
// Route::get('/gajiTahunan/{tahun}', [GajiController::class, 'getGajiTahunan']);
