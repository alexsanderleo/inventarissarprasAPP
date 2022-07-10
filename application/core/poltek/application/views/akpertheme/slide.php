  <section id="demo" class="demo">
    <div class="row">
      <div class="large-14 columns container d-flex">
        <div class="custom1 owl-carousel owl-theme" id="demo">
             <div class='item'>
            <div class='textoverlay'>
            </div>
            <p> <a href="#"><img src="<?= base_url() ?>asset/foto_berita/slide1.jpeg"> </a> </p>
          </div>
          <?php
          $slide1 = $this->model_utama->view_join_two('berita', 'users', 'kategori', 'username', 'id_kategori', array('headline' => 'Y', 'status' => 'Y'), 'id_berita', 'DESC', 0, 4);
          $no = 1;
          foreach ($slide1->result_array() as $row) {
            if ($row['gambar'] == '') {
              $foto_slide = 'no-image.jpg';
            } else {
              $foto_slide = $row['gambar'];
            }
            // if (strlen($row['judul']) > 40){ $judul = substr($row['judul'],0,40).',..';  }else{ $judul = $row['judul']; }
            //  if (strlen($row['sub_judul']) > 40){ $subjudul = substr($row['sub_judul'],0,40).',..';  }else{ $subjudul = $row['sub_judul']; }

            echo "<div class='item'><div class='textoverlay'>
            </div>
                   <p> <a href='" . base_url() . $row['judul_seo'] . "'><img src='" . base_url() . "asset/foto_berita/$foto_slide'> </a></p>
                   </div>";
            $no++;
          }
          ?>
        </div>
        <script>
          jQuery(document).ready(function($) {
            $('.fadeOut').owlCarousel({
              items: 1,
              animateOut: 'fadeOut',
              loop: true,
              margin: 10,
            });
            $('.custom1').owlCarousel({
              animateOut: 'slideOutDown',
              animateIn: 'flipInX',
              dots: false,
              autoWidth: false,
              autoplay: true,
              loop: true,
              nav: true,
              items: 1,
              margin: 30,
              height: 100,
              size: 20,
              stagePadding: 30,
              smartSpeed: 450,
              navText: ['<i class=" bx bx-chevron-left"></i>', '<i class="bx bx-chevron-right"></i>']
            });
          });
        </script>
      </div>
    </div>
  </section>