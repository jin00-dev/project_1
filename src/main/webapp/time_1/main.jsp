<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여진이의 시계</title>
</head>
<body>

<h1>main.jsp</h1>

<!-- 내가해냄 이미지 삽입 -->
<img src ="icandoit.png" alt="내가해냄" width="210" height="210">


<!--  날짜, 시간 표현하는 시계 구현 -->
<h1>현재시각</h1>
<h1>
<div id = "clock"> </div>
<script src="clock.js">  </script>
</h1>

<!-- 입장 퇴장 버튼 구현 -->
	<style>
		#open{
			width: 80%;
			border:2px solid black;
			background-color: #DC143C;
			color:black;
			padding:5px;
			cursor:pointer;
		}
		#close{
			width: 80%;
			border:2px solid black;
			background-color:#DAA520;
			color:black;
			padding:5px;
			cursor:pointer;
		}
	</style>
	<table>
	<tr>
	<td width="200" height="100">
	<input type="submit" name="open" id = open onclick="doAction1();" value="입장">
	</td>
	<td width="200" height="100">
	<input type="submit" name="close" id = close onclick="doAction2(); " value="퇴장">
	</tr>
	</table>
	
	<script type="text/javascript">
		function doAction1(){
			location.href = "insertPro.jsp"; 
			alert ("오늘도 화이팅");
			
		}
		function doAction2(){
			location.href = "updatePro.jsp";
			alert ("비콘 찍고 집에가자!");
		}
		
	</script>
	
	<h2> <a href="info.jsp">출석정보 확인하기</a></h2>
	
</body>
</html>