package com.hongqi.findmeWeb;

import java.sql.*;

public class DBMGetDetail {
	String result ="";
	public DBMGetDetail(String uid) throws ClassNotFoundException, SQLException{
		Connection conn;
		Statement stmt;
		ResultSet res;
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_findmeweb","mmzw05342y", "0kiijhjjiw4jk45zz50kw4210m51xikml2w0xk2l");
//		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/MyAppDB","root", "root");
		stmt = conn.createStatement();
		res = stmt.executeQuery("select * from USERLIST where uid = "+uid);
		
		while(res.next()){
			  result=res.getString("uid")+","+res.getString("name")+","+res.getString("online")+"|";
		}
			  res.close();
	}
	
	public String getResult(){
		
		return result;
	}
}
