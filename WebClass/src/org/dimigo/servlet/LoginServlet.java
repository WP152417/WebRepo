package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;

@WebServlet(name = "login", urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.printf("id : %s, pwd : %s\n", id, pwd);
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		/*
		 * {
		 * 	"id": id
		 * }
		 */
//		out.println("{");
//		out.println("\"id\": " + id);
//		out.println("}");
		
//		JSON Simple Library
//		JSONObject json = new JSONObject();
//		json.put("id",id);
//		System.out.println(json.toJSONString());
//		out.write(json.toJSONString());
		
//		Gson Library
		
		Gson gson = new Gson();
		JsonObject object = new JsonObject();
		object.addProperty("id", id);
		String json = gson.toJson(object);
		System.out.println(json);
		out.write(json);
		out.close();
	}

}
