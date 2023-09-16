<?php
// Include your database connection code from db.php
require('db.php');

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
  http_response_code(200);
  exit();
}

if (isset($_GET['id'])) {
  $lawId = $_GET['id'];

  try {
    // Prepare and execute a query to fetch law content by ID from your database
    $stmt = $pdo->prepare("SELECT id, title, category, content FROM laws WHERE id = :id");
    $stmt->bindParam(':id', $lawId, PDO::PARAM_INT);
    $stmt->execute();

    $law = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($law) {
      // Return the law content as JSON
      echo json_encode($law);
    } else {
      // Return an error message if the law is not found
      http_response_code(404);
      echo json_encode(['error' => 'Law not found']);
    }
  } catch (PDOException $e) {
    // Handle database query errors
    http_response_code(500);
    echo json_encode(['error' => 'Database error']);
  }
} else {
  // Return an error message if the "id" parameter is not provided
  http_response_code(400);
  echo json_encode(['error' => 'Missing "id" parameter']);
}
