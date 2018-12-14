package xyz.for01.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import xyz.for01.conn.Conn;
import xyz.for01.membervo.MemberVo;
import xyz.for01.sha256.SecurityUtil;

public class MemberDao {
	public MemberDao() {}

	private static MemberDao instance = new MemberDao();

	public static MemberDao getInstance() { return instance; }

	// 가입된 회원 체크 
	public int confirmID(String emailid) {
		int result = -1;
		String sql = "select emailid from member where emailid = ? AND delyn = 'N' ";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, emailid);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				result = 1;
			} else {
				result = -1;
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
		return result;
	}
	// 
	public String memberLoginCheck(MemberVo mVo) {
		String sql = "SELECT (CASE WHEN "
				+ "(SELECT COUNT(*) FROM member WHERE emailid = ? AND delyn = 'N') < 1  THEN '1' WHEN "
				+ "(SELECT pwd FROM member WHERE emailid = ? AND delyn = 'N') = ? THEN '2' ELSE '3' END) AS result FROM dual";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String result = "1";

		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, mVo.getEmailid());
			pstmt.setString(2, mVo.getEmailid());
			pstmt.setString(3, mVo.getPwd());

			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getString("result");
			} else {
				result = "1";
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	// 로그인시에 유저가 있는지 체크합니다
	public int userCheck(String emailid, String pwd) {
		int result = -1;
		String sql = "SELECT pwd FROM member WHERE emailid = ? AND delyn ='N' ";
		// 유저가 탈퇴 회원이 아닐시에만 불러옵니다.
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		SecurityUtil securityUtil = new SecurityUtil(); // 암호화 클래스입니다.

		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, emailid); // SQL문장의 ? 에 들어갈 부분입니다.
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (rs.getString("pwd") != null && rs.getString("pwd").equals(pwd))
					// 패스워드가 서버것과 동일 할시에 result 값에 1을 저장합니다. 
					result = 1;
				else
					result = 0;
			} else {
				result = -1;
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
		// 저장된 값을 반환합니다.
		return result;
	}
	
	//占쏙옙占실울옙 占쏙옙占쏙옙퓸占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쌀뤄옙占쏙옙占쏙옙 占쌨쇽옙占쏙옙
	public MemberVo getMember(String emailid) {
		System.out.println(emailid);
		MemberVo mVo = null;
		String sql = "SELECT emailid , nic , phone , rtrim(grade) AS grade, userno, (SELECT SUM(MILEAGE) " 
				+ "FROM MILEAGE MIL JOIN MEMBER M ON MIL.USERNO = M.USERNO " 
				+ "WHERE M.EMAILID = ? " 
				+ "GROUP BY M.USERNO) MILEAGE FROM member WHERE emailid = ? AND delyn ='N'";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, emailid);
			pstmt.setString(2, emailid);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				mVo = new MemberVo(rs.getString("emailid"),rs.getString("nic"),rs.getString("phone"),rs.getString("grade"),rs.getInt("userno"),rs.getLong(6));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Conn.close(conn, pstmt, rs);
		}
		return mVo;
	}

	// 회占쏙옙占쏙옙占쌉시울옙 占쏙옙占싱듸옙 체크 占실댐옙 占싸븝옙占쌉니댐옙.
	public int idCheck(MemberVo mVo) {
		int result = -1;
		String sql = "SELECT COUNT(*) AS cnt FROM member WHERE emailid = ? AND delyn ='N' ";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mVo.getEmailid());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getInt("cnt");
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
		return result;
	}

	// 회원가입 메서드
	public int insertMember(MemberVo mVo) {
		int result = -1;
		String sql = "INSERT INTO member(" + "USERNO," + "EMAILID," + "PWD," + "NIC," + "PHONE ," + "JOINDATE,"
				+ "GRADE ) VALUES(" + "USERNUM_SEQ.nextval," // USERNUM
				+ "?," // EMAILID
				+ "?," // PWD
				+ "?," // NIC
				+ "?," // PHONE
				+ "sysdate," // JOINDATE
				+ "?)"; // GRADE

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		SecurityUtil securityUtil = new SecurityUtil(); // 占쏙옙호화 클占쏙옙占쏙옙
		// securityUtil.encryptSHA256()

		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, mVo.getEmailid());
			pstmt.setString(2, securityUtil.encryptSHA256(mVo.getPwd()));
			pstmt.setString(3, mVo.getNic());
			pstmt.setString(4, mVo.getPhone());
			pstmt.setString(5, "1");
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	// 회원수정 메서드
	public int Modify(MemberVo mVo) {
		int result = -1;
		String sql1 = "UPDATE member ";
		Boolean pwdModify = !"".equals(mVo.getPwd()) && mVo.getPwd() != null;
		// 비밀번호 값이 널이 왓을시 조건입니다.
		 
		sql1 += " SET ";
			
				if (pwdModify) {
					sql1 +=  " PWD = ? ,";
				}
				sql1 += " NIC = ?, "
				+ " PHONE = ? "
				+ " WHERE emailid = ? AND delyn ='N' ";
		// 기본 회원정보 수정시에 들어가는 부분입니다.
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = Conn.getConnection(); 
			pstmt = conn.prepareStatement(sql1);

			if (pwdModify) {
				pstmt.setString(1, mVo.getPwd());
				pstmt.setString(2, mVo.getNic());
				pstmt.setString(3, mVo.getPhone());
				pstmt.setString(4, mVo.getEmailid());
			}
			else {
				pstmt.setString(1, mVo.getNic());
				pstmt.setString(2, mVo.getPhone());
				pstmt.setString(3, mVo.getEmailid());
			}
			
			result = pstmt.executeUpdate();
			
			// 회원정보가 수정됫을시에 저장되는 회원정보수정 날짜 입력 부분입니다.
			int result2 = -1;
			String sql2 = "INSERT INTO membermod(";
					// 패스워드가 수정이 되었을시에 패스워드수정 컬럼에 저장되는 조건식입니다.
					if (pwdModify) {
						sql2 += " pwd_date,";
					}
					// 만일 패스워드 수정이 되지않았을시에 회원정보 수정 날짜가 입력되는 조건식입니다.
						sql2 += " user_date, membermodno, userno)"
								+ " VALUES(";
					if (pwdModify) {
						sql2 += "sysdate,";
					}
					sql2 += " sysdate, SEQ_MEMBERMODNO.nextval, ?)";
			
			Connection conn2 = null;
			PreparedStatement pstmt2 = null;

			try {
				conn2 = Conn.getConnection();
				pstmt2 = conn2.prepareStatement(sql2);

				pstmt2.setInt(1, mVo.getUserno());
				result2 = pstmt2.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (pstmt2 != null) pstmt2.close();
					if (conn2 != null) conn2.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	/*
	public List<MemberVo> selectAllUser() {
		String sql = "SELECT * FROM member order by joindate desc ";
		List<MemberVo> list = new ArrayList<MemberVo>();

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				MemberVo mVo = new MemberVo();
				mVo.setEmailid(rs.getString("emailid"));
				mVo.setNic(rs.getString("nic"));
				mVo.setPhone(rs.getString("phone"));
				mVo.setGrade(rs.getString("grade"));
				mVo.setDelyn(rs.getString("delyn"));
				mVo.setUserno(rs.getInt("userno"));;
				list.add(mVo);
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
		return list;
	}
*/
	// 占쏙옙占쏙옙占쏙옙 회占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙
	public MemberVo selectUserByEmailidDelyn(int userno) {
		String sql = "SELECT * FROM member WHERE userno = ?";
		MemberVo mVo = null;
		try {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = Conn.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, userno);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					mVo = new MemberVo();
					mVo.setEmailid(rs.getString("emailid"));
					mVo.setNic(rs.getString("nic"));
					mVo.setPhone(rs.getString("phone"));
					mVo.setGrade(rs.getString("grade"));
					mVo.setJoindate(rs.getTimestamp("joindate"));
					mVo.setDelyn(rs.getString("delyn"));
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
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mVo;
	}

	// 占쏙옙占쏙옙占쏙옙 회占쏙옙 占쏙옙占쏙옙 
	public int userListModify(MemberVo mVo) {
		int result = -1;
		String sql = "UPDATE member SET nic = ? , phone = ?, grade = ? , DELYN =?"
				+ " WHERE userno = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mVo.getNic());
			pstmt.setString(2, mVo.getPhone());
			pstmt.setString(3, mVo.getGrade());
			pstmt.setString(4, mVo.getDelyn());
			pstmt.setInt(5, mVo.getUserno());
			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	// 패스워트 찾기 메서드
	public int pwModify(MemberVo mVo) {
		int result = -1;
		String sql = "UPDATE member SET pwd = ?"
				+ " WHERE emailid = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		

		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mVo.getPwd());
			pstmt.setString(2, mVo.getEmailid());
			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	// 회원리스트 수정 
	public int selectUserModify(MemberVo mVo) {
		int result = -1;
		String sql = "UPDATE member SET grade = ? WHERE userno = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mVo.getGrade());
			pstmt.setInt(2, mVo.getUserno());	
			result = pstmt.executeUpdate();			


		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	// 회원정보 리스트 메서드
	public List<MemberVo> getMemberList(int start, int end) throws Exception{
		String sql = "";
		sql +="SELECT A.* FROM (" + 
				" select userno, emailid, nic, grade, delyn, ROWNUM AS RN,(SELECT COUNT(*) FROM member) AS CNT " + 
				" from member " + 
				" ORDER BY userno DESC) A" +
				" WHERE RN BETWEEN ?AND ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<MemberVo> list = new ArrayList<>();
		
		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MemberVo mv = new MemberVo();
				mv.setUserno(rs.getInt("userno"));;
				mv.setEmailid(rs.getString("emailid"));
				mv.setNic(rs.getString("nic"));
				mv.setGrade(rs.getString("grade"));
				mv.setDelyn(rs.getString("delyn"));
				list.add(mv);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
	public int getMemberListCount() throws Exception {
		String sql = "";
		sql += " (SELECT COUNT(*) FROM member)";
		
		Connection conn = Conn.getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		int returnVal = 0;
		
		if(rs.next()) {
			returnVal = rs.getInt(1);
		}
		return returnVal;
	}
	
	
	// 검색부분 수정 해야되는 로직입니다.
	
	public ArrayList<MemberVo> list(String col, String word) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<MemberVo> list = new ArrayList<MemberVo>();
		
		try {
			String sql = "SELECT * FROM member";
			conn = Conn.getConnection();

			if (col.equals("none")) {
				sql += " WHERE nic LIKE ? OR emailid LIKE ? OR grade LIKE ? ORDER BY userno DESC";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, "%" + word + "%");
				pstmt.setString(2, "%" + word + "%");
				pstmt.setString(3, "%" + word + "%");
			} else if (col.equals("rname")) {
				sql += " WHERE nic LIKE ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, "%" + word + "%");
			} else if (col.equals("id")) {
				sql += " WHERE emailid LIKE ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, "%" + word + "%");
			} else if (col.equals("grade")) {
				sql += " WHERE grade LIKE ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, "%" + word + "%");
			} else {
				pstmt = conn.prepareStatement(sql);
			} 
			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				MemberVo mv = new MemberVo();
				mv.setEmailid(rs.getString("emailid"));
				mv.setGrade(rs.getString("grade"));
				mv.setNic(rs.getString("nic"));
				mv.setUserno(rs.getInt("userno"));
				list.add(mv);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
	// 만들고 있는 페이지입니다. 
	public MemberVo getResMember(int userno) {
		MemberVo mVo = null;
		String sql = "SELECT USERNO, EMAILID, NIC, PHONE, rtrim(grade) AS grade, NVL(GET_MIL(?),0) MILEAGE FROM MEMBER WHERE USERNO = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userno);
			pstmt.setInt(2, userno);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				mVo = new MemberVo(rs.getString("emailid"), rs.getString("nic"), rs.getString("phone"), rs.getString("grade"), rs.getInt("userno"), rs.getLong("mileage"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Conn.close(conn, pstmt, rs);
		}
		return mVo;
	}
	
	public static void main(String[] args) {
		MemberVo vo = new MemberVo("11", "111", "111", "1", 123, 12345);
		System.out.println(vo);
	}
}
