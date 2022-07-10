<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title><?php echo $title; ?></title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="robots" content="index, follow">
  <meta name="description" content="<?php echo $description; ?>">
  <meta name="keywords" content="<?php echo $keywords; ?>">
  <meta name="author" content="Politeknik Kaltara, Ngodingpintar">
  <meta name="robots" content="all,index,follow">
  <meta http-equiv="Content-Language" content="id-ID">
  <meta NAME="Distribution" CONTENT="Global">
  <meta NAME="Rating" CONTENT="General">
  <!-- Favicons -->
  <link href="<?= base_url('template/akpertheme/img/favicon.png') ?>" rel="icon">
  <link href="<?= base_url('template/akpertheme/img/apple-touch-icon.png') ?>" rel="apple-touch-icon">

  <link rel="canonical" href="<?php echo "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>" />
  <link itemprop="thumbnailUrl" href="<?php echo base_url() . 'asset/foto_berita/' . $rows['gambar']; ?>">
  <span itemprop="thumbnail" itemscope itemtype="http://schema.org/ImageObject">
    <link itemprop="url" href="url_gambar">
  </span>
  <?php $berita = $this->model_utama->view_where('berita', array('judul_seo' => $this->uri->segment(1)));
  if ($berita->num_rows() >= 1) {
    $rows = $berita->row_array();
    echo '<meta property="og:title" content="' . $rows['judul'] . '" />
				<meta property="og:type" content="article" />
				<meta property="og:url" content="' . base_url() . '' . $this->uri->segment(3) . '" />
				<meta property="og:site_name" content="https://poltekkaltara.ac.id/" />
				<meta property="og:image" content="' . base_url() . 'asset/foto_berita/' . $rows['gambar'] . '" />
				<meta content="' . base_url() . 'asset/foto_berita/' . $rows['gambar'] . '" itemprop="url"/>
				<div itemprop="image" itemscope="itemscope" itemtype="https://schema.org/ImageObject">
					<meta content="' . base_url() . 'asset/foto_berita/' . $rows['gambar'] . '" itemprop="url"/>
				</div>
				<meta property="og:description" content="' . $description . '"/>';
  }
  ?>

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i') ?>" rel="stylesheet" />

  <!-- Vendor CSS Files -->
  <link href="<?= base_url('template/akpertheme/vendor/bootstrap/css/bootstrap.min.css') ?>" rel="stylesheet" />
  <link href="<?= base_url('template/akpertheme/vendor/icofont/icofont.min.css') ?>" rel="stylesheet" />
  <link href="<?= base_url('template/akpertheme/vendor/fontawesome/font-awesome.min.css') ?>" rel="stylesheet" />
  <link href="<?= base_url('template/akpertheme/vendor/boxicons/css/boxicons.min.css') ?>" rel="stylesheet" />
  <link href="<?= base_url('template/akpertheme/vendor/venobox/venobox.css') ?>" rel="stylesheet" />
  <link href="<?= base_url('template/akpertheme/vendor/animate.css/animate.min.css') ?>" rel="stylesheet" />
  <link href="<?= base_url('template/akpertheme/vendor/remixicon/remixicon.css') ?>" rel="stylesheet" />
  <link href="<?= base_url('template/akpertheme/vendor/owl.carousel/assets/owl.carousel.min.css') ?>" rel="stylesheet" />
  <link href="<?= base_url('template/akpertheme/vendor/bootstrap-datepicker/css/bootstrap-datepicker.min.css') ?>" rel="stylesheet" />
  <link href="<?= base_url('template/akpertheme/vendor/aos/aos.css') ?>" rel="stylesheet">
  <!-- Template Main CSS File -->
  <link href="<?= base_url('template/akpertheme/css/style.css') ?>" rel="stylesheet" />

  <!-- Favicons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
  <link rel="shortcut icon" href="../assets/ico/favicon.png">
  <link rel="shortcut icon" href="favicon.ico">

  <!-- Yeah i know js should not be in header. Its required for demos.-->

  <!-- javascript -->
  <script src="<?= base_url('template/akpertheme/js/jquery.min.js') ?>"></script>
  <script src="<?= base_url('template/akpertheme/js/owl.carousel.js') ?>"></script>

</head>

<body>
  <?php
  $sosmed = $this->model_utama->view('identitas')->row_array();
  $pecahd = explode(",", $sosmed['facebook']);
  ?>
  <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-none d-lg-flex align-items-center fixed-top">
    <div class="container d-flex">
      <div class="contact-info mr-auto">
        <i class="icofont-envelope"></i> <a href="mailto:contact@example.com"><?php echo $sosmed['email']; ?></a>
        <i class="icofont-phone"></i> <?php echo $sosmed['no_telp']; ?>
        <i class="icofont-google-map"></i> <?php echo $sosmed['rekening']; ?>
      </div>
      <div class="social-links">

        <script language="javascript">
          document.write("<a href='http://www.facebook.com/share.php?u=" + document.URL + " ' target='_blank' class='custom-soc icon-text'><i class='ri-facebook-fill' style='font-size:15px'></i></a> <a href='http://twitter.com/home/?status=" + document.URL + "' target='_blank' class='custom-soc icon-text'><i class='ri-twitter-fill' style='font-size:15px'></i></a> <a href='mailto:info@poltekkaltara.ac.id' class='custom-soc icon-text'><i class='ri-mail-fill' style='font-size:15px'></i></a><a href='https://www.instagram.com/?url=" + document.URL + " ' target='_blank' class='custom-soc icon-text'><i class='ri-instagram-fill' style='font-size:15px'></i></a>");
        </script>

      </div>
    </div>
  </div>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <?php include "header.php"; ?>

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->


  <main id="main">

    <?php echo $contents; ?>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-top">
      <?php
      include "footer.php";
      $this->model_utama->kunjungan();
      ?>
    </div>

    <div class="container d-md-flex py-4">

      <div class="mr-md-auto text-center text-md-left">
        <div class="copyright">
          &copy; Copyright <strong><span>POLITEKNIK SWARAKALIBATA</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
          <!-- All the links in the footer should remain intact. -->
          <!-- You can delete the links only if you purchased the pro version. -->
          <!-- Licensing information: https://bootstrapmade.com/license/ -->
          <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/ -->
          Support by. <a href="https://ngodingpintar.com" target="$_blank">Ngodingpintar Team</a>
        </div>
      </div>
      <div class="social-links text-center text-md-right pt-3 pt-md-0">
        <a href="<?php echo $pecahd[1]; ?>" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="<?php echo $pecahd[0]; ?>" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="<?php echo $pecahd[2]; ?>" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="<?php echo $pecahd[3]; ?>" class="youtube"><i class="bx bxl-youtube"></i></a>

      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
  <link rel="stylesheet" href="<?= base_url('template/akpertheme/css/animate.css') ?>">
  <script>
    jQuery(document).ready(function($) {
      $('.custom2').owlCarousel({
        loop: true,
        autoplay: true,
        nav: true,
        dots: false,
        lazyLoad: true,
        margin: 10,
        video: true,
        responsive: {
          0: {
            items: 1
          },
          600: {
            items: 3
          },
          960: {
            items: 5,
          },
          1200: {
            items: 6
          }
        }
      });
    });
  </script>
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
        items: 1,
        margin: 30,
        stagePadding: 30,
        smartSpeed: 450
      });
      $('.custom3').owlCarousel({
        animateOut: 'fadeOut',
        items: 1,
        nav: true,
        dots: true,

        stagePadding: 30,
        smartSpeed: 450
      });
    });
  </script>
  <!-- Vendor JS Files -->
  <script src="<?= base_url('template/akpertheme/js/highlight.js') ?>"></script>
  <script src="<?= base_url('template/akpertheme/js/app.js') ?>"></script>
  <script src="<?= base_url('template/akpertheme/vendor/jquery/jquery.min.js') ?>"></script>
  <script src="<?= base_url('template/akpertheme/vendor/bootstrap/js/bootstrap.bundle.min.js') ?>"></script>
  <script src="<?= base_url('template/akpertheme/vendor/jquery.easing/jquery.easing.min.js') ?>"></script>
  <script src="<?= base_url('template/akpertheme/vendor/php-email-form/validate.js') ?>"></script>
  <script src="<?= base_url('template/akpertheme/vendor/venobox/venobox.min.js') ?>"></script>
  <script src="<?= base_url('template/akpertheme/vendor/waypoints/jquery.waypoints.min.js') ?>"></script>
  <script src="<?= base_url('template/akpertheme/vendor/counterup/counterup.min.js') ?>"></script>
  <script src="<?= base_url('template/akpertheme/vendor/owl.carousel/owl.carousel.min.js') ?>"></script>
  <script src="<?= base_url('template/akpertheme/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js') ?>"></script>

  <!-- Template Main JS File -->
  <script src="<?= base_url('template/akpertheme/js/main.js') ?>"></script>

</body>

</html>