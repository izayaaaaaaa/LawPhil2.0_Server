<?php
  require '../db.php';

  $id = $_GET['id'];
  $query = 'SELECT title, category, content FROM laws WHERE id = ?';
  
  $stmt = $pdo->prepare($query);
  $stmt->bindParam(1, $id);
  $stmt->execute();
  $row = $stmt->fetch(PDO::FETCH_ASSOC);
  echo json_encode($row);
