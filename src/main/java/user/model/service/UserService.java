package user.model.service;

import java.sql.Connection;

import common.JDBCTemplate;
import user.model.dao.UserDAO;
import user.model.vo.User;

public class UserService {
	
	private JDBCTemplate jdbcTemplate;
	private UserDAO uDao;
	
	public UserService() {
		jdbcTemplate = JDBCTemplate.getInstance();
		uDao = new UserDAO();
	}
	
	public int insertUser(User user) {
		Connection conn = jdbcTemplate.createConnection();
		int result = uDao.insertUser(conn, user);
		if(result > 0) {
			jdbcTemplate.commit(conn);
		}else {
			jdbcTemplate.rollback(conn);
		}
		jdbcTemplate.close(conn);
		return result;
	}

	public User selectCheckLogin(User user) {
		Connection conn = jdbcTemplate.createConnection();
		User uOne = uDao.selectCheckLogin(conn, user);
		jdbcTemplate.close(conn);
		return uOne;
	}

	public int updateUser(User user) {
		Connection conn = jdbcTemplate.createConnection();
		// DAO 호출
		int result = uDao.updateMember(conn, user);
		// 커밋/롤백
		if (result > 0) {
			// 성공 - 커밋
			jdbcTemplate.commit(conn);
		} else {
			// 실패 - 롤백
			jdbcTemplate.rollback(conn);
		}
		jdbcTemplate.close(conn);
		return result;
	}

}
