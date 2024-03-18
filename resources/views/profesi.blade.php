@extends('layouts.app')

@section('title', 'Hasil Response')


@section('content')
    <div class="container my-3">
        <a href="get-data" class="btn btn-primary my-2">Get Data</a>
        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover table-striped w-100">
                        <thead>
                            <tr>
                                <th>Nomor</th>
                                <th>Profesi</th>
                                <th>Jumlah</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($users as $user)
                                <tr>
                                    <td>{{ $user->kode }}</td>
                                    <td>{{ $user->nama_profesi }}</td>
                                    <td>{{ $user->total }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
