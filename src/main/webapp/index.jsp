<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
<title>Homepage</title>

<!-- BOOTSTRAP -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="css/index.css">


</head>
<body>
<div class="contaneir">
	<%@include file="jsp/header.jsp" %>
	
	<h1>Gear 4th Luffy</h1>  
     <div class="carousel">  
       <div class="carouselContainer">  
         <img class="slides" id="lastslide" src="images/3.jpg" alt="img">  
         <img class="slides" src="images/1.jpg" alt="img">  
         <img class="slides" src="images/2.jpg" alt="img">  
         <img class="slides" src="images/3.jpg" alt="img">  
         <img class="slides" id="firstslide" src="images/1.jpg" alt="img">          
       </div>  
     </div>  
     <button class="button" id="prev">PREV</button>  
     <button class="button" id="next">NEXT</button>  
     <script src="/app.js"></script>  

	
		<%@include file="jsp/footer.jsp" %>
		<script type="text/javascript" src="js/index.js"></script>
</div>
</body>
</html>