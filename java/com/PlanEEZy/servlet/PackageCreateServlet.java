//T.M.T.C.Tennakoon
//IT21171338

//EventCreateServlet servlet
package com.PlanEEZy.servlet;

//Importing all IO Exception class
import java.io.IOException;

//Importing all javax.servlet classes
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.PlanEEZy.model.Package;

import com.PlanEEZy.util.PackageDBF;

@WebServlet("/PackageCreateServlet")
public class PackageCreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// assign all the inputs into variables which have entered through the form
		//using getters
		float amountPerHead = Float.parseFloat(request.getParameter("amountPerHead"));
		String food = request.getParameter("food");
		String beverage = request.getParameter("beverage");
		String decoration = request.getParameter("decoration");
		String music = request.getParameter("music");
		String description = request.getParameter("description");
		 int incharge = 0;
		 
		boolean isTrue;//variable for assign true or false if data has been send to the DB
		Package p;
		p = Package.getInstance(amountPerHead, food, beverage, decoration, music, description, incharge);
		isTrue = PackageDBF.Insert(p);//call the method
		
		if(isTrue == true) {//if true
		RequestDispatcher dis1 = request.getRequestDispatcher("createPackageSuccess.jsp");//show success message
		dis1.forward(request, response);
			System.out.println("Success");
		}
		else {//if false
		RequestDispatcher dis2 = request.getRequestDispatcher("createPackageUnsuccess.jsp");//show unsuccess message
		dis2.forward(request, response);
			System.out.println("Unsuccess");
		}
	}

}
