<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>복지자 참여 내용 수정하기</title>
</head>
<script src="./js/jquery-3.3.1.js"></script>
<link href="./css/form.css" rel="stylesheet">

<body>
<%-- <jsp:include page="header.jsp"/>--%>
	<%@ include file="../../header/Header.jsp" %>
	<form action="./wboardModifyAction.wb" method="post" name="boardform">
	<input type="hidden" name="num" value="${param.num}">
		<table>
			<tr class="center">
				<th colspan="2" style="text-align:center; background:dodgerblue;">복지자 수정하기</th>
			</tr>
			<tr>
				<td><div>글쓴이</div></td>
				<td>
					<input type="hidden" name="wid" id="wid" value="${sessionScope.id}" readonly>
					<input type="text" name="wname" id="wname" value="${boardData.wname}" readonly>
				</td>
			</tr>
			<tr>
			<td><div>제목</div></td>
			<td><input name="wbsub" id="wbsub"
					type="text" size="50" maxlength="100" value="${boardData.wbsub}" required>
		</tr>
		<tr>
		<th colspan="2" style="text-align:center; background:dodgerblue;">
		선택하세요
		</th>
		</tr>
		<tr>
			<td><div>복지가능 요일</div></td>
			<td><input type="radio" class="wbweek" name="wbweek" id="wbweek" value="월요일">월요일
			<input type="radio" class="wbweek" name="wbweek" id="wbweek" value="화요일">화요일
			<input type="radio" class="wbweek" name="wbweek" id="wbweek" value="수요일">수요일
			<input type="radio" class="wbweek" name="wbweek" id="wbweek" value="목요일">목요일
			<input type="radio" class="wbweek" name="wbweek" id="wbweek" value="금요일">금요일
			<input type="radio" class="wbweek" name="wbweek" id="wbweek" value="토요일">토요일
			<input type="radio" class="wbweek" name="wbweek" id="wbweek" value="일요일">일요일
			<input type="radio" class="wbweek" name="wbweek" id="wbweek" value="무관">무관
			</td>
		
		</tr>
		<tr>
			<td><div>복지가능 시간</div></td>
			<td><input type="radio" class="wbpostime" name="wbpostime" id="wbpostime" value="오전">오전
			<input type="radio" class="wbpostime" name="wbpostime" id="wbpostime" value="오후">오후
			<input type="radio" class="wbpostime" name="wbpostime" id="wbpostime" value="종일">종일
			<input type="radio" class="wbpostime" name="wbpostime" id="wbpostime" value="시간협의" >시간협의
			
			</td>
		</tr>
		<tr>
			<td><div>복지자 지역</div></td>
			<td><input type="radio" class="wbarea" name="wbarea" id="wbarea" value="서울">서울
			<input type="radio" class="wbarea" name="wbarea" id="wbarea" value="부산">부산
			<input type="radio" class="wbarea" name="wbarea" id="wbarea" value="대구">대구
			<input type="radio" class="wbarea" name="wbarea" id="wbarea" value="인천">인천
			<input type="radio" class="wbarea" name="wbarea" id="wbarea" value="광주">광주
			<input type="radio" class="wbarea" name="wbarea" id="wbarea" value="대전">대전
			<input type="radio" class="wbarea" name="wbarea" id="wbarea" value="울산">울산
			<input type="radio" class="wbarea" name="wbarea" id="wbarea" value="세종">세종
			<input type="radio" class="wbarea" name="wbarea" id="wbarea" value="경기">경기
			<input type="radio" class="wbarea" name="wbarea" id="wbarea" value="강원">강원
			<input type="radio" class="wbarea" name="wbarea" id="wbarea" value="충북">충북
			<input type="radio" class="wbarea" name="wbarea" id="wbarea" value="충남">충남
			<input type="radio" class="wbarea" name="wbarea" id="wbarea" value="전북">전북
			<input type="radio" class="wbarea" name="wbarea" id="wbarea" value="전남">전남
			<input type="radio" class="wbarea" name="wbarea" id="wbarea" value="경북">경북
			<input type="radio" class="wbarea" name="wbarea" id="wbarea" value="경남">경남
			<input type="radio" class="wbarea" name="wbarea" id="wbarea" value="제주">제주
	
		</tr>
			<tr>
			<td><div>종교</div></td>
			<td><input type="radio" class="wbrelig" name="wbrelig" id="wbrelig" value="기독교">기독교
			<input type="radio" class="wbrelig" name="wbrelig" id="wbrelig" value="이슬람교">이슬람교
			<input type="radio" class="wbrelig" name="wbrelig" id="wbrelig" value="유대교">유대교
			<input type="radio" class="wbrelig" name="wbrelig" id="wbrelig" value="불교" >불교
			<input type="radio" class="wbrelig" name="wbrelig" id="wbrelig" value="무교" >무교
			
		</tr>
		<tr>
			<td><div>봉사자 성별</div></td>
			<td><input type="radio" class="wbgenv" name="wbgenv" id="wbgenv" value="남성">남성
			<input type="radio" class="wbgenv" name="wbgenv" id="wbgenv" value="여성">여성
			<input type="radio" class="wbgenv" name="wbgenv" id="wbgenv" value="무관">무관
			</td>
		</tr>
		<tr>
			<td><div>희망 복지</div></td>
			<td><input type="radio" class="wbhope" name="wbhope" id="wbhope" value="건강">건강
			<input type="radio" class="wbhope" name="wbhope" id="wbhope" value="고용">고용
			<input type="radio" class="wbhope" name="wbhope" id="wbhope" value="보육/교육">보육/교육
			<input type="radio" class="wbhope" name="wbhope" id="wbhope" value="생활/안전">생활/안전
			<input type="radio" class="wbhope" name="wbhope" id="wbhope" value="주거">주거
			</td>
		</tr>
		<tr>
			<td><div>희망 봉사자 경력</div></td>
			<td><select name="wbhopeve" class="wbhopeve" id="wbhopeve">
			<option value="3개월 미만">3개월 미만</option>
			<option value="3개월 이상 ~ 6개월 미만">3개월 이상 ~ 6개월 미만</option>
			<option value="6개월 이상 ~ 1년 미만">6개월 이상 ~ 1년 미만</option>
			<option value="1년 이상">1년 이상</option>
			<option value="5년 이상">5년 이상</option>
			<option value="10년 이상">10년 이상</option>
			<option value="기타">기타
			</select>
		</tr>
		<tr>
			<td><div>내용</div></td>
			<td><textarea name="wbcont" id="wbcont" 
						cols="67" rows="15" required>${boardData.wbcont}</textarea>
			</td>
		</tr>
		<tr>
			<td><div>비밀번호</div></td>
			<td>
				<input name="wpass" id="wpass"
					type="password" size="10" maxlength="30" required>
			</td>
		</tr>
		<tr>
			<td><div>첨부 파일</div></td>
			<c:if test="${!empty boardData.wbfile}">
			<td>
				&nbsp;&nbsp;${boardData.wbfile}
			</td>
			</c:if>
		</tr>
		<tr class="center">
			<td colspan="2" class="h30 lime">
				<input type="submit" value="등록">
				<input type="reset"	value="취소"	onClick="history.go(-1)">
			</td>
		</tr>
		</table>
	</form>
	
</body>
</html>