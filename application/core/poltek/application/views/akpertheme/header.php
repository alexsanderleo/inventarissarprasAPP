<?php
 
 
 echo "<h1 class='logo mr-auto'><a href='base_url()'>";
		   $iden = $this->model_utama->view('identitas')->row_array();
		   $logo = $this->model_utama->view_ordering_limit('logo','id_logo','DESC',0,1);
		   foreach ($logo->result_array() as $row) {
			 echo "<a href='".base_url()."'><img style='max-height:50px' src='".base_url()."asset/logo/$row[gambar]'/></a>";
		   }
		   echo "</a></h1>";	
 function main_menu() {
			 $ci = & get_instance();
			 $query = $ci->db->query("SELECT id_menu, nama_menu, link, id_parent FROM menu where aktif='Ya' AND position='Bottom' order by urutan");
			 $menu = array('items' => array(),'parents' => array());
			 foreach ($query->result() as $menus) {
				 $menu['items'][$menus->id_menu] = $menus;
				 $menu['parents'][$menus->id_parent][] = $menus->id_menu;
			 }
			 if ($menu) {
				 $result = build_main_menu(0, $menu);
				 echo $parent;
				 return $result;
			 }else{
				 return FALSE;
			 }
		 }
	 
 
	 function build_main_menu($parent, $menu) {
	$CI =& get_instance();
	 $ceksegment = $CI->uri->segment(1);
   $ceksegment3 = $CI->uri->segment(3);
  if($CI->uri->segment(0)){
  //	$cek3 = $CI->uri->segment();
 //$cek3 = $CI->uri->segment(1);
  }else{
	  $cek = $CI->uri->segment(3);
	  //$cek3 = $CI->uri->segment(1);
  }
 
			 $html = "";
			 if (isset($menu['parents'][$parent])) {
				 if ($parent=='0'){
				 $active1='';
						 if($cek==NULL and $ceksegment!=='hubungi'){
							 $active1='class="active"';
						 }
					 $html .= "<nav class='nav-menu d-none d-lg-block'>
								 <ul>
								 <li $active1><a href='".base_url()."'>Beranda</a></li>";
				 }else{
					 $html .= "<ul>";
				 }
 
				 foreach ($menu['parents'][$parent] as $itemId) {
					   
				 if (!isset($menu['parents'][$itemId])) {
						 $r = $menu['items'][$itemId]->link;
						 $r = explode('/',$r);
 $r = array_filter($r);
 $r = array_merge($r, array()); 
 $r = preg_replace('/\?.*/', '', $r);
 $url2 = $r[2];
 $url3 = $r[0];
 $active='';
		   
						 if($cek!=NULL and $ceksegment3===$url2){
							 $active='class="active"';
							 }elseif($ceksegment===$url3 and $ceksegment==='hubungi'){
					$active='class="active"';
							 }else{
							 $active='';
							 }
 
						 
						  $html .= "<li $active><a href='".base_url().''.$menu['items'][$itemId]->link."'>".$menu['items'][$itemId]->nama_menu."</a></li>";
				  
					 }
					 if (isset($menu['parents'][$itemId])) {
						 if(preg_match("/^http/", $menu['items'][$itemId]->link)) {
							 $html .= "<li><a target='_BLANK' href='".$menu['items'][$itemId]->link."'><span>".$menu['items'][$itemId]->nama_menu."</span></a>";
						 }else{
							 $html .= "<li class='drop-down'><a href='".base_url().''.$menu['items'][$itemId]->link."'><span>".$menu['items'][$itemId]->nama_menu."</span></a>";
						 }
						 $html .= build_main_menu($itemId, $menu);
						 $html .= "</li>";
					 }
				 }
				 $html .= "</ul>";
			 }
			 return $html;
		 }
		 echo main_menu();
 
 
 echo"</nav>";
 
	 ?>
 
 
	   <!-- Uncomment below if you prefer to use an image logo -->
	   <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
 
	 