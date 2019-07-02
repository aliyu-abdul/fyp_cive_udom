<?php
define('DB_SERVER','localhost');
define('DB_USER','root');
define('DB_PASS' ,'');
define('DB_NAME', 'projectsend');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);

// Check connection
if (mysqli_connect_errno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
 }

?>

<?php
	$college = $_GET['college'];
	if($college =="DOIS"){
?>
	<select name="school" id="school" onchange="getDepartment();">
		<option value=''>Select</option>
		<?php
    $sql = mysqli_query($con, "SELECT `name` FROM `instry` WHERE `deptno` ='2'") OR DIE(mysqli_error());
    while($row = mysqli_fetch_array($sql)){
        ?>
        <option value="<?php echo $row['name']?>">
        <?php echo $row['name'];?>
        </option>
        <?php
    }
    ?>
	</select>
<?php
	}else if($college =="DOCS"){
?>
	<select name="school" id="school" onchange="getDepartment();">
		<option value=''>Select</option>
		<?php
    $sql = mysqli_query($con, "SELECT `name` FROM `instry` WHERE `deptno` ='1'") OR DIE(mysqli_error());
    while($row = mysqli_fetch_array($sql)){
        ?>
        <option value="<?php echo $row['name']?>">
        <?php echo $row['name'];?>
        </option>
        <?php
    }
    ?>
	</select>
<?php
	}else{
?>
	<select name="school" id="school">
		<option value=''>Select  First</option>
	</select>
<?php
	}
?>










