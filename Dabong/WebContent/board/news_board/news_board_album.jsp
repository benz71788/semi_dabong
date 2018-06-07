<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>정보마당 앨범형</title>
<script src="./js/jquery-3.3.1.js"></script>
<link href="./css/css_kh/album.css" rel="stylesheet">
<script>	//버튼클릭 스크립트
$(document).ready(function(){
	$('#1').on('click', function(){
		location.href="./news_board_album.news";
	});
	$('#2').on('click', function(){
		location.href="./news_board_list.news";
	});
});
</script>

<script>	//최상단 스크립트
$( document ).ready( function() {
  $( window ).scroll( function() {
    if ( $( this ).scrollTop() > 200 ) {
      $( '.top' ).fadeIn();
    } else {
      $( '.top' ).fadeOut();
    }
  } );
  $( '.top' ).click( function() {
    $( 'html, body' ).animate( { scrollTop : 0 }, 400 );
    return false;
  } );
});
</script>

<script>   //무한스크롤 스크립트
$( document ).ready( function() {
	var page = 2;
   $(window).scroll(function(){
      if($(window).scrollTop() == $(document).height() - $(window).height()){
            var sendData = 'page=' + page;
            var test= 1;
            
            $.getJSON("news_board_album.news", sendData, function(obj){
            var output = '';
               $(obj).each(function(index, item){
                  if(test%4==1){
                     output += '<tr style="text-align:center;">';
                  }
                  output += '<td style="text-align:center"><div>' 
                  + '<a href="./NewsBoardDetailAction.news?num=' + item.nenum + '">';
                  
                  if(item.files != null){
                	  output += '<img src="boardupload/' +item.files +'"><br></a>';
                  } else if(item.files == null){
                	  output += '<img src="boardupload/dabong.JPG"><br></a></div>';
                  }
                  
                  output += '<div class="target" style="font-weight:bold;" >'
                  + '<a href="./NewsBoardDetailAction.news?num=' + item.nenum + '">'+ item.sub+'</a></div><br>'
                  + "조회 "+item.visit + " | " + item.date+'<br>'
                  + '<div style="text-align: center"><font size=2>' + item.name+ '</font>' 
                  + '<img src="boardupload/admin.jpg" id="jpg">'+'<br><br><br></td>';
                  
                  if(test%4==0){
                     output += '</tr>';
                  }
                  //alert(output);
                  test= test+1;
                  /* alert(index+'====='+Object.values(item.date)); */
               });
               $('tbody').append(output);
            });
            page = page + 1;
      }
   });
});
</script>


<%@ include file="../../header/Header.jsp" %>
</head>
<body>	
		<h1>정보마당</h1>
		<span>
		<button id="1" class="nbutton1">앨범형</button>
		<button id="2" class="nbutton1">리스트형</button>
		</span>
		<c:if test="${sessionScope.id == 'admin'}">
		<a href="./news_board_write.news" style="text-align: center" id="write">
		<button class="nbutton3">글쓰기</button><br>
		</a>
		</c:if>
	<%--검색 --%>	
	<span class="pageNum" style="line-height:60px"><font size=4>총 게시물 수 <b style="color:#1E90FF"> ${listcount}</b></font></span>
      <form action="news_board_album.news" method="get" id="searchForm">
            <select name="opt">
            	<option value="0">선택</option>
                <option value="1">제목</option>
                <option value="2">내용</option>
                <option value="3">제목+내용</option>
               </select>
            <input type="text" size="20" name="condition"/>&nbsp;
            <input type="submit" value="검색"/>
      </form>
      <br>
      
	<table class="album">
		<c:set var="num" value="${listcount-(page-1) * 12}" />
		<%--4개 씩 --%>
		<c:set var="i" value="0" />
		<c:set var="j" value="4" />
		<c:forEach var="b" items="${boardlist}">
		
		<c:if test="${i % j == 0}">
			<tr>
		</c:if>
				<td style="text-align:center">
					<c:set var="num" value="${num-1}" /> <%-- num = num - 1 --%>
					<%-- 첨부파일 썸네일 --%>
						<div style="text-align:center">
							<a href="./NewsBoardDetailAction.news?num=${b.nenum}">
								<c:if test="${b.nefiles != null}">
									<img src="./boardupload/${b.nefiles}">
								</c:if> 
						
					<%--첨부 파일이 없을 때 썸네일 이미지 --%>
								<c:if test="${b.nefiles == null}">
								<img src="./boardupload/dabong.JPG">
								<br>
								</c:if>
							</a>
						</div>
					
					<%--게시물 형식 --%>
					<div class="target" style="text-align:center; font-weight:bold">
						<a href="./NewsBoardDetailAction.news?num=${b.nenum}">
							<font size=4>${b.nesub}</font></a>
					</div>
					<div style="text-align: center"><font size=3>조회 ${b.nevisit} | ${b.nedate}</font></div>
					<div style="text-align: center"><font size=2>${b.aname}</font> 
					<img src="./boardupload/admin.jpg" id="jpg">
					</div>
					<div class="enterdiv">
						<br><br>
					</div>
				</td>
			<c:if test="${i % j == j - 1}">
			
			</c:if>
			<c:set var="i" value="${i + 1}"/>
		</c:forEach>
		
		<!-- 레코드가 없으면 -->
		<c:if test="${listcount == 0}">
			<tr>
				<td style="text-align: center" colspan="4">
					<font size=2>등록된 글이 없습니다.</font>
				</td>
			</tr>
		</c:if>
	</table>
	<div class="a">
		<a href="#" class="top"><img src="./boardupload/top.png" class="du"></a>
	</div>
	
	<br>
</body>
</html>