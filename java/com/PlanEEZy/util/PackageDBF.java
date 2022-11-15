//T.M.T.C.Tennakoon
//IT21171338

//PackageDBF class
package com.PlanEEZy.util;

import java.sql.Connection;
import java.sql.Statement;

import com.PlanEEZy.model.Package;
public class PackageDBF extends DBFunctions{
		private static Connection con = null;
		private static Statement stat = null;
		
		//method for catch inputs from form and pass to DB
		public static boolean Insert(Package p) {
			boolean isSuccess = false;
			float amountPerHead = p.getAmountPerHead();
			String food = p.getFood(); 
			String beverage = p.getBeverages();
			String decorations = p.getDecorations();
			String music = p.getMusic();
			String description = p.getDescription();
					try {
						con = DBConnectionUtil_TH.getConnection();
						stat = con.createStatement();
						
						String sql = "insert into package(amountPerHead, Food, Beverage, Decoration, Description, Music) values('"+amountPerHead+"', '"+food+"','"+beverage+"','"+decorations+"','"+description+"','"+music+"')";
						int rs = stat.executeUpdate(sql);
						
						if(rs>0) {
							isSuccess = true;
							System.out.println(isSuccess);
						}else {
							isSuccess = false;
							System.out.println(isSuccess);
						}
					}catch (Exception e){
						System.out.println("data didn't insert to the DB!");
					}
			
			return isSuccess;
	
	}
		//update package
				public static boolean updatePackage(int packageID, float amount, String food, String beverage, String decoration, String music, String description ) {
					boolean isSuccess = false;//store whether data updated or not
					
					try {
						con = DBConnectionUtil_TH.getConnection();//create connection
						stat = con.createStatement();//create statement
						
						String sql = "UPDATE package SET amountPerHead= '"+amount+"', Food = '"+food+"', Beverage = '"+beverage+"', Decoration = '"+decoration+"', Description = '"+description+"', Music = '"+music+"' WHERE packageID = '"+packageID+"'";//command for set edited data
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
				
				//delete Package
				public static boolean Delete(int id) {
					boolean isSuccess = false;
						
					try {
						con = DBConnectionUtil_TH.getConnection();//create connection
						stat = con.createStatement();//create statement
							
						String sql = "DELETE FROM package WHERE packageID='"+id+"'";//command for set edited data
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
	
