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
		<title>Quiz</title>
		
		<link rel="stylesheet" type="text/css" href="css/quiz.css">
	</head>
		<body>
			<div class="quiz-container" id="quiz">
				<div class="quiz-header">
					<h2 id="question">Question is loading...</h2>
					<ul>
						<li>
							<input type="radio" name="answer" id="a" class="answer" />
							<label for="a" id="a_text">Answer...</label>
						</li>
						<li>
							<input type="radio" name="answer" id="b" class="answer" />
							<label for="b" id="b_text">Answer...</label>
						</li>
						<li>
							<input type="radio" name="answer" id="c" class="answer" />
							<label for="c" id="c_text">Answer...</label>
						</li>
						<li>
							<input type="radio" name="answer" id="d" class="answer" />
							<label for="d" id="d_text">Answer...</label>
						</li>
					</ul>
				</div>
				<button id="submit">Submit</button>

			
			<script type="text/javascript" src="js/quiz.js"></script>
			</div>
			
		<%-- SE INSERISCO QUI IL FOOTER, LA PAGINA PERò NON MI SCENDE, VEDERE PERCHè
		<%@include file="footer.jsp"%> --%>
	</body>
</html>