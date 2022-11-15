//T.M.T.C.Tennakoon
//IT21171338

//PackageUpdateServlet servlet
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

//Importing PackageDBF class
import com.PlanEEZy.util.PackageDBF;

@WebServlet("/PackageUpdateServlet")
public class PackageUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	//constructor
    public PackageUpdateServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// assign all the updated  inputs into variables which have entered through the form
		int up_packageid = Integer.parseInt(request.getParameter("packageid"));//parse String into Integer
		float up_amount = Float.parseFloat(request.getParameter("amountPerHead"));
		String  up_food = request.getParameter("food");
		String  up_beverage = request.getParameter("beverage");
		String  up_decoration = request.getParameter("decoration");
		String  up_music = request.getParameter("music");
		String  up_description = request.getParameter("description");
		
		boolean isTrue;//variable for assign true or false if data has been send to the DB
		
		isTrue = PackageDBF.updatePackage(up_packageid, up_amount, up_food, up_beverage, up_decoration, up_music, up_description);//call the method
		
		if(isTrue == true) {//if true
			RequestDispatcher dis1 = request.getRequestDispatcher("Packages_organizerPOV.jsp");//show success message
			dis1.forward(request, response);
		}
		else {//if false
			RequestDispatcher dis2 = request.getRequestDispatcher("updatePackageUnsuccess.jsp");//show unsuccess message
			dis2.forward(request, response);
		}
	}
}