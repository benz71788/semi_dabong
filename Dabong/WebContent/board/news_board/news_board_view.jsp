<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>뉴스 상세보기</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="./css/css_kh/view.css" rel="stylesheet" type="text/css">
<script>   //최상단 스크립트
$( document ).ready( function() {
  $( window ).scroll( function() {
    if ( $( this ).scrollTop() > 50 ) {
      $( '.top' ).fadeIn();
    } else {
      $( '.top' ).fadeOut();
    }
  } );
  $( '.top' ).click( function() {
    $( 'html, body' ).animate( { scrollTop : 0 }, 1000 );
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
   <div class="down">첨부 된 파일 : ${bd.nefiles}</div>
         
   <table class="viewCont">
      <tr>
         <td>
            <pre>${bd.necont}</pre> 
 
         </td>
      </tr>
   </table>
   	<div id="choice" style="text-align:center">
   	<c:if test="${sessionScope.id == 'admin'}">
     
        <a href="./NewsBoardModifyView.news?num=${num}">
        수정</a>&nbsp;&nbsp;
        
        <a href="./NewsBoardDelete.news?num=${num}">
        삭제</a>&nbsp;&nbsp;
    </c:if>
      <c:if test="${sessionScope.fload == 'album' }">
           <a href="./news_board_album.news">목록</a>&nbsp;&nbsp;
        </c:if>      
        <c:if test="${sessionScope.fload == 'list' }">
           <a href="./news_board_list.news">목록</a>&nbsp;&nbsp;
        </c:if>
    </div>

<div class="a">
      <a href="#" class="top"><img src="./boardupload/top.png" class="du"></a>
   </div>
   
   <table class="asdf" style="">
      <c:if test="${num == 1}">
         <tr>
            <td width="20">&nbsp;&nbsp;▲ 다음글</td>
            <td width="60">
            <a href="./NewsBoardDetailAction.news?num=${afterdetail.nenum}">
                  ${afterdetail.nesub}</a>&nbsp;&nbsp;
            </td>
            <td width="20">${bd.nedate}</td>
         </tr>
      </c:if>
      
      <c:if test="${num > 1 && num < max}">
         <tr>
            <td width="20">&nbsp;&nbsp;▲ 다음글</td>
            <td width="60">
            <a href="./NewsBoardDetailAction.news?num=${afterdetail.nenum}">
                  ${afterdetail.nesub}</a>
             </td>
             <td width="20">${bd.nedate} <br> 
          </tr>
          
          <tr>
          	<td width="20">&nbsp;&nbsp;▼ 이전글</td>
         	<td width="60">
         	<a href="./NewsBoardDetailAction.news?num=${beforedetail.nenum}">
                  ${beforedetail.nesub}</a>
            </td>
            <td width="20">${bd.nedate} </td>
         </tr>
      </c:if>

      <c:if test="${num == max}">
         <tr>
          	<td width="20">&nbsp;&nbsp;▼ 이전글</td>
         	<td width="60">
         	<a href="./NewsBoardDetailAction.news?num=${beforedetail.nenum}">
                  ${beforedetail.nesub}</a>
            </td>
            <td width="20">${bd.nedate}</td>
         </tr>
      </c:if>
   </table>
	<hr>
	<br><br><br>
	<br><br><br>
</body>
<%@ include file="../../footer/Footer.jsp" %>
</html>