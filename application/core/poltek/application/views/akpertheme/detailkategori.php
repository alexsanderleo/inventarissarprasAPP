  <section id="departments" class="departments">
      <div class="container" style="margin-top: 120px;">

        <div class="section-title">
          <h2><?php echo "$rows[nama_kategori]"; ?></h2>
         
        </div>

      <div class="row">
          <div class="col-lg-3">
            <ul class="nav nav-tabs flex-column">
            	<?php
            	$i=1;
			  foreach ($beritakategori->result_array() as $r) {	
				  $baca = $r['dibaca']+1;	
				  $isi_berita =(strip_tags($r['isi_berita'])); 
				  $isi = substr($isi_berita,0,220); 
				  $isi = substr($isi_berita,0,strrpos($isi," ")); 
				  $judul = $r['judul']; 
				  $total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $r['id_berita']))->num_rows();
				  if ($i==1){ $active = 'active show'; }else{ $active = '';}  
				?>
              <li class="nav-item">
                <a class="nav-link <?php echo $active; ?>" data-toggle="tab" href="#tab-<?php echo $r['id_berita']; ?>"><?php echo $judul; ?></a>
              </li>
              <?php $i++ ;}
			?>
    
            </ul>
          </div>
          <div class="col-lg-9 mt-4 mt-lg-0">
            <div class="tab-content">

	<?php
            	$j=1;
			  foreach ($beritakategori->result_array() as $t) {	
				  $baca = $t['dibaca']+1;	
				  $isi_berita =(strip_tags($t['isi_berita'])); 
				  $isi = substr($isi_berita,0,220); 
				  $isi = substr($isi_berita,0,strrpos($isi," ")); 
				  $judull = $t['judul']; 
				  $total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $t['id_berita']))->num_rows();
				  if ($j==1){ $actives = 'active show'; }else{ $actives = '';}  
				?>
              <div class="tab-pane <?php echo $actives; ?>" id="tab-<?php echo $t['id_berita']; ?>">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3><?php echo $judull; ?></h3>
                    <p class="font-italic"><?php echo $t['isi_berita']; ?></p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="<?php echo base_url(); ?>asset/foto_berita/<?php echo $t['gambar']; ?>" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
     <?php $j++ ;}
			?>
            </div>
          </div>
        </div>

      </div>
    </section>