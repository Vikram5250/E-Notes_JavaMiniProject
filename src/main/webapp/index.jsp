<%@ page import="java.sql.Connection" %>
<%@ page import="com.Db.DBConnect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img {
background : url("img/img5.png");
width : 100%;
height : 80vh;
background-repeat : no-repeat;
background-size : cover;
}
</style>
<meta charset="UTF-8">
<title>Home Page</title>
<%@include file="Allcomponents/allcss.jsp"%>
</head>
<body>
	<%@include file="Allcomponents/navbar.jsp"%>
	
	<div class="container-fluid back-img">
	<div class="text-center"><br><br><br>
	<h1 class="mt-5"> <i class="fa fa-book" aria-hidden="true"></i> E Notes-Save Your Notes</h1>
	<a href="login.jsp" class="btn btn-light"><i class="fa fa-user" aria-hidden="true"></i> Login</a>
	<a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus" aria-hidden="true"></i> Register</a>
	</div>
	</div>
	<%@include file="Allcomponents/footer.jsp" %>
</body>
</html>