 <section id="gallery" class="gallery">
   <div class="container" style="margin-top: 120px;">

     <div class="section-title">
          <h2>Galeri Foto</h2>
         
        </div>

    <div class="row">
      <?php 
                         	$no = $this->uri->segment(3)+1;
													foreach ($album->result_array() as $h) {	
														$total_foto = $this->model_utama->view_where('gallery',array('id_album' => $h['id_album']))->num_rows();

      ?>
        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
          <div class="icon-box"> 
          	 <a href='<?php echo base_url()."albums/detail/". $h['album_seo']; ?>'>
           <img class="img-fluid" src='<?php echo base_url()."asset/img_album/".$h['gbr_album']; ?>' alt='<?php echo $h['gbr_album'];?>' /></a>
            <h5 style="text-align:left;"><a href="<?php echo base_url()."albums/detail/". $h['album_seo']; ?>" style="color:#004488;font-weight:bold"><?php echo $h['jdl_album'];?></a></h5>
            <p style="text-align: left;"><?php echo $row['jdl_album'];?></p>
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