<!-- ya existe conexion a la base de datos en el "header" -->
<!-- nesitamos la direccion de la imagen -->

<?php
  $consulta_slider = "SELECT direccion_imagen FROM banner_img";
  $imagenes = $conn->query($consulta_slider);
?>
<div class="slideshow-container">
  <div class="mySlides fade">
    <img src="<?php echo $link_base_root?>/imagenes_banner/laptops_4.jpg">
  </div>
  <div class="mySlides fade">
    <img src="<?php echo $link_base_root?>/imagenes_banner/h2-miray_4.jpg">
  </div>
  <div class="mySlides fade">
    <img src="<?php echo $link_base_root?>/imagenes_banner/h1-miray_9.jpg">
  </div>
  <?php
    while($row_imagen = $imagenes->fetch_assoc()){?>
    <div class="mySlides fade">
      <img src="<?php echo $row_imagen["direccion_imagen"]?>">
    </div>
  <?php
    }
  ?>
</div>
<script src="<?php echo $link_base_root?>/javascript/script-slider.js"></script>