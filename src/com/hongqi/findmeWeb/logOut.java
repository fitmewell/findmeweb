package com.hongqi.findmeWeb;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class logOut extends HttpServlet {

	public logOut() {
		super();
	}

	@Override
	public void destroy() {
		super.destroy();
	}

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("u");
		Connection conn;
		Statement stmt;
		ResultSet res;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_findmeweb",
					"mmzw05342y", "0kiijhjjiw4jk45zz50kw4210m51xikml2w0xk2l");
			// conn =
			// DriverManager.getConnection("jdbc:mysql://localhost:3306/MyAppDB","root",
			// "root");
			stmt = conn.createStatement();
			stmt.execute("update USERLIST set online = 'false' where USERNAME like '"
					+ username + "'");
		}catch (Exception e){
			e.printStackTrace();
		}
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}

	@Override
	public void init() throws ServletException {
		// Put your code here
	}
}
