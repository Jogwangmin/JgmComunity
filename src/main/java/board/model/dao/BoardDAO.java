package board.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import board.model.vo.Board;

public class BoardDAO {

	public int insertBoard(Connection conn, Board board) {
		PreparedStatement pstmt = null;
		String query = "INSERT INTO BOARD_TBL VALUES(SEQ_BOARDNO.NEXTVAL,?,?,'admin',DEFAULT,DEFAULT, 0)";
		int result = 0;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, board.getBoardSubject());
			pstmt.setString(2, board.getBoardContent());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	public int deleteBoardByNo(Connection conn, int boardNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "DELETE FROM BOARD_TBL WHERE BOARD_NO = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, boardNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}

	public List<Board> selectBoardList(Connection conn, int currentPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM(SELECT ROW_NUMBER() OVER(ORDER BY BOARD_NO DESC) ROW_NUM, BOARD_TBL.* FROM BOARD_TBL) WHERE ROW_NUM BETWEEN ? AND ?";
		List<Board> bList = new ArrayList<Board>();
		int recordCountPerPage = 10;
		int start = currentPage*recordCountPerPage - (recordCountPerPage - 1);
		int end = currentPage*recordCountPerPage;
				try {
					pstmt = conn.prepareStatement(query);
					pstmt.setInt(1, start);
					pstmt.setInt(2, end);
					rset = pstmt.executeQuery();
					while(rset.next()) {
						Board board = rsetToBoard(rset);
						bList.add(board);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} finally {
					try {
						rset.close();
						pstmt.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				return bList;
	}
	
	public String generatePageNavi(int currentPage) {
			int totalCount = 54;	
			int recordCountPerPage = 5;
			int naviTotalCount = 0;
			if(totalCount % recordCountPerPage > 0) {	
				naviTotalCount = totalCount / recordCountPerPage + 1;
			}else {
				naviTotalCount = totalCount / recordCountPerPage;
			}
			int naviCountPerPage = 5;	
			
			int startNavi = ((currentPage -1)/naviCountPerPage) * naviCountPerPage + 1;
			int endNavi = startNavi + naviCountPerPage - 1;
			
			if(endNavi > naviTotalCount) {
				endNavi = naviTotalCount;
			}
			boolean needPrev = true;
			boolean needNext = true;
			if(startNavi == 1) {
				needPrev = false;
			}
			if(endNavi == naviTotalCount) {
				needNext = false;
			}
			StringBuilder result = new StringBuilder();
			if(needPrev) {
				result.append("<a href='/board/list.do?currentPage="+(startNavi-1)+"'>[이전]</a>");
			}
			for(int i = startNavi; i <= endNavi; i++) {
				result.append("<a href='/board/list.do?currentPage="+i+"'>"+i+"</a>&nbsp;&nbsp;");
			}
			if(needNext) {
				result.append("<a href='/board/list.do?currentPage="+(endNavi+1)+"'>[다음]</a>");
			}
			return result.toString();
		}

	private Board rsetToBoard(ResultSet rset) throws SQLException {
		Board board = new Board();
		board.setBoardNo(rset.getInt("BOARD_NO"));
		board.setBoardSubject(rset.getString("BOARD_SUBJECT"));
		board.setBoardContent(rset.getString("BOARD_CONTENT"));
		board.setBoardWriter(rset.getString("BOARD_WRITER"));
		board.setBoardDate(rset.getTimestamp("BOARD_DATE"));
		board.setViewCount(rset.getInt("BOARD_VIEWCOUNT"));
		board.setLikeCount(rset.getInt("BOARD_LIKECOUNT"));
		return board;
	}

	public Board selectOneByNo(Connection conn, int boardNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM BOARD_TBL WHERE BOARD_NO = ?";
		Board board = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, boardNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				board = rsetToBoard(rset);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				rset.close();
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return board;	}

}
