 <section id="doctors" class="doctors">
      <div class="container" style="margin-top: 120px;">
<?php
        foreach ($beritakategori2->result_array() as $r) { 
          ?>
     <div class="section-title">
          <h2><?php echo $r[nama_kategori]; ?></h2>
         
        </div>
          <?php }
      ?>
        <div class="row">
	<?php
     foreach ($beritakategori->result_array() as $r) { 
				  $baca = $r['dibaca']+1;	
				  $isi_berita =(strip_tags($r['isi_berita'])); 
				  $isi = substr($isi_berita,0,120); 
				  $isi = substr($isi_berita,0,strrpos($isi," ")); 
				  $judul = $r['judul']; 
				  $total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $r['id_berita']))->num_rows();
				  ?>
          <div class="col-md-6">
            <div class="member d-flex align-items-start">
              <div class="pic"><img style="width:210px;" src="<?php echo base_url().'asset/foto_berita/'.$r[gambar];?>" alt="<?php echo $r[gambar]; ?> " /></div>
              <div class="member-info">
                <h4><a href="<?php echo base_url().$r[judul_seo];?>"><?php echo $r[judul]; ?></a></h4>
                <span><?php echo $r[jam].', '.tgl_indo($r['tanggal']);?></span>
                <p><?php echo $isi; ?></p>
                <div class="social">
                 <script language="javascript">
                    document.write("<a href='http://www.facebook.com/share.php?u=" + document.URL + " ' target='_blank' class='custom-soc icon-text'><i class='ri-facebook-fill' style='font-size:18px'></i></a> <a href='http://twitter.com/home/?status=" + document.URL + "' target='_blank' class='custom-soc icon-text'><i class='ri-twitter-fill' style='font-size:18px'></i></a> <a href='mailto:info@poltekkaltara.ac.id' class='custom-soc icon-text'><i class='ri-mail-fill' style='font-size:18px'></i></a><a href='https://www.instagram.com/?url=" + document.URL + " ' target='_blank' class='custom-soc icon-text'><i class='ri-instagram-fill' style='font-size:18px'></i></a>");
                    </script>
                </div>
              </div>
            </div>
          </div>
      <?php }
      ?>

    
<div class="section-title">
      <div class="pagination">
        <?php echo $this->pagination->create_links(); ?>
      </div></div>
       
        </div>
 

      </div>

    </section>