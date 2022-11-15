//T.M.T.C.Tennakoon
//IT21171338

//EventDeleteServlet servlet
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

//Importing EventDBF class
import com.PlanEEZy.util.EventDBF;

@WebServlet("/EventDeleteServlet")
public class EventDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public EventDeleteServlet() {//constructor
        super();   
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int del_eventid = Integer.parseInt(request.getParameter("eventid"));//assign eventID through the form
		
		boolean isTrue;//variable for assign true or false if data has been send to the DB
		isTrue = EventDBF.Delete(del_eventid);//call the method
		
		if(isTrue == true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("Events_CustomerPOV.jsp");//show success message
			dis1.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("deleteEventUnsuccess.jsp");//show unsuccess message
			dis2.forward(request, response);
		}
	}

}
