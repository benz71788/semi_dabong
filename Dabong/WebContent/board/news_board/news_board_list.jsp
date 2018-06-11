<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>정보마당 리스트형</title>
<link href="./css/css_kh/list.css" rel="stylesheet" type="text/css">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>

.img {
  position: relative;
  background-image: url(./css/images/modal-1.jpg);
  height: 300px;
  width: 100%;
  background-repeat: no-repeat;
  background-size: 100%;
  background: cover;
}

.img-cover {
  position: relative;
  height: 300px;
  width: 100%;
  background-color: rgba(0, 0, 0, 0.4);
  z-index: 1;
}

.img .content {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
  z-index: 2;
  text-align: center;
}

h6 {
  margin-left: 21px;
  margin-top: 0px;
  margin-bottom: 17px;
  font-size: 17px;
}
</style>

<script>
   $(document).ready(function(){
      $('#1').on('click', function(){
         $('.loadForm').attr('action', './news_board_album.news');
      });
      $('#2').on('click', function(){
         $('.loadForm').attr('action', './news_board_list.news');
      });
      $('#3').on('click', function(){
         $('.loadForm').attr('action', './news_board_write.news');
      });
   });
</script>
<%@ include file="../../header/Header.jsp" %>
</head>

<body>
         <form class="loadForm" method='get'>
         <h1>정보마당</h1>
         <span>
            <button id="1" name="load" class="nbutton1" value="album">앨범형</button>
            <button id="2" name="load" class="nbutton1" value="list">리스트형</button>
            <%-- <c:if test="${sessionScope.id == 'admin' || sessionScope.id == 'qwer'}"> --%>
             <button id="3" class="nbutton1">글쓰기</button>
             <%-- </c:if> --%>
         </span>   
         </form><br>

      <form action="news_board_list.news" method="get" id="searchForm">
      <span class="pageNum"><b style="color:#1E90FF">${page}</b> / <b style="font-weight:bold">${maxpage}</b></span>
      
         <select name="opt" >
            <option value="0">선택</option>
            <option value="1">제목</option>
            <option value="2">내용</option>
            <option value="3">제목+내용</option>
         </select> 
         <input type="text" size="20" name="condition" />&nbsp; 
         <input type="submit" value="검색" />
         <br><br>
         </form>
         
   <table class="list">
         <tr>
            <th width="8%"><div>번호</div></th>
            <th width="50%"><div>제목</div></th>
            <th width="14%"><div>작성자</div></th>
            <th width="17%"><div>날짜</div></th>
            <th width="11%"><div>조회수</div></th>
         </tr>
      <c:set var="num" value="${listcount-(page-1) * 10}"/>
      <c:forEach var="b" items="${boardlist}">
      <tr>
         <td>
            <c:out value="${num}"/>   <%-- num 출력 --%>
            <c:set var="num" value="${num-1}"/>   <%-- num = num - 1 --%>
         </td>
         <td class="target1">
            <div class="target">
               <a href="./NewsBoardDetailAction.news?num=${b.nenum}" class="bon">&nbsp;&nbsp;
               ${b.nesub}</a>
               
            </div>
         </td>
         <td>
            <div class="mun">${b.aname}</div>
         </td>
         <td>
            <div>${b.nedate}</div>
         </td>
         <td>
            <div>${b.nevisit}</div>
         </td>
      </tr>
      </c:forEach>
      
      <!-- 레코드가 없으면 -->
      <c:if test="${listcount == 0}">
         <tr>
            <td></td>
            <td style="text-align: center" colspan="3">
               <font size=2>등록된 글이 없습니다.</font>
            </td>
         </tr>
      </c:if>
 <tr class="lime">
      <c:if test="${null eq opt }">
         <td colspan=5 style="text-align: center">
            <c:if test="${page <= 1}">
                     이전 |&nbsp;
            </c:if> 
            
            <c:if test="${page > 1}">
               <a href="./news_board_list.news?page=${page-1}">이전 |</a>
            </c:if> 
            
            <c:forEach var="a" begin="${startpage}" end="${endpage}">
               <c:if test="${a == page}">
                  ${a}
               </c:if>
               
               <c:if test="${a != page}">
               <a href="./news_board_list.news?page=${a}">
                  ${a}</a>
               </c:if>
            </c:forEach> 
            
            <c:if test="${page >= maxpage}">
               &nbsp;| 다음
            </c:if> 
            <c:if test="${page < maxpage}">
            <a href="./news_board_list.news?page=${page + 1}">
            &nbsp;| 다음</a>
            </c:if>
         </td>
         </c:if>
      <c:if test="${null ne opt }">
         <td colspan=5 style="text-align: center">
            <c:if test="${page <= 1}">
                     이전 |&nbsp;
            </c:if> 
            
            <c:if test="${page > 1}">
               <a href="./news_board_list.news?page=${page-1}&opt=${opt}&condition=${condition}">이전 |</a>
            </c:if> 
            
            <c:forEach var="a" begin="${startpage}" end="${endpage}">
               <c:if test="${a == page}">
                  ${a}
               </c:if>
               
               <c:if test="${a != page}">
               <a href="./news_board_list.news?page=${a}&opt=${opt}&condition=${condition}">
                  ${a}</a>
               </c:if>
            </c:forEach> 
            
            <c:if test="${page >= maxpage}">
               &nbsp;| 다음
            </c:if> 
            <c:if test="${page < maxpage}">
            <a href="./news_board_list.news?page=${page + 1}">
            &nbsp;| 다음</a>
            </c:if>
         </td>
         </c:if>
      </tr>
   </table>
<br><br><br><br><br><br><br><br>
   <%@ include file="../../footer/Footer.jsp" %>
</body>
</html>