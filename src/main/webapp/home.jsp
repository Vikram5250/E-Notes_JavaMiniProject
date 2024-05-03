<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
UserDetails user2 = (UserDetails) session.getAttribute("userD");

if (user2 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please Login First..");
}
%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img {
background : url("img/img5.png");
width : 100%;
height : 85vh;
background-repeat : no-repeat;
background-size : cover;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="Allcomponents/allcss.jsp"%>
</head>
<body>
	<%@include file="Allcomponents/navbar.jsp"%>
	<div class="container-fluid ">
		<div class="card mt-3">
			<div class="card-body text-center back-img">
				<img alt="" src="img/img7.png" class="img-fluid mx-auto"
					style="max-width: 420px;"><br><br>
				<h1>START TAKING YOUR NOTES</h1>
				<a href="addNotes.jsp" class="btn btn-outline-primary">Start
					Here</a>
			</div>
		</div>
	</div>
</body>
</html>