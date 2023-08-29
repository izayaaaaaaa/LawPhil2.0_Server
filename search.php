<?php
  require 'db.php';

  if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    if (isset($_GET['q'])) {
      $searchQuery = $_GET['q'];
      $stmt = $pdo->prepare("SELECT * FROM laws WHERE title LIKE :query OR content LIKE :query");
      $stmt->bindValue(':query', '%' . $searchQuery . '%', PDO::PARAM_STR);
      $stmt->execute();
      $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

      echo json_encode(['success' => true, 'results' => $results]);
    } else {
      echo json_encode(['success' => false, 'message' => 'Missing search query']);
    }
  }
?>