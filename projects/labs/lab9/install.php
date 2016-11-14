<?php 

require 'config.php';

    try {
        $createDB = new PDO("mysql:host=localhost", $config['DB_USERNAME'], $config['DB_PASSWORD']);

        $createDB->exec("CREATE DATABASE IF NOT EXISTS`" . $config['DB_NAME'] . "`;");

    } catch (PDOException $e) {
        die("DB ERROR: ". $e->getMessage());
    }

    if ($createDB) {
      echo "Connected!";
   }
?>