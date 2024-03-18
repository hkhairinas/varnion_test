<?php

namespace App\Http\Controllers;

use App\Models\HasilResponse;
use App\RandomUser;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function index()
    {
        $users = DB::table('hasil_response')
            ->join('jenis_kelamin', 'hasil_response.jenis_kelamin', '=', 'jenis_kelamin.kode')
            ->join('tabel_profesi', 'hasil_response.profesi', '=', 'tabel_profesi.kode')
            ->select('hasil_response.*', 'jenis_kelamin.jenis_kelamin', 'tabel_profesi.nama_profesi')
            ->get();

        $data = [
            'users' => $users,
        ];
        return view('home', $data);
    }

    public function getProfesi()
    {
        $users = DB::table('hasil_response')
            ->join('tabel_profesi', 'hasil_response.profesi', '=', 'tabel_profesi.kode')
            ->selectRaw('CONCAT(profesi) as kode, count(*) as total, nama_profesi')
            ->groupBy('profesi', 'nama_profesi')
            ->orderBy('kode', 'asc')
            ->get();
        $data = [
            'users' => $users,
        ];
        return view('profesi', $data);
    }

    public function getData(RandomUser $randomUser)
    {
        $result = json_decode($randomUser->getRandomUser());
        $results = $result->results[0];
        $hsl_resp = new HasilResponse();
        $hsl_resp->nama = $results->name->first . ' ' . $results->name->last;
        $hsl_resp->nama_jalan = $results->location->street->name;
        $hsl_resp->jenis_kelamin = ($results->gender === 'male') ? '1' : '2';
        $countAngka = $this->checkAngka($results->login->md5);
        if ($countAngka > 7) {
            $angka1 = $countAngka;
            $angka2 = 0;
        } else {
            $angka1 = 0;
            $angka2 = $countAngka;
        }
        $hsl_resp->email = $results->email;
        $hsl_resp->angka_kurang = $angka2;
        $hsl_resp->angka_lebih = $angka1;

        $huruf = array('A', 'B', 'C', 'D', 'E');
        $huruf_terpilih = $huruf[array_rand($huruf)];

        $hsl_resp->profesi = $huruf_terpilih;
        $hsl_resp->plain_json = json_encode($result);
        $hsl_resp->save();
        return redirect('/')->with('status', 'Data Baru Berhasil Diambil!');
    }

    private function checkAngka($str)
    {
        $chars = str_split($str);
        $i = 0;
        foreach ($chars as $char) {
            if (is_numeric($char)) {
                $i++;
            } else {
                continue;
            }
        }
        return $i;
    }
}
