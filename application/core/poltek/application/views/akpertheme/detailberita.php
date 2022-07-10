 <section id="about" class="about">
 	<div class="container" style="margin-top: 120px;">

 		<div class="row">
 			<div class="col-xl-12 justify-content-center align-items-stretch">
 				<img style="width:100%;" class="img-responsive" src="<?php echo base_url() . 'asset/foto_berita/' . $rows['gambar']; ?>" alt="<?php echo $rows['judul']; ?>" />
 				<small><span class="font-italic">By <b> <?php echo "$rows[nama_lengkap]"; ?> </b> </span>
 					<span class="meta">&nbsp;<?php echo tgl_indo($rows['tanggal']) . ", $rows[jam] WIB"; ?>
 						<span class="tag" style="background-color: #2a8ece;"><a href="<?php echo base_url() . "kategori/detail/$rows[kategori_seo]"; ?>"></a></span>
 					</span></small>
 			</div>

 			<div class="col-xl-12 icon-boxes flex-column justify-content-center">
 				<h3><?php echo $rows['judul']; ?></h3>
 				<p><?php echo $rows['isi_berita']; ?></p>
<div class="social float-left"><a href="#appointment" class="appointment-btn scrollto">Kembali</a></div>
    <div class="social float-right"> <script language="javascript">
										document.write("<a href='http://www.facebook.com/share.php?u=" + document.URL + " ' target='_blank' class='custom-soc icon-text'><i class='ri-facebook-fill' style='font-size:20px'></i></a> <a href='http://twitter.com/home/?status=" + document.URL + "' target='_blank' class='custom-soc icon-text'><i class='ri-twitter-fill' style='font-size:20px'></i></a> <a href='mailto:info@poltekkaltara.ac.id' class='custom-soc icon-text'><i class='ri-mail-fill' style='font-size:20px'></i></a><a href='https://www.instagram.com/?url=" + document.URL + " ' target='_blank' class='custom-soc icon-text'><i class='ri-instagram-fill' style='font-size:20px'></i></a>");
										</script>
 		 
                 
                </div>
 			</div>

 		</div>
<br>
 		<div class="row">

 			<div class="col-xl-6 icon-boxes flex-column align-items-stretch justify-content-center">
 				<?php

					$content = "<h3>&nbsp;&nbsp;Artikel Lainnya : </h3><ul>";
					$pisah_kata  = explode(",", $rows['tag']);
					$jml_katakan = (int)count($pisah_kata);
					$jml_kata = $jml_katakan - 1;
					$ambil_id = substr($rows['id_berita'], 0, 4);
					$cari = "SELECT * FROM berita WHERE (id_berita<'$ambil_id') and (id_berita!='$ambil_id') and (aktif!='Y') and (";
					for ($i = 0; $i <= $jml_kata; $i++) {
						$cari .= "tag LIKE '%$pisah_kata[$i]%'";
						if ($i < $jml_kata) {
							$cari .= " OR ";
						}
					}
					$cari .= ") ORDER BY id_berita DESC LIMIT 5";
					$hasil  = $this->db->query($cari);
					foreach ($hasil->result_array() as $row) {

						$content .= "<li style='padding:3px'><a style='color:#2c4964' href='" . base_url() . "$row[judul_seo]''>$row[judul]</a><a href='#' class='h-comment'></a></li>";
					}
					$content .= "</ul>";




					echo "$content<hr>
											<div class='fb-like'  data-href='" . base_url() . "$rows[judul_seo]' 
												data-send='false'  data-width='600' data-show-faces='false'>
											</div> <br><br>";

					if ($rows['youtube'] != '') {
						echo "<h4>Video Terkait:</h4>";
						if (preg_match('%(?:youtube(?:-nocookie)?\.com/(?:[^/]+/.+/|(?:v|e(?:mbed)?)/|.*[?&]v=)|youtu\.be/)([^"&?/ ]{11})%i', $rows['youtube'], $match)) {
							echo "<iframe width='100%' height='350px' id='ytplayer' type='text/html'
                                                src='https://www.youtube.com/embed/" . $match[1] . "?rel=0&showinfo=1&color=white&iv_load_policy=3'
                                                frameborder='0' allowfullscreen></iframe><div class='garis'></div><br/>";
						}
					}
					?>
 			</div>
 		</div>
 </section>