<!-- PERMETTE DI STAMPARE TUTTI GLI UTENTI, INCLUSE LE LORO IMMAGINI -->


<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

 <%@include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
<title>Profilo</title>

<!-- BOOTSTRAP -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
 
<!-- Libreria per le immagini Font AweSome-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>


<!-- NON PRENDE LA FUNCTION QUI, QUINDI RISCRITTA SOPRA -->
<script type="text/javascript" src="js/profilo.js"></script>



</head>
<body>



<div class="contaneir">
	<c:forEach items="${listaUtenti}" var="user">
		<c:out value="${user.id}"></c:out>
		<c:out value="${user.nome}"></c:out>
		<c:if test="${user.immagineByte!=null }">
			<!-- BASE PER VISUALIZZARE IMMAGINI CONVERTITE IN Base64
			<img src="data:image/jpg;base64, [base_64_String_goes_here] " /> -->
			<img src="data:image/jpg;base64,${user.immagineByte}" width="150px" height="100px" />
		</c:if>
		<c:if test="${user.immagineByte==null }">
			<h4>ciao</h4>
		</c:if>
		<br>
	
	</c:forEach>

</div> --%>