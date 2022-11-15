//T.M.T.C.Tennakoon
//IT21171338

//EventUpdateServlet servlet
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

@WebServlet("/EventUpdateServlet")
public class EventUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	//constructor
    public EventUpdateServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// assign all the updated  inputs into variables which have entered through the form
		int up_eventid = Integer.parseInt(request.getParameter("eventid"));//parse String into Integer
		String up_date = request.getParameter("date");
		String up_Type = request.getParameter("type");
		int up_NoOfGuests = Integer.parseInt(request.getParameter("noOfGuests"));//parse String into Integer
		
		boolean isTrue;//variable for assign true or false if data has been send to the DB
		
		isTrue = EventDBF.updateEvent(up_eventid, up_date, up_Type, up_NoOfGuests);//call the method
		
		if(isTrue == true) {//if true
			RequestDispatcher dis1 = request.getRequestDispatcher("Events_CustomerPOV.jsp");//show success message
			dis1.forward(request, response);
		}
		else {//if false
			RequestDispatcher dis2 = request.getRequestDispatcher("updateEventUnsuccess.jsp");//show unsuccess message
			dis2.forward(request, response);
		}
	}

}
