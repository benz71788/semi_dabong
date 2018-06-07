<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./css/css_sm/form.css" rel="stylesheet">
</head>
<body>
<%@ include file="../../header/Header.jsp" %>
		<c:set var="bd" value="${boardDetail}"/>
		<h2>공지 게시판 - view페이지</h2><br>
		<hr>
		<pre>${bd.ntsub}									글쓴이  ${bd.aname}        ${bd.ntdate} 	조회수 ${bd.ntvisit}</pre>
		<hr>
			<div class="down">첨부된 파일 : 
			<c:if test="${!empty bd.ntfiles}">
					<a href="./NTBoardFileDown.nt?filename=${bd.ntfiles}">
					${bd.ntfiles}</a>
			</c:if></div>
		<table border="1">
			<tr>
			</tr>
			<tr>
				<td>
					<pre>${bd.ntcont}</pre>
				</td>
			</tr>
		</table>
		<div id="choice">
			<c:if test="${bd.aname == 'admin' || id == 'admin'}">
				<a href="./NTBoardModifyView.nt?num=${bd.ntnum}">
				수정</a>&nbsp;&nbsp;
				
				<a href="./NTBoardDelete.nt?num=${bd.ntnum}">
				삭제</a>&nbsp;&nbsp;
			</c:if>
				
				<a href="./NTBoardList.nt">목록</a>&nbsp;&nbsp;
		</div>
<%@ include file="../../footer/Footer.jsp" %>
</body>
</html>