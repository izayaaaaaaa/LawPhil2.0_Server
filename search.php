<!-- possible duplication can arise if i group entries by id on a model that has several law tables_to_search
        -- use one table for all laws with the category distinction as a column -->

<?php
// Include the database connection script
require('db.php');

// Keyword to search
$keyword = "sample";

// Initialize the results array
$results = array();

// Tables to search (excluding "users" table)
$tables_to_search = array("laws", "lawstwo");

foreach ($tables_to_search as $table) {
    $sql = "SELECT * FROM $table WHERE CONCAT(title, ' ', content) LIKE '%$keyword%'";

    $result = $pdo->query($sql); // Use the PDO connection from db.php

    if ($result->rowCount() > 0) {
        while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
            // Check if the ID is already in the results array
            $id = $row['id'];
            $found = false;
            foreach ($results as &$result_item) {
                if ($result_item['id'] == $id) {
                    // ID already in results, add the current column to that row
                    $result_item['columns'][] = array('title' => $row['title'], 'content' => $row['content']);
                    $found = true;
                    break;
                }
            }
            if (!$found) {
                // ID not found in results, create a new row for it
                $results[] = array('id' => $id, 'columns' => array(array('title' => $row['title'], 'content' => $row['content'])));
            }
        }
    }
}

// Close the database connection (if needed)
$pdo = null;

// Output the results
foreach ($results as $result_item) {
    echo "ID: " . $result_item['id'] . "<br>";
    foreach ($result_item['columns'] as $column) {
        echo "Title: " . $column['title'] . "<br>";
        echo "Content: " . $column['content'] . "<br>";
    }
    echo "<hr>";
}
?>
