<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<title>복지자 참여 내용 확인하기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/dajoin.css" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="./css/view.css" />
<style>
h1{text-align:center}
.wb{border-collapse:collapse;}
textarea{width:100%}
#qav_head {
    background: #f3f3f3;
    border: 1px solid #dedede;
    padding: 10px 20px;
    margin-top: 15px;
}
.vbo_head {
  display:block;
    position: relative;
    padding: 0 0 10px;
    width: auto;
    border-bottom: 1px solid #eceff3;
    line-height: 1.5em;
    margin-bottom: 10px;
}
.matchbtn{
	
}

</style>
<script src="./js/jquery-3.3.1.js"></script>
<script src="./js/match.js"></script>
<script>
	
	$(document).ready(function(){

		matchingbtn("wrSendMatch.net");
		
	});
	
</script>


</head>
<body>
<%@ include file="../../header/Header.jsp" %>
		<c:set var="bd" value="${boardDetail}"/>
		
	<header id="qav_head" class="vbo_head">
			<h2>▶${bd.wbsub}</h2>
		
	
			<div style="padding:10px;"> ${bd.wname} /${bd.wbdate } /조회 ${bd.wbreadcount}</div>
	</header>
	<c:if test="${sessionScope.user == '봉사자' || sessionScope.id == 'admin'}">
		<form class="match-form" method="post" action="wrSendMatch.net">
			<input type="hidden" class="boardNum" name="boardNum" value="${bd.wbnum}">
			<input type="hidden" class="requestMB" name="requestMB" value="${sessionScope.id}">
			<input type="hidden" class="responseMB" name="responseMB" value="${bd.wid}">
			<input type="hidden" class="choiceVal" name="choiceVal" value="choice">
			<input type="submit" class="button matchbtn" value="매칭하기">
		</form>
	</c:if>
	<br>
	<hr>
		<table class="wb" border="1" >
		<tr><th colspan="2">복지자 정보</th>
	</tr>
	<tr>
			<td>복지가능 요일</td>
			<td>${bd.wbweek}</td>
	</tr>
		<tr>
			<td>복지가능 시간</td>
			<td>${bd.wbpostime}</td>
		</tr>
		<tr>
			<td>복지가능 지역</td>
			<td>${bd.wbarea}</td>
		</tr>
		<tr>
			<td>종교</td>
			<td>${bd.wbrelig}</td>
		</tr>
		<tr>
			<td>봉사자 성별</td>
			<td>${bd.wbgenv}</td>
		</tr>
		<tr>
			<td>희망 복지</td>
			<td>${bd.wbhope}</td>
	</tr>
	<tr>
		
			<td>희망 봉사가 경력</td>
			<td>${bd.wbhopeve}</td>
			</tr>
		</table>

			<pre>${bd.wbcont}</pre>
			<c:if test="${!empty boardDetail.wbfile}">
			<img src="./boardupload/${boardDetail.wbfile}" width="300px" height="300px">
			</c:if>
		<h5>첨부 파일 다운로드</h5>
		<hr>
			<c:if test="${!empty boardDetail.wbfile}">
			
				<img src="./images/down.png" width="10px">
				<a href="./wboardFileDownAction.wb?filename=${boardDetail.wbfile}">
					${bd.wbfile}</a>
			
			</c:if>

			
			<hr>
			<%-- <%@ include file="/board/WBoard/form5.jsp" %>--%>
			<table style="height:28px; ">
				<tr >
			<td colspan="2" class="center"  >
				<c:if test="${((sessionScope.user == '복지자') && (sessionScope.id == boardDetail.wid)) || (sessionScope.id == 'admin')}">
					<input type="button" onclick="location.href='./wboardModifyView.wb?num=${boardDetail.wbnum}'" style="background:#5D5D5D; color:white; border:1; height:28px; line-height: 28px;" value="수정" >&nbsp;&nbsp;
					
					<input type="button" onclick="location.href='./wboardDelete.wb?num=${boardDetail.wbnum}'" style="background:#5D5D5D; color:white; border:1; height:28px; line-height: 28px;" value="삭제">&nbsp;&nbsp;
				</c:if>
				<input type="button" onclick="location.href='./wboardList.wb'" style="background:#5D5D5D; color:white; border:1; height:28px; line-height: 28px;" value="목록">&nbsp;&nbsp;
				
			</td>
		</tr>
	</table>
	
</body>
</html>