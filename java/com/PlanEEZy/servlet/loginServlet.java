package com.PlanEEZy.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.PlanEEZy.model.user;
import com.PlanEEZy.util.AccountDBF;



@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		//String type = request.getParameter("type");
		
		
		
		AccountDBF.validate(email, password);
		
		try {
		List<user> usDetails = AccountDBF.validate(email, password);
		request.setAttribute("userDetails", usDetails);
		
		}
		catch(Exception e) {
			e.printStackTrace();
				
		}
		
		RequestDispatcher dis1 = request.getRequestDispatcher("home2.jsp");
		dis1.forward(request, response);
		
		
	}

}
