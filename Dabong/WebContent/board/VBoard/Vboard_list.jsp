<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>봉사자 게시판</title>
<link type="text/css" rel="stylesheet" href="css/Vboard_list.css" />
<script src="./js/jquery-3.3.1.js"></script>
<script>
	$(document).ready(function() {
		if('${sessionScope.id}' == ""){
			location.href="login.net";
		}
		
		$('.processState').trigger("click");
	
		$("#show").click(function() {
			$(".page").toggle();
		});
		$("#show1").click(function() {
			$(".page1").show();
			$(".page2").hide();
			$(".page3").hide();
			$(".page4").hide();
			$(".page5").hide();
			
		});
		$("#show2").click(function() {
			$(".page2").show();
			$(".page1").hide();
			$(".page3").hide();
			$(".page4").hide();
			$(".page5").hide();
			
		});
		$("#show3").click(function() {
			$(".page3").show();
			$(".page2").hide();
			$(".page1").hide();
			$(".page4").hide();
			$(".page5").hide();
			
		});
		$("#show4").click(function() {
			$(".page4").show();
			$(".page2").hide();
			$(".page3").hide();
			$(".page1").hide();
			$(".page5").hide();
			
		});
		$("#show5").click(function() {
			$(".page5").show();
			$(".page2").hide();
			$(".page3").hide();
			$(".page4").hide();
			$(".page1").hide();
			
		});
	});
	
	function processMethod(boardnum, responsemb){
		var sendData = 'boardNum=' + boardnum 
				+ "&" + 'responseMB=' + responsemb;
		var processState = '.probtn' + boardnum;
		$.ajax({
			type:"POST",
			data: sendData,
			url: 'vtProcessState.net',
			success: function(result){
				if(result == 1){
					$(processState).css('background-color', 'grey');
					$(processState).val('완료');
				}
				
			}
		})
	}
</script>
</head>
<body>
	
	<%@ include file="../../header/Header.jsp" %>
	<br>
	<h1>봉사자 참여</h1>
	
	<div id="searchForm" style="text-align: center">
		<form action="vboardList.vb" method="get">
			<table style="width:100%" border="1">
				<tr>
					<th colspan="4"><strong>직접입력</strong> <select name="opt" size="1" style="height:28px; width:3; font-size:12px;" >

							<option value="0">제목</option>
							<option value="1">내용</option>
							<option value="2">제목+내용</option>
							<option value="3">글쓴이</option>

					</select>&nbsp;<input  style="height:28px;" type="text" size="20" name="condition" /><input
					style="background:#5D5D5D; color:white; border:0; height:28px; line-height: 28px;" 	type="submit" value="검색" /></th>

				</tr>


			</table>

		</form>
	<br>
		<button id="show" style="background:#5D5D5D; color:white; border:0; height:28px; line-height: 28px;">상세검색</button>
		<br>
		<br>

		<form  action="vboardList.vb" method="get" class="page" style="display: none">
			<table style="height:100px; width:100%;" border="1">
			
				
					<tr style="background-color:#D5D5D5;">
					<th><input type="radio"  id="show1"name="opt" value="4">가능요일</th> 
					<th><input type="radio" id="show2" name="opt" value="5">가능시간</th>
					<th><input type="radio" id="show3" name="opt" value="6">지역</th>
					<th><input type="radio" id="show4" name="opt" value="7">종교</th>
				</tr>
			
		

		
			
				<tr class="page1" style="display: none">
					<th colspan="5">
					<input type="radio" name="condition" value="월요일">월요일
						<input type="radio" name="condition" value="화요일">화요일 
						<input type="radio" name="condition" value="수요일">수요일 
						<input type="radio" name="condition" value="목요일">목요일 
						<input type="radio" name="condition" value="금요일">금요일 
						<input type="radio" name="condition" value="토요일">토요일
						<input type="radio" name="condition" value="일요일">일요일
						<input type="radio" name="condition" value="무관">무관</th>
				</tr>
			
		
		
			
				<tr class="page2" style="display: none">
					<th colspan="5">
					<input type="radio" name="condition" value="오전">오전 
					<input type="radio" name="condition" value="오후">오후 
					<input type="radio" name="condition" value="종일">종일 
					<input type="radio" name="condition" value="시간협의">시간협의
					</th>
				</tr>
			
		

		
		
				<tr class="page3" style="display: none">
					<th colspan="5">
						<input type="radio" name="condition" value="서울">서울 
						<input type="radio" name="condition" value="부산">부산
						<input type="radio" name="condition" value="대구">대구 
						<input type="radio" name="condition" value="인천">인천 
						<input type="radio" name="condition" value="광주">광주 
						<input type="radio" name="condition" value="대전">대전 
						<input type="radio" name="condition" value="울산">울산 
						<input type="radio" name="condition" value="세종">세종 
						<input type="radio" name="condition" value="경기">경기 
						<input type="radio" name="condition" value="강원">강원 
						<input type="radio" name="condition" value="충북">충북
						 <input type="radio" name="condition" value="충남">충남 
						 <input type="radio" name="condition" value="전북">전북 
						 <input type="radio" name="condition" value="전남">전남 
						 <input type="radio" name="condition" value="경북">경북 
						 <input type="radio" name="condition" value="경님">경남 
						 <input type="radio" name="condition" value="제주">제주
						 </th>
				</tr>
			
		
		
			
				<tr class="page4" style="display: none">
					<th colspan="5">
					<input type="radio" name="condition" value="기독교">기독교 
					<input type="radio" name="condition" value="이슬람교">이슬람교
						<input type="radio" name="condition" value="유대교">유대교 
						<input type="radio" name="condition" value="불교">불교 
						<input type="radio" name="condition" value="무교">무교</th>
				</tr>
				
			</table>
			<br>
			<input style="background:#5D5D5D; color:white; border:0; height:28px; line-height: 28px;"  type="submit" value="검색">
			<input style="background:#5D5D5D; color:white; border:0; height:28px; line-height: 28px;" type="reset" value="초기화">
		</form>

	</div>
	<br>
	<table style="border-collapse:collapse; width:100%">

		<tr class="title">
			<th width="8%"><div>번호</div></th>
			<th width="40%"><div>제목</div></th>
			<th width="19%"><div>작성자</div></th>
			<th width="25%"><div>날짜</div></th>
			<th width="8%"><div>조회수</div></th>
			<th width="10"><div>상태</div></th>
		</tr>
		<c:set var="num" value="${listcount-(spage-1) * 10}" />
		<c:forEach var="b" items="${boardlist}">
			<tr>
				<td><c:out value="${num}" /> <%-- num 출력 --%> <c:set var="num"
						value="${num-1}" /> <%-- num = num - 1 --%></td>
				<td>
					<div>
					
						<a href="./vboardDetailAction.vb?num=${b.vbnum}"> ${b.vbsub} </a>
					</div>
				</td>
				<td>
					<div>${b.vname}</div>
				</td>
				<td>
					<div>${b.vbdate}</div>
				</td>
				<td>
					<div>${b.vbreadcount}</div>
				</td>
				
				<td>
					<input type="submit" class="processState probtn${b.vbnum}" value="진행" onclick="processMethod('${b.vbnum}', '${b.vid}');">
				</td>
			</tr>
		</c:forEach>
		</table>
		<hr>
		<br>
		<form action="vboardWrite.vb" method="get" style="height:28px;">
			<table>
			<tr>
			<td>
			<c:if test="${sessionScope.user == '봉사자' || sessionScope.id == 'admin'}">
				<input style="background:#5D5D5D; color:white; border:0; height:28px; line-height: 28px;" type="submit" value="참여 등록하기"/>
			</c:if>
			</td>
			</tr>
			</table>
		</form>
		<br>
		<table>
		<tr  class="h30 lime center btn" style="color:#6799FF;">
		<c:if test="${null eq opt}">
		
			<td colspan=5><c:if test="${spage <= 1}">
					이전&nbsp;
				</c:if> <c:if test="${spage > 1}">
					<a href="./vboardList.vb?page=${spage-1}">이전</a>｜
				</c:if> <c:forEach var="a" begin="${startpage}" end="${endpage}">
					<c:if test="${a == spage}">
						${a}
					</c:if>
					<c:if test="${a != spage}">
						<a href="./vboardList.vb?page=${a}">${a}</a>
					</c:if>
				</c:forEach> <c:if test="${spage >= maxpage}">
					다음
				</c:if> <c:if test="${spage < maxpage}">｜
					<a href="./vboardList.vb?page=${spage + 1}">다음</a>
				</c:if></td>
				</c:if>
		<c:if test="${null ne opt}">
		
			<td colspan=5><c:if test="${spage <= 1}">
					이전&nbsp;
				</c:if> <c:if test="${spage > 1}">
					<a href="./vboardList.vb?page=${spage-1}&opt=${opt}&condition=${condition}">이전</a>｜
				</c:if> <c:forEach var="a" begin="${startpage}" end="${endpage}">
					<c:if test="${a == spage}">
						${a}
					</c:if>
					<c:if test="${a != spage}">
						<a href="./vboardList.vb?page=${a}&opt=${opt}&condition=${condition}">${a}</a>
					</c:if>
				</c:forEach> <c:if test="${spage >= maxpage}">
					다음
				</c:if> <c:if test="${spage < maxpage}">｜
					<a href="./vboardList.vb?page=${spage + 1}&opt=${opt}&condition=${condition}">&nbsp;다음</a>
				</c:if></td>
				</c:if>
				
				
				
		</tr>
		<!-- 레코드가 없으면 -->
		<c:if test="${listcount == 0}">
			<tr>
				<td colspan="3">봉사자 게시판</td>
				<td style="text-align: right"><font size=2>등록된 글이 없습니다.
				</font></td>
			</tr>
		</c:if>
		
		
	</table>
	
<%@ include file="../../footer/Footer.jsp" %>
</body>
</html>