    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-6">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Bordered Table</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Task</th>
                      <th>Progress</th>
                      <th style="width: 40px">Label</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                    <?php $No = 1;
                foreach ($databarang as $darang) : ?>
                 <!-- foreach perulangan , darang ini bebaswae karena hanya penamaan  -->
                 <!-- databarang ditampilkan dari controler  -->
                 <tbody>
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
                 </tbody>
             <?php endforeach ?>
                    </tr>
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
              <div class="card-footer clearfix">
                <ul class="pagination pagination-sm m-0 float-right">
                  <li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
                </ul>
              </div>
            </div>
            <!-- /.card -->