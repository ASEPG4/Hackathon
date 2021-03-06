package edu.umkc.ericsson.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import edu.umkc.ericsson.bo.User;
import edu.umkc.ericsson.model.Login_model;

/**
 * Servlet implementation class Login_Controller
 */
@WebServlet("/Login")
public class Login_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Login_Controller() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User usr =new User();
		response.setContentType("text/html");
		usr.setUserName(request.getParameter("login"));
		usr.setPassword(request.getParameter("pwd"));
		Login_model loginUser = new Login_model();
		if(loginUser.validate(usr))
		{
			response.sendRedirect("dashboard.html");
			return;
			
		}
		else
		{
			
			 JOptionPane.showMessageDialog(null, "Invalid Credentials", "Error",
                     JOptionPane.ERROR_MESSAGE);
		}
		response.sendRedirect("index.html");
		return;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	doGet(request,response);
	}

}
