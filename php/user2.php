<?php
require_once"../dataconn/connect.php";
session_start();
//if user not loggin in, redirect to login.php
require_once "../php/logincheck.php"
?>
    <h1>Welcome <?php echo $_SESSION ['name']; ?></h1>
<?php

echo "<table class='displayplastic'>";
    echo "<tr><th>Item</th><th>Material</th></tr>";

    class TableRows extends RecursiveIteratorIterator {
    function __construct($it) {
    parent::__construct($it, self::LEAVES_ONLY);
    }

    function current() {
    return"<td>".parent::current()."</td>";
    }

    function beginChildren() {
    echo "<tr>";
        }

        function endChildren() {
        echo "</tr>" . "\n";
    }
    }

    try {
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $stmt = $conn->prepare("SELECT `plasticname`, `plastickind` FROM plasticname");
    $stmt->execute();

    // set the resulting array to associative
    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);

    foreach(new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v) {
    echo $v;
    }
    }
    catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
    }
    $conn = null;
    echo "</table>";