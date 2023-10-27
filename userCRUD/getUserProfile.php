<?php
// Allow from any origin
if (isset($_SERVER['HTTP_ORIGIN'])) {
    header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Max-Age: 86400'); // cache for 1 day
}

// Access-Control headers are received during OPTIONS requests
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {

    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS");

    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
        header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");

    exit(0);
}
require 'db.php';

// Get the user ID from the request (assuming it's sent as a parameter)
$userId = isset($_GET['userId']) ? (int) $_GET['userId'] : null;

// Validate user ID
if (!$userId) {
    echo json_encode(['error' => 'Invalid user ID']);
    exit;
}

try {
    // Prepare a SQL statement to fetch user profile data based on $userId
    $stmt = $pdo->prepare("SELECT username, email FROM users WHERE id = :userId");

    // Bind the parameter
    $stmt->bindParam(':userId', $userId, PDO::PARAM_INT);

    // Execute the query
    $stmt->execute();

    // Fetch the user data as an associative array
    $userData = $stmt->fetch(PDO::FETCH_ASSOC);

    // Check if user data is available
    if (!$userData) {
        echo json_encode(['error' => 'User not found']);
        exit;
    }

    // Return the user data as JSON
    echo json_encode($userData);
} catch (PDOException $e) {
    // Improved error message for development debugging (avoid exposing detailed errors in production)
    echo json_encode(['error' => 'Database error: ' . $e->getMessage()]);
}
?>