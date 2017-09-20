package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
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
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
