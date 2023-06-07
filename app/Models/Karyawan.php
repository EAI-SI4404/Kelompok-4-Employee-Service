<?php

namespace App\Models;

use App\Models\Jabatan;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Karyawan extends Model
{
    use HasFactory;

    protected $table = 'karyawan';

    protected $guarded = ['id'];

    public function jabatan() {
        return $this->belongsTo(Jabatan::class, 'id_jabatan', 'id');
    }
}
