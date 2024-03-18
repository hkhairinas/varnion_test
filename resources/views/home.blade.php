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
                                <th>Nama</th>
                                <th>Jenis Kelamin</th>
                                <th>Jalan</th>
                                <th>Email</th>
                                <th>Profesi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($users as $user)
                                <tr>
                                    <td>{{ $user->id }}</td>
                                    <td>{{ $user->nama }}</td>
                                    <td>{{ $user->jenis_kelamin }}</td>
                                    <td>{{ $user->nama_jalan }}</td>
                                    <td>{{ $user->email }}</td>
                                    <td>{{ $user->nama_profesi }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
