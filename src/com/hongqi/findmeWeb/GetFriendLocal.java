package com.hongqi.findmeWeb;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetFriendLocal extends HttpServlet{
	
	public GetFriendLocal(){
		super();
	}

	
	@Override
	public void destroy(){
		super.destroy();
	}
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException , IOException{
		request.setCharacterEncoding("UTF-8");
		String username = request.getParameter("u");
		String result = null;
		String returnM = "false";
		
		System.out.println(username+request.getCharacterEncoding());
		
		try {
			result = new DBMFindFrinds(username).getResult();
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
