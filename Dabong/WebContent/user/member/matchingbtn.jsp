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
<script src="./js/match.js"></script>
<style>
	.w3-button{
			border: 1px solid #1e90ff;
			margin: 50px 60px;
			padding:70px 0px;
			width: 200px;
			height: 200px;
			}
</style>
<script>
	$(document).ready(function(){
		sendUrl = "";
		if('${sessionScope.user}' == '봉사자'){
			sendUrl = "vtSendMatch.net";
			$('form').attr('action', sendUrl);
		} else {
			sendUrl = "wrSendMatch.net";
			$('form').attr('action', sendUrl);
		}
		
		matchingbtn(sendUrl);
	});
</script>
</head>
<body>
	<div class="container gender-container">
		<form class="match-form" method="post">
			<input type="hidden" class="boardNum" name="boardNum" value="6">
			<input type="hidden" class="requestMB" name="requestMB" value="admin">
			<input type="hidden" class="responseMB" name="responseMB" value="qwer">
			<input type="hidden" class="choiceVal" name="choiceVal" value="choice">
			<input type="submit" class="w3-button matchbtn" value="매칭">
		</form>
	</div>
	
		<c:if test="${ bd.wbvisit == 0}">
				<td style="text-align:center">
				<input style="background:#5D5D5D; color:white; border:1; height:29px; line-height: 28px; width:67px;" type="button" value="매칭하기" id="suc2">
				</td>
				</c:if>
	<c:if test="${ bd.wbvisit == 0}">
				<td style="text-align:center">
				<input style="border:1; background:white; color:#5D5D5D; height:29px; line-height: 28px; width:60px;" type="button" value="진행중" id="suc1">
				</td>
			</c:if>
	<c:if test="${ bd.wbvisit == 0}">
				<td style="text-align:center">
				<input style="border:1; background:white; color:#5D5D5D; height:29px; line-height: 28px; width:54px;" type="button" value="완료" id="suc">
				</td>
			</c:if>	
</body>
</html>