<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>Add Notes</title>
<%@include file="Allcomponents/allcss.jsp"%>
</head>
<body>
	<div class="container-fluid back-img">
		<%@include file="Allcomponents/navbar.jsp"%>
		<br>
		<br>
		<h1 class="text-center">Add Your Notes</h1>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div>
						<form action="AddNotesServlet" method="post">

							<div class="form-group">

								<%
								UserDetails us = (UserDetails) session.getAttribute("userD");

								if (us != null) {
								%>
								<input type="hidden" value="<%=us.getId()%>" name="uid">
								<%
								}
								%>


								<label for="exampleInputEmail1">Enter Title</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="title" required="required">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Enter Content</label>
								<textarea rows="12" cols="" class="form-control" name="content"
									required="required"></textarea>
							</div>

							<div class="container text-center">
								<button type="submit" class="btn btn-primary">Add Notes</button>
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>