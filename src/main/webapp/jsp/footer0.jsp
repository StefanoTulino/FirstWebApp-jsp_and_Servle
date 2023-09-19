<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
<title>Page</title>

<!-- Libreria per le immagini Font AweSome-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>



<style>
* {  
   margin: 0;  
   padding: 0;  
   box-sizing: border-box;
  }  
  
footer {
position: relative;
background-color: #027b9a;
width: 100%;
margin-top:5%;
bottom: 0;
}


 .pCopryright  {
	margin-top:2%;
	text-align:center;
	color:white;
}



#menu-company {
	/*Evita i punti */
	list-style: none;
}

#menu-company a{
	color:white;
	text-decoration: none;
}


#menu-company a:hover{
	color:red;
}


.footer-col{
   width: 25%;
   padding: 0 15px;
}

.footer-col h4{
	font-size: 18px;
	color: black;
	text-transform: capitalize;
	margin-bottom: 15px;
	margin-top:2%;
	font-weight: 500;
	position: relative;
}

.footer-col h4::before{
	content: '';
	position: absolute;
	left:0;
	bottom: -10px;
	background-color: #e91e63;
	height: 2px;
	box-sizing: border-box;
	width: 50px;
}




.footer-col .social-links a{
	display: inline-block;
	height: 40px;
	width: 40px;
	background-color: rgba(255,255,255,0.2);
	margin:0 10px 10px 0;
	text-align: center;
	line-height: 40px;
	border-radius: 50%;
	color: #ffffff;
	transition: all 0.5s ease;
}
.footer-col .social-links a:hover{
	color: #24262b;
	background-color: #ffffff;
}

</style>


</head>
<body>
	<footer>
		<div class="container">
			<div class="row">
				<div class="footer-col">
					<h4>company</h4>
					<ul id="menu-company">
						<li><a href="#">Page1</a></li>
						<li><a href="#">Services</a></li>
						<li><a href="#">Blog</a></li>
					</ul>
				</div>

				<div class="footer-col">
					<h4>Get Help</h4>
					<ul id="menu-company">
						<li><a href="#">FAQ</a></li>
						<li><a href="#">shopping</a></li>
						<li><a href="#">returns</a></li>
						<li><a href="#">order status</a></li>
						<li><a href="#">payment options</a></li>
					</ul>
				</div>

				<div class="footer-col">
					<h4>Online Shop</h4>
					<ul id="menu-company">
						<li><a href="#">watch</a></li>
						<li><a href="#">bag</a></li>
						<li><a href="#">shoes</a></li>
						<li><a href="#">dress</a></li>
					</ul>
				</div>

				<div class="footer-col">
					<h4>Follow Us</h4>
					<div class="social-links">
						<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
							class="fab fa-twitter"></i></a> <a href="#"><i
							class="fab fa-instagram"></i></a> <a href="#"><i
							class="fab fa-linkedin-in"></i></a>
					</div>

				</div>
			</div>
		</div>

		<div>
			<p class="pCopryright">©2021-22. |CodeWith Random | All rights reserved.</p>
		</div>
	</footer>
</body>
</html>