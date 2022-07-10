<?= $this->session->flashdata('pesan'); //menambahkan pesan
    ?>
 
 
<!---------------------------------START-FADE-MELAYANG-------------------------------------------->
                <div class="modal fade" id="modal-primary">
        <div class="modal-dialog">
          <div class="modal-content bg-primary">
            <div class="modal-header">
              <h4 class="modal-title">Tambah data peminjam</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
            <form action="<?= base_url('datapinjam/tambah_peminjam') ?>" method="POST">
        <div class="form-group">
            <label>Nama peminjam</label>
            <input type="text" name="nama" class="form-control">
            <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
        </div>
        <div class="form-group">
            <label>barang yg dipinjam</label>
            <input type="text" name="alamat" class="form-control">
            <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
        </div>
        <div class="form-group">
            <label>jumlahpinjam</label>
            <input type="text" name="telfon" class="form-control">
            <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
        </div>
           
        
              <!-- /.form group -->



            </div>
            <div class="modal-footer justify-content-between">
            <button type="submit" class="btn btn-outline-light"><i class="fas fa-save"></i>Simpan</button>
        <button type="reset" class="btn btn-outline-light"><i class="fas fa-trash"></i>Bersihkan</button>
            </div>
            </form>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
</div>
</div>
      <!-- /.modal -->
<!--------------------------------------------SELESAI-FADE-MELAYANG-------------------------------------------->
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="box">
          <div class="col-md">
            <div class="card">
              <div class="card-header">

                <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modal-primary">
     <i class="fas fa-plus"></i> Tambah Supplier</a>
                </button> </div>
                
              
              <!-- /.card-header -->
              <div class="card-body">
              <table id="example1" class="table table-bordered">
                  <thead>
                    
                    <tr class="text-center">
                     <!-- iniadalah boostrap 4 panggil class nya kemudian centerkan textnya /.card-header -->
                     <th>No</th>
                     <th>NAMA YANG MEMINJAM</th>
                     <th>NAMA BARANG</th>
                     <th>TOTAL PINJAM UNIT</th>
                     <th>TANGGAL PINJAM</th>
                     <th>TANGGAL DIKEMBALIKAN</th>
                     <th>KONDISI BARANG PINJAM</th>
                     <th>PINJAM STATUS</th>
                     <th>Pilih Aksi</th>
                 </tr>
                    </tr>
                  </thead>
                  <tbody>
                    
                   <?php $No = 1;
                foreach ($pinjem as $darang) : ?>
                 <!-- foreach perulangan , darang ini bebaswae karena hanya penamaan  -->
                 <!-- databarang ditampilkan dari controler  -->
                <tr>
                     
                         <!-- iniadalah boostrap 4 panggil class nya kemudian centerkan textnya /.card-header -->
                         <td><?= $No++ ?> </td>
                         <td><?= $darang->namaygpinjam ?> </td>
                         <td><?= $darang->nama ?></td>
                         <td><?= $darang->totalpinjambarangunit?></td>
                         <td><?= $darang->tanggalpinjam ?> </td>
                         <td><?= $darang->tanggaldikembalikan ?></td>
                         <td><?= $darang->kondisibarangpinjam?></td>
                         <td><?= $darang->pinjamstatus?></td>
                         <td>
                             <button data-toggle="modal" data-target="#edit<?= $darang->id_pinjam ?>" class="btn btn-warning btn-sm"> <i class="fas fa-edit"></i></button>
                             <a href="<?= base_url('datasupplier/delete/') . $darang->id_pinjam ?>" class=" btn btn-danger btn-sm" onclick="return confirm('Apakah anda yakin menghapus data ini ?')"> <i class="fas fa-trash"></i></a>
                             <!-- /.diatas adalah kodingan nampilne btn warning karo danger -->
                         </td>
                         <!-- /.diatas adalah kodingan menampilkan data sesuai tabel get model data barang -->
                     
            
            
                <?php endforeach ?>
                </tbody>
                </table>
              </div>
            
              </div>
            </div>
     <!--======================================= model dari bootstrap ===============================================-->
     <!-- Button trigger modal -->



     <!-- Modal Edit-->
     <?php foreach ($pinjem as $darang) : ?>
         <div class="modal fade" id="edit<?= $darang->id_pinjam ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
             <div class="modal-dialog">
                 <div class="modal-content">
                     <div class="modal-header">
                         <h5 class="modal-title" id="exampleModalLabel">Edit barang</h5>
                         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span>
                         </button>
                     </div>
                     <div class="modal-body">
                         <form action="<?= base_url('datapinjam/edit/' . $darang->id_pinjam) ?>" method="POST">
                             <div class="form-group">
                                 <label>Nama peminjam</label>
                                 <input type="text" name="nama" class="form-control" value="<?= $darang->namaygpinjam ?>">
                                 <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
                             </div>
                             <div class="form-group">
                                 <label>barang yang dipinjam</label>
                                 <input type="text" name="nama" class="form-control" value=" <?= $darang->nama ?>">
                                 <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
                             </div>
                             <div class="form-group">
                                 <label>total pinjam</label>
                                 <input type="text" name="totalpinjambarangunit" class="form-control" value=" <?= $darang->totalpinjambarangunit ?>">
                                 <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
                             </div>
                             <div class="form-group">
                                 <label>tanggal pinjam</label>
                                 <input type="date" name="tanggalpinjam" class="form-control" value=" <?= $darang->tanggalpinjam ?>">
                                 <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
                             </div>
                             <div class="form-group">
                                 <label>tanggal dikembalikan</label>
                                 <input type="date" name="tanggaldikembalikan" class="form-control" value=" <?= $darang->tanggaldikembalikan ?>">
                                 <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
                             </div>
                             <div class="form-group">
                                 <label>kondisi barang pinjam</label>
                                 <input type="text" name="kondisibarangpinjam" class="form-control" value=" <?= $darang->kondisibarangpinjam ?>">
                                 <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
                             </div>
                             <div class="form-group">
                                 <label>status barang</label>
                                 <input type="text" name="pinjamstatus" class="form-control" value=" <?= $darang->pinjamstatus ?>">
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

    