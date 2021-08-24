<?php 
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "img_uploader";
    $conn = new mysqli($servername,$username,$password,$database);
    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }
    $name = $_POST['name'];
    $email = $_POST['email'];

    $sql = "INSERT INTO user (name, email)
    VALUES ('$name', '$email')";
    $result = $conn->query($sql);
    echo "Done";
?>