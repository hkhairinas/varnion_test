<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HasilResponse extends Model
{
    use HasFactory;
    protected $table = 'hasil_response';

    protected $fillable = [
        'nama',
        'nama_jalan',
        'jenis_kelamin',
        'email',
        'angka_kurang',
        'angka_lebih',
        'profesi',
        'plain_json'
    ];
}
