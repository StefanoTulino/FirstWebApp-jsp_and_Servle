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
		<title>Page2</title>

		<!-- BOOTSTRAP -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		 
		<!-- Libreria per le immagini Font AweSome-->
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
		
		<link rel="stylesheet" type="text/css" href="css/page2.css">
	</head>
		<body>
			<div class="contaneir">
			
				<h4>Continuo sull'oggetto windows in Js e stilizzazione di alcuni oggetti di questa
				 pagina attraverso Pseudo Elements in Css</h4>
					<br>	
					<button id="btnGoBack" onclick="returnPrecPage()">Torna Indietro</button>
					<hr>
				
					<h5>Oggetti con pseudo-elements Css</h5>
					<p id="p1">Ciawniofcwjn  soidvncwdsaoikl wnjldsnc
					fwejknfcdkj fwskjdnc</p>
					
					<p id="p2"> wnjldsncfwejknfcdkj fwskjdnc</p>
					
					<p id="p3"> Abcdsfregf3wf2wm fwskjdnc</p>
					
					<ul id="list1">
						<ol id="ol1">1</ol>
						<ol id="ol2">2</ol>
						<ol id="ol3">3</ol>
					</ul>
					
					<div class="imgSetting">
						<img id="img1" src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Friedrich-Johann-Justin-Bertuch_Mythical-Creature-Dragon_1806.jpg/640px-Friedrich-Johann-Justin-Bertuch_Mythical-Creature-Dragon_1806.jpg"
							width="100" height="50" />
						
						<!-- COMMENTATA SOLAMENTE PERCHè MI COPRE IL RESTO DELLE COSE
						<img id="img2" src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Friedrich-Johann-Justin-Bertuch_Mythical-Creature-Dragon_1806.jpg/640px-Friedrich-Johann-Justin-Bertuch_Mythical-Creature-Dragon_1806.jpg"
							width="200" height="150" /> -->
						
						<img id="img3" src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Friedrich-Johann-Justin-Bertuch_Mythical-Creature-Dragon_1806.jpg/640px-Friedrich-Johann-Justin-Bertuch_Mythical-Creature-Dragon_1806.jpg"
							width="300" height="250" />	
					</div>
								
			</div>
	
    <script type="text/javascript" src="js/page2.js"></script>
	</body>
</html>