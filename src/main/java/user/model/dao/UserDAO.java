package user.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import user.model.vo.User;

public class UserDAO {

	public int insertUser(Connection conn, User user) {
		PreparedStatement pstmt = null;
	    String query = "INSERT INTO USER_TBL VALUES(?,?,?,?,?,?,?)";
	    int result = 0;
	    try {
	        pstmt = conn.prepareStatement(query);
	        pstmt.setString(1, user.getUserId());
	        pstmt.setString(2, user.getUserPw());
	        pstmt.setString(3, user.getUserName());
	        pstmt.setInt(4, user.getUserAge());
	        pstmt.setString(5, user.getUserEmail());
	        pstmt.setString(6, user.getUserPhone());
	        pstmt.setString(7, user.getUserAddress());
	        result = pstmt.executeUpdate();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	    	try {
				pstmt.close();
				conn.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    return result;
	}
	
	public int updateMember(Connection conn, User user) {
		PreparedStatement pstmt = null;
	    String query = "UPDATE USER_TBL SET USER_PW = ?, USER_NAME = ?, USER_EMAIL = ?, USER_PHONE = ?, USER_ADDRESS = ? WHERE USER_ID = ?";
	    int result = 0;
	    try {
	        pstmt = conn.prepareStatement(query);
	        pstmt.setString(1, user.getUserPw());
	        pstmt.setString(2, user.getUserName());
	        pstmt.setString(3, user.getUserEmail());
	        pstmt.setString(4, user.getUserPhone());
	        pstmt.setString(5, user.getUserAddress());
	        pstmt.setString(6, user.getUserId());
	        result = pstmt.executeUpdate();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	    	try {
				pstmt.close();
				conn.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    return result;
	}
	
	public User selectCheckLogin(Connection conn, User user) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM USER_TBL WHERE USER_ID = ? AND USER_PW = ?";
		User uOne = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, user.getUserId());
			pstmt.setString(2, user.getUserPw());
			rset = pstmt.executeQuery();
			if(rset.next()) {
				uOne = rsetToUser(rset);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rset.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return uOne;
	}

	private User rsetToUser(ResultSet rset) throws SQLException {
		User user = new User();
		user.setUserId(rset.getString("USER_ID"));
		user.setUserPw(rset.getString("USER_PW"));
		user.setUserName(rset.getString("USER_NAME"));
		user.setUserAge(rset.getInt("USER_AGE"));
		user.setUserEmail(rset.getString("USER_EMAIL"));
		user.setUserPhone(rset.getString("USER_PHONE"));
		user.setUserAddress(rset.getString("USER_ADDRESS"));
		return user;
	}



}
