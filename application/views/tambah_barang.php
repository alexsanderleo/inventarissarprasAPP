<div class="modal-body">
    <form action="<?= base_url('databarang/tambah_aksi') ?>" method="POST">
        <div class="form-group">
            <label>Nama tok</label>
            <input type="text" name="nama" class="form-control">
            <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
        </div>
        <div class="form-group">
            <label>spesifikasi</label>
            <input type="text" name="spesifikasi" class="form-control">
            <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
        </div>
        <div class="form-group">
            <label>lokasi</label>
            <input type="text" name="lokasi" class="form-control">
            <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
        </div>
        <div class="form-group">
            <label>jumlah</label>
            <input type="text" name="jumlah" class="form-control">
            <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
        </div>
        <div class="form-group">
            <label>sumberdana</label>
            <input type="text" name="sumberdana" class="form-control">
            <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
        </div>
        <div class="form-group">
            <label>jenis</label>
            <input type="text" name="jenis" class="form-control">
            <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
        </div>
        <div class="form-group">
            <label>kondisi</label>
            <input type="text" name="kondisi" class="form-control">
            <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
        </div>
        <div class="form-group">
            <label>keterangan</label>
            <input type="text" name="keterangan" class="form-control">
            <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
        </div>
        <div class="form-group">
            <label>tanggal</label>
            <input type="date" name="tanggal" class="form-control">
            <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
        </div>
        <button type="submit" class="btn btn-primary btn-sm"><i class="fas fa-save"></i>Simpan</button>
        <button type="reset" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i>Bersihkan</button>
    </form>