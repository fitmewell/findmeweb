package com.hongqi.findmeWeb;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class getFriendList extends HttpServlet{
	
	public getFriendList(){
		super();
	}

	
	@Override
	public void destroy(){
		super.destroy();
	}
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException , IOException{
		
		String uid = request.getParameter("u");
		String result = null;
		response.setContentType("text/html; charset=UTF-8" );  
		String returnM = "false";
		
		try {
			result = new DBMGetFriendList(uid).getResult();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		Boolean s_ = (result.equals(password));
		
//		String message = "Hello " +"\r\n"+ username +"\r\n"+ password+"\r\n"+ result+"\r\n"+ s_;
				
		PrintWriter out = response.getWriter();
		
		if(result == null){
			result = "false";
		}
		
		
		out.print(result);
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
