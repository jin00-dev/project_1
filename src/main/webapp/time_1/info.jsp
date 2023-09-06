<%@page import="com.itwillbs.time.TimeBean"%>
<%@page import="java.sql.ResultSet"%>
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
<h1>info.jsp</h1>

		

<!-- MySQL 연동  -->
	
	<%
		request.setCharacterEncoding("UTF-8"); // 한글 인코딩
		
	
		// 디비 연결 정보 가져오기 
		final String DRIVER = "com.mysql.cj.jdbc.Driver";
		final String DBURL = "jdbc:mysql://localhost:3306/testdb";
		final String DBID = "root";
		final String DBPW = "1234";
		
		//1. 드라이버 로드 
		Class.forName(DRIVER);
		System.out.println("드라이버 로드 성공");
		//2. 디비 연결 
		Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
		System.out.println("디비연결성공");
		//sql 문 작성 + pstmt 객체 
		String sql = "select * from time_to_j";
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		System.out.println("정보조회 성공");
		
		TimeBean tb = new TimeBean() ;
		
		if (rs.next()){
			tb.setToday(rs.getDate("today"));
			tb.setIn_time(rs.getTime("in_time"));
			tb.setOut_time(rs.getTime("out_time"));
		}
	%>
	
		날짜 : <%=tb.getToday() %><br>
		도착시간 : <%=tb.getIn_time() %> <br>
		출발시간 : <%=tb.getOut_time() %>
		
		


</body>
</html>