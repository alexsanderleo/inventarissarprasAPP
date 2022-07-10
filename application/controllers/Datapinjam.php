<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Datapinjam extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Pinjam_model');
        //ini akan menampilkan atau load barang dari _model
    }


    //ini controler e memanggil view databarang
    public function index()
    {

        $data['title'] = 'databarang';
        $data['pinjam'] = $this->pinjam_model->get_data('tabel_barang')->result(); //mengambil get data dari database kolom databarang kemudian ditampilkan result,
        //get_data harus di function dulu di models(modelnya apa nih yaitu get_data bgt surrrrrrr)
        //disimpulne iki database e

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('viewne_peminjam', $data);
        $this->load->view('templates/footer');
    }

}