<?php

$host = "localhost";
$dbname = "my_database";
$dbuser = "root"; 
$dbpass = ""; 


$conn = new mysqli($host, $dbuser, $dbpass, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


if ($_SERVER["REQUEST_METHOD"] == "POST") {
   
    $username = $_POST['username'];
    $email = $_POST['email'];
    $register=$_POST['register'];
    $sex=$_POST['sex'];
    $mobile=$_POST['mobile']
   
    $stmt = $conn->prepare("INSERT INTO users (username, email,register,gender,mobile) VALUES (?, ?, ?,?,?)");
    
        
        

        $stmt->close();
    } 
    }
}
$conn->close();
?>
