<?php
define('DB_SERVER','localhost');
define('DB_USER','root');
define('DB_PASS' ,'');
define('DB_NAME', 'testi');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);

// Check connection
if (mysqli_connect_errorno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
 }

 $id = $_GET['id'];
 $sql ='DELETE FROM evaluation1 WHERE id=:id';
 $statement = $con->prepare($sql);
 if($statement->execute([':id' => $id]))
 {
 echo "<script>alert('Data deleted');</script>";
 header("Location: student.php");
 }
 
?>