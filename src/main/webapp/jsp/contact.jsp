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
		<title>Contact</title>

		<!-- BOOTSTRAP -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		 
		<!-- Libreria per le immagini Font AweSome-->
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
		
		<link rel="stylesheet" type="text/css" href="css/contact1.css">

	</head>
		<body>
			<div class="contaneir">
				<h4>Form Richiesta Utente</h4>
				
				<form id="formRequest" action="formRequestClient" method="post">
					<input type="text" name="nome" id="nome" placeholder="Inserisci un nome">
						<br>
					<input type="radio" name="radio" id="radio" value="M">
					<label for="m">M</label>
					<input type="radio" name="radio" id="radio" value="F">
					<label for="f">F</label><br>
						<br>
						<!-- ADD NUOVI TAG HTML5(from Udemy) -->
						<input type="text" placeholder="Scegli dalla lista un valore"
							list="newTag1">
						<datalist id="newTag1">
							<option value="FL" label="Florida">
							<option value="WA" label="Washington">
							<option value="NY" label="New York">
						</datalist>
						<br>
						
						<label for="mese">Mese</label>
						<input type="month">
						<label for="settimana">Settimana</label>
						<input type="week">
						
						<br>
						<br>
						
					<label for="rangeLabel">Età:</label>
					<input type="range" name="range" id="range" min="18" max="100">
					 <p>Value: <span id="demo"></span></p>
						<br>
					<p><label for="w3review">Richiesta dell'utente:</label></p>
					<textarea rows="5" cols="40" name="textarea" id="textarea"></textarea>
						<br>
					<input type="submit" id="btnInvia" name="btnInvia" value="Send">
			
				</form>
			</div>
	
	
	<%@include file="footer.jsp"%>
	<script type="text/javascript" src="js/contact.js"></script>	
	</body>
</html>