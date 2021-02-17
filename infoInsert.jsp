<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html lang="ko-KR">
<head>
    <meta charset="utf-8"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/InsertPage.css" type="text/css">
    <title>InfoInsert</title>
    <style>

    </style>

</head>
<body>
  <div class='top'>
   <div class='headertop'>
    <header>


   	<nav id="topMenu" >
		<ul>
			<li><a class="menuLink" href="">환자정보입력</a></li>
			<li>|</li>
			<li><a class="menuLink" href="">환자조회</a></li>
			<li>|</li>
			<li><a class="menuLink" href="">백신</a></li>
			<li>|</li>
			<li><a class="menuLink" href="">국가통계모델</a></li>
			<li>|</li>
			<li><a class="menuLink" href="">홈</a></li>
		</ul>
	</nav>
  </header>

</div>

<div class='subtitle'>
  <h2>환자정보입력</h2>
</div>
<div class='subtitle2'>
  <h3>환자목록</h3>
 <h3>
 </div>
 <div class="egi">
   <div class='add'>
     <div class='body1'>
       <span class>
         <h1> 환자정보입력</h1>
         <br>
		<form method="post" action="insertall">
         <h2> 연령대</h2>
         <input type="radio" name="age" value="13세이하">
         13세이하
         <input type="radio" name="age" value="14~19세">
         14~19세
         <input type="radio" name="age" value="20대">
         20대
         <input type="radio" name="age" value="30대">
         30대
         <input type="radio" name="age" value="40대">
         40대
         <input type="radio" name="age" value="50대">
         50대
         <input type="radio" name="age" value="60~64세">
         60~64세
          <input type="radio" name="age" value="65세 이상">
         65세 이상

         <h2>성별</h2>
         <input type="radio" name="gender" value="남">
         남
          <input type="radio" name="gender" value="여">
          여
         <h2>맞은 백신</h2>
         <input type="radio" name="Vaccine" value="코로나">
         코로나
         <input type="radio" name="Vaccine" value="독감">
         독감
         <input type="radio" name="Vaccine" value="대상포진">
         대상포진
         <input type="radio" name="Vaccine" value="프리베나">
         프리베나
         <input type="radio" name="Vaccine" value="독+대">
         독+대
         <input type="radio" name="Vaccine" value="독+포">
         독+프
         <input type="radio" name="Vaccine" value="독+VIT-D">
         독+VITD
          <input type="radio" name="Vaccine" value="독+대+프">
          독+대+프
          <input type="radio" name="Vaccine" value="VIT-D">
          VITD
          <input type="radio" name="Vaccine" value="독-Free">
          독 FREE
          <input type="radio" name="Vaccine" value="특별가">
          특별가<br>
		<input type="submit"value="확인">
		</form>
          </span>
        </div>
        <div class="body2">
          <table class="tablestyle">
            <thead>
              <tr>
                <th scope="cols">아이디</th>
                <th scope="cols">연령대</th>
                <th scope="cols">성별</th>
                <th scope="cols">백신</th>
                <th scope="cols">날짜/시간</th>
                <th scope="cols">수정</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${list}" var="member">
              <tr>
                <th scope="row">${member.memberId }</th>
                <td>${member.memberAge }</td>
                <td>${member.memberSex }</td>
                <td>${member.memberVac }</td>
                <td>${member.memberDate }</td>
                <td class="modify"> <img class="modifyimage" src="button.jpg" alt="삭제버튼" ></td>
              </tr>
             </c:forEach>
        </tbody>
      </table>

  </div>
  </div>
</div>

</html>
