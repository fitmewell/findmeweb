package com.hongqi.findmeWeb;

import java.sql.*;

public class DBMCheckLogin {
	String pass = "";
	String result = "";

	public DBMCheckLogin(String user, String password)
			throws ClassNotFoundException {
		Connection conn;
		Statement stmt;
		ResultSet res;
		Class.forName("com.mysql.jdbc.Driver");
		try {
			conn = DriverManager.getConnection(
					"jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_findmeweb",
					"mmzw05342y", "0kiijhjjiw4jk45zz50kw4210m51xikml2w0xk2l");
			// conn =
			// DriverManager.getConnection("jdbc:mysql://localhost:3306/MyAppDB","root",
			// "root");
			stmt = conn.createStatement();
			// stmt.execute("update userlist set online = 'true' where username like '"
			// +user +"'");
			res = stmt
					.executeQuery("select * from USERLIST where username like '"
							+ user + "'");

			while (res.next()) {
				pass = res.getString("upas");
				result = res.getString("uid");
			}
			if (pass.equals(password)) {
				pass = "true";
				stmt.execute("update USERLIST set online = 'true' where USERNAME like '"
						+ user + "'");

			}

			res.close();
		} catch (Exception e) {
			e.printStackTrace();

		}
	}

	public String getResult() {
		return result;
	}

	public boolean pass() {
		return pass.equals("true");
	}
}
