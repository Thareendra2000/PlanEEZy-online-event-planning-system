//T.M.T.C.Tennakoon
//IT21171338

//EventDBF class
package com.PlanEEZy.util;

// Importing all SQL classes
import java.sql.*;

import com.PlanEEZy.model.Event;

public class EventDBF extends DBFunctions {
		// Creating connection using
    	// Connection type and inbuilt function
		private static Connection con = null;
		private static Statement stat = null;
		
		//method for catch inputs from form and pass to DB-Insert DATA
		public static boolean Insert(Event event) {
			boolean isSuccess = false;//store whether data inserterd or not
			String date = event.getDate();
			String type = event.getType();
			int noOfGuests = event.getNoOfGuest();
			
					try {
						con = DBConnectionUtil_TH.getConnection();//create connection
						stat = con.createStatement();//create statement
						
						String sql = "insert into Event(Date, type,Noguest) values('"+date+"', '"+type+"','"+noOfGuests+"')";//query for insert data
						int rs = stat.executeUpdate(sql);//Execute the query
						
						if(rs>0) {
							isSuccess = true;//if success
							System.out.println(isSuccess);
						}else {
							isSuccess = false;//if unsuccess
							System.out.println(isSuccess);
						}
					}
					// Catch block is used for exception
					catch (Exception e){
						System.out.println("Data didn't inserted to the DB!");//display a message
						// Print exception pop-up on the screen
        				System.out.println(e);
					}
			return isSuccess;// return true or false
		}
		
		//update event
		public static boolean updateEvent(int eventID, String date, String type, int noOfGuests) {
			boolean isSuccess = false;//store whether data updated or not
			
			try {
				con = DBConnectionUtil_TH.getConnection();//create connection
				stat = con.createStatement();//create statement
				
				String sql = "UPDATE event SET Date = '"+date+"', Noguest = '"+noOfGuests+"'WHERE eventID = '"+eventID+"'";//command for set edited data
				int rs = stat.executeUpdate(sql);//Execute the query
				
				if(rs>0) {
					isSuccess = true;
					System.out.println(isSuccess);//if success
				}else {
					isSuccess = false;
					System.out.println(isSuccess);//if unsuccess
				}
			}
			// Catch block is used for exception
			catch (Exception e){
				System.out.println("Couldn't update!!");//display a message
				// Print exception pop-up on the screen
        		System.out.println(e);
			}

			return isSuccess;// return true or false
		}
		
		//delete event
		public static boolean Delete(int id) {
			boolean isSuccess = false;
				
			try {
				con = DBConnectionUtil_TH.getConnection();//create connection
				stat = con.createStatement();//create statement
					
				String sql = "DELETE FROM event WHERE eventID='"+id+"'";//command for set edited data
				int rs = stat.executeUpdate(sql);//Execute the query
					
				if(rs>0) {
					isSuccess = true;
					System.out.println(isSuccess);//if success
				}else {
					isSuccess = false;
					System.out.println(isSuccess);//if unsuccess
				}
			}
			// Catch block is used for exception
			catch (Exception e){
				System.out.println("Couldn't delete!!");//display a message
				// Print exception pop-up on the screen
        		System.out.println(e);
			}

			return isSuccess;// return true or false
		}
		
}

