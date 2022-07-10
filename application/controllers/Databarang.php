<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Databarang extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('databarang_model');
        //ini akan menampilkan atau load barang dari _model
    }


    //ini controler e memanggil view databarang
    public function index()
    {

        $data['title'] = 'databarang';
        $data['databarang'] = $this->databarang_model->get_data('tabel_barang')->result(); //mengambil get data dari database kolom databarang kemudian ditampilkan result,
        //get_data harus di function dulu di models(modelnya apa nih yaitu get_data bgt surrrrrrr)
        //disimpulne iki database e

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('databarang', $data);
        $this->load->view('templates/footer');
        
    }

    

    public function tambah() //memberikan tambah barang sehingga dibaca /databarang/tambah
    {

        $data['title'] = 'Tambah barang';
        //mengambil get data dari database kolom databarang kemudian ditampilkan result,
        //get_data harus di function dulu di models(modelnya apa nih yaitu get_data bgt surrrrrrr)
        //disimpulne iki database e

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('tambah_barang', $data); //load view tambah barang
        $this->load->view('templates/footer');
    }

    public function tambah_aksi()
    {
        $this->_rules();
        if ($this->form_validation->run() == FALSE) {
            $this->tambah();
        } else {
            $data = array(
                'nama' => $this->input->post('nama'),//mlebu array ora oleh underscore nek function e  bedo  baru  ok
                'spesifikasi' => $this->input->post('spesifikasi'),
                'lokasi' => $this->input->post('lokasi'),
                'jumlah' => $this->input->post('jumlah'),
                'sumberdana' => $this->input->post('sumberdana'),
                'jenis' => $this->input->post('jenis'),
                'kondisi' => $this->input->post('kondisi'),
                'keterangan' => $this->input->post('keterangan'),
                'tanggal' => $this->input->post('tanggal'),
            );
            $this->databarang_model->insert_data($data, 'tabel_barang');//jenengdb
            $this->session->set_flashdata(//Asline pinuk nek mood e lagi pinuk,
                
                'pesan',//nek roso roso yo PT.SEMOYO
                '<div class="alert alert-warning alert-dismissible fade show" role="alert">
            <strong>Data wis iso ditambah!</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
            </div>'
            );
            redirect('databarang', 'refresh');
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
        $where = array('id_barang' => $id);
        $this->databarang_model->delete($where, 'tabel_barang');
        $this->session->set_flashdata(
            'pesan',
            '<div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Data wis iso dihapus!</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
            </div>'
        );
        redirect('databarang', 'refresh');
    }

    public function edit($id_barang) //memberikan tambah barang sehingga dibaca /databarang/tambah
    {

        $this->_rules();
        //mengambil get data dari database kolom databarang kemudian ditampilkan result,
        //get_data harus di function dulu di models(modelnya apa nih yaitu get_data bgt surrrrrrr)
        //disimpulne iki database e

        if ($this->form_validation->run() == FALSE) {
            $this->index();
        } else {
            $data = array(
                'id_barang' => $id_barang,
                'nama' => $this->input->post('nama'),
                'spesifikasi' => $this->input->post('spesifikasi'),
                'lokasi' => $this->input->post('lokasi'),
                'jumlah' => $this->input->post('jumlah'),
                'sumberdana' => $this->input->post('sumberdana'),
                'jenis' => $this->input->post('jenis'),
                'kondisi' => $this->input->post('kondisi'),
                'keterangan' => $this->input->post('keterangan'),
                'tanggal' => $this->input->post('tanggal'),
            );
            $this->databarang_model->update_data($data, 'tabel_barang');
            $this->session->set_flashdata(
                'pesan',
                '<div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Data wis iso ditambah!</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
            </div>'
            );
            redirect('databarang', 'refresh');
        }
    }
}
