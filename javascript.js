var req;
function initRequest(){
	if(window.XMLHttpRequest){
		req = new XMLHttpRequest();
	}else if(window.ActiveXobject){
		req = new ActiveXobject("Microsoft.XMLHTTP");
	}
}

function getSchool(){
	initRequest();
	req.onreadystatechange = updateschool;
	var coll = document.getElementById("college");
	var collValue = coll.options[coll.selectedIndex].value;
	var url = "findschool.php?college="+collValue;
	req.open("GET",url,true);
	req.send(null);
}

function updateschool(){
	if(req.readyState == 4){
		if(req.status == 200){
			//update the DOM
			document.getElementById("schoolDiv").innerHTML = req.responseText;
			getDepartment();
		}else{
			alert("Error: "+ req.status);
		}
	}
}

function getDepartment(){
	initRequest();
	req.onreadystatechange = updatedepartment;
	var school = document.getElementById("school");
	var schoolValue = school.options[school.selectedIndex].value;
	var url = "finddepartment.php?school="+schoolValue;
	req.open("GET",url,true);
	req.send(null);
}

function updatedepartment(){
	if(req.readyState == 4){
		if(req.status == 200){
			//update the DOM
			document.getElementById("departDiv").innerHTML = req.responseText;
		}else{
			alert("Error: "+ req.status);
		}
	}
}






