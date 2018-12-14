package xyz.for01.resent;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import xyz.for01.conn.Conn;

public class RecentDao {
	private RecentDao() {
	}

	private static RecentDao instance = new RecentDao();

	public static RecentDao getInstance() {
		return instance;
	}
		
	public String Cookie(String hotelno) {
		
		
		String sql = "SELECT HOTELNO FROM HOTEL WHERE HOTELNO = ? ";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
				
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hotelno);
			rs = pstmt.executeQuery();
					
			if(rs.next()) {
				
				String HotelNo = rs.getString("hotelno"); 
			} 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return toString();
	}
	
}
