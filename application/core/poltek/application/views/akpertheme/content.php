<?php

$sosmed = $this->model_utama->view('identitas')->row_array();

$cekslide = $this->model_utama->view_single('berita', array('headline' => 'Y', 'status' => 'Y'), 'id_berita', 'DESC');
if ($cekslide->num_rows() > 0) {
  include "slide.php";
}
?>
<section id="appointment" class="appointment section-bg" style="padding-bottom:10px; ">
  <div class="container">

    <div class="section-title">
      <h3>Selamat Datang di Politeknik Kaltara!</h3>
      <p>
        Kampus yang memiliki Visi untuk menjadi lembaga pendidikan tinggi vokasi yang berorientasi nasional, berkarakter, bermartabat dan unggul pada tahun 2035, dan Misi untuk Menyelenggarakan pendidikan dengan dasar keilmuan yang kuat bersinergi antar disiplin ilmu dan berorientasi nasional.</p>
    </div>
  </div>
</section>
<section class="kotakjurnal">
  <div class="section-title">
    <div class="row">

      <div class="col-md-12 col-sm-12 text-center">

        <a class="btn btn-info mahasiswa" href="#"><i class="bx bxs-group margin-right-10"></i> Mahasiswa Aktif</a>
        <a class="btn btn-info mahasiswa" title="Sebaran Mahasiswa baru sejak 2012" target="_blank" href="#"><i class="bx bxs-group margin-right-10"></i> Mahasiswa Baru</a>
        <a class="btn btn-info mahasiswa" title="Profil Alumni POLITEKNIK KALTARA" target="_blank" href="https://poltekkaltara.ac.id/halaman/detail/alumni"><i class="bx bxs-graduation margin-right-10"></i> Alumni</a>
      </div><br><br>
      <div class="col-md-12 col-sm-12 text-center">
        <a class="btn btn-success portal mahasiswa" target="_blank" href="https://poltekkaltara.ac.id/halaman/detail/kerja-sama"><i class="bx bx-user-circle margin-right-10"></i> Kerja Sama</a>
        <a class="btn btn-success portal mahasiswa" title="Penjaminan Mutu" target="_blank" href="https://poltekkaltara.ac.id/halaman/detail/penjaminan-mutu"><i class="bx bxs-user margin-right-10"></i> Penjaminan Mutu </a>
        <a class="btn btn-success portal mahasiswa" title="Penelitian dan Pengabdian kepada Masyarakat" target="_blank" href="https://poltekkaltara.ac.id/halaman/detail/penelitian-dan-pengabdian-masyarakat"><i class="bx bxs-user margin-right-10"></i> Penelitian dan Pengabdian Masyarakat </a>
        <a class="btn btn-success portal mahasiswa" target="_blank" href="https://sinta.ristekbrin.go.id/affiliations/detail?id=3262&view=overview"><i class="bx bx-user-circle margin-right-10"></i> SINTA</a>
      </div><br><br>
      <div class="col-md-12 col-sm-12 text-center">
        <a class="btn btn-warning portal mahasiswa text-white" target="_blank" href="#"><i class="bx bx-user-circle margin-right-10"></i> Kurikulum</a>
        <a class="btn btn-warning portal mahasiswa text-white" target="_blank" href="https://poltekkaltara.ac.id/albums"><i class="bx bx-user-circle margin-right-10"></i> Foto Kegiatan</a>
        <a class="btn btn-warning portal mahasiswa text-white" target="_blank" href="#"><i class="bx bx-user-circle margin-right-10"></i> Tracer Study</a>
        <a class="btn btn-warning portal mahasiswa text-white" target="_blank" href="#"><i class="bx bx-user-circle margin-right-10"></i> Career Center</a>
      </div>
    </div>
  </div>

</section>
<section id="appointment" class="penerimaan section-bg" style="padding-bottom:10px; ">
  <div class="container">

    <div class="steps-block steps-block-red margin-bottom-40 text-center text-md-right pt-3 pt-md-0">
      <div class="container">
        <h2 class="text-center">Penerimaan Mahasiswa Baru</h2>
        <div class="row">
          <div class="col-md-2 steps-block-col">
            <div class="img-brosur text-center">

              <?php
              $brosur = $this->model_utama->view_where('iklanatas', array('id_iklanatas' => '1'));
              foreach ($brosur->result_array() as $d) {
                $baca = $d['dilihat'] + 1;
                $tgl = tgl_indo($d['tgl_posting']);
                $judul = substr($d['judul'], 0, 35);

              ?>
                <a href="<?= $d['url'] ?>" title="Download Brosur" target="$_blank"><img src="<?= base_url() ?>asset/foto_iklanatas/<?= $d['gambar'] ?>" alt="Brosur PMB POLTEK KALTARA" class="img-responsive"></a>';
              <?php }
              ?>


            </div>
            <span>&nbsp;</span>
          </div>
          <div class="col-lg-2 mt-2 mt-lg-0 steps-block-col">
            <div class="col-lg-2 d-flex align-items-start text-center">
              <div class="member d-flex align-items-start social-links3">
                <div class="pic"><a href="#">
                    <i class="bx bxs-group margin-right-10"></i></a></div>
              </div>
              <div>
                <h3>Gabung Poltek Kaltara</h3>

              </div>
            </div> <span>&nbsp;</span>
          </div>
          <div class="col-lg-2 mt-2 mt-lg-0 steps-block-col">
            <div class="col-lg-2 d-flex align-items-start text-center">
              <div class="member d-flex align-items-start social-links3">
                <div class="pic"><a href="<?= base_url() ?>/hubungi" target="$_blank"><i class="bx bxs-map margin-right-10"></i> </a></div>
              </div>
              <div class="member-info">
                <h3>Lokasi Kampus</h3>
              </div>
            </div><span>&nbsp;</span>
          </div>

          <div class="col-lg-2 mt-2 mt-lg-0 steps-block-col">
            <div class="col-lg-2 d-flex">
              <div class="member d-flex align-items-start social-links3">
                <div class="pic"><a href="https://wa.me/<?php echo $sosmed['no_telp']; ?>?text=halo Admin Politeknik Kaltara, saya ingin konsultasi online." target="$_blank"><i class="bx bx-message-rounded-dots margin-right-10"></i> </a></div>
              </div>
              <div class="member-info">
                <h3>Konsultasi Online</h3>
              </div>
            </div><span>&nbsp;</span>
          </div>

          <div class="col-lg-2 mt-2 mt-lg-0 steps-block-col">
            <div class="col-lg-2 d-flex align-items-start">
              <div class="member d-flex align-items-start social-links3">
                <div class="pic"><a href="https://wa.me/<?= $sosmed['no_telp'] ?>?text=halo Admin Politeknik Kaltara, saya ingin bertanya seputar PMB." target="$_blank"><i class="bx bx-phone margin-right-10"></i> </a></div>
              </div>
              <div class="member-info">
                <h3>Layanan PMB</h3>
              </div>
            </div><span>&nbsp;</span>
          </div>

          <div class="col-lg-2 mt-2 mt-lg-0 steps-block-col">
            <div class="col-lg-2 d-flex align-items-start">
              <div class="member d-flex align-items-start social-links3">
                <div class="pic"><a href="<?= base_url() ?>/hubungi" target="$_blank""><i class=" bx bx-envelope margin-right-10"></i></a></div>
              </div>
              <div class="member-info">
                <h3>Kirim Pesan</h3>
              </div>
            </div>
          </div>



        </div>
      </div>
    </div>
</section>

<section id="services" class="services">
  <div class="container">

    <div class="section-title">
      <h2>Artikel / Informasi </h2>
    </div>

    <div class="row">
      <?php
      $no = 1;
      $hot = $this->model_utama->view_join_two('berita', 'users', 'kategori', 'username', 'id_kategori', array('berita.aktif' => 'N'), 'tanggal', 'DESC', 0, 6);
      foreach ($hot->result_array() as $row) {
        $total_komentar = $this->model_utama->view_where('komentar', array('id_berita' => $row['id_berita']))->num_rows();
        $tgl = tgl_indo($row['tanggal']);
        $isi_berita = (strip_tags($row['isi_berita']));
        $isi = substr($isi_berita, 0, 170);
        $isi = substr($isi_berita, 0, strrpos($isi, " "));
        $judul = $row['judul'];

      ?>
        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
          <div class="icon-box">
            <img src="<?php echo base_url(); ?>asset/foto_berita/<?php echo $row['gambar']; ?>" alt="" class="img-fluid">
            <h5 style="text-align:left;"><a href="<?php echo base_url() . $row['judul_seo']; ?>" style="color:#004488;font-weight:bold"><?= $judul ?>.</a></h5>
            <p style="text-align: left;"><?= $isi ?></p>
          </div>
        </div>

      <?php } ?>

    </div>

  </div>
</section>


<section id="services" class="services">
  <div class="container">
    <div class="section-title">
      <h2>Pengumuman & Agenda</h2>

    </div>
    <div class="row">
      <div class="col-xl-6 justify-content-center align-items-stretch">
        <?php

        $content = "<h4>Pengumuman <i class='icofont-megaphone icofont-1x'></i> <hr></h4><ul>";
        $pisah_kata  = explode(",", $rows['tag']);
        $jml_katakan = (int)count($pisah_kata);
        $jml_kata = $jml_katakan - 1;
        $ambil_id = substr(657, 0, 4);
        $sekilas = $this->model_utama->view_ordering_limit('sekilasinfo', 'id_sekilas', 'DESC', 0, 2);
        foreach ($sekilas->result_array() as $row) {
          $content .= "<li style='padding:3px'><i class='bx bx-detail'></i> <a href='" . base_url() . "pengumuman/detail/$row[judul_seo]''>$row[judul]</a><a href='#' class='h-comment'></a></li>";
        }
        $content .= "</ul>";

        echo "$content
											<div class='fb-like'  data-href='" . base_url() . "$rows[judul_seo]' 
												data-send='false'  data-width='600' data-show-faces='false'>
											</div> <br><br>";


        ?>
      </div>

      <div class="col-xl-6 justify-content-center align-items-stretch">
        <?php

        $content = "<h4>Agenda <i class='icofont-calendar icofont-1x'></i><hr> </h4><ul>";
        $agenda = $this->model_utama->view_join('agenda', 'users', 'username', 'id_agenda', 'DESC', $dari, $config['per_page']);
        foreach ($agenda->result_array() as $r) {
          $tgl_posting = tgl_indo($r['tgl_posting']);
          $tgl_mulai   = tgl_indo($r['tgl_mulai']);
          $tgl_selesai = tgl_indo($r['tgl_selesai']);
          $baca = $r['dibaca'] + 1;
          $judull = substr($r['tema'], 0, 33);
          $isi_agenda = (strip_tags($r['isi_agenda']));
          $isi = substr($isi_agenda, 0, 280);
          $isi = substr($isi_agenda, 0, strrpos($isi, " "));

          $content .= "<li style='padding:3px'><i class='bx bx-calendar'></i> <a  href='" . base_url() . "agenda/detail/$r[tema_seo]'><small>$r[tgl_mulai] s/d $r[tgl_selesai]</small> : $r[tema]</a><a href='#' class='h-comment'></a></li>";
        }
        $content .= "</ul>";




        echo "$content
											<div class='fb-like'  data-href='" . base_url() . "$rows[judul_seo]' 
												data-send='false'  data-width='600' data-show-faces='false'>
											</div> <br><br>";

        ?>

      </div>
    </div>

  </div>

</section>
<section id="testimonials3" class="testimonials3 section-bg">
  <div class="container">
    <div class="row">
      <div class="col-xl-4 justify-content-center align-items-stretch">
        <h4>Video Profil </h4>

        <?php
        $video = "<h4>Agenda <i class='icofont-calendar icofont-1x'></i><hr> </h4><ul>";
        $video = $this->model_utama->view_where('video', array('jdl_video' => 'Profil'));
        foreach ($video->result_array() as $d) {
          $baca = $d['dilihat'] + 1;
          $tgl = tgl_indo($d['tanggal']);
          $judul = substr($d['jdl_video'], 0, 35);
          echo "<div class='gallery-widget'>
					
						";
          if (preg_match('%(?:youtube(?:-nocookie)?\.com/(?:[^/]+/.+/|(?:v|e(?:mbed)?)/|.*[?&]v=)|youtu\.be/)([^"&?/ ]{11})%i', $d['youtube'], $match)) {
            echo "<iframe width='100%' height='220' src='https://www.youtube.com/embed/" . $match[1] . "' frameborder='0' allowfullscreen></iframe>";
          }
          echo "</div>";
        }
        ?>

      </div>

      <div class="col-xl-8 justify-content-center align-items-stretch">
        <h4>Kata Alumni <small>#PoltekKaltara</small></h4>
        <div class="owl-carousel testimonials-carousel">


          <?php
          $testimoni = $this->model_utama->view_ordering_limit('testimoni', 'id_testimoni', 'DESC', 0, 100);
          foreach ($testimoni->result_array() as $t) {
            $baca = $t['dilihat'] + 1;
            $tgl = tgl_indo($t['tgl_posting']);
            $judul = substr($t['judul'], 0, 35);
            $pekerja = $t['url'];
            $gbr = $t['gambar'];
            $isi = $t['source'];
            echo "<div class='testimonial-wrap'>
            <div class='testimonial-item'>";

            echo "<img src='asset/foto_testimoni/$gbr' class='testimonial-img' alt=''><h3>" . $judul . "</h3>
              <small>" . $pekerja . "</small>
              <p>
                <i class='bx bxs-quote-alt-left quote-icon-left'></i>
                $isi
                <i class='bx bxs-quote-alt-right quote-icon-right'></i>
              </p>";

            echo "</div></div>";
          }
          ?>


        </div>

      </div>
    </div>

  </div>

</section>

<section id="testimonials2" class="testimonials2 section-bg">
  <div class="container">
    <div class="section-title">
      <h2>Mitra Kerjasama</h2>

    </div>
    <div class="custom2 owl-carousel owl-theme">

      <?php
      $mitra = $this->model_utama->view_ordering_limit('mitra', 'id_mitra', 'DESC', 0, 100);
      foreach ($mitra->result_array() as $t) {

        $tgl = tgl_indo($t['tgl_posting']);
        $judul = substr($t['judul'], 0, 35);
        $pekerja = $t['url'];
        $gbr = $t['gambar'];
        $isi = $t['source'];
        echo "<div class='item'>";

        echo "<img src='asset/foto_mitra/$gbr' class='testimonial-img' alt='' class='testimonial-img'>";

        echo "</div>";
      }
      ?>



    </div>
</section>