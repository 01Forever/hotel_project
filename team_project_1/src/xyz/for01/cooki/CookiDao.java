package xyz.for01.cooki;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import xyz.for01.conn.Conn;
import xyz.for01.hotelvo.HotelVo;

public class CookiDao {
	private CookiDao() {
		
	}
	
	private static CookiDao instance = new CookiDao();
	
	public static CookiDao getInstance() {
		return instance;
	}
	
	public HotelVo getCooki(String hotelNo) {
		HotelVo hVo = null;
		String sql = "select * from hotel where hotelNo=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hotelNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				hVo = new HotelVo();
				hVo.setHotelName(rs.getString("hotelName"));
				hVo.setAddress(rs.getString("address"));
			} 
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return hVo;
	}
}
