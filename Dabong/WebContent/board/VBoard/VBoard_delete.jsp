<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>봉사자 참여 내용 삭제하기</title>

</head>
<body>
	<%@ include file="../../header/Header.jsp" %>
	<br>
	<br>
	<form name="deleteForm" action="./vboardDeleteAction.vb" method="post">
		<input type="hidden" name="num" value="${param.num}">
		<table border="1" style="margin:auto;">
			<tr>
				<th>글 비밀번호</th>
				<td>
					<input  type="password" name="vpass" id="vpass">
				</td>
			</tr>
			<tr>
				<td colspan=2 class="h30 center lime" >
					<input style="background:#5D5D5D; color:white; border:0; height:28px; line-height: 28px;" type="submit" value="삭제">
					<input style="background:#5D5D5D; color:white; border:0; height:28px; line-height: 28px;" type="button" value="취소" onClick="history.go(-1)">
				</td>
			</tr>
		</table>
	</form>
		<%@ include file="../../footer/Footer.jsp" %>
</body>
</html>