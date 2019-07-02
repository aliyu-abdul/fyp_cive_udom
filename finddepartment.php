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
	$school = $_GET['school'];
	if($school =="sanga"){
?>
	<select name="department" id="department">
		<option value=''>Select</option>
		<?php
    $sql = mysqli_query($con, "SELECT `code` FROM `course` WHERE `id` ='1'") OR DIE(mysqli_error());
    while($row = mysqli_fetch_array($sql)){
        ?>
        <option value="<?php echo $row['code']?>">
        <?php echo $row['code'];?>
        </option>
        <?php
    }
    ?>
	</select>
<?php
	}else if($school =="shidende"){
?>
	<select name="department" id="department">
		<option value=''>Select</option>
		<?php
    $sql = mysqli_query($con, "SELECT `code` FROM `course` WHERE `id` ='2'") OR DIE(mysqli_error());
    while($row = mysqli_fetch_array($sql)){
        ?>
        <option value="<?php echo $row['code']?>">
        <?php echo $row['code'];?>
        </option>
        <?php
    }
    ?>
	</select>
<?php
	}else if($school =="Steve"){
?>
        	<select name="department" id="department">
		<option value=''>Select</option>
		<?php
    $sql = mysqli_query($con, "SELECT `code` FROM `course` WHERE `id` ='3'") OR DIE(mysqli_error());
    while($row = mysqli_fetch_array($sql)){
        ?>
        <option value="<?php echo $row['code']?>">
        <?php echo $row['code'];?>
        </option>
        <?php
    }
    ?>
	</select>	
<?php
	}else if($school =="mwombeki"){
?>
	<select name="department" id="department">
		<option value=''>Select</option>
		<?php
    $sql = mysqli_query($con, "SELECT `code` FROM `course` WHERE `id` ='4'") OR DIE(mysqli_error());
    while($row = mysqli_fetch_array($sql)){
        ?>
        <option value="<?php echo $row['code']?>">
        <?php echo $row['code'];?>
        </option>
        <?php
    }
    ?>
	</select>
<?php
	}else{
?>
	<select name="department" id="department">
		<option value=''>Select department First</option>
	</select>
<?php
	}
?>










