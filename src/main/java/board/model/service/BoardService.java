package board.model.service;

import java.sql.Connection;
import java.util.List;

import board.model.dao.BoardDAO;
import board.model.vo.Board;
import board.model.vo.PageData;
import common.JDBCTemplate;

public class BoardService {
	
	private JDBCTemplate jdbcTemplate;
	private BoardDAO bDao;
	
	public BoardService() {
		jdbcTemplate = JDBCTemplate.getInstance();
		bDao = new BoardDAO();
	}

	public int insertBoard(Board board) {
		Connection conn = jdbcTemplate.createConnection();
		int result = bDao.insertBoard(conn, board);
		if(result > 0) {
			jdbcTemplate.commit(conn);
		}else {
			jdbcTemplate.rollback(conn);
		}
		jdbcTemplate.close(conn);
		return result;
	}

	public PageData selectBoardList(int currentPage) {
		Connection conn = jdbcTemplate.createConnection();
		List<Board> bList = bDao.selectBoardList(conn, currentPage);
		String pageNavi = bDao.generatePageNavi(currentPage);
		// 1. Map이용
		// 2. VO클래스 이용
		PageData pd = new PageData(bList, pageNavi);
		jdbcTemplate.close(conn);
		return pd;
	}

	public Board selectOneByNo(int boardNo) {
		Connection conn = jdbcTemplate.createConnection();
		Board board = bDao.selectOneByNo(conn, boardNo);
		jdbcTemplate.close(conn);
		return board;
	}



}
