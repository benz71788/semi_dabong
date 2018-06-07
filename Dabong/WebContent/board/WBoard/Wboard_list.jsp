<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>복지자 게시판</title>
<script src="./js/jquery-3.3.1.js"></script>
<script>
	$(document).ready(function() {
		if('${sessionScope.id}' == ""){
			location.href="login.net";
		}
		
		$("#show").click(function() {
			$(".page").toggle();
		});
		$("#show1").click(function() {
			$(".page1").show();
			$(".page2").hide();
			$(".page3").hide();
			$(".page4").hide();
			$(".page5").hide();
			$(".page6").hide();
			
		});
		$("#show2").click(function() {
			$(".page2").show();
			$(".page1").hide();
			$(".page3").hide();
			$(".page4").hide();
			$(".page5").hide();
			$(".page6").hide();
			
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
			$(".page6").hide();
			
		});
		$("#show5").click(function() {
			$(".page5").show();
			$(".page2").hide();
			$(".page3").hide();
			$(".page4").hide();
			$(".page1").hide();
			$(".page6").hide();
			
		});
		$("#show6").click(function(){
			$(".page6").show();
			$(".page2").hide();
			$(".page3").hide();
			$(".page4").hide();
			$(".page5").hide();
			$(".page1").hide();
			
		});
	});
	
</script>

<script>
$(document).on("click","#suc",function(){
	alert('매칭이 완료된 게시글 입니다.');
});
</script>
<style>
table{margin:0 auto;}
th{}
td{font-family:돋음; font-size:14; height:36px;}
td:nth-child(2n+1), .center{text-align:center}	  
.writer{border-width:3px;}
.title{background-color:rgb(30,144,255); height:50px;}
td:hover{background-color:#F8F8F8} 	
a{text-decoration:none}
.btn {
    border: none;
    outline: none;
    padding: 10px 18px;
  
    cursor: pointer;
    font-size: 18px;
    word-spacing:5px;
}


.active, .btn a:hover {
    background-color: #666;
    color: white;
}

h1{text-align:center}
.radio{
    width: 12px;
    height: 12px;
    display: inline-block;
    border: 1px solid #e2e2e2;

    border-radius: 50%;
    vertical-align: top;
    margin-top: 0px;
    margin-right:3px;
    background: #eceff3;
}

#qav_head {
    background: #f3f3f3;
    border: 1px solid #dedede;
    padding: 10px;
    margin-top: 15px;
}
.vbo_head {
   
    position: relative;
    padding: 0 0 10px;
    width: auto;
    border-bottom: 1px solid #eceff3;
    line-height: 1.5em;
    margin-bottom: 10px;
}
#head1{
padding:10px;
}

</style>
</head>
<body>

	<%@ include file="../../header/Header.jsp" %>

	<br>
	<div style="position:relative;float:left; top:19px;"><a href="./wboardList.wb"><img src="./images/logo.png" width="60px">
				</a></div>
	<h1 style="text-align:left;" id="head1">복지자 참여</h1>
	<p style="text-align:left;" id="qav_head" class="vbo_head">복지자가 직접 등록한 복지서비스 게시판 입니다.</p>
	
	<form action="wboardList.wb" method="get">
		<button name="opt" value="10">내가 쓴 글 보기</button>
	</form>
	
	<div id="searchForm" style="text-align: center">
		<form action="wboardList.wb" method="get">
			
			<table style="width:100%; text-align:left;">
				<tr>
					<th colspan="4"><select name="opt" size="1" style="height:28px; width:3; font-size:12px;" >

							<option value="0">제목</option>
							<option value="1">내용</option>
							<option value="2">제목+내용</option>
							<option value="3">글쓴이</option>

					</select>&nbsp;<input  style="height:23px;" type="text" size="20" name="condition" /><input
					style="background:#5D5D5D; color:white; border:1; height:30px; line-height: 28px;" 	type="submit" value="검색" /></th>

				</tr>


			</table>
		</form>
	<br>
		<button id="show" style="background:#5D5D5D; color:white; border:1; height:28px; line-height: 28px;">상세검색</button>
		<br>
		<br>

		<form  action="wboardList.wb" method="get" class="page" style="display: none">
			<table style="height:100px; width:100%;"  id="qav_head" class="vbo_head">
			
				
					<tr >
					<th><input type="radio" name="opt" id="show1" value="4">가능요일</th> 
					<th><input type="radio" id="show2" name="opt" value="5">가능시간</th>
					<th><input type="radio" id="show3" name="opt" value="6">지역</th>
					<th><input type="radio" id="show4" name="opt" value="7">종교</th>
					<th><input type="radio" id="show5" name="opt" value="8">성별</th>
					<th><input type="radio" id="show6" name="opt" value="9">희망복지</th>
				</tr>
				
		

		
			
				<tr class="page1" style="display: none;" >
					<th colspan="6"><input type="radio" name="condition" value="월요일">월요일
						<input type="radio" name="condition" value="화요일">화요일 <input
						type="radio" name="condition" value="수요일">수요일 <input type="radio"
						name="condition" value="목요일">목요일 <input type="radio" name="condition"
						value="금요일">금요일 <input type="radio" name="condition" value="토요일">토요일
						<input type="radio" name="condition" value="일요일">일요일
						<input type="radio" name="condition" value="무관">무관</th>
				</tr>
			
		
		
			
				<tr class="page2" style="display: none">
					<th colspan="6"><input type="radio" name="condition" value="오전">오전 <input
						type="radio" name="condition" value="오후">오후 <input type="radio" name="condition" value="종일">종일 <input
						type="radio" name="condition" value="시간협의">시간협의</th>
				</tr>
			
		

		
		
				<tr class="page3" style="display: none">
					<th colspan="6"><input type="radio" name="condition" value="서울">서울 <input type="radio" name="condition" value="부산">부산
						<input type="radio">대구 <input type="radio" name="condition" value="인천">인천 <input
						type="radio" name="condition" value="광주">광주 <input type="radio" name="condition" value="대전">대전 <input
						type="radio" name="condition" value="울산">울산 <input type="radio" name="condition" value="세종">세종 <input
						type="radio" name="condition" value="경기">경기 <input type="radio" name="condition" value="강원">강원 <input
						type="radio" name="condition" value="충북">충북 <input type="radio" name="condition" value="충남">충남 <input
						type="radio" name="condition" value="전북">전북 <input type="radio" name="condition" value="전남">전남 <input
						type="radio" name="condition" value="경북">경북 <input type="radio" name="condition" value="경님">경남 <input
						type="radio" name="condition" value="제주">제주</th>
				</tr>
			
		
		
			
				<tr class="page4" style="display: none">
					<th colspan="6"><input type="radio" name="condition" value="기독교">기독교 <input type="radio" name="condition" value="이슬람교">이슬람교
						<input type="radio" name="condition" value="유대교">유대교 <input type="radio" name="condition" value="불교">불교 <input
						type="radio" name="condition" value="무교">무교</th>
				</tr>
			
		
		
			
				<tr class="page5" style="display: none">
					<th colspan="6"><input type="radio" name="condition" value="남성">남성 
					<input type="radio" name="condition" value="여성">여성
					<input type="radio" name="condition" value="무관">무관

					</th>
				</tr>
				<tr class="page6" style="display:none">
			
			<th colspan="6"><input type="radio" name="condition" id="wbhope" value="건강">건강
			<input type="radio" name="condition"  value="고용">고용
			<input type="radio" name="condition"  value="보육/교육">보육/교육
			<input type="radio" name="condition"  value="생활/안전">생활/안전
			<input type="radio" name="condition"  value="주거">주거
			</th>
		</tr>
			</table>
			<br>
			<input style="background:#5D5D5D; color:white; border:1; height:28px; line-height: 28px;"  type="submit" value="검색">
			<input style="background:#5D5D5D; color:white; border:1; height:28px; line-height: 28px;" type="reset" value="초기화">
		</form>

	</div>
	<br>
	<table style="border-collapse:collapse; width:100%">

		<tr class="title" style="color:white;">
			<th width="8%"><div>번호</div></th>
			<th width="30%"><div>제목</div></th>
			<th width="19%"><div>작성자</div></th>
			<th width="25%"><div>작성일</div></th>
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
					
						<a href="./wboardDetailAction.wb?num=${b.wbnum}"> ${b.wbsub} </a>
					</div>
				</td>
				<td>
					<div>${b.wname}</div>
				</td>
				<td style="text-align:center">
					<div>${b.wbdate}</div>
				</td>
				<td>
					<div>${b.wbreadcount}</div>
				</td>
				
				<c:if test="${ b.wbvisit == 0}">
				<td style="text-align:center">
				<input style="background:#5D5D5D; color:white; border:1; height:29px; line-height: 28px; width:54px;" type="button" value="진행중" onclick="location.href='./wboardDetailAction.wb?num=${b.wbnum}'">
				</td>
				</c:if>
				<c:if test="${ b.wbvisit !=0}">
				<td style="text-align:center">
				<input style="border:1; background:white; color:#5D5D5D; height:29px; line-height: 28px; width:54px;" type="button" value="완료" id="suc">
				</td>
			</c:if>
			
			
			
			</tr>
			
		</c:forEach>
		</table>
		<hr>
		<br>
		<form action="wboardWrite.wb" method="get" style="height:28px;">
	<c:if test="${sessionScope.user == '복지자' || sessionScope.id == 'admin'}">
	<input style="background:#5D5D5D; color:white; border:1; height:28px; line-height: 28px; float:right; margin-right:28px;" type="submit" value="참여 등록하기"/>
	</c:if>

</form>
		<br>
		<table>
		<tr  class="h30 lime center btn" style="color:#6799FF;">
		<c:if test="${null eq opt}">
		
			<td colspan=5><c:if test="${spage <= 1}">
					이전&nbsp;
				</c:if> <c:if test="${spage > 1}">
					<a href="./wboardList.wb?page=${spage-1}">이전</a>｜
				</c:if> <c:forEach var="a" begin="${startpage}" end="${endpage}">
					<c:if test="${a == spage}">
						${a}
					</c:if>
					<c:if test="${a != spage}">
						<a href="./wboardList.wb?page=${a}">${a}</a>
					</c:if>
				</c:forEach> <c:if test="${spage >= maxpage}">
					다음
				</c:if> <c:if test="${spage < maxpage}">｜
					<a href="./wboardList.wb?page=${spage + 1}">다음</a>
				</c:if></td>
				</c:if>
		<c:if test="${null ne opt}">
		
			<td colspan=5><c:if test="${spage <= 1}">
					이전&nbsp;
				</c:if> <c:if test="${spage > 1}">
					<a href="./wboardList.wb?page=${spage-1}&opt=${opt}&condition=${condition}">이전</a>｜
				</c:if> <c:forEach var="a" begin="${startpage}" end="${endpage}">
					<c:if test="${a == spage}">
						${a}
					</c:if>
					<c:if test="${a != spage}">
						<a href="./wboardList.wb?page=${a}&opt=${opt}&condition=${condition}">${a}</a>
					</c:if>
				</c:forEach> <c:if test="${spage >= maxpage}">
					다음
				</c:if> <c:if test="${spage < maxpage}">｜
					<a href="./wboardList.wb?page=${spage + 1}&opt=${opt}&condition=${condition}">&nbsp;다음</a>
				</c:if></td>
				</c:if>
				
				
				
		</tr>
		<!-- 레코드가 없으면 -->
		<c:if test="${listcount == 0}">
			<tr>
				<td colspan="3">복지자 참여</td>
				<td style="text-align: right"><font size=2>등록된 글이 없습니다.
				</font></td>
			</tr>
		</c:if>
		
		
	</table>
	
<br><br>

</body>
</html>