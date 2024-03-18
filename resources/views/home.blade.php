@extends('layouts.app')

@section('title', 'Dashboard')

@section('header')
    @include('layouts.header')
@endsection

@section('content')
    <div class="container my-3">
        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <div class="card">
            <div class="card-header">
                <h3>Data Barang</h3>
            </div>
            <div class="card-body">
                <div class="mb-2 text-end">
                    <button type="button" class="btn btn-primary" onclick="addData()">
                        Add
                    </button>
                </div>

                <div class="table-responsive">
                    <table class="table table-bordered table-hover table-striped">
                        <thead>
                            <tr>
                                <th>Nomor</th>
                                <th>Kode</th>
                                <th>Kategori</th>
                                <th>Nama</th>
                                <th>Jumlah</th>
                                <th>Satuan</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($products as $product)
                                <tr>
                                    <td>{{ $product->id }}</td>
                                    <td>{{ $product->kode }}</td>
                                    <td>{{ $product->nama_kategori }}</td>
                                    <td>{{ $product->nama }}</td>
                                    <td>{{ $product->jumlah }}</td>
                                    <td>{{ $product->nama_satuan }}</td>
                                    <td>
                                        <a href="#" class="btn btn-warning"
                                            onclick="editData('{{ $product->id }}', '{{ $product->kode }}', '{{ $product->nama }}', '{{ $product->jumlah }}', '{{ $product->kode_satuan }}')">Edit</a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    {{ $products->links() }}
                </div>
                <!-- Modal -->
                <div class="modal fade" id="AddModal" tabindex="-1" aria-labelledby="AddModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="AddModalLabel">Tambah Produk</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form method="post" action="{{ route('add') }}">
                                    @csrf
                                    <div class="mb-3">
                                        <label for="Kategori" class="form-label">Kategori</label>
                                        <select class="form-select" name="kategori" id="Kategori" required>
                                            <option value="">Pilih Kategori</option>
                                        </select>
                                    </div>
                                    <div class="mb-3">
                                        <label for="Satuan" class="form-label">Satuan</label>
                                        <input type="text" class="form-control" name="satuan" id="Satuan"
                                            placeholder="Satuan" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="Nama" class="form-label">Nama Barang</label>
                                        <input type="text" class="form-control" name="nama" id="Nama"
                                            placeholder="Nama Barang" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="Jumlah" class="form-label">Jumlah</label>
                                        <input type="text" class="form-control" name="jumlah" id="Jumlah"
                                            placeholder="Jumlah" required>
                                    </div>
                                    <div class="text-end">
                                        <button type="submit" class="btn btn-primary">Simpan</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="EditModal" tabindex="-1" aria-labelledby="EditModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="EditModalLabel">Edit Produk</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form method="post" action="{{ route('edit') }}">
                                    @csrf
                                    <input type="hidden" name="id" id="editId">
                                    <div class="mb-3">
                                        <label for="Kode" class="form-label">Kode Barang</label>
                                        <input type="text" class="form-control" name="kode" id="editKode"
                                            placeholder="Kode Barang" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="Nama" class="form-label">Nama Barang</label>
                                        <input type="text" class="form-control" name="nama" id="editNama"
                                            placeholder="Nama Barang" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="Jumlah" class="form-label">Jumlah</label>
                                        <input type="text" class="form-control" name="jumlah" id="editJumlah"
                                            placeholder="Jumlah" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="Satuan" class="form-label">Satuan</label>
                                        <input type="text" class="form-control" name="satuan" id="editSatuan"
                                            placeholder="Satuan" required>
                                    </div>
                                    <div class="text-end">
                                        <button type="submit" class="btn btn-primary">Simpan</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script>
        function addData() {
            $.ajax({
                type: "get",
                url: "{{ url('api/kategori') }}",
                dataType: "json",
                success: function(response) {
                    $.each(response, function(i, v) {
                        $('#Kategori').append(
                            `<option value="${v.kode}">${v.nama}</option>`
                        )
                    });
                    $('#AddModal').modal('show')
                }
            });
        }

        function editData(id, kode, nama, jumlah, kd_satuan) {
            $('#editId').val(id)
            $('#editKode').val(kode)
            $('#editNama').val(nama)
            $('#editJumlah').val(jumlah)
            $('#editSatuan').val(kd_satuan)
            $('#EditModal').modal('show')
        }
    </script>
@endsection
