<?php
// The code you provided is a PHP script that handles a POST request for user authentication. Here's a
// breakdown of what the code does:

  require '../db.php';

  if ($_SERVER["REQUEST_METHOD"] === "POST") {
  $data = json_decode(file_get_contents("php://input"));

    if (!empty($data->email) && !empty($data->password)) {
      $email = $data->email;
      $password = $data->password;

      $stmt = $pdo->prepare('SELECT * FROM users WHERE email = ?');
      $stmt->execute([$email]);
      $row = $stmt->fetch(PDO::FETCH_ASSOC);
      
      if ($row) {
        // Verify hashed password
        if (password_verify($password, $row["password"])) {
          $response = [
            "success" => true,
            "id" => $row["id"],
            "email" => $email,
            "role" => $row["role"]
          ];

          session_start();
          $_SESSION["user_id"] = $row["id"];
          $_SESSION["user_email"] = $email;
          $_SESSION["user_role"] = $row["role"];
          session_regenerate_id();

          echo json_encode($response);
        } else {
          echo json_encode(["success" => false, "message" => "Invalid email or password"]);
        }
      } else {
        echo json_encode(["success" => false, "message" => "Invalid email or password"]);
      }
    } else {
      echo json_encode(["success" => false, "message" => "Email and password are required"]);
    }
  } else {
    http_response_code(405);
  }
?>