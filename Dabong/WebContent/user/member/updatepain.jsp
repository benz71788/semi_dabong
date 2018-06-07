<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./css/w3schools.css">
<link href="./css/dajoin.css" rel="stylesheet">
<script src="./js/jquery-3.3.1.js"></script>
<style>
	.w3-button{
			margin: 50px 60px;
			padding:70px 0px;
			width: 200px;
			height: 200px;
			}
</style>
</head>
<body>
	<c:if test="${sessionScope.user=='복지자'}">
		<div class="container user-container">
			<h4 class="chapter">Chapter 4 - 1.</h4>
			<h1 class="select-name">당신의 불편한 부위?</h1><br><br>
			<a href="updateKey.net?uppain=불편" class="w3-button w3-light-grey">불편</a>
			<a href="updateKey.net?uppain=장애" class="w3-button w3-light-grey">장애</a>
		</div>
	</c:if>
	<c:if test="${sessionScope.user=='봉사자'}">
		<jsp:forward page="/updateKey.net"/>
	</c:if>
</body>
</html>