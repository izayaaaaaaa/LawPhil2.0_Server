<?php
  // search.php
  require '../db.php';

  // Keyword to search
  if (isset($_GET['q'])) {
    $keyword = $_GET['q'];

    // Initialize the results array
    $results = array();

    // The table to search
    $table = "laws";

    $sql = "SELECT * FROM $table WHERE CONCAT(title, ' ', content) LIKE :keyword";
    
    $stmt = $pdo->prepare($sql);
    $stmt->bindValue(':keyword', '%'.$keyword.'%');
    $stmt->execute();

    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
      $results[] = $row;
    }

    // Return JSON result with a response code
    http_response_code(200);
    echo json_encode($results);
  } else {
    http_response_code(400);
    echo json_encode(array('error' => 'Bad Request'));
  }