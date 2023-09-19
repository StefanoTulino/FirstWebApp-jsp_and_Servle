<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@include file="header.jsp" %>
 
 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Page1</title>

		<!-- BOOTSTRAP -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		 
		<!-- Libreria per le immagini Font AweSome-->
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
		
		<link rel="stylesheet" type="text/css" href="css/page1.css">
	</head>
		<body>
			<div id="contaneir" class="contaneir">
			
				<h4>In questa pagina useremo JS per manipolare il DOM(create,insert,replace of element)
					ed alcune istruzioni Js che riguardano "window"</h4>
					<br>
					<ul id="list">
					<li id="elementList1">Ciao1</li>
					<li id="elementList2">Ciao2</li>
					<li>Ciao3</li>
					</ul>
					
					<br>
					 <button id="btnRemoveElement" onclick="removeChildElement()">Click me</button> 
					<br>
					<br>
					<div class="insertElement" id="insertElement">
						<span id="childElement">foo bar</span>
					</div>
					
					<button id="btnRemoveElement" onclick="reloadPage()">Reload after 2 seconds</button>
			</div>
	
	
	<!-- SE INSERISCO IL FOOTER MI VA A SCATTI, PROBLEMA STRANO -->
		<%-- <%@include file="footer.jsp"%> --%>
	 
    <script type="text/javascript" src="js/page1.js"></script>
	</body>
</html>