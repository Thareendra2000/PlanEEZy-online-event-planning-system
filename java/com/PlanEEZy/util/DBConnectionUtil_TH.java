//T.M.T.C.Tennakoon
//IT21171338

//DBConnectionUtil_TH class
package com.PlanEEZy.util;

// Importing  SQL classes
import java.sql.*;

public class DBConnectionUtil_TH {

		private static String URL = "jdbc:mysql://localhost:3306/planeezy?autoReconnect=true&useSSL=false";//database url
		private static String username = "root";//usernme
		private static String Password = "Th@rin2000"; //password
		private static Connection con;// Object of Connection class
		
		public static Connection getConnection() {
			// create object if it's not already created
		      //if(con == null) {
		      
			try {
				Class.forName("com.mysql.jdbc.Driver");//Loading the divers
				con = DriverManager.getConnection(URL, username, Password);//Registering drivers using DriverManager
				
			// Here, the exceptions is handle by Catch block	
			}catch(Exception e) {
				System.out.println("Database Connection isn't Created!!!");
				System.out.println(e); // Print the exceptions
			}
			finally {
				System.out.println("Database Connection is Created!!!");	
			}
		   // }
			return con;//the object of Connection class is return
		      
		}
}