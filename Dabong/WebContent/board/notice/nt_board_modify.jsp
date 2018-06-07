<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="./css_sm/form.css" rel="stylesheet">
<script>
	$(document).ready(function(){
		
	})
	
</script>
<body>
<jsp:include page="../../header/Header.jsp" />

	<form action="./NTBoardModifyAction.nt" method="post" name="boardform">
	<input type="hidden" name="num" value="${param.num}">
		<table>
			<tr class="center">
				<th colspan="2">공지 게시판 - 수정</th>
			</tr>
			<tr>
				<td><div>글쓴이</div></td>
				<td>
					<input type="text" name="ANAME" id="aname" maxlength="30" value="admin" readOnly>
				</td>
			</tr>
			<tr>
				<td><div>제목</div></td>
				<td><input name="ntsub" id="ntsub"
					type="text" size="50" maxlength="100" value="${boardData.ntsub}">
			</tr>
			<tr>
				<td><div>내용</div></td>
				<td><textarea name="ntcont" id="ntcont" 
						cols="67" rows="15">${boardData.ntcont}</textarea>
				</td>
			</tr>
			<tr>
				<td><div>기존 파일</div></td>
					<td>
					<input type="hidden" id="upfile" name="ntfiles" value="${boardData.ntfiles}">${boardData.ntfiles}
					</td>
			</tr>
			<tr>
				<td><div>수정 파일</div></td>
					<td>
					<input type="file" id="upfile1" name="ntfiles1">
					</td>
			</tr>
			
			
		
		<tr class="center">
			<td colspan="2" class="h30 lime">
				<input type="submit" value="등록">
				<input type="reset"	value="취소"	onClick="history.go(-1)">
			</td>
		</tr>
		</table>
	</form>
<jsp:include page="../../footer/Footer.jsp" />
</body>
</html>