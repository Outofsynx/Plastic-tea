
<?php
$servername="localhost";
$dbname ="test";
$username="root";
$password="";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM students";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<br> name: ". $row["StudentName"]. " - lastname: ". $row["StudentLastName"]. "  . schoolname: ". $row["SchoolName"] . ". date of birth: ". $row["DateOfBirth"] . "<br>";
    }
} else {
    echo "0 results";
}

$conn->close();
?>