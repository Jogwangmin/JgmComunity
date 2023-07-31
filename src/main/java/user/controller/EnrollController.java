package user.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.model.service.UserService;
import user.model.vo.User;

/**
 * Servlet implementation class InsertController
 */
@WebServlet("/user/register.do")
public class EnrollController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnrollController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("user-id");
		String userPw = request.getParameter("user-pw");
		String userName = request.getParameter("user-name");
		int userAge = Integer.parseInt(request.getParameter("user-age"));
		String userEmail = request.getParameter("user-email");
		String userPhone = request.getParameter("user-phone");
		String userAddr = request.getParameter("user-address");
		User user = new User(userId, userPw, userName, userAge, userEmail, userPhone, userAddr);
		UserService service = new UserService();
		int result = service.insertUser(user);
		if(result > 0) {
			// 성공
			request.setAttribute("msg", "회원가입 성공했어요.");
			request.setAttribute("url", "/user/login.jsp");
			request.getRequestDispatcher("/user/serviceSuccess.jsp")
			.forward(request, response);
		}else {
			// 실패
			request.getRequestDispatcher("/user/serviceFailed.jsp")
			.forward(request, response);
		}
	}

}
