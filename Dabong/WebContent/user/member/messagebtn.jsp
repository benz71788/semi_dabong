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
	.approve-color{
		background-color: green;
	}
</style>
<script>
	$(document).ready(function(){
		
		var stateUrl = "";
		var messageUrl = "";
		var messageData = "";
		if('${sessionScope.user}' == '봉사자'){
			stateUrl = "vtSendMatch.net";
			messageUrl = "vtMatchProcess.net";
		} else {
			stateUrl = "wrSendMatch.net";
			messageUrl = "wrMatchProcess.net";
		}
		
		$('.approvebtn').click(function(){
			messageData = $(this).val();
			messageBtn(this, messageData, messageUrl);
		});
		
		$('.rejectbtn').click(function(){
			messageData = $(this).val();
			messageBtn(this, messageData, messageUrl);
		})
		
		
	});
</script>
</head>
<body>
	<div class="container gender-container">
		<c:forEach var="list" items="${mesList}">
			<table class="messageList">
				<tr>
					<td><input type='hidden' class="board-num" value="${list.mNum}">${list.mNum}
						<a href="./WBoardView.wb?num=${list.boardNum}" class="requestMes">${list.requestMb}님이 매칭을 원하십니다.</a></td>
					<c:if test="${list.matching == '매칭완료'}">
						<td><button class="approvedbtn approve-color" value="mNum=${list.mNum}&boardNum=${list.boardNum}&requestMB=${list.requestMb}&responseMB=${sessionScope.id}&state=cancle">승인</button></td>
						<td><button class="canclebtn cancle-color" value="mNum=${list.mNum}&boardNum=${list.boardNum}&requestMB=${list.requestMb}&responseMB=${sessionScope.id}&state=cancle">취소</button></td>
					</c:if>
					<c:if test="${list.matching != '매칭완료'}">
						<td><button class="approvebtn approving-color" value="mNum=${list.mNum}&boardNum=${list.boardNum}&requestMB=${list.requestMb}&responseMB=${sessionScope.id}&state=approve">수락</button></td>
						<td><button class="rejectbtn reject-color" value="mNum=${list.mNum}&boardNum=${list.boardNum}&requestMB=${list.requestMb}&responseMB=${sessionScope.id}&state=reject">거절</button></td>
					</c:if>
					
				</tr>
			</table>
		</c:forEach>
		
	</div>
</body>
</html>