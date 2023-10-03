<?php
  // searchKeywordLaw.php
  require_once '../db.php';

  if (isset($_GET['searchQuery'])) {
    $keyword = $_GET['searchQuery'];
    $selectedCategories = isset($_GET['selectedCategories']) ? $_GET['selectedCategories'] : [];

    $results = array();
    $table = "laws";
    $sql = "SELECT * FROM $table WHERE ";

    if (!empty($selectedCategories) && !in_array('All', $selectedCategories)) {
      // Add category filtering for selected categories
      $categoryPlaceholders = implode(', ', array_fill(0, count($selectedCategories), '?'));
      $sql .= "category IN ($categoryPlaceholders) AND ";
    }

    $sql .= "content LIKE ?"; // Add the keyword condition    

    $stmt = $pdo->prepare($sql);

    if (!empty($selectedCategories) && !in_array('All', $selectedCategories)) {
      // Bind values for selected categories
      $stmt->execute(array_merge($selectedCategories, ["%$keyword%"]));
    } else {
      $stmt->execute(["%$keyword%"]);
    }

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
?>
