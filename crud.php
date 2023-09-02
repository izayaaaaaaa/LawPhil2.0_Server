<?php
  header('Content-Type: application/json');

  require 'db.php';

  if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    // Retrieve all laws
    if ($_GET['action'] === 'getLaws') {
      try {
        $stmt = $pdo->query("SELECT * FROM laws");
        $laws = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($laws);
      } catch (PDOException $e) {
        echo json_encode(array("error" => "Error retrieving laws: " . $e->getMessage()));
      }
    } 
    // Retrieve a specific law by ID
    elseif ($_GET['action'] === 'getLaw' && isset($_GET['id'])) {
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
    // Create a new law
    if ($_POST['action'] === 'createLaw') {
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
    }
    // Update an existing law
    elseif ($_POST['action'] === 'updateLaw' && isset($_POST['id'])) {
      $lawId = intval($_POST['id']);
      $title = $_POST['title'];
      $category = $_POST['category'];
      $content = $_POST['content'];
      try {
        $stmt = $pdo->prepare("UPDATE laws SET title = :title, category = :category, content = :content WHERE id = :id");
        $stmt->bindParam(':title', $title, PDO::PARAM_STR);
        $stmt->bindParam(':category', $category, PDO::PARAM_STR);
        $stmt->bindParam(':content', $content, PDO::PARAM_STR);
        $stmt->bindParam(':id', $lawId, PDO::PARAM_INT);
        $stmt->execute();
        echo json_encode(array("message" => "Law updated successfully."));
      } catch (PDOException $e) {
        echo json_encode(array("error" => "Error updating law: " . $e->getMessage()));
      }
    }
  } elseif ($_SERVER['REQUEST_METHOD'] === 'DELETE' && isset($_GET['action']) && $_GET['action'] === 'deleteLaw') {
    // Delete a law by ID
    $lawId = intval($_GET['id']);
    try {
      $stmt = $pdo->prepare("DELETE FROM laws WHERE id = :id");
      $stmt->bindParam(':id', $lawId, PDO::PARAM_INT);
      $stmt->execute();
      echo json_encode(array("message" => "Law deleted successfully."));
    } catch (PDOException $e) {
      echo json_encode(array("error" => "Error deleting law: " . $e->getMessage()));
    }
  }
?>