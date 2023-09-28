<?php
  // searchKeywordLaw.php
  require '../db.php';

  // Keyword to search
  if (isset($_GET['searchQuery'])) {
    $keyword = $_GET['searchQuery'];
    $category = isset($_GET['selectedCategory']) ? $_GET['selectedCategory'] : '';
    $searchType = isset($_GET['searchType']) ? $_GET['searchType'] : 'both'; // Default search type is 'both'

    $results = array();

    // The table to search
    $table = "laws";

$sql = "SELECT * FROM $table WHERE ";

    if (!empty($category)) {
      // Add category filtering
      $sql .= "category = :category AND ";
    }

    // Update the SQL query to consider search type
    if ($searchType === 'title') {
            $sql .= "title LIKE :keyword";
        } elseif ($searchType === 'content') {
            $sql .= "content LIKE :keyword";
        } else {
      $sql .= "CONCAT(title, ' ', content) LIKE :keyword";
    }
    
    $stmt = $pdo->prepare($sql);

    if (!empty($category)) {
      $stmt->bindValue(':category', $category);
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
