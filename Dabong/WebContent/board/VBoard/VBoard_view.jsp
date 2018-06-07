<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="./css/dajoin.css" rel="stylesheet">
 <link type="text/css" rel="stylesheet" href="./css/view.css" />
<title>봉사자 참여 내용 확인하기</title>
<script src="./js/jquery-3.3.1.js"></script>
<script src="./js/match.js"></script>
<script>
	$(document).ready(function(){

		matchingbtn("vtSendMatch.net");
		
	});
</script>

</head>
<body>
<%@ include file="../../header/Header.jsp" %>
<br>
<h1>봉사자 참여</h1>
<table class="name">
<tr class="title">
		<c:set var="bd" value="${boardDetail}"/>
<td>
<h2 class="h2_style">${bd.vbsub}</h2>
</td>
<td>
<h4 class="h4_style">${bd.vbdate } </h4>
</td>
</tr>
<tr>
<td>
<h4  class="h4_style1">${bd.vname} </h4>
</td>
<td>
<h4 class="h4_style">조회 ${bd.vbreadcount}</h4>
</td>
</tr>
</table>
	<hr class="my-hr1">
	<br>
		<table class="blueone">
		<tr><th>봉사자 정보</th>
	</tr>
	<tr>
			<td>봉사가능 요일</td><td>봉사가능 시간</td><td>봉사가능 지역</td><td>종교</td><td>봉사자 성격</td><td>봉사경험유무</td><td>봉사경험내용</td>
	</tr>
		<tr>
			<td>${bd.vbweek}</td><td>${bd.vbpostime}</td><td>${bd.vbarea}</td><td>${bd.vbrelig}</td><td>${bd.vbchrac}</td>
			<td>${bd.vbexper}</td><td>${bd.vbexcont}</td>
		</tr>
		</table>
	
		<br>
		<br>
		<br>
		<table class="name">
		<tr>
		<td>
		<div  class="middle">
			<pre>${bd.vbcont}</pre>
		<h5>첨부 파일 다운로드</h5>
			<c:if test="${!empty boardDetail.vbcerti}">
			
				<img src="./images/down.png" width="10px">
				<a href="./vboardFileDownAction.vb?filename=${boardDetail.vbcerti}">
					${bd.vbcerti}</a>
			
			</c:if>
				</div>
			<br>
			<br>
			<br>
		</td>
		</tr>
		</table>
		<hr class="my-hr1">
		<c:if test="${sessionScope.user == '복지자' || sessionScope.id == 'admin'}">
			<form class="match-form" method="post" action='vtSendMatch.net'>
				<input type="hidden" class="boardNum" name="boardNum" value="${bd.vbnum}">
				<input type="hidden" class="requestMB" name="requestMB" value="${sessionScope.id}">
				<input type="hidden" class="responseMB" name="responseMB" value="${bd.vid}">
				<input type="hidden" class="choiceVal" name="choiceVal" value="choice">
				<center><input type="submit" class="button matchbtn" value="매칭하기"></center>
			</form>
		</c:if>
	<br>
			<table style="margin:auto;">
				
				<tr>
			<td colspan="2" class="center" >
				<c:if test="${((sessionScope.user == '봉사자') && (sessionScope.id == boardDetail.vid)) || (sessionScope.id == 'admin')}">
					<input type="button" onclick="location.href='./vboardModifyView.vb?num=${boardDetail.vbnum}'" class="bottom_button"  value="수정" >&nbsp;&nbsp;
					
					<input type="button" onclick="location.href='./vboardDelete.vb?num=${boardDetail.vbnum}'" class="bottom_button" value="삭제">&nbsp;&nbsp;
				</c:if>
				<input type="button" onclick="location.href='./vboardList.vb'" class="bottom_button" value="목록">&nbsp;&nbsp;
			</td>
		</tr>
	</table>
	<br>
		<br>
		<br>
		<br>
		<br>
		<br>
	
</body>
</html>