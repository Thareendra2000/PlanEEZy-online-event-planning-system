package com.PlanEEZy.util;

import java.sql.Connection;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.PlanEEZy.model.user;

public class AccountDBF {
	private static Connection con = null;
	private static Statement stat = null;
	
	//Validate user from DB
	public static List<user> validate(String email, String password){
		ArrayList<user> us = new ArrayList<>();
		
		ResultSet rs = null;
		
		//validate 
		try {
			con = DBConnectionUtil_TH.getConnection();
			
			stat = con.createStatement();
			
			String sql = "select * from account where email = '"+email+"' and password = '"+password+"'";
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String username = rs.getString(2);
				String Email = rs.getString(3);
				String Password = rs.getString(4);
				int cusid = rs.getInt(5);
				int orgid = rs.getInt(6);
				//assign values
				user u = new user(id, username, Email,Password,cusid, orgid);
				
				us.add(u);
					
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		
		return us;
	
	}
	
		
		
}
