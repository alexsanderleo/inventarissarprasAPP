<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Datapinjam extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('pinjam_model');  //huruf kecil besar wajib sama dengan bawah $this->pinjam->model
        //ini akan menampilkan atau load barang dari _model
    }


    //ini controler e memanggil view databarang
    public function index()
    {
      
        $data['title'] = 'databarang';
        $data['pinjem'] = $this->pinjam_model->joinanketoknodb()->result();
        
       // var_dump($data);
       // $data['pinjem'] = $this->pinjam_model->get_data('tabel_pinjam')->result(); //mengambil get data dari database kolom databarang kemudian ditampilkan result,
        //get_data harus di function dulu di models(modelnya apa nih yaitu get_data bgt surrrrrrr)
        //disimpulne iki database e
        //die;
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('viewne_peminjam', $data);
        $this->load->view('templates/footer');
    }

    public function tambah() //memberikan tambah barang sehingga dibaca /databarang/tambah
    {

        $data['title'] = 'Tambah supplier';
        //mengambil get data dari database kolom databarang kemudian ditampilkan result,
        //get_data harus di function dulu di models(modelnya apa nih yaitu get_data bgt surrrrrrr)
        //disimpulne iki database e

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('tambah_supplier', $data); //load view tambah barang
        $this->load->view('templates/footer');
    }

    public function tambah_supplier()//
    {
        $this->_rules();
        if ($this->form_validation->run() == FALSE) {
            $this->tambah();
        } else {
            $data = array(
                
                'nama' => $this->input->post('nama'),//jangan ada underscor cok
                'alamat' => $this->input->post('alamat'),//jangan ada underscor cok
                'totalpinjambarangunit' => $this->input->post('telfon'),//janganada underscor cok
            );
            $this->supplier_model->insert_data($data, 'tabel_supplier');//namadatabasee
            $this->session->set_flashdata(
                'pesan',
                '<div class="alert alert-warning alert-dismissible fade show" role="alert">
            <strong>Data supplier wis iso ditambah!</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
            </div>'
            );
            redirect('datasupplier', 'refresh');
        }
    }

    public function _rules() //menambahkan fungsi peringatan
    {
        $this->form_validation->set_rules(
            'nama',
            'nama',
            'required',
            array(
                'required' => '%s harus diisi..'
            )
        );
    }

    

    public function delete($id) //menambahkan fungsi delete
    {
        $where = array('id_supplier' => $id);
        $this->supplier_model->delete($where, 'tabel_supplier');
        $this->session->set_flashdata(
            'pesan',
            '<div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Data Supplier wis iso dihapus!</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
            </div>'
        );
        redirect('datasupplier', 'refresh');
    }

    public function edit($id_pinjam) //memberikan tambah barang sehingga dibaca /databarang/tambah
    {

        $this->_rules();
        //mengambil get data dari database kolom databarang kemudian ditampilkan result,
        //get_data harus di function dulu di models(modelnya apa nih yaitu get_data bgt surrrrrrr)
        //disimpulne iki database e

        if ($this->form_validation->run() == FALSE) {
            $this->index();
        } else {
            $data = array(
                'id_pinjam' => $id_pinjam,
                'namaygpinjam' => $this->input->post('namaygpinjam'),
                'nama' => $this->input->post('nama'),
                'totalpinjambarangunit' => $this->input->post('totalpinjambarangunit'),
                'tanggalpinjam' => $this->input->post('tanggalpinjam'),
                'tanggaldikembalikan' => $this->input->post('tanggaldikembalikan'),
                'kondisibarangpinjam' => $this->input->post('kondisibarangpinjam'),
                'pinjamstatus' => $this->input->post('pinjamstatus'),
            );
            $this->pinjam_model->update_data($data, 'tabel_pinjam');
            $this->session->set_flashdata(
                'pesan',
                '<div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Data wis iso ditambah!</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
            </div>'
            );
            redirect('datasupplier', 'refresh');
        }
    }
}




