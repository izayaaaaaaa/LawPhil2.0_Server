<?php
  session_start();
  require '../db.php';

  // Clear all session variables
  $_SESSION = array();

  // Destroy the session
  session_destroy();

  // Set response status to indicate success
  http_response_code(200);
?>