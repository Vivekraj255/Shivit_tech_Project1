<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Table</title>
<link rel="stylesheet" href="css/Index.css"> 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
</head>
<body>


			<%String email=session.getAttribute("email").toString(); %>
            <center><h2> Candidate status </h2></center>
            <h2><a href=""><%out.println(email); %><i class='fas fa-user-alt'></i></a></h2>
            
</br>
	
	<li><a href="books.jsp">Books Entries </a></li>
	
</br>
	
	<li><a href="view-candidate.jsp">View Candidate </a></li>
	
</br>
	
	<li><a href="Alldata.jsp">View All Data </a></li>

</body>
</html>