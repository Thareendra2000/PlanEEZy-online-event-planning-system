//T.M.T.C.Tennakoon
//IT21171338

//EventCreateServlet servlet
package com.PlanEEZy.servlet;

//Importing all IO Exception class
import java.io.IOException;

// Importing all javax.servlet classes
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.PlanEEZy.model.Event;
// Importing EventDBF class
import com.PlanEEZy.util.EventDBF;

//Servlet implementation class EventCreateServlet
 
@WebServlet("/EventCreateServlet")
public class EventCreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// assign all the inputs into variables which have entered through the form
		String date = request.getParameter("date");
		String Type = request.getParameter("type");
		int NoOfGuests = Integer.parseInt(request.getParameter("noOfGuests"));//parse String into Integer
		
		int cusID = 0;
		//Integer.parseInt(request.getParameter("cusID"));//parse String into Integer
		
		boolean isTrue;//variable for assign true or false if data has been send to the DB
		Event event ;//create an object of event class and assign user inputs
		event = Event.getInstance(date, Type, NoOfGuests,cusID);//create only one Object
		isTrue = EventDBF.Insert(event);//call the method
		
		if(isTrue == true) {//if true
		RequestDispatcher dis1 = request.getRequestDispatcher("createEventSuccess.jsp");//show success message
		dis1.forward(request, response);
		System.out.println("Success");
		}
		else {//if false
		RequestDispatcher dis2 = request.getRequestDispatcher("createEventUnsuccess.jsp");//show unsuccess message
		dis2.forward(request, response);
			System.out.println("Unsuccess");
		}
	}	
}