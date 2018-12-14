package xyz.for01.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sun.org.apache.regexp.internal.RE;

import xyz.for01.conn.Conn;
import xyz.for01.hotelvo.HotelImgVo;
import xyz.for01.hotelvo.HotelReviewVo;
import xyz.for01.hotelvo.HotelVo;
import xyz.for01.hotelvo.ReviewImgVo;
import xyz.for01.hotelvo.RoomImgVo;
import xyz.for01.hotelvo.RoomVo;

public class HotelDAO {
	private HotelDAO() {}
	
	private static HotelDAO instance = new HotelDAO();
	
	public static HotelDAO getInstance() {
		return instance;
	}
	
	// �샇�뀛 �긽�꽭 蹂닿린瑜� �쐞�븳 硫붿냼�뱶
	public HotelVo hotelDetail(String res_Start, int hotelNo) {
		String sql = "SELECT T.HOTELNO, T.HOTELNAME, T.ADDRESS, T.WTMX, T.WTMY, NVL(A.STAR,0) STAR, A.TOT " 
				+ "FROM HOTEL T JOIN " 
				+ "(SELECT AVG(B.STAR) STAR , COUNT(B.STAR) TOT , R.HOTELNO HOTELNO " 
				+ "FROM ROOM R LEFT OUTER JOIN REVIEW_BOARD B ON R.ROOMNO = B.ROOMNO " 
				+ "GROUP BY R.HOTELNO) A ON A.HOTELNO = T.HOTELNO "
				+ "WHERE T.HOTELNO = ?";
		
		HotelVo hVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, hotelNo);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				hVo = new HotelVo(rs.getInt("hotelno"), 
						rs.getString("hotelname"), rs.getString("address"), rs.getString("wtmx"), 
						rs.getString("wtmy"), rs.getInt("star"), rs.getInt("tot"), selectHotelImgs(hotelNo));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			Conn.close(conn, pstmt, rs);
		}
		return hVo;
	}
	
	// �샇�뀛 �씠誘몄� 遺덈윭�삤湲� �쐞�븳 硫붿냼�뱶
	private List<HotelImgVo> selectHotelImgs(int hotelNo) {
		String sql = "SELECT IMAGE, ORIGIN_IMAGE FROM HOTEL_IMAGE WHERE HOTELNO = ?";
		List<HotelImgVo> imgList = new ArrayList<HotelImgVo>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, hotelNo);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				HotelImgVo hVo = new HotelImgVo(rs.getString("image"), rs.getString("origin_image"));
				imgList.add(hVo);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			Conn.close(conn, pstmt, rs);
		}
		
		return imgList;
	}
	
	
	// �빐�떦 �샇�뀛 諛� 由ъ뒪�듃瑜� 遺덈윭�삤湲� �쐞�븳 硫붿냼�뱶
	public List<RoomVo> selectRoomList(String res_Start, int hotelNo) {
		String sql = "SELECT * " 
				+ "FROM ( " 
				+ "SELECT R.ROOMNO, ROOMNAME, PRICE, CONTENT, HOTELNO, MAXROOM, NVL(V.COUNT,0) COUNT " 
				+ "FROM ROOM R JOIN ( " 
				+ "SELECT ROOMNO, COUNT(ROOMNO) COUNT " 
				+ "FROM RESERVATION " 
				+ "WHERE RES_END > TO_DATE(?, 'YY/MM/DD') " 
				+ "AND RES_END - TO_DATE(?,'YY/MM/DD') > 0 " 
				+ "GROUP BY ROOMNO) V " 
				+ "ON R.ROOMNO = V.ROOMNO(+)) " 
				+ "WHERE HOTELNO = ?";
		List<RoomVo> rVoList = new ArrayList<RoomVo>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, res_Start);
			pstmt.setString(2, res_Start);
			pstmt.setInt(3, hotelNo);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				RoomVo rVo = 
						new RoomVo(rs.getInt("roomno"), rs.getString("roomname"), rs.getString("price"), rs.getString("content"), 
								rs.getInt("maxroom"), rs.getInt("count"), selectRoomImgs(rs.getInt("roomno")));
				rVoList.add(rVo);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			Conn.close(conn, pstmt, rs);
		}
		return rVoList;
	}
	
	// �빐�떦 諛⑹쓽 �씠誘몄�瑜� 遺덈윭�삤湲� �쐞�븳 硫붿냼�뱶
	private List<RoomImgVo> selectRoomImgs(int roomNo) {
		String sql = "SELECT IMAGE, ORIGIN_IMAGE FROM ROOM_IMAGE WHERE ROOMNO = ?";
		List<RoomImgVo> imgList = new ArrayList<RoomImgVo>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, roomNo);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				RoomImgVo rVo = new RoomImgVo(rs.getString("image"), rs.getString("origin_image"));
				imgList.add(rVo);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			Conn.close(conn, pstmt, rs);
		}
		
		return imgList;
	}
	
	// 硫붿씤 �럹�씠吏� 寃��깋 硫붿냼�뱶
	public List<HotelVo> searchHotelList(String borugh) {
		List<HotelVo> list = new ArrayList<>();
		String sql = "SELECT A.hotelno, A.hotelname, MIN(B.price) price, A.borugh, C.res_start, C.res_end, AVG(D.star) star " + 
					 "FROM hotel A " + 
					 "JOIN room B ON A.hotelno = B.hotelno " + 
					 "LEFT JOIN reservation C ON A.hotelno = C.hotelno " +
					 "LEFT JOIN review_board D ON B.roomno = D.roomno " +
					 "WHERE borugh = ? " +
					 "AND C.res_start IS NULL " + 
					 "AND C.res_end IS NULL " +
					 "GROUP BY A.hotelno, A.hotelname, A.borugh, C.res_start, C.res_end " + 
					 "ORDER BY hotelno";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		  
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, borugh);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				HotelVo hVo = new HotelVo();
				hVo.setHotelNo(rs.getInt("hotelNo"));
				hVo.setHotelName(rs.getString("hotelName"));
				hVo.setPrice(rs.getString("price"));
				hVo.setBorugh(rs.getString("borugh"));
				hVo.setRes_Start(rs.getDate("res_Start"));
				hVo.setRes_End(rs.getDate("res_End"));
				hVo.setStar(rs.getInt("star"));
				list.add(hVo);
			}
		     
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Conn.close(conn, pstmt, rs);
		}
		return list;
	}
	
	// �빐�떦 �샇�뀛�쓽 由щ럭瑜� 遺덈윭�삤湲� �쐞�븳 硫붿냼�뱶
	// selectReview메서드. sql 쿼리문을 불러오고, 게시물데이터를 리스트로 저장함
	public List<HotelReviewVo> selectReview(int hotelNo){//3.선언했던 매개변수를 이용합니다. hotelNo을 ReviewListServle에서 호출합니다.
		String sql = "SELECT B.BOARDNO, R.ROOMNAME, B.TITLE, B.CONTENT, "
				+ "(SELECT NIC FROM MEMBER M WHERE M.USERNO = B.USERNO) NIC, "
				+ "B.STAR, B.WRITEDATE "
				+ "FROM ROOM R JOIN REVIEW_BOARD B ON R.ROOMNO = B.ROOMNO "
				+ "WHERE R.HOTELNO = ?"; 
		List<HotelReviewVo> reviewList = new ArrayList<HotelReviewVo>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, hotelNo);
			rs = pstmt.executeQuery();
			
			while(rs.next()){				 // list에 게시물 데이터들을 담는다.
				HotelReviewVo rVo = new HotelReviewVo(rs.getInt("boardno"), rs.getString("title"), rs.getString("content"), 
						rs.getString("roomname"), rs.getString("nic"), rs.getInt("star"), rs.getDate("writedate"), selectReviewImgs(rs.getInt("boardno")));
				reviewList.add(rVo);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return reviewList;
	}
	
	// 由щ럭 �씠誘몄�瑜� 遺덈윭�삤湲� �쐞�븳 硫붿냼�뱶
	private List<ReviewImgVo> selectReviewImgs(int boardNo) {
		String sql = "SELECT IMAGE, ORIGINE_IMAGE FROM REVIEW_IMAGE WHERE BOARDNO = ?";
		List<ReviewImgVo> imgsList = new ArrayList<ReviewImgVo>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				ReviewImgVo rVo = new ReviewImgVo(rs.getString("image"), rs.getString("origine_image"));
				imgsList.add(rVo);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			Conn.close(conn, pstmt, rs);
		}
		
		return imgsList;
	}
	
	// �샇�뀛 蹂꾩젏�쓣 遺덈윭�삤�뒗 硫붿냼�뱶(Map)
	//하나의 키값으로 여러개의 값을 받아오기 위헤 맵 사용
	public Map<String, List<String>> getStar(int hotelNo) {
		String sql = "SELECT NVL(AVG(B.STAR),0) STAR , NVL(COUNT(B.STAR),0) TOT , R.HOTELNO HOTELNO "
				+ "FROM ROOM R LEFT OUTER JOIN REVIEW_BOARD B ON R.ROOMNO = B.ROOMNO " 
				+ "WHERE R.HOTELNO = ? " 
				+ "GROUP BY R.HOTELNO";   //스타는 총 별점의 평균 , 토탈은 총 리뷰의 개수
		Map<String, List<String>> getStar = new HashMap<String, List<String>>();
		List<String> star = new ArrayList<>(); //리뷰와 동일하게 데이터를 리스트로 저장
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, hotelNo);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				star.add(rs.getString("star"));
				star.add(rs.getString("tot"));	//위의 값을 리스트에 담아준다.
				getStar.put("getStar", star); //겟 스타에  애드로 담은 스타리스트를 넣어줌
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			Conn.close(conn, pstmt, rs);
		}
		
		return getStar;
	}
}
