<%@page import="Admin.Dao.ParkImplDao"%>
<%@page import="Admin.Dao.ParkDao"%>
<%@page import="Admin.Controler.Park"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>VPS</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/datatable.css" rel="stylesheet">
	<link href="css/datepicker3.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">

	<!--Custom Font-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

</head>

<body>
  <% 
if(request.getAttribute("x")==null){
	request.setAttribute("x", 1);
	request.getRequestDispatcher("../ContPlace?int=1").forward(request, response);
} %>
	<!-- Start Navigation.html file  -->
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse"><span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span></button>
				<a class="navbar-brand" href="./dashboard.jsp"><span>Vechicle </span>Parking System</a>
				<ul class="nav navbar-top-links navbar-right">


					</li>
					<li class="dropdown"><a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
							<em class="fa fa-user-circle"></em>
						</a>
						<ul class="dropdown-menu dropdown-alerts">
							<li><a href="./myprofile.jsp">
											<div><em class="fa fa-user"></em> Profile</div>
										</a></li>
									<li class="divider"></li>
									<li><a href="./password.jsp">
											<div><em class="fa fa-key"></em> Change Password</div>
										</a></li>
									
									<li class="divider"></li>
									<li><a href="./index.jsp">
											<div><em class="fa fa-power-off"></em> Logout</div>
										</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div><!-- /.container-fluid -->
	</nav>
	<!-- End Navigation file php  -->

	<!-- Start sideBar.html file  -->

	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="profile-sidebar">
			<div class="profile-userpic">
				<img src="./includes/ppicon.png" width="50" class="img-responsive" alt="Icon">
			</div>
			<div class="profile-usertitle">
				<div class="profile-usertitle-name">Admin</div>
				<div class="profile-usertitle-status"><span class="indicator label-success"></span>Online</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="divider"></div>

		<form role="search" action="search-results.html" name="search" method="POST" enctype="multipart/form-data">

			<!--  -->

			<div class="form-group">
				<input type="text" class="form-control" id="searchdata" name="searchdata" placeholder="Search Vehicle-Reg">
			</div>

		</form>
		
		<ul class="nav menu">
			<li ><a href="dashboard.jsp"><em class="fa fa-dashboard">&nbsp;</em> Dashboard</a></li>
			<li > <a href="fil.jsp"><em class="fa fa-window-restore">&nbsp;</em> Reservation </a></li>
			<li  > <a href="users.jsp"><em class="fa fa-th-large">&nbsp;</em> Users</a></li>
			<li > <a href="parks.jsp"><em class="fa fa-th-large">&nbsp;</em> Parks</a></li>
			<li class="active" > <a href="places.jsp"><em class="fa fa-th-large">&nbsp;</em> Places</a></li>
			

		</ul>

	</div>
	
	<!--/.sidebar-->

	<!-- En,d sideBar.html file  -->


	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="dashboard.html">
						<em class="fa fa-home"></em>
					</a></li>
				<li class="active">Place Management</li>
			</ol>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<!-- <h1 class="page-header">Vehicle Management</h1> -->
			</div>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Parks <a href="newPlace.jsp" type="button" class="btn btn-sm btn-primary">Add New Place</a></div>
					<div class="panel-body">
						<table id="example" class="table table-striped table-hover table-bordered" style="width:100%">

							<thead>
								<tr>
									<th>#</th>
									<th>Park Name</th>
									<th>Nom </th>
									<th>Etat</th>
									
									<th >action</th>

								</tr>
							</thead>
							<tbody>

                                <c:forEach items="${modele.places}" var="p">
								<tr>
								<jsp:useBean id="par" class="Admin.Controler.Park"></jsp:useBean>
								<jsp:setProperty  name="par" property="id" value="${p.idPark}"/>
								
								<% ParkDao pd= new ParkImplDao();
								Park l=pd.getPark(par.getId());%>
									<td>${p.id}</td>

									<td><%=l.getNom() %> </td>

									<td>${p.nom}</td>
									<td>${p.etat}</td>
									
									
                                     <td>
                                     <a href="editPlace.jsp?id=${p.id }" > <button class="btn btn-success btn-sm"><i class="fa fa-edit"></i></button></a>
                                    <a onclick="return confirm('Etes-vous sûr ?')" href="../ContPlace?action=s&id=${p.id }"  > <button class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></button></a>
                                    </td>
									

								</tr>
                            </c:forEach>



							</tbody>

						</table>
					</div>
				</div>
			</div>



		</div>
		<!--/.row-->




		<!-- <Start footer.html file -->

		<footer>
			<div class="col-sm-12">
				<p class="back-link">&copy; 2022 - Developed By  FSTBM </p>
			</div>
		</footer>

		<!-- <End footer.html file -->

	</div>
	<!--/.main-->

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap4.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/custom.js"></script>
	<script>
		window.onload = function() {
			var chart1 = document.getElementById("line-chart").getContext("2d");
			window.myLine = new Chart(chart1).Line(lineChartData, {
				responsive: true,
				scaleLineColor: "rgba(0,0,0,.2)",
				scaleGridLineColor: "rgba(0,0,0,.05)",
				scaleFontColor: "#c5c7cc"
			});
		};
	</script>

	<script>
		$(document).ready(function() {
			$('#example').DataTable();
		});
	</script>

</body>

</html>