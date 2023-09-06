package com.itwillbs.time;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class timeDAO {
	
	
		private Connection con = null ; 
		private PreparedStatement pstmt = null;
		private ResultSet rs = null ; 
		private String sql = "";
		
		public Connection getConnect() throws Exception {
			System.out.println("DAO : CP 사용");
			
			Context initCTX = new InitialContext();
			// context.xml 파일 접근 => DataSource 형태로 변경 
			DataSource ds = (DataSource)initCTX.lookup("java:comp/env/jdbc/testdb"); 
			// 연결정보 객체를 사용해서 디비 연결 
			con = ds.getConnection();
			
			return con;
		}// 디비 연결 메서드 - getConnect()
		
		public void closeDB() {
			
				try {
					if (rs != null) {
					rs.close();
					}
					if (pstmt != null) {
						pstmt.close();
					}
					if (con != null) {
						con.close();
					}
					System.out.println("DAO : 자원해제 완료");
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}// 디비 자원 해제 메서드 close-DB ()
		
		// insert 
		public void insertTime(TimeBean bb) throws Exception {
			
			System.out.println( "DAO : insertTime(bb) 호출 시작 ");
			
			Timestamp open = new Timestamp(System.currentTimeMillis());
			
			con = getConnect();
			sql = "insert into time_to_j (in_time) values(?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setTimestamp(1, open);
			pstmt.executeUpdate();
			
			System.out.println("출석시간 저장 완료");
			
			
			
		}
		public void updateTime(TimeBean bb) throws Exception {
			
			System.out.println( "DAO : updateTime(bb) 호출 시작 ");
			
			Timestamp close = new Timestamp(System.currentTimeMillis());
			
			con = getConnect();
			sql = "update time_to_j set out_time = ? where out_time is null";
			pstmt = con.prepareStatement(sql);
			pstmt.setTimestamp(1, close);
			pstmt.executeUpdate();
			
			System.out.println("나간시간 저장 완료");
			
			
			
		}
		
		
		

}
