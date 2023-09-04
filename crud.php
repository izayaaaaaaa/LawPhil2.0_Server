<?php
  header('Content-Type: application/json');

  require 'db.php';

  if ($_SERVER['REQUEST_METHOD'] === 'GET') {
      // Retrieve all laws
      if (isset($_GET['action']) && $_GET['action'] === 'getLaws') {
          try {
              $stmt = $pdo->query("SELECT * FROM laws");
              $laws = $stmt->fetchAll(PDO::FETCH_ASSOC);
              echo json_encode($laws);
          } catch (PDOException $e) {
              echo json_encode(array("error" => "Error retrieving laws: " . $e->getMessage()));
          }
      }
      // Retrieve a specific law by ID
      elseif (isset($_GET['action']) && $_GET['action'] === 'getLaw' && isset($_GET['id'])) {
          $lawId = intval($_GET['id']);
          try {
              $stmt = $pdo->prepare("SELECT * FROM laws WHERE id = :id");
              $stmt->bindParam(':id', $lawId, PDO::PARAM_INT);
              $stmt->execute();
              $law = $stmt->fetch(PDO::FETCH_ASSOC);
              echo json_encode($law);
          } catch (PDOException $e) {
              echo json_encode(array("error" => "Error retrieving law: " . $e->getMessage()));
          }
      }
  } elseif ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve JSON data from the request body
    $json_data = file_get_contents('php://input');
    $requestData = json_decode($json_data, true);

    if ($requestData !== null && isset($requestData['action'])) {
      $action = $requestData['action'];
      
      // create a new law
      if ($action === 'createLaw') {
        $title = $_POST['title'];
        $category = $_POST['category'];
        $content = $_POST['content'];
        try {
          $stmt = $pdo->prepare("INSERT INTO laws (title, category, content) VALUES (:title, :category, :content)");
          $stmt->bindParam(':title', $title, PDO::PARAM_STR);
          $stmt->bindParam(':category', $category, PDO::PARAM_STR);
          $stmt->bindParam(':content', $content, PDO::PARAM_STR);
          $stmt->execute();
          echo json_encode(array("message" => "Law created successfully."));
        } catch (PDOException $e) {
          echo json_encode(array("error" => "Error creating law: " . $e->getMessage()));
        }
      } else if ($action === 'updateLaw') { // update a law
          // Check if the required fields are provided
          if (isset($requestData['id'], $requestData['title'], $requestData['category'], $requestData['content'])) {
            // sanitize and validate the input data (you may need more validation) 
          $lawId = intval($requestData['id']);
          $title = filter_var($requestData['title']);
          $category = filter_var($requestData['category']);
          $content = filter_var($requestData['content']);

try {
          // update the law in the database
          $stmt = $pdo->prepare("UPDATE laws SET title = :title, category = :category, content = :content WHERE id = :id");
          $stmt->bindParam(':title', $title, PDO::PARAM_STR);
          $stmt->bindParam(':category', $category, PDO::PARAM_STR);
          $stmt->bindParam(':content', $content, PDO::PARAM_STR);
          $stmt->bindParam(':id', $lawId, PDO::PARAM_INT);
          $stmt->execute();
          
// check if any rows were affected (successful update)
              if ($stmt->rowCount() > 0) {
                  echo json_encode(array("message" => "Law updated successfully."));
              } else {
                  echo json_encode(array("error" => "Law with ID $lawId not found or no changes made."));
              }
            } catch (PDOException $e) {
                echo json_encode(array("error" => "Error updating law: " . $e->getMessage()));
            }
          } else {
              echo json_encode(array("error" => "Missing required parameters for updating law."));
          }
      } else {
        echo json_encode(array("error" => "Unsupported action."));
      }
    } else {
      echo json_encode(array("error" => "Action not specified in JSON data."));
    }
  } elseif ($_SERVER['REQUEST_METHOD'] === 'DELETE' && isset($_GET['action']) && $_GET['action'] === 'deleteLaw') {
    // Delete a law by ID
    if (isset($_GET['id'])) {
      $lawId = intval($_GET['id']);
      try {
        $stmt = $pdo->prepare("DELETE FROM laws WHERE id = :id");
        $stmt->bindParam(':id', $lawId, PDO::PARAM_INT);
        $stmt->execute();
        echo json_encode(array("message" => "Law deleted successfully."));
      } catch (PDOException $e) {
        echo json_encode(array("error" => "Error deleting law: " . $e->getMessage()));
      }
    } else {
      echo json_encode(array("error" => "Missing 'id' parameter for deleting law."));
    }
  }
?>
