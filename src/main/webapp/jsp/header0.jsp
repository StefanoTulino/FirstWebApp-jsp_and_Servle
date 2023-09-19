<%-- 
<!-- SITO INSTA: webdevlessons -->
<!-- NON FUNZIONA(USO POI DI JQUERY): https://www.codewithrandom.com/2022/03/21/bootstrap-4-navbar-navbar-responsive-animation/ -->

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

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.css">


<!-- non funziona, modifica del codice in formato jQuery (SE LO SI VUOLE FAR FUNZIONARE, RIFARE
JS!!!!!!!!!!!!!!-->
<script>
	function test(){
		var tabsNewAnim= document.getElementById('navbarSupportedContent');
		/* var selectorNewAnim= ${'#navbarSupportedContent'}.find('li').length; */
		var activeItemNewAnim= tabsNewAnim.find('.active');
		var activeWidthNewAnimWidth= activeItemNewAnim.innerWidth();
		var activeWidthNewAnimHeight= activeItemNewAnim.innerHeight();
		var itemPosNewAnimTop= activeItemNewAnim.position();
		var itemPosNewAnimLeft= activeItemNewAnim.position();
		
		
		tabsNewAnim.addEventListener("click","li",function(events) {
				tabsNewAnim.addClass('active');
			})
		
	}


</script>




<style>

	@import url('https://fonts.googleapis.com/css?family=Roboto');
	
	body{
	font-family: 'Roboto', sans-serif;
	}
	
	* {
	margin: 0;
	padding: 0;
	}
	
	i {
	margin-right: 10px;
	}
	
	/*----------bootstrap-navbar-css------------*/
	
	.navbar-logo{
	padding: 15px;
	color: #fff;
	}
	
	.navbar-mainbg{
	background-color: #5161ce;
	padding: 0px;
	}
	
	#navbarSupportedContent{
	overflow: hidden;
	position: relative;
	}
	
	#navbarSupportedContent ul{
	padding: 0px;
	margin: 0px;
	}
	
	#navbarSupportedContent ul li a i{
	margin-right: 10px;
	}
	#navbarSupportedContent li {
	list-style-type: none;
	float: left;
	}
	
	#navbarSupportedContent ul li a{
	color: rgba(255,255,255,0.5);
	/* text-decoration: none; */
	font-size: 15px;
	display: block;
	padding: 20px 20px;
	transition-duration:0.6s;
	transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
	position: relative;
	}
	
	#navbarSupportedContent>ul>li.active>a{
	color: #5161ce;
	background-color: transparent;
	transition: all 0.7s;
	}
	
	#navbarSupportedContent a:not(:only-child):after {
	content: "f105";
	position: absolute;
	right: 20px;
	top: 10px;
	font-size: 14px;
	font-family: "Font Awesome 5 Free";
	display: inline-block;
	padding-right: 3px;
	vertical-align: middle;
	font-weight: 900;
	transition: 0.5s;
	}
	
	#navbarSupportedContent .active>a:not(:only-child):after {
	transform: rotate(90deg);
	}
	
	.hori-selector{
	display:inline-block;
	position:absolute;
	height: 100%;
	top: 0px;
	left: 0px;
	transition-duration:0.6s;
	transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
	background-color: #fff;
	border-top-left-radius: 15px;
	border-top-right-radius: 15px;
	margin-top: 10px;
	}
	
	.hori-selector .right,
	.hori-selector .left{
	position: absolute;
	width: 25px;
	height: 25px;
	background-color: #fff;
	bottom: 10px;
	}
	
	.hori-selector .right{
	right: -25px;
	}
	
	.hori-selector .left{
	left: -25px;
	}
	
	.hori-selector .right:before,
	.hori-selector .left:before{
	content: '';
	position: absolute;
	width: 50px;
	height: 50px;
	border-radius: 50%;
	background-color: #5161ce;
	}
	
	.hori-selector .right:before{
	bottom: 0;
	right: -25px;
	}
	
	.hori-selector .left:before{
	bottom: 0;
	left: -25px;
	}
	
	@media(min-width: 992px){
	.navbar-expand-custom {
	-ms-flex-flow: row nowrap;
	flex-flow: row nowrap;
	-ms-flex-pack: start;
	justify-content: flex-start;
	}
	
	.navbar-expand-custom .navbar-nav {
	-ms-flex-direction: row;
	flex-direction: row;
	}
	
	.navbar-expand-custom .navbar-toggler {
	display: none;
	}
	
	.navbar-expand-custom .navbar-collapse {
	display: -ms-flexbox!important;
	display: flex!important;
	-ms-flex-preferred-size: auto;
	flex-basis: auto;
		}
	}
	
	@media (max-width: 991px){
	#navbarSupportedContent ul li a{
	padding: 12px 30px;
		}
	.hori-selector{
	margin-top: 0px;
	margin-left: 10px;
	border-radius: 0;
	border-top-left-radius: 25px;
	border-bottom-left-radius: 25px;
		}
	.hori-selector .left,
	.hori-selector .right{
	right: 10px;
		}
	.hori-selector .left{
	top: -25px;
	left: auto;
		}
	.hori-selector .right{
	bottom: -25px;
		}
	.hori-selector .left:before{
	left: -25px;
	top: -25px;
		}
	.hori-selector .right:before{
	bottom: -25px;
	left: -25px;
		}
	}
	
</style>


</head>
<body>

	<nav class="navbar navbar-expand-custom navbar-mainbg">
		<a class="navbar-brand navbar-logo" href="#">Navbar</a>
		<button class="navbar-toggler" aria-controls="navbarSupportedContent"
			aria-expanded="false" aria-label="Toggle navigation">
			<i class="fas fa-bars text-white"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<div class="hori-selector">
					<div class="left"></div>
					<div class="right"></div>
				</div>
				<li class="nav-item"><a class="nav-link" href="#"><i
						class="fas fa-tachometer-alt"></i>Dashboard</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="javascript:void(0);"><i class="far fa-address-book"></i>Address
						Book</a></li>
				<li class="nav-item"><a class="nav-link"
					href="javascript:void(0);"><i class="far fa-clone"></i>Components</a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="javascript:void(0);"><i class="far fa-calendar-alt"></i>Calendar</a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="javascript:void(0);"><i class="far fa-chart-bar"></i>Charts</a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="javascript:void(0);"><i class="far fa-copy"></i>Documents</a>
				</li>
			</ul>
		</div>
	</nav>



</body>
</html> --%>