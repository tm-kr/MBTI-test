package mbti;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.ConnectionUtil;
import util.DatabaseUtil;
import util.Singleton;

public class MbtiDAO {
	
	public MbtiDAO(){
		
	}
	
	public MbtiDTO mbtiResult(String mbti) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MbtiDTO result = null;
		try {
			conn = ConnectionUtil.getConnection();
			String SQL = "select * from \"MBTI\" where \"MBTI\"=?";
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, mbti);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = new MbtiDTO(
						rs.getString(1),
						rs.getInt(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5)
						);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(rs != null) {
				try {
					rs.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}
	
	public void updatePeople (int people, String mbti) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			conn = ConnectionUtil.getConnection();
			
			StringBuffer SQL = new StringBuffer();
			SQL.append("update \"MBTI\" ");
			SQL.append("set \"PEOPLE\"=? ");
			SQL.append("where \"MBTI\"=?");
			
			pstmt = conn.prepareStatement(SQL.toString());
			pstmt.setInt(1, people);
			pstmt.setString(2, mbti);
			
			result = pstmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			
		}
	}
}
