<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="./css_sm/form.css" rel="stylesheet">
<%@ include file="../../header/Header.jsp" %>
<form action="./NTBoardAddAction.nt" method="post"
	enctype="multipart/form-data" name="boardform">
	<table>
		<tr class="center">
			<th colspan="2">공지 게시판 - writer 페이지</th>
		</tr>
		<tr>
			<td><div>글쓴이</div></td>
			<td>
				<input name="ANAME" id="aname" readOnly
					type="text" size="10" maxlength="30" value="admin">
			</td>
		</tr>
		<tr>
			<td><div>제목</div></td>
			<td><input name="NTSUB" id="ntsub"
					type="text" size="50" maxlength="100" value="">
		</tr>
		<tr>
			<td><div>내용</div></td>
			<td><textarea name="NTCONT" id="ntcont" 
						cols="67" rows="15"></textarea>
			</td>
		</tr>
		<tr>
			<td><div>파일 첨부</div></td>
			<td><input type="file" id="upfile1" name="NTFILES"></td>
		</tr>
		
		<tr class="center">
			<td colspan="2" class="h30 lime">
				<input type=submit value="등록">
				<input type=reset value="취소" onClick="history.go(-1)">
			</td>
		</tr>
	</table>
</form>
<%@ include file="../../footer/Footer.jsp" %>