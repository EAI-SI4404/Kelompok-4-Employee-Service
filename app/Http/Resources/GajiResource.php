<?php

namespace App\Http\Resources;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class GajiResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            "id" => $this->id,
            "id_karyawan" => $this->id_karyawan,
            "tanggal" => $this->tanggal,
            "total_hari_kerja" => $this->total_hari_kerja,
            "gaji_kotor" => $this->gaji_kotor,
            "gaji_bersih" => $this->gaji_bersih,
            'created_at' => Carbon::parse($this->created_at)->isoFormat('LLLL'),
            'updated_at' => Carbon::parse($this->updated_at)->isoFormat('LLLL'),
        ];
    }
}
