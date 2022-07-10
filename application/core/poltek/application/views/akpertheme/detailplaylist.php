<section id="services" class="services">
  <div class="container" style="margin-top: 120px;">

    <div class="section-title">
      <h2>Semua Video "<?php echo "$rows[jdl_playlist]"; ?>"</h2>

    </div>

    <div class="row">
      <?php
      foreach ($detailplaylist->result_array() as $r) {
        $lihat = $r['dilihat'] + 1;
        $judull = substr($r['jdl_video'], 0, 33);
        $isi_berita = (strip_tags($r['keterangan']));
        $isi = substr($isi_berita, 0, 280);
        $isi = substr($isi_berita, 0, strrpos($isi, " "));
        $total_komentar = $this->model_utama->view_where('komentarvid', array('id_video' => $r['id_video']))->num_rows();
        //  var_dump($r);
      ?>


        <div class="col-md-4 mt-4 ">
          <div class="icon-box ">
            <?php
            if (preg_match('%(?:youtube(?:-nocookie)?\.com/(?:[^/]+/.+/|(?:v|e(?:mbed)?)/|.*[?&]v=)|youtu\.be/)([^"&?/ ]{11})%i', $r['youtube'], $match)) {
              echo "<iframe width='100%' height='250px' src='" . $r['youtube'] . "' frameborder='0' allowfullscreen></iframe>";
            }
            ?>
          </div>
        </div>

      <?php } ?>
      <div class="section-title">
        <div class="pagination">
          <?php echo $this->pagination->create_links(); ?>
        </div>
      </div>
    </div>

  </div>
</section>