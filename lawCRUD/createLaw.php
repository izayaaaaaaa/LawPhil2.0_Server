<?php

  require '../db.php';

  $data = json_decode(file_get_contents("php://input"));

  $query = "INSERT INTO laws SET title=:title, category=:category, content=:content";
  $stmt = $pdo->prepare($query);

  $stmt->bindParam(':title', $data->title);
  $stmt->bindParam(':category', $data->category);
  $stmt->bindParam(':content', $data->content);

  if ($stmt->execute()) {
    http_response_code(200);
    echo json_encode(array("message" => "Law was created."));
  } else {
    http_response_code(400);
    echo json_encode(array("message" => "Unable to create law."));
  }
