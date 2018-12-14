package xyz.for01.controller.Inquiry;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import xyz.for01.boardvo.BoardVo;
import xyz.for01.conn.Conn;
import xyz.for01.controller.board.BoardDAO;

public class InquiryBoardDAO {
	private InquiryBoardDAO() {
		
	}
	
	private static InquiryBoardDAO instance = new InquiryBoardDAO();
	
	public static InquiryBoardDAO getInsatcne() {
		return instance;
	}
	public List<InquiryBoardVo> selectAllInquiryBoards() {
		String sql = "select * from inquiry_board order by boardno desc";
		
		List<InquiryBoardVo> list = new ArrayList<InquiryBoardVo>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				InquiryBoardVo IbVo = new InquiryBoardVo();
				
				IbVo.setBoardno(rs.getInt("boardno"));
				IbVo.setCategory(rs.getString("category"));
				IbVo.setEmailid(rs.getString("emailid"));
				IbVo.setTitle(rs.getString("title"));
				IbVo.setContent(rs.getString("content"));
				IbVo.setPhone(rs.getString("phone"));
				IbVo.setWritedate(rs.getTimestamp("writedate"));
				
				list.add(IbVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Conn.close(conn, pstmt, rs);
		}
		return list;
	}
	public void insertInquiryBoard(InquiryBoardVo IbVo) {
		/*String sql = "insert into inquiry_board(category, emailid, title, content, phone) values(boardno_seq.nextval,?,?,?,?,?, sysdate)";*/
		String sql = "insert into inquiry_board values(boardno_seq.nextval,?,?,?,?,?,SYSDATE)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, IbVo.getCategory());
			pstmt.setString(2, IbVo.getEmailid());
			pstmt.setString(3, IbVo.getTitle());
			pstmt.setString(4, IbVo.getContent());
			pstmt.setString(5, IbVo.getPhone());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Conn.close(conn, pstmt);
		}
	}
	public List<InquiryBoardVo> getBoards(int start, int end) throws Exception{
		String sql = "";
		sql +="SELECT A.* FROM(";
		sql +=" select BOARDNO, CATEGORY, EMAILID,TITLE, CONTENT, PHONE , WRITEDATE, ROWNUM AS RN, ";  
		sql +=" (SELECT COUNT(*) FROM inquiry_BOARD) AS CNT";
		sql +=" from inquiry_board";
		sql +=" ORDER BY BOARDNO DESC"; 
		sql +=" )A WHERE RN BETWEEN ?AND ?";
		
		Connection conn = Conn.getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, start);
		pstmt.setInt(2, end);
		ResultSet rs = pstmt.executeQuery();
		List<InquiryBoardVo> list = new ArrayList<>();
		while(rs.next()) {
			
			InquiryBoardVo inquiryboardVo = new InquiryBoardVo(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4), rs.getString(5), rs.getString(6),rs.getTimestamp(7));
			list.add(inquiryboardVo);
		}
		return list;
	}
	public int getBoardCount() throws Exception {
		String sql = "";
		sql += " (SELECT COUNT(*) FROM inquiry_BOARD)";
		
		Connection conn = Conn.getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		int returnVal = 0;
		if(rs.next()) {
			returnVal = rs.getInt(1);
		}
		return returnVal;
	}
//	public static void main(String[] args) throws Exception{
//		System.out.println(new BoardDAO().getBoardCount());
	public InquiryBoardVo selectInquiryBoardByBoardno(String boardno) {
		String sql = "select * from inquiry_board where boardno=?";
		InquiryBoardVo ibVo = null;
		try {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = Conn.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, boardno);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					ibVo = new InquiryBoardVo();
					ibVo.setBoardno(rs.getInt("boardno"));
					ibVo.setCategory(rs.getString("category"));
					ibVo.setEmailid(rs.getString("emailid"));
					ibVo.setTitle(rs.getString("title"));
					ibVo.setContent(rs.getString("content"));
					ibVo.setPhone(rs.getString("phone"));
				}				
			}catch (Exception e) {
				e.printStackTrace();// TODO: handle exception
			} finally {
				Conn.close(conn, pstmt, rs);
			}
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		return ibVo;
		}
	public void deleteinquiryBoard(String boardno) {
		String sql = "delete from inquiry_board where boardno =?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, boardno);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		} finally {
			Conn.close(conn, pstmt);
		}
	}
	}
