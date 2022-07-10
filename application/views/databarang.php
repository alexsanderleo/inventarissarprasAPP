 <?= $this->session->flashdata('pesan'); //menambahkan pesan
    ?>
 <div class="card">
     <div class="card-header">
         <a href="<?= base_url('databarang/tambah_aksi') ?>" class="btn btn-primary btn-sm"><i class="fas fa-plus"></i> Tambah barang</a>
     </div>
     <!-- /.card-header -->
     <div class="card-body">
         <table id="#example1" class="table table-bordered table-striped">
             <thead>
                 <tr class="text-center">
                     <!-- iniadalah boostrap 4 panggil class nya kemudian centerkan textnya /.card-header -->
                     <th>No</th>
                     <th>NAMA</th>
                     <th>SPESIFIKASI</th>
                     <th>LOKASi</th>
                     <th>JUMLAH</th>
                     <th>SUMBER DANA</th>
                     <th>JENIS</th>
                     <th>KONDISI</th>
                     <th>KETERANGAN</th>
                     <th>TANGGAL</th>
                     <th>Pilih Aksi</th>
                 </tr>
             </thead>
             <tbody>
             <?php $No = 1;
                foreach ($databarang as $darang) : ?>
                 <!-- foreach perulangan , darang ini bebaswae karena hanya penamaan  -->
                 <!-- databarang ditampilkan dari controler  -->
                 
                     <tr class="text-center">
                         <!-- iniadalah boostrap 4 panggil class nya kemudian centerkan textnya /.card-header -->
                         <td><?= $No++ ?> </td>
                         <td><?= $darang->nama ?> </td>
                         <td><?= $darang->spesifikasi ?></td>
                         <td><?= $darang->lokasi ?></td>
                         <td><?= $darang->jumlah ?></td>
                         <td><?= $darang->sumberdana ?></td>
                         <td><?= $darang->jenis ?></td>
                         <td><?= $darang->kondisi ?></td>
                         <td><?= $darang->keterangan ?></td>
                         <td><?= $darang->tanggal ?></td>
                         <td>
                             <button data-toggle="modal" data-target="#edit<?= $darang->id_barang ?>" class="btn btn-warning btn-sm"> <i class="fas fa-edit"></i></button>
                             <a href="<?= base_url('databarang/delete/') . $darang->id_barang ?>" class=" btn btn-danger btn-sm" onclick="return confirm('Apakah anda yakin menghapus data ini ?')"> <i class="fas fa-trash"></i></a>
                             <!-- /.diatas adalah kodingan nampilne btn warning karo danger -->
                         </td>
                         <!-- /.diatas adalah kodingan menampilkan data sesuai tabel get model data barang -->
                     </tr>
                
             <?php endforeach ?>
             </tbody>
         </table>
     </div>
     <!--======================================= model dari bootstrap ===============================================-->
     <!-- Button trigger modal -->


     <!-- Modal Edit-->
     <?php foreach ($databarang as $darang) : ?>
         <div class="modal fade" id="edit<?= $darang->id_barang ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
             <div class="modal-dialog">
                 <div class="modal-content">
                     <div class="modal-header">
                         <h5 class="modal-title" id="exampleModalLabel">Edit barang</h5>
                         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span>
                         </button>
                     </div>
                     <div class="modal-body">
                         <form action="<?= base_url('databarang/edit/' . $darang->id_barang) ?>" method="POST">
                             <div class="form-group">
                                 <label>Nama tok</label>
                                 <input type="text" name="nama" class="form-control" value="<?= $darang->nama ?>">
                                 <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
                             </div>
                             <div class="form-group">
                                 <label>spesifikasi</label>
                                 <input type="text" name="spesifikasi" class="form-control" value=" <?= $darang->spesifikasi ?>">
                                 <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
                             </div>
                             <div class="form-group">
                                 <label>lokasi</label>
                                 <input type="text" name="lokasi" class="form-control" value=" <?= $darang->lokasi ?>">
                                 <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
                             </div>
                             <div class="form-group">
                                 <label>jumlah</label>
                                 <input type="text" name="jumlah" class="form-control" value=" <?= $darang->jumlah ?>">
                                 <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
                             </div>
                             <div class="form-group">
                                 <label>sumberdana</label>
                                 <input type="text" name="sumberdana" class="form-control" value=" <?= $darang->sumberdana ?>">
                                 <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
                             </div>
                             <div class="form-group">
                                 <label>jenis</label>
                                 <input type="text" name="jenis" class="form-control" value=" <?= $darang->jenis ?>">
                                 <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
                             </div>
                             <div class="form-group">
                                 <label>kondisi</label>
                                 <input type="text" name="kondisi" class="form-control" value=" <?= $darang->kondisi ?>">
                                 <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
                             </div>
                             <div class="form-group">
                                 <label>keterangan</label>
                                 <input type="text" name="keterangan" class="form-control" value=" <?= $darang->keterangan ?>">
                                 <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
                             </div>
                             <div class="form-group">
                                 <label>tanggal</label>
                                 <input type="text" name="tanggal" class="form-control" value=" <?= $darang->tanggal ?>">
                                 <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>

                             </div>
                             <div class="modal-footer">
                                 <button type="submit" class="btn btn-primary btn-sm" <i class="fas fa-save"></i>>Simpan</button>
                                 <button type="reset" class="btn btn-danger btn-sm" <i class="fas fa-trash"></i>>reset</button>
                             </div>

                         </form>
                     </div>
                 </div>
             </div>
         </div>
     <?php endforeach ?>

     