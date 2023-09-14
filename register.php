<?php
  // register.php

  header("Content-Type: application/json");

  require 'db.php';

  if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $requestData = json_decode(file_get_contents("php://input"), true);

    if (isset($requestData['username']) && isset($requestData['email']) && isset($requestData['password'])) {
      $username = $requestData['username'];
      $email = $requestData['email'];
      $password = password_hash($requestData['password'], PASSWORD_DEFAULT); // Hash the password

      $sql = 'INSERT INTO users (username, email, password) VALUES (?, ?, ?)';
      $stmt = $pdo->prepare($sql);
      $stmt->execute([$username, $email, $password]);

      echo json_encode(['success' => true, 'message' => 'Registration successful', 'debug' => 'Script executed successfully']);
    } else {
      echo json_encode(['success' => false, 'message' => 'Missing required data', 'debug' => 'Script executed, but data missing']);
    }
  }
