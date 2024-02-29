<?php
include 'global/config.php';
include 'global/conexion.php';  
?>

<!doctype html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Rent a Car</title>
    <!--FavIcon y css-->
    <link rel="icon" href="imags/favicon.ico">
    <link rel="stylesheet" href="css/estilos.css">
  </head>
  <body>
     <header>
             <nav>
                 <div class="logo">
                     <img src="imags/Logo.png" alt="" href="index.html">
                 </div>
                 <div class="icono" id="icono">
                     <span>&#9776;</span>
                 </div>
                 <div class="enlaces uno" id="enlaces">
                     <a href="index.html" class="active">Inicio</a>
                     <a href="vehiculos.php">Vehiculos</a>
                     <a href="#">Nosotros</a>
                     <a href="#">Contactenos</a>
                 </div>
             </nav> 
     </header>
          <br>
          <br>
          <br>
<!-- Inicio del contenedor de productos-->       
       <div class="container">

           <div class="row">

           <?php
           $sentencia=$pdo->prepare("SELECT * FROM `vehiculos`");
           $sentencia->execute();
           $listaProductos=$sentencia->fetchAll(PDO::FETCH_ASSOC);
           print_r($listaProductos);
           ?>
          
               <div class="col-3">
                   <div class="card">
                       <img alt="Titulo Producto" class="card-img-top" src="https://media.metrolatam.com/2020/01/14/toyotatacoma2020-3a058b16310a3c00366ed9025969e762-600x400.jpg" alt="">
                       <div class="card-body">
                           <span><h5>Toyota</h5></span>
                           <h6 class="card-title">Modelo</h6>
                           <p class="card-text">Lorem ipsum dolor sit amet, consectetur</p>

                           <button class="btn btn-primary" name="btnAccion" value="Agregar" type="Submit">Cotizar</button>
                       </div>
                   </div>
               </div>
           </div>

       </div>







      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>


