package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

import com.google.gson.JsonObject;

/**
 * Servlet implementation class BlogLoginServlet
 */
@WebServlet("/bloglogin")
public class BlogLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String CORRECTID = "test@naver.com";

    public BlogLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String msg = "";
		
		PrintWriter out = response.getWriter();
		JsonObject obj = new JsonObject();
		
		response.setContentType("application/json;charset=utf-8");
		if(CORRECTID.equals(id))
		{
			HttpSession session = request.getSession();
			session.setAttribute("user", new UserVO(id, "홍길동", "의적"));
			msg = "success";
		}
		else
		{
			msg = "fail";
		}
		
		obj.addProperty("msg", msg);
		obj.addProperty("id", id);
		out.write(obj.toString());
	}

}
