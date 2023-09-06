<%@page import="com.itwillbs.time.timeDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>insertPro.jsp</h1>

		

<!-- MySQL 연동  -->
	
	<%
		request.setCharacterEncoding("UTF-8"); // 한글 인코딩
		%>
		<jsp:useBean id="bb" class="com.itwillbs.time.TimeBean"/>
		<jsp:setProperty property="*" name="bb"/>
		
		
		<%
// 		Timestamp open = new Timestamp(System.currentTimeMillis());
	
// 		// 디비 연결 정보 가져오기 
// 		final String DRIVER = "com.mysql.cj.jdbc.Driver";
// 		final String DBURL = "jdbc:mysql://localhost:3306/testdb";
// 		final String DBID = "root";
// 		final String DBPW = "1234";
		
// 		//1. 드라이버 로드 
// 		Class.forName(DRIVER);
// 		System.out.println("드라이버 로드 성공");
// 		//2. 디비 연결 
// 		Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
// 		System.out.println("디비연결성공");
// 		//sql 문 작성 + pstmt 객체 
// 		String sql = "insert into time_to_j (in_time) values(?)";
// 		PreparedStatement pstmt = con.prepareStatement(sql);
// 		pstmt.setTimestamp(1, open);
// 		pstmt.executeUpdate();
// 		System.out.println("데이터저장 완료");
	%>
	
	<%	
		// 전달받은 정보 DB 저장 
		timeDAO tdao = new timeDAO();
		tdao.insertTime(bb);
		
		response.sendRedirect("main.jsp"); // 페이지 이동
	%>


</body>
</html>