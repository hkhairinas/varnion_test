<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function index()
    {
        $products = DB::table('tabel_barang')
            ->join('tabel_satuan_barang', 'tabel_barang.kd_satuan', '=', 'tabel_satuan_barang.kode')
            ->join('tabel_kategori_barang', 'tabel_barang.kd_kategori', '=', 'tabel_kategori_barang.kode')
            ->select('tabel_barang.*', 'tabel_satuan_barang.kode as kode_satuan', 'tabel_satuan_barang.nama as nama_satuan', 'tabel_kategori_barang.kode as kode_kategori', 'tabel_kategori_barang.nama as nama_kategori')
            ->orderBy('id', 'asc')->paginate(5);

        $data = [
            'products' => $products,
        ];
        return view('home', $data);
    }

    public function getKategori()
    {
        $category = DB::table('tabel_kategori_barang')->get();
        return json_encode($category);
    }

    public function addProduct(Request $request)
    {
        $request->validate([
            'nama' => 'unique:tabel_barang,nama|min:2|max:20',
            'jumlah' => 'nullable|numeric|max:100',
            'satuan' => 'sometimes|exists:tabel_satuan_barang,kode',
        ], [
            'satuan.exists' => __('Data Satuan tidak Terdaftar.'),
            'nama.unique' =>  __('Nama Barang harus unik.'),
            'nama.min' =>  __('Nama Barang minimal 2 karakter.'),
            'nama.max' =>  __('Nama Barang maksimal 20 karakter.'),
            'jumlah.max' => __('Jumlah Barang tidak boleh lebih dari 100..'),
        ]);

        $kode = substr(str_shuffle('0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 1, 6);

        DB::table('tabel_barang')->insert([
            'kd_kategori' => $request->kategori,
            'kd_satuan' => $request->satuan,
            'kode' => $kode,
            'nama' => $request->nama,
            'jumlah' => $request->jumlah,
            'id_user_insert' => Auth::id()
        ]);

        return redirect('home')->with('status', 'Tambah Barang Berhasil!');
    }

    public function editProduct(Request $request)
    {
        $request->validate([
            'kode' => 'unique:tabel_barang,kode',
            'nama' => 'min:2|max:20',
            'jumlah' => 'nullable|numeric|max:100',
            'satuan' => 'sometimes|exists:tabel_satuan_barang,kode',
        ], [
            'kode.unique' => __('Kode Barang harus unik.'),
            'satuan.exists' => __('Data Satuan tidak Terdaftar.'),
            'nama.min' =>  __('Nama Barang minimal 2 karakter.'),
            'nama.max' =>  __('Nama Barang maksimal 20 karakter.'),
            'jumlah.max' => __('Jumlah Barang tidak boleh lebih dari 100..'),
        ]);

        $affected = DB::table('tabel_barang')
            ->where('id', $request->id)
            ->update([
                'kd_satuan' => $request->satuan,
                'kode' => $request->kode,
                'nama' => $request->nama,
                'jumlah' => $request->jumlah,
                'id_user_insert' => Auth::id()
            ]);
        if ($affected) {
            return redirect('home')->with('status', 'Edit Barang Berhasil!');
        }
    }
}
