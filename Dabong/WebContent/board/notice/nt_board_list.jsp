<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html id='html'>
<head>
<meta charset="UTF-8">
<title>공지 게시판</title>
<link href="./css/css_sm/list.css" rel="stylesheet">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
button{float:right;}
body span {
    display: inline;
}
form{
  display: inline-block;
  margin: 0 auto;
    width: 1000px;
    text-align:center;
}
#sub1{
	text-align:right;
	position:absolute;
	right:470px;
}
#sub2{
	text-align:center;
	background-color:#C7D0D5;
}
#limit{
  overflow:hidden;
  white-space:nowrap;
  text-overflow:ellipsis;
  text-align:center
}
#searchForm{
	text-align:center;
}
.enterdiv{white-space:normal}
</style>
</head>
<body>
<jsp:include page="../../header/Header.jsp" />
	<div id="sub2">
		<h2>공지사항 게시판</h2>
	</div>
	<div id="sub1">
      <a href="./NTBoardList.nt">글목록</a>
    </div>
      <br>
      <br>
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
        <c:out value="${num}"/>  <%-- num 출력 —--%>
        <c:set var="num" value="${num-1}"/>  <%-- num = num - 1 --%>
      </td>
      <td>
        <div>      
          <a href="./NTBoardDetailAction.nt?num=${b.ntnum}">${b.ntsub}</a>
        </div>
      </td>
      <td>
        <div>${b.aname}</div>
      </td>
      <td>
        <div>${b.ntdate}</div>
      </td>
      <td>
        <div>${b.ntvisit}</div>
      </td>
    </tr>
    </c:forEach>
    
    <c:if test="${listcount == 0}">
      <tr>
        <td colspan="3">공지 게시판</td>
        <td style="text-align: right">
          <font size=2>등록된 글이 없습니다.</font>
        </td>
      </tr>
    </c:if>         
          
    <tr class="h30 lime center btn">
      <td colspan=4 style="text-align: center">
        <c:if test="${page <= 1}">
          이전&nbsp;
        </c:if> 
        <c:if test="${page > 1}">
          <a href="./NTBoardList.nt?page=${page-1}" class="pageBefore">이전</a>
        </c:if> 
        <c:forEach var="a" begin="${startpage}" end="${endpage}">
          <c:if test="${a == page}">
            ${a}
          </c:if>
          <c:if test="${a != page}">
          <a href="./NTBoardList.nt?page=${a}" class="pageCurrent">${a}</a>
          </c:if>
         </c:forEach> 
        <c:if test="${page >= maxpage}">
          &nbsp;다음
        </c:if> 
        <c:if test="${page < maxpage}">
        <a href="./NTBoardList.nt?page=${page + 1}" class="pageAfter">&nbsp;다음</a>
        </c:if>
      </td>
      <td colspan="1" style="text-align: center">
         <a href="./NTBoardWrite.nt">[글쓰기]</a>
      </td>
    </tr>
  </table>
    <br>
    <script type="text/javascript">
    
    
    
    ////////////////////////////검색 Ajax 처리 
    
    /**
   	* 1. 현재 검색에 대한 테이블의 생성 및 삭제는 java에서 처리하도록 설정
   	* 
    * -------------- any ways ---------------------------- 
    *       
    		
    *   (1) 현재 처리된 방법
    	(2) sucess한 data를 read한 후 다시 해당 페이지로 forward 처리함. - (좋지않음)
    *   (3) Controlle                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           r에서 JSON Object를 생성하고  boardlist와 같은 데이터를 key & value로 설정합니다. ajax에서 json data를 받아오는데 성공하면 테이블을 동적으로 지우고 생성합니다.
    */
    
    
    
    
    $(document).ready(function(){
  		
		$('[name="search"]').click(function() {
		  	var text = $('[name="condition"]').val().trim();
			var opt =  $("#select option:selected").val();
		    var page = "${page}";
			
			if(text=="" ){
				alert('검색어를 넣어주세요.');
			}else if(opt == "선택"){
				alert('옵션을 선택해주세요.');
			}else{
				$.ajax({
				    type : "GET",
				    data : {  "opt":opt,
				    		 "condition":text,
				    		 "page":page,
				    		 "search":true
				    		},
				 /*    url : "./NTBoardList.nt", */
				    url : "./NTBoardList.nt",
				    cache: false, 
				    headers : {"cache-control" : "no-cache", 
				    	       "pragma" : "no-cache"},
				    	       
				    success : function(data){
				    	if(data!=null){
				    		$('.list tr:not(:first)').remove();
				    		$('.list').append(data);
				    	}
				    	
				    },
				    error : function(){
				     alert("에러");
				    }
				   })//ajax end		
			}
		});
		
		
		
		
    });
    </script>
      <div id="searchForm">
            <select name="opt" id="select">
              <option>선택</option>
                <option value="0">제목</option>
                <option value="1">내용</option>
                <option value="2">제목+내용</option>
               </select>
            <input type="text" size="20" name="condition"/>&nbsp;
            <input type="button" name="search" value="검색"/>
             
      </div>          
          

<%@ include file="../../footer/Footer.jsp" %>
</body>
</html>