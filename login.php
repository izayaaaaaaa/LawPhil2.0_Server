<?php
// login.php

require 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  $requestData = json_decode(file_get_contents("php://input"), true);

  if (isset($requestData['username']) && isset($requestData['password'])) {
    $username = $requestData['username'];
    $password = $requestData['password'];

    $stmt = $pdo->prepare('SELECT * FROM users WHERE username = ?');
    $stmt->execute([$username]);
    $user = $stmt->fetch();

    if ($user && password_verify($password, $user['password'])) {
      // Assuming your user table has a 'role' column
      $role = $user['role'];
      $id = $user['id'];
      echo json_encode(['success' => true, 'message' => 'Login successful', 'role' => $role, 'id' => $id]);
    } else {
      echo json_encode(['success' => false, 'message' => 'Login failed']);
    }
  } else {
    echo json_encode(['success' => false, 'message' => 'Missing username or password']);
  }
}
