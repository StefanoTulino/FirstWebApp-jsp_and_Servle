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
<title>Profilo</title>

<!-- BOOTSTRAP -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
 
<!-- Libreria per le immagini Font AweSome-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>

<link rel="stylesheet" type="text/css" href="css/profilo.css">


<!-- NON PRENDE LA FUNCTION QUI, QUINDI RISCRITTA SOPRA -->
<script type="text/javascript" src="js/profilo.js"></script>

<!-- BEFORE -->
 <script>
function clickImageProfile1 (){
	var b= document.getElementById('formImgButton');
	b.style.display="block";
}
</script>

</head>

<body>
	<div class="contaneir">

		<div class="card">
			<div class="card_background_img"></div>
			<c:if test="${user.immagineByte!=null}">
				<div class="card_profile_img">
					<img src="data:image/jpg;base64,${user.immagineByte}" width="150px"
						height="100px" />
				</div>
			</c:if>

			<c:if test="${user.immagineByte==null}">
				<div class="card_profile_img">
					<!-- BASE PER VISUALIZZARE IMMAGINI CONVERTITE IN Base64
				<img src="data:image/jpg;base64, [base_64_String_goes_here] " /> -->
					<img src="images/immagineUserDefault.png" width="150px"
						height="100px" />
				</div>
			</c:if>

			<div class="user_details">
				<h3>${user.id}</h3>
				<p>${user.nome}</p>
			</div>
			<div class="card_count">
				<div class="count">
					<div class="fans">
						<h3>2.4M</h3>
						<p>Fans</p>
					</div>
					<div class="following">
						<h3>202</h3>
						<p>Followings</p>
					</div>
					<div class="post">
						<h3>552</h3>
						<p>Posts</p>
					</div>
				</div>
				<div class="btn">
					<i class="fas fa-user-edit fa-3x" id="imgButton"
						onclick=" document.getElementById('formImgButton').style.display='block' "></i>
				</div>
			</div>
		</div>




		<div class="formImgButton" id="formImgButton" style="display: none">
			<form class="modal-content animate" action="insertImgProfile"
				method="POST" enctype="multipart/form-data">
				<!-- Create an image container -->
				<div class="titleModal" style="background-color: #4CAF50;">
					<span
						onclick="document.getElementById('formImgButton').style.display='none'"
						class="close" title="Close">&times;</span>
					<h4 style="text-align: center">Aggiungi Immagine</h4>
				</div>

				<!-- Create a form container -->
				<div class="containerFormLogin">
					<br> <input type="text" id="idProfilo" name="idProfilo">
					<br> <input type="file" id="img" name="img"> <br>

					<button type="submit" name="btnLoginForm">Add</button>
				</div>
			</form>
		</div>


		<%@include file="footer.jsp"%>
	</div>
</body>
</html>