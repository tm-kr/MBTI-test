package total;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.ConnectionUtil;
import util.DatabaseUtil;
import util.Singleton;

public class TotalDAO {
	public TotalDAO() {
		
	}
	
	public int selectTotal() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = -1;
		
		try {
			conn = ConnectionUtil.getConnection();
			String SQL = " select * FROM \"TOTAL\" ";
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result =  rs.getInt(1);
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
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}
	
	public void updateTotal(int total) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			conn = ConnectionUtil.getConnection();
			
			StringBuffer SQL = new StringBuffer();
			SQL.append("update \"TOTAL\" ");
			SQL.append("set \"TOTAL\" = ?");
			
			pstmt =conn.prepareStatement(SQL.toString());
			pstmt.setInt(1, total);
			result = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
