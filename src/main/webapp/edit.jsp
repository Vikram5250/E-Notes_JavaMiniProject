<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.DAO.PostDAO"%>
<%@ page import="com.User.Post"%>
<%@ page import="com.User.UserDetails"%>
<%@ page import="com.Db.DBConnect"%>
	<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");

if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error","Please Login First..");
}
%>

	
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img {
background : url("img/img5.png");
width : 100%;
height : 100vh;
background-repeat : no-repeat;
background-size : cover;
}
</style>
<meta charset="UTF-8">
<title>Edit Notes</title>
<%@include file="Allcomponents/allcss.jsp"%>
</head>
<body>
	
	<%
		Integer noteid=Integer.parseInt(request.getParameter("note_id"));
		
		PostDAO post = new PostDAO(DBConnect.getConn());
		Post p = post.getDataById(noteid);
	
	
	
	%>
	<div class="container-fluid back-img">
		<%@include file="Allcomponents/navbar.jsp"%>
		<br> <br>
		<h1 class="text-center">Edit Your Notes</h1>
		
		
		
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div>
						<form action="NoteEditServlet" method="post">
						
							<input type="hidden" value="<%=noteid %>" name="noteid">
							<div class="form-group">


								<label for="exampleInputEmail1">Enter Title</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="title" required="required" value="<%=p.getTitle() %>">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Enter Content</label>
								<textarea rows="12" cols="" class="form-control" name="content"
									required="required"><%= p.getContent() %></textarea>
							</div>

							<div class="container text-center">
								<button type="submit" class="btn btn-primary">Update</button>
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>
