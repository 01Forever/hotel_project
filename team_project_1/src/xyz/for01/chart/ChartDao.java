package xyz.for01.chart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import javafx.scene.chart.Chart;
import xyz.for01.conn.Conn;

public class ChartDao {
	private ChartDao() {
	}

	private static ChartDao instance = new ChartDao();

	public static ChartDao getInstance() {
		return instance;
	}

	public String barChart() {
		String sql = "SELECT BORUGH, SUM(ROOM_CNT) ROOM_CNT, COUNT(HOTELNO) HOTEL_CNT "
				+ "FROM (SELECT BORUGH, HOTELNO, (SELECT COUNT(*) FROM ROOM B WHERE "
				+ "B.HOTELNO = A.HOTELNO GROUP BY HOTELNO) ROOM_CNT "
				+ "FROM HOTEL A) GROUP BY BORUGH ";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		JsonArray array = null;
		
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			array = new JsonArray();
			while (rs.next()) {
				JsonObject object = new JsonObject();
				object.addProperty("borugh", rs.getString(1));
				object.addProperty("room", rs.getString(2));
				object.addProperty("hotel", rs.getString(3));
				array.add(object);
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
		return array.toString();
	}
	public String lineChart() {
		String sql = "select count(*), TO_CHAR(JOINDATE, 'MM') from member group by TO_CHAR(JOINDATE, 'MM')";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		JsonArray array = null;
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			array = new JsonArray();
			while (rs.next()) {
				JsonObject object = new JsonObject();
				object.addProperty("count", rs.getInt(1));
				object.addProperty("joindate", rs.getString(2));
				array.add(object);
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
		return array.toString();
	}

	public String donutChart() {
	
		String sql = "select one, count(one) as cnt from (select " 
				+ " case when to_number(to_char(RESDATE, 'HH24')) between 0 and 3 then 'A) 0시부터 3시 '"
				+ " when to_number(to_char(RESDATE, 'HH24')) between 4 and 6 then 'B) 4시부터 6시 '"
				+ " when to_number(to_char(RESDATE, 'HH24')) between 7 and 9 then 'C) 7시부터 9시 '" 
				+ " when to_number(to_char(RESDATE, 'HH24')) between 10 and 12 then 'D) 10시부터 12시 '"
				+ " when to_number(to_char(RESDATE, 'HH24')) between 13 and 15 then 'E) 13시부터 15시 '" 
				+ " when to_number(to_char(RESDATE, 'HH24')) between 15 and 18 then 'F) 15시부터 18시 '"
				+ " when to_number(to_char(RESDATE, 'HH24')) between 19 and 21 then 'G) 19시부터 21시 '"
				+ " when to_number(to_char(RESDATE, 'HH24')) between 22 and 23 then 'H) 22시부터 23시 '" 
				+ " end as one, to_char(RESDATE, 'HH24') two" 
				+ " from RESERVATION"
				+ " group by to_char(RESDATE, 'HH24'))"
				+ " group by one" 
				+ " order by one";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		JsonArray array = null;
				
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			array = new JsonArray();
			while (rs.next()) {
				JsonObject object = new JsonObject();
				object.addProperty("resdate", rs.getString(1));
				object.addProperty("count", rs.getString(2));
				array.add(object);
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
		return array.toString();
	}
	
	}

