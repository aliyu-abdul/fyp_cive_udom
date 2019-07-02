<?php
session_start();
$_SESSION['message'] = '';
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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="bootstrap.css" type="text/css">
    <title>Document</title>
</head>
<body>
    <div class="container-fluid">
    <div class="row">
      <div class="col-md-6">
       <div class="panel panel-default">
        <div class="panel-heading">
           <p class="text-center h3">EVALUATION</p>
        </div>
        <div class="panel-body">
        <div class="form-group">
        <span> <?php echo $_SESSION['message'];?></span>
           <form action="college11.php" method="POST">
           <table class="table table-hover table-responsive">
		<tr>
			<td><b>DEPARTMENT:</b> </td>
			<td>
				<select class="form-control" name="college" id="college" required onchange="getSchool();">
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
					<select name="school" required id="school" class="form-control">
						<option value=''>Select department first</option>
					</select>
				</div>
			</td>
		</tr>
		<tr>
			<td><b>COURSE CODE:</b> </td>
			<td>
				<div id="departDiv">
					<select class="form-control" name="department" id="department" minlength="3" required>
						<option value=''>Select instructor name First</option>
					</select>
				</div>
			</td>
		</tr>

		<tr>
			<td><b>COURSE NAME:</b> </td>
			<td>
				<div id="coursen">
             <input type="text" class="form-control" name="course" id="course" required minlength="3" onclick="ans();">
				</div>
			</td>
		</tr>

		<tr>
			<td><b>GRADE:</b> </td> <br>
			<td>
				<div id="grades">
					<select class="form-control" name="grade" id="grades" minlength="1" required>
						<option value=''>Select grade</option>
						<option value='A'>A</option>
						<option value='B+'>B+</option>
						<option value='B'>B</option>
						<option value='C'>C</option>
						<option value='D'>D</option>
						<option value='E'>E</option>
					</select>
					 
				
				</div>
				<table class="table table-striped table-responsive">
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
				<input type="submit" class="btn btn-primary" value="EVALUATE" name="submit">
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
        </div>
        </div>
       </div>
      </div>
      <div class="col-md-6">
        <img src="img/eva.jpg" style="margin-top:50px;" alt="image" class="img-responsive img-thumbnail">
      </div>
      </div>
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

</body>
</html>
