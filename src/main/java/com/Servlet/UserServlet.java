package com.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.DAO.UserDAO;
import com.Db.DBConnect;
import com.User.UserDetails;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("fname");
		String email = request.getParameter("uemail");
		String password = request.getParameter("upassword");
		
		UserDetails us=new UserDetails();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);
		
		UserDAO dao = new UserDAO(DBConnect.getConn());
		boolean f=dao.addUser(us);
		PrintWriter out=response.getWriter();
		HttpSession session;
		
		if(f) {
			session = request.getSession();
			session.setAttribute("reg-sucess","Registration Successfully...");
			response.sendRedirect("register.jsp");
		}else {
			session=request.getSession();
			session.setAttribute("failed-msg", "Something went Wrong on server");
			response.sendRedirect("register.jsp");
		}

	}

}
