package xyz.for01.controller.eventboard;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import xyz.for01.conn.Conn;

public class EventBoardDAO {
	public EventBoardDAO() {
	}
	private static EventBoardDAO instance = new EventBoardDAO();
	
	public static  EventBoardDAO getInstance() {
		return instance;
	}
	public List<EventBoardVo> selectAllEventBoards() {
		String sql = "SELECT * FROM EVENTBOARD ORDER BY BOARDNO DESC";
		List<EventBoardVo> list = new ArrayList<EventBoardVo>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				EventBoardVo ebVo = new EventBoardVo();
				ebVo.setBoardno(rs.getInt("boardno"));
				ebVo.setTitle(rs.getString("title"));
				ebVo.setContent(rs.getString("content"));
				ebVo.setPictureone(rs.getString("pictureone"));
				ebVo.setOriginone(rs.getString("originone"));
				ebVo.setPicturetwo(rs.getString("picturetwo"));
				ebVo.setOrigintwo(rs.getString("origintwo"));
				ebVo.setWritedate(rs.getTimestamp("wrtiedate"));
				ebVo.setStartdate(rs.getTimestamp("startdate"));
				ebVo.setEnddate(rs.getTimestamp("enddate"));
				list.add(ebVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Conn.close(conn, pstmt, rs);
		}
		return list;
	}
	public void insertEventBoard(EventBoardVo ebVo) {
		String sql = "insert into eventboard values(eventboard_seq.nextval,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		System.out.println(ebVo);
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ebVo.getTitle());
			pstmt.setTimestamp(2, ebVo.getStartdate());
			pstmt.setTimestamp(3, ebVo.getEnddate());
			pstmt.setString(4, ebVo.getPictureone());
			pstmt.setString(5, ebVo.getContent());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		} finally {
			Conn.close(conn, pstmt);
		}
		System.out.println(ebVo);
	}
	public EventBoardVo selectEventBoardByBoard(String boardno) {
		String sql = "select * from eventboard where boardno =?";
		EventBoardVo ebVo = null;
		try {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = Conn.getConnection();
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					ebVo = new EventBoardVo();
					ebVo.setBoardno(rs.getInt("boardno"));
					ebVo.setTitle(rs.getString("title"));
					ebVo.setStartdate(rs.getTimestamp("startdate"));
					ebVo.setEnddate(rs.getTimestamp("enddate"));
					ebVo.setPictureone(rs.getString("pictureone"));
					ebVo.setContent(rs.getString("content"));
					ebVo.setWritedate(rs.getTimestamp("writedate"));
				}
			} catch (Exception e) {
				e.printStackTrace();// TODO: handle exception
			} finally {
				Conn.close(conn, pstmt, rs);
			}
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		return ebVo;
	}
}
