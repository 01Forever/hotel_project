package xyz.for01.controller.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import xyz.for01.boardvo.BoardFileVo;
import xyz.for01.boardvo.BoardVo;
import xyz.for01.conn.Conn;

public class BoardDAO {
	
	public BoardDAO() {
		
	}
	private static BoardDAO instance = new BoardDAO();
	
	public static BoardDAO getInstance() {
		return instance;
	}
	public List<BoardVo> selectAllBoards(){
		String sql = "select * from board order by boardno desc";
		List<BoardVo> list = new ArrayList<BoardVo>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardVo bVo = new BoardVo();
				bVo.setBoardno(rs.getInt("boardno"));
				bVo.setCategory_num(rs.getInt("category_num"));
				bVo.setEmailid(rs.getString("emailid"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setWritedate(rs.getDate("writedate"));
				list.add(bVo);
			}
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		} finally {
			Conn.close(conn, pstmt, rs);
		}
		return list;
	}
	public void insertBoard(BoardVo bVo, List<BoardFileVo> list) {
		String sql = "insert into board(boardno, category_num, title, content) values(board_seq.nextval,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = Conn.getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bVo.getCategory_num());
			pstmt.setString(2, bVo.getTitle());
			pstmt.setString(3, bVo.getContent());
			pstmt.executeUpdate();
			pstmt.close();
			
			pstmt = conn.prepareStatement("select max(boardno) from board");
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				bVo.setBoardno(rs.getInt(1));
			}
			pstmt.close();
			System.out.println(bVo);
			
			for(BoardFileVo vo : list) {
				pstmt = conn.prepareStatement("insert into board_file values(file_seq.nextval,?,?,?,sysdate)");
				
				pstmt.setInt(1, bVo.getBoardno());
				pstmt.setString(2, vo.getBoard_file());
				pstmt.setString(3, vo.getOrigin_file());
				pstmt.executeUpdate();
				pstmt.close();
				
			}
			conn.commit();
			
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		} finally {
			Conn.close(conn, pstmt);
		}
	}
	public BoardVo selectBoardByBoardno(String boardno) {
	String sql = "select * from board where boardno=?";
	BoardVo bVo = null;
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
				bVo = new BoardVo();
				bVo.setBoardno(rs.getInt("boardno"));
				bVo.setCategory_num(rs.getInt("category_num"));
				bVo.setEmailid(rs.getString("emailid"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setWritedate(rs.getDate("writedate"));
			}
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		} finally {
			Conn.close(conn, pstmt, rs);
		}
	} catch (Exception e) {
		e.printStackTrace();// TODO: handle exception
	}
	return bVo;
	}
	public void updateBoard(BoardVo bVo) {
		String sql = "update board set category_num=?, title=?, content=? where boardno=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bVo.getCategory_num());
			pstmt.setString(2, bVo.getTitle());
			pstmt.setString(3, bVo.getContent());
			pstmt.setInt(4, bVo.getBoardno());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		} finally {
			Conn.close(conn, pstmt);
		}
	}
	
	public List<BoardVo> getBoards(int start, int end) throws Exception{
		String sql = "";
		sql +="SELECT A.* FROM(";
		sql +=" select BOARDNO,CATEGORY_NUM, EMAILID,TITLE, CONTENT, WRITEDATE, ROWNUM AS RN,";  
		sql +=" (SELECT COUNT(*) FROM BOARD) AS CNT";
		sql +=" from board";
		sql +=" ORDER BY BOARDNO DESC"; 
		sql +=" )A WHERE RN BETWEEN ?AND ?";
		
		Connection conn = Conn.getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, start);
		pstmt.setInt(2, end);
		ResultSet rs = pstmt.executeQuery();
		List<BoardVo> list = new ArrayList<>();
		while(rs.next()) {
			
			BoardVo boardVo = new BoardVo(rs.getInt(1), rs.getInt(2), rs.getString(3),rs.getString(4), rs.getString(5), rs.getDate(6));
			list.add(boardVo);
		}
		return list;
	}
	public int getBoardCount() throws Exception {
		String sql = "";
		sql += " (SELECT COUNT(*) FROM BOARD)";
		
		Connection conn = Conn.getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		int returnVal = 0;
		if(rs.next()) {
			returnVal = rs.getInt(1);
		}
		return returnVal;
	}
	
	public static void main(String[] args) throws Exception{
		System.out.println(new BoardDAO().getBoardCount());
	}
	public void deleteBoard(String boardno) {
		String sql = "delete from board where boardno=?";
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
	public String selectFile(String file_idx) {
		String sql = "select origin_file from board_file where file_idx = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String str = "";
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, file_idx);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				str = rs.getString(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		} finally {
			Conn.close(conn, pstmt, rs);
		}
		return str;
	}
	
	public List<BoardFileVo> selectFiles(String boardno) {
		String sql = "select file_idx, board_file from board_file where boardno = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<BoardFileVo> str = new ArrayList<>();
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, boardno);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardFileVo vo = new BoardFileVo();
				vo.setBoard_file(rs.getString(2));
				vo.setFile_idx(rs.getInt(1));
				str.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		} finally {
			Conn.close(conn, pstmt, rs);
		}
		return str;
	}
}	


