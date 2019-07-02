<?php
session_start();
$_SESSION['message'] = '';
define('DB_SERVER','localhost');
define('DB_USER','root');
define('DB_PASS' ,'');
define('DB_NAME', 'projectsend');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);



define('IS_FILE_EDITOR', true);

$allowed_levels = array(0);
require_once('sys.includes.php');


$page_title = __('<b style="color:white;">Evaluation</b>', 'cftp_admin');
include('header.php');
define('CAN_INCLUDE_FILES', true);
?>

<div class="col-xs-12">

<?php




// Check connection
if (mysqli_connect_errno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
 }

 //if(isset($_POST) & !empty($_POST)){
	if(isset($_POST['submit'])){


		$department = mysqli_real_escape_string($con, $_POST['college']);
		$instname = mysqli_real_escape_string($con, $_POST['school']);
	  $ccode = mysqli_real_escape_string($con, $_POST['department']);
	  $cname = mysqli_real_escape_string($con, $_POST['course']);
	  $grade = mysqli_real_escape_string($con, $_POST['grade']);
	  $comment = mysqli_real_escape_string($con, $_POST['comment']);
	  
	
		$isql = "INSERT INTO evaluation1 (department,instructor_name,course_code,course_name,grade ,comment,posting_date) VALUES ('$department', '$instname', ' $ccode', '$cname', '$grade',' $comment', now())";
		$ires = mysqli_query($con, $isql) or die(mysqli_error($con));
		if($ires){
		$_SESSION['message'] = "Your Comment Submitted Successfully";
		header("location: index.php");
		}else{
			$_SESSION['message'] = "Failed to Submit Your Comment";
		}
	}

?>

<html>
	<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>COURSE EVALUATION</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script type="text/javascript" src="javascript.js"></script>

	<style>
	
body{
	background-image:url("img/pic2.jpg");
}

	
	form{
		border-radius: 5px;
background-color: lightgrey;
padding: 20px;
width: 50%;

	}
	input[type=text], select{
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	
}
textarea{
	height: 130px;
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit]{
	width: 100%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
input[ type=submit]:hover {
	background-color: #45a049;

}
div { 

}
	</style>
	<link rel="stylesheet" href="bootstrapp.css" type="text/css">
	</head>
	<body>
  
  

	<div class="evaluation" align="center" style="margin-top:-100px;">
	
	
	<span> <?php echo $_SESSION['message'];?></span>

	<form action="college.php" method="post">
	
	<table>
		<tr>
			<td><b>DEPARTMENT:</b> </td>
			<td>
				<select name="college" id="college" required onchange="getSchool();">
					<option value=''>:Select:</option>
					<?php
    $sql = mysqli_query($con, "SELECT dname FROM `dept`") OR DIE(mysqli_error());
    while($row = mysqli_fetch_array($sql)){
        ?>
        <option value="<?php echo $row['dname']?>">
        <?php echo $row['dname'];?>
        </option>
        <?php
    }
    ?>
				</select>
			</td>
		</tr>
		<tr>
			<td><b>INSTRUCTOR NAME:</b> </td>
			<td>
				<div id="schoolDiv">
					<select name="school" required id="school">
						<option value=''>Select department first</option>
					</select>
				</div>
			</td>
		</tr>
		<tr>
			<td><b>COURSE CODE:</b> </td>
			<td>
				<div id="departDiv">
					<select name="department" id="department" minlength="3" required>
						<option value=''>Select instructor name First</option>
					</select>
				</div>
			</td>
		</tr>

		<tr>
			<td><b>COURSE NAME:</b> </td>
			<td>
				<div id="coursen">
             <input type="text" name="course" id="course" required minlength="3"  onclick="ans();">
				</div>
			</td>
		</tr>

		<tr>
			<td><b>GRADE:</b> </td> <br>
			<td>
				<div id="grades">
					<select name="grade" id="grades" minlength="1" required>
						<option value=''>Select grade</option>
						<option value='A'>A</option>
						<option value='B+'>B+</option>
						<option value='B'>B</option>
						<option value='C'>C</option>
						<option value='D'>D</option>
						<option value='E'>E</option>
					</select>
					 
				
				</div>
				<table border="2">
				<th>GRADE</th><th>DESCRIPTION</th><th>GRADE</th><th>DESCRIPTION</th>
				<tr><td>A</td><td>Exellent</td> <td>B+</td><td>Very good</td></tr>
				<tr><td>B</td><td>Good</td> <td>C</td><td>Average</td></tr>
				<tr><td>D</td><td>Satisfactory</td> <td>E</td><td>Fail</td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td><b>YOUR COMMENT:</b> </td>
			<td>
		<div id="coursen">
		<textarea class="form-control " id="ccomment" name="comment" required placeholder="write here Your Opinions" minlength="5"></textarea>
				</div>
			</td>
		</tr>
		<tr>
			<td><b>SUBMIT HERE:</b> </td>
			<td>
				<div id="coursen">
				<input type="submit" value="EVALUATE" name="submit">
				</div>
			</td>
		</tr>

		<tr>
			<td> </td>
			<td>
				<div id="coursen">
				<a href="index.php">BACK</a>				
				</div>

			</td>
		</tr>
		
	</table>
	</form>
	</fieldset>
	
	</div>



	<script type="text/javascript">
	function ans(){ 
var code = document.getElementById("department").value;
if(code=='IS120') {
	document.getElementById("course").value= "Introduction to information system";	
}
else if(code=='IS321'){
	document.getElementById("course").value= "information system theory and practice";	
}
else if(code=='IS220'){
	document.getElementById("course").value= "ICT research";	
}
else if(code=='CS229'){
	document.getElementById("course").value= "Rdbms";	
}
else if(code=='CS310'){
	document.getElementById("course").value= "Distributed database";	
}
else if(code=='CS410'){
	document.getElementById("course").value= "human computer interaction";	
}
else if(code=='CS312'){
	document.getElementById("course").value= "Internet programming";	
}
else{
	document.getElementById("course").value= "";	
}

}
	</script>
	</body>
</html>
