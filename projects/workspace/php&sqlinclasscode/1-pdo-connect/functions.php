<?php 


   require '../config.php';

   try {
   		$conn = new PDO('mysql:host=localhost;dbname=websys_shop', $config['DB_USERNAME'], $config['DB_PASSWORD']);
//      open connection here
   } catch(PDOException $e) {
      echo 'ERROR: ' . $e->getMessage();
   }

   if ($conn) {
      echo "Connected!";
   }
 ?>