package com.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.DAO.PostDAO;
import com.Db.DBConnect;

public class NoteEditServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		try {
			
			Integer noteid=Integer.parseInt(request.getParameter("noteid"));
			String Title=request.getParameter("title");
			String Content=request.getParameter("content");
			
			PostDAO dao=new PostDAO(DBConnect.getConn());
			boolean f=dao.PostUpdate(noteid,Title, Content);
			
			if(f)
			{
				System.out.println("Data Updated Successfully");
				HttpSession session=request.getSession();
				session.setAttribute("updateMsg", "Notes Update Successfully");
				response.sendRedirect("showNotes.jsp");
			}
			else {
				System.out.println("Data Not Updated");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
