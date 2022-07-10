<?php
defined('BASEPATH') or exit('No direct script access allowed');

class JENENCONTROLERE extends CI_Controller
{

    //ini controler e memanggil view dasboard.php
    public function index()
    {

        $data['title'] = 'page e';

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('apa yang ditampilne');
        $this->load->view('templates/footer');
    }
}
