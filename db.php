<?php
  // db.php
  $hostname = 'localhost';
  $username = 'luxemburg';
  $password = 'izaya';
  $dbname = 'lawdb';
  $port = 3306;

  $dbConnectionLog = "./dbConnectionErrorLog.log";

  try {
    $pdo = new PDO("mysql:host=$hostname; port=$port; dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    error_log("Connection successful.\n", 3, $dbConnectionLog);
  } catch (PDOException $e) {
    error_log("Connection to database failed.\n", 3, $dbConnectionLog);
  }
?>