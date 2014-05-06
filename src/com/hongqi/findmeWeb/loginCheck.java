package com.hongqi.findmeWeb;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class loginCheck extends HttpServlet{
	
	public loginCheck(){
		super();
	}

	
	@Override
	public void destroy(){
		super.destroy();
	}
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException , IOException{
		
		String username = request.getParameter("u");
		String password = request.getParameter("p");
		String result = null;
		String returnM = "";
		boolean pass = false;
		
		try {
			DBMCheckLogin check = new DBMCheckLogin(username , password);
			result = check.getResult();
			pass = check.pass();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		Boolean s_ = (result.equals(password));
		
//		String message = "Hello " +"\r\n"+ username +"\r\n"+ password+"\r\n"+ result+"\r\n"+ s_;
				
		PrintWriter out = response.getWriter();
		
		if (!pass){
			returnM = "false";
		}
		else
			returnM = result;
		out.print(returnM);
		out.flush();
		out.close();
	}
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);

	}
	@Override
	public void init() throws ServletException {
		// Put your code here
	}
}
