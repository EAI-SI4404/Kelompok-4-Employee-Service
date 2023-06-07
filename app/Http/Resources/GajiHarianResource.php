<?php

namespace App\Http\Resources;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class GajiHarianResource extends JsonResource
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
            "id_absen" => $this->id_absen,
            "tanggal" => $this->tanggal,
            "gaji_harian" => $this->gaji_harian,
            'created_at' => Carbon::parse($this->created_at)->isoFormat('LLLL'),
            'updated_at' => Carbon::parse($this->updated_at)->isoFormat('LLLL'),
        ];
    }
}
