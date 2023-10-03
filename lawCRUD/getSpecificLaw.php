<?php
// getSpecificLaw.php
  require_once '../db.php';

  $lawID = $_GET['lawID'];
  $query = 'SELECT title, category, content FROM laws WHERE id = ?';
  
  $stmt = $pdo->prepare($query);
  $stmt->bindParam(1, $lawID);
  $stmt->execute();
  $row = $stmt->fetch(PDO::FETCH_ASSOC);
  echo json_encode($row);
