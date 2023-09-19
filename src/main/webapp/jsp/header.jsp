<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>

<!-- BOOTSTRAP -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="css/header.css">
</head>

<body>
<nav class="navbar">
<!-- NB. Se formatto questo pezzo, mi scompare il css sui nomi -->
		<a class="navbar-brand navbar-logo" href="Home">Home</a>
			 <ul class="listNavbar">  
				  <li style="--clr:#00ade1">  
				   <a href="ProfiloServlet" data-text="&nbsp;Profilo">&nbsp;Profilo&nbsp;</a>   
				  </li>
				   <li style="--clr:#dc00d4">  
				   <a href="ContactServlet" data-text="&nbsp;Contact">&nbsp;Contact&nbsp;</a>  
				  </li>
				  <li style="--clr:#ffdd1c">  
				   <a href="Page1Servlet" data-text="&nbsp;Page1">&nbsp;Page1&nbsp;</a>  
				  </li>
				  <li style="--clr:#00dc82">  
				   <a href="Page2Servlet" data-text="&nbsp;Page2">&nbsp;Page2&nbsp;</a>  
				  </li> 
				
				  <li style="--clr:#ff6492">  
				   <a href="QuizServlet" data-text="&nbsp;Quiz">&nbsp;Quiz&nbsp;</a>
				  </li>  
				   
				   
 			</ul> 
	</nav>
	
</body>
</html>