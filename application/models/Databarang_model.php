<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Databarang_model extends CI_Model
{

    //ini memfungsikan model memberitahu controler databarang.php bahwa get_data telah di difungsikan dengan variabel table
    public function get_data($table)
    {
        return $this->db->get($table);
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
        $this->db->where('id_barang', $data['id_barang']);
        $this->db->update($table, $data);
    }
}
