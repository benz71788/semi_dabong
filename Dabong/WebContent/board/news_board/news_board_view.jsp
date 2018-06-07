<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>뉴스 상세보기</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="./css/css_kh/view.css" rel="stylesheet">
<script>	//최상단 스크립트
$( document ).ready( function() {
  $( window ).scroll( function() {
    if ( $( this ).scrollTop() > 100 ) {
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
<%@ include file="../../header/Header.jsp" %>

</head>
<body>
		<form action="./net.board.news.action/NewsBoardAddAction.news"
			method="post" name="boardform">
			<c:set var="bd" value="${detail}" />
			<h1>정보마당</h1>
			<br>
			</form>
	<div class="sub">
			<h3>&nbsp;&nbsp;${bd.nesub}</h3>
			<h4>&nbsp;&nbsp;글쓴이 ${bd.aname}&nbsp;<img src="./boardupload/admin.jpg" id="jpg">
				&nbsp;&nbsp;&nbsp;&nbsp;작성일 ${bd.nedate}
				&nbsp;&nbsp; 조회수 ${bd.nevisit}</h4>
	</div>
	<br>
	<div class="down">첨부된 파일 : ${bd.nefiles}</div>
			
	<table>
		<tr>
			<td>
				<pre>${bd.necont}</pre> 
					<c:if test="${b.nefiles != null}">
						<img src="./boardupload/${bd.nefiles}" id="chumbu">
					</c:if> 
					<c:if test="${b.nefiles == null}">
						<pre></pre>	
					</c:if> 
			</td>
		</tr>
	</table>
	  <div id="choice">
      <c:if test="${bd.aname == 'admin' || id == 'admin'}">
        <a href="./NewsBoardModifyView.news?num=${bd.nenum}">
        수정</a>&nbsp;&nbsp;
        
        <a href="./NewsBoardDelete.news?num=${bd.nenum}">
        삭제</a>&nbsp;&nbsp;
      </c:if>
		<c:if test="${sessionScope.fload == 'album' }">
        	<a href="./news_board_album.news">목록</a>&nbsp;&nbsp;
        </c:if>      
        <c:if test="${sessionScope.fload == 'list' }">
        	<a href="./news_board_list.news">목록</a>&nbsp;&nbsp;
        </c:if>
    </div>
</body>
<div class="a">
		<a href="#" class="top"><img src="./boardupload/top.png" class="du"></a>
	</div>
</html>