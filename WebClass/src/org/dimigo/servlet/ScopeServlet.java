package org.dimigo.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dimigo.vo.UserVO;

/**
 * Servlet implementation class ScopeServlet
 */
@WebServlet("/scope")
public class ScopeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScopeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			System.out.println("id: " + id + " pwd: " + pwd);
			
			if(id == null || id.trim().equals(""))
				throw new Exception("id는 필수 항목입니다.");
			//request scope
			request.setAttribute("key", "rvalue");
			
			//session scope
			request.getSession().setAttribute("key", "svalue");
			
			//application scope
			request.getServletContext().setAttribute("key", "avalue");
			
			request.setAttribute("user", new UserVO("asdf@naver.com", "홍길동", "의적"));
		}
		catch(Exception e)
		{
			request.setAttribute("error", e.getMessage());
			
		}
		finally
		{
			request.getRequestDispatcher("JSP/scope.jsp").forward(request, response);
		}
	}

}
