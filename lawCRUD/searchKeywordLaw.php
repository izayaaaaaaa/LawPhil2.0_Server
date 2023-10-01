<?php
  // searchKeywordLaw.php
  require '../db.php';

  // Keyword to search
  if (isset($_GET['searchQuery'])) {
    $keyword = $_GET['searchQuery'];
    $selectedCategories = isset($_GET['selectedCategories']) ? $_GET['selectedCategories'] : [];

    $results = array();

    // The table to search
    $table = "laws";

    $sql = "SELECT * FROM $table WHERE ";

    if (!empty($selectedCategories) && !in_array('All', $selectedCategories)) {
      // Add category filtering for selected categories
      $sql .= "category IN (" . implode(',', array_fill(0, count($selectedCategories), '?')) . ") AND ";
    }

    $sql .= "content LIKE :keyword"; // Add the keyword condition
    
    $stmt = $pdo->prepare($sql);

    if (!empty($selectedCategories) && !in_array('All', $selectedCategories)) {
      // Bind values for selected categories
      foreach ($selectedCategories as $category) {
        $stmt->bindValue(':category', $category);
      }
    }

    $stmt->bindValue(':keyword', '%' . $keyword . '%');

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
?>
