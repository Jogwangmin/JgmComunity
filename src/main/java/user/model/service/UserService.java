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
}
