//T.M.T.C.Tennakoon
//IT21171338

//PackageDeleteServlet servlet
package com.PlanEEZy.servlet;

//Importing all IO Exception class
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Importing PackageDBF class
import com.PlanEEZy.util.PackageDBF;

@WebServlet("/PackageDeleteServlet")
public class PackageDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public PackageDeleteServlet() {//constructor
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int del_packageid = Integer.parseInt(request.getParameter("packageid"));//assign eventID through the form
		
		boolean isTrue;//variable for assign true or false if data has been send to the DB
		isTrue = PackageDBF.Delete(del_packageid);//call the method
		
		if(isTrue == true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("Packages_organizerPOV.jsp");//show success message
			dis1.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("deletePackageUnsuccess.jsp");//show unsuccess message
			dis2.forward(request, response);
		}
	}

}
