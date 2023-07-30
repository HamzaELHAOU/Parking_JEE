<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Vehicle Parking System</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/datepicker3.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body>

<% if(request.getParameter("x")!=null){
	out.println("<div class='alert-danger text-center' style='font-size:2rem;'> UserName or Password Incorrect </div> ");
} %>
	<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
		<center><h2><b>Vehicle Parking System</b></h2></center>
			<div class="login-panel panel panel-default">
				<div class="panel-heading"> Login </div>
				<div class="panel-body">
					<form action="../Login?l=1" method="POST">
					
				

						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="Username" name="username" type="text" required="required">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Password" name="password" type="password" required="required">
							</div>
							<div class="checkbox">
								
								<a href="forgot-password.html" style="text-decoration:none;">Forgot Password?</a>
							</div>
							<input class="btn btn-success" type="submit" value="Login">
							</fieldset>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->	
	

<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
