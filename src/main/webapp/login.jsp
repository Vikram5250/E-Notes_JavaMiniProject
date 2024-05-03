<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.Servlet.loginServlet"%>
<%@ page import="com.User.Post"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Login Page</title>
<%@include file="Allcomponents/allcss.jsp"%>
<style type="text/css">
.div-color {
	background: url("img/img5.png");
	width: 100%;
	height: 91vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
	<%@include file="Allcomponents/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-5">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4>Login Page</h4>
					</div>

					<%
					String invalidMsg = (String) session.getAttribute("login-failed");

					if (invalidMsg != null) {
					%>


					<%
					session.removeAttribute("login-failed");
					}
					%>

					<%
					String withoutLogin = (String) session.getAttribute("Login-error");
					if (withoutLogin != null) {
					%>

					<div class="alert alert-danger" role="alert"><%=withoutLogin%></div>


					<%
					session.removeAttribute("Login-error");
					}
					%>

					<%
					String lgMsg = (String) session.getAttribute("logoutMsg");
					if (lgMsg != null) {
					%>

					<div class="alert alert-success" role="alert"><%=lgMsg%></div>

					<%
					session.removeAttribute("logoutMsg");
					}
					%>
					<div class="card-body">
						<form action="loginServlet1" method="post">
							<div class="form-group">
								<label>Enter Email</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email"
									name="uemail">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" name="upassword">
							</div>
							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Login</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>