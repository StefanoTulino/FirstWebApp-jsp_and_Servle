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

<link rel="stylesheet" type="text/css" href="css/footer.css">
</head>

<body>
	<footer>
		<div class="container">
			<div class="row">
				<div class="footer-col">
					<h4>Other Pages</h4>
					<ul id="menu-company">
						<li><a href="Page1Servlet">Page1</a></li>
						<li><a href="Page2Servlet">Page2</a></li>
						<li><a href="#">Blog</a></li>
					</ul>
				</div>

				<div class="footer-col">
					<h4>Get Help</h4>
					<ul id="menu-company">
						<li><a href="ContactServlet">Contact</a></li>
						<li><a href="#">FAQ</a></li>
						<!-- <li><a href="#">returns</a></li>
						<li><a href="#">order status</a></li>
						<li><a href="#">payment options</a></li> -->
					</ul>
				</div>

				<div class="footer-col">
					<h4>Online Shop</h4>
					<ul id="menu-company">
						<li><a href="QuizServlet">Quiz</a></li>
						<!-- <li><a href="#">bag</a></li>
						<li><a href="#">shoes</a></li>
						<li><a href="#">dress</a></li> -->
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