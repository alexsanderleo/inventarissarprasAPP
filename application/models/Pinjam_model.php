<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pinjam_model extends CI_Model
{

    //ini memfungsikan model memberitahu controler supplier.php bahwa get_data telah di difungsikan dengan variabel table
    public function joinanketoknodb(){
    {
        $this->db->select('*');
        $this->db->from('tabel_pinjam');
        $this->db->join('tabel_barang','tabel_barang.id_barang = tabel_pinjam.id_barang');
        //dari  tabel  pinjam, gabung atau joinkan dengan id barang yang sama
        //baru  diambil field/kolom   sesuai  keinginan
        //podo    karo 
        //SELECT * FROM tabel_pinjam,tabel_barang where id_barang=id_barang
        
        return $this->db->get('');
    }    
}

public function insert_data($data, $table)
    {
        $this->db->insert($table, $data);
    }

    public function delete($where, $table)
    {
        $this->db->where($where);
        $this->db->delete($table);
    }

    public function update_data($data, $table)
    {
        $this->db->where('id_pinjam', $data['id_pinjam']);
        $this->db->update($table, $data);
    }
}