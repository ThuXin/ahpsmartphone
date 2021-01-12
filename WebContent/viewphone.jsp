<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.Image"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.util.Base64"%>
<%@page import="org.apache.struts2.components.ElseIf"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.opensymphony.xwork2.util.Key"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="org.apache.commons.math3.linear.Array2DRowRealMatrix"%>
<%@ page import="org.apache.commons.math3.linear.EigenDecomposition"%>
<%@ page import="org.apache.commons.math3.linear.RealVector"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%@ page import="bean.Quez_rd"%>
<%@page import="action.AHPaction"%>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Phone</title>
<link
	href="https://fonts.googleapis.com/css2?family=Piedra&display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="public/custom-css/style.css" />
<link rel="stylesheet"
	href="public/boostrap@4.5.0/css/bootstrap.min.css" />
<link rel="stylesheet" href="node_modules/animate.css/animate.min.css">
<link rel="stylesheet"
	href="public/fontawesome-free-5.13.0-web/css/all.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap.min.css">

<style type="text/css">
table {
	border: none;
}

table.dataTable thead tr {
	background-color: #091625;
	
}
th{
style="color: white;"
}
</style>
</head>
<body style="font-size: 1.3rem;">

	<!--navbar-->
	<div>
		<nav class="navbar navbar-expand-lg navbar-light ">
			<a class="navbar-brand animate__animated animate__swing " href="#"><span
				style="font-size: 2rem;">AHP Project</span></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-end mr-5"
				id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item active mr-5"><a class="nav-link "
						href="index.jsp"><i class="fas fa-home  pr-1"></i>Home</a></li>
					<li class="nav-item mr-5"><a class="nav-link "
						href="viewphone.jsp"><i class="fas fa-address-card  pr-1"></i>View
							Phone List</a></li>
					<li class="nav-item mr-5"><a class="nav-link "
						href="resultview.jsp"><i class="fas fa-address-card  pr-1"></i>Contact</a>
					</li>
					<li class="nav-item mr-5"><a class="nav-link"
						href="about.html"><i class="fas fa-file-signature  pr-1"></i>About
							Us</a></li>
				</ul>
			</div>
		</nav>
		<hr>
	</div>

	<div class="row  my-5 ">
		<div class="col-lg-6 col-md-11 mx-auto">
			<table id="phone_list" class="table table-striped table-bordered text-center"
				style="width: 100%; " >

				<thead style="color: white;">

					<tr  class="text-center">
						<th style="color: white;"  class="text-center">Name</th>
						<th style="color: white;"  class="text-center">Price/Cost</th>
						<th style="color: white;"  class="text-center">RAM</th>
						<th style="color: white;"  class="text-center">Storage Space</th>
						<th style="color: white;"  class="text-center">Battery</th>
						<th style="color: white;"  class="text-center">Camera</th>
						<th style="color: white;"  class="text-center">Photo</th>


					</tr>
				</thead>
				<tbody>
					<%
						Connection con;
						ResultSet rs;
						String i_name="";
						int price = 0;
						Class.forName("com.mysql.jdbc.Driver");
						String url = "jdbc:mysql://localhost:3306/db";
						String uname = "root";
						String pass = "password";
						con = DriverManager.getConnection(url, uname, pass);
						String sql = "";
						String count_sql = "";
						String add_sql = "";
						try {

							sql = "select * from phone";

							Statement st = con.createStatement();
							rs = st.executeQuery(sql);
							while (rs.next()) {
								i_name = String.valueOf(rs.getInt("phoneid"));
					%>
					<tr>

						<td><%=rs.getString("phone_name")%></td>
						<td><%=rs.getString("price")%></td>
						<td><%=rs.getString("ram")%></td>
						<td><%=rs.getString("storage")%>G</td>
						<td><%=rs.getString("battery")%></td>
						<td><%=rs.getString("camera")%></td>
						<td><img alt="<%=rs.getString("phone_name")%>" width="75px"
							height="75px" class="d-block mx-auto"
							src="public\img\pics\<%=i_name%>.jpg"></td>
					</tr>

					<%
						}

						} catch (SQLException e) {
						} catch (IOException io) {

						}
					%>
				</tbody>
			</table>
		</div>
	</div>

<!--footer-->
	<div class="footer">
		<div class="continer-fluid row justify-content-center p-4">
			<div class="col-4  ">
				<legend style="font-size: 1.5rem;">Social Network</legend>
				<i class="fab fa-facebook" style="font-size: 50px;"></i> <i
					class="fab fa-twitter" style="font-size: 50px;"></i> <i
					class="fab fa-linkedin-in" style="font-size: 50px;"></i>
			</div>
			<div class="col-4">
				<address>
					<address>
						Written by <a href="mailto:webmaster@example.com">Jon Doe</a>.<br>
						Visit us at:<br> Example.com<br> Box 564, Disneyland<br>
						USA
					</address>
				</address>
			</div>
		</div>
		<span><hr></span>
		<div>
			<p class="text-center">&#169 Project-A|2020.All rights reserved</p>
		</div>
	</div>
	<!--boostrap4.5.0-->
	<script src="public/boostrap@4.5.0/jquery.slim.min.js"></script>
	<script src="public/boostrap@4.5.0/popper.min.js"></script>
	<script src="public/boostrap@4.5.0/js/bootstrap.min.js"></script>
	<!--vuejs direct include&customjs-->
	<script src="https://unpkg.com/vue"></script>
	<script src="public/vuejs/app.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
	    $('#phone_list').DataTable();
	} );
		
		
	</script>

</body>
</html>