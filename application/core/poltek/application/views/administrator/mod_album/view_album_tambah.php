<?php 
    echo "
              <div class='card card-info'>
                <div class='card-header with-border'>
                  <h3 class='card-title'>Tambah Galeri Foto</h3>
                </div>
              <div class='card-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart($this->uri->segment(1).'/tambah_album',$attributes); 
          echo "
                  <table class='table table-sm table-borderless'>
                  <tbody>
                    <input type='hidden' name='id' value=''>
                    <tr><th width='120px' scope='row'>Judul Galeri</th>   <td><input type='text' class='form-control' name='a'></td></tr>
                    <tr><th scope='row'>Keterangan</th>                 <td><textarea id='editor1' class='form-control' name='b'></textarea></td></tr>
                    <tr><th scope='row'>Cover</th>                    <td><input type='file' class='form-control' name='c'></td></tr>
                  </tbody>
                  </table>
              
              <div class='card-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Tambahkan</button>
                    <a href='".base_url().$this->uri->segment(1)."/album'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div></div>";
            echo form_close();
