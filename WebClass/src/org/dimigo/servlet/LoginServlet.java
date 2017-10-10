package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

import com.google.gson.JsonObject;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(description="로그인 서블릿", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//login.jsp로 포워딩
		RequestDispatcher rd = request.getRequestDispatcher("/JSP/login.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.println("id: " + id + " pwd: " + pwd);

		response.setContentType("text/html;charset=utf-8");
		
		//id, password 체크
		boolean result = true;
		
		if(result)
		{
			//세션에 사용자 정보 생성
			HttpSession session = request.getSession();
			session.setAttribute("user", new UserVO(id, "홍길동", "의적"));
			RequestDispatcher rd = request.getRequestDispatcher("/JSP/home.jsp");
			rd.forward(request, response);
		}
		else
		{
			request.setAttribute("error", "login_failed");
			RequestDispatcher rd = request.getRequestDispatcher("/JSP/login.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.println("id: " + id + " pwd: " + pwd);

		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		
//		out.println("{");
//		out.println("\"id\": " + "\""+id+"\"");
//		out.println("}");
		
//		JSON Simple Library
//		JSONObject json = new JSONObject();
//		json.put("id", id);
//		out.print(json.toJSONString());
//		out.close();
//		
		//Gson Library
		JsonObject json = new JsonObject();
		json.addProperty("id", id);
		out.print(json);
		out.close();
	}

}
