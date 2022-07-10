<div class="modal-body">
    <form action="<?= base_url('datasupplier/tambah_supplier') ?>" method="POST">
        <div class="form-group">
            <label>Nama supplier</label>
            <input type="text" name="nama" class="form-control">
            <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
        </div>
        <div class="form-group">
            <label>alamat supplier</label>
            <input type="text" name="alamat" class="form-control">
            <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
        </div>
        <div class="form-group">
            <label>telephone</label>
            <input type="text" name="telfon" class="form-control">
            <?= form_error('nama', '<div class="text-small text-danger">', '</div>') ?>
        </div>
        
        <button type="submit" class="btn btn-primary btn-sm"><i class="fas fa-save"></i>Simpan</button>
        <button type="reset" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i>Bersihkan</button>
    </form>