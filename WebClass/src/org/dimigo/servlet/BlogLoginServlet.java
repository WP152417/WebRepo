package org.dimigo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

@WebServlet(name = "bloglogin", urlPatterns = { "/bloglogin" })
public class BlogLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BlogLoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.printf("id : %s, pwd : %s\n", id, pwd);
		
		response.setContentType("application/json; charset=utf-8");
		
		if(id.equals("test@naver.com")){
			// 세션에 사용자 정보 생성
			HttpSession session = request.getSession();
			UserVO user = new UserVO();
			user.setId(id);
			
			session.setAttribute("user", user);
			
			RequestDispatcher rd = request.getRequestDispatcher("myblog/main.jsp");
			rd.forward(request, response);
		} else{
			request.setAttribute("msg", "error");

			RequestDispatcher rd = request.getRequestDispatcher("myblog/main.jsp");
			rd.forward(request, response);
		}
	}

}
