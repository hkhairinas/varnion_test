@extends('layouts.app')

@section('title', 'Login')


@section('content')
    <div class="container my-3">
        <div class="card col-md-6 mx-auto">
            <div class="card-body">
                <form action="{{ route('authRegister') }}" method="post">
                    @csrf
                    <h4 class="text-center">Register</h4>
                    <div class="mb-3">
                        <label for="Nama" class="form-label">Nama</label>
                        <input type="text" class="form-control" name="name" id="Nama" placeholder="Nama" />
                    </div>
                    <div class="mb-3">
                        <label for="Email" class="form-label">Email</label>
                        <input type="email" class="form-control" name="email" id="Email" placeholder="Email" />
                    </div>
                    <div class="mb-3">
                        <label for="Password" class="form-label">Password</label>
                        <input type="password" class="form-control" name="password" id="Password" placeholder="Password" />
                    </div>
                    <div class="row">
                        <div class="col text-end">
                            <button class="btn btn-primary" type="submit">Register</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
