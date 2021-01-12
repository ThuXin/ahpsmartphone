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

<script src="js/canvasjs.min.js"></script>

<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>AHP Thesis</title>
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
						href="ContactUs.html"><i class="fas fa-address-card  pr-1"></i>Contact</a>
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
			<%
				int price_count = 0, ram_count = 0, storage_count = 0, camera_count = 0, battery_count = 0;
				String dataPoints = null;
				String dataPoints1 = null;
				Gson gsonObj = new Gson();
				Map<Object, Object> map = null;
				Map<Object, Object> map1 = null;
				List<Map<Object, Object>> list = new ArrayList<Map<Object, Object>>();
				List<Map<Object, Object>> list1 = new ArrayList<Map<Object, Object>>();
				Connection con;
				ResultSet rs;

				int price = 0;
				Class.forName("com.mysql.jdbc.Driver");
				String url = "jdbc:mysql://localhost:3306/db";
				String uname = "root";
				String pass = "password";
				con = DriverManager.getConnection(url, uname, pass);
				String count_sql = "";
				count_sql = "select * from db.range where idrange='" + 1 + "'";
				Statement st = con.createStatement();
				rs = st.executeQuery(count_sql);
				while (rs.next()) {
					price_count = rs.getInt("price");
					ram_count = rs.getInt("ram");
					storage_count = rs.getInt("storage");
					battery_count = rs.getInt("battery");
					camera_count = rs.getInt("camera");
				}

				map = new HashMap<Object, Object>();
				map.put("label", "Price/Cost");
				map.put("y", price_count);
				map.put("exploded", true);
				list.add(map);
				map = new HashMap<Object, Object>();
				map.put("label", "RAM");
				map.put("y", ram_count);
				list.add(map);
				map = new HashMap<Object, Object>();
				map.put("label", "Storage");
				map.put("y", storage_count);
				list.add(map);
				map = new HashMap<Object, Object>();
				map.put("label", "Battery");
				map.put("y", battery_count);
				list.add(map);
				map = new HashMap<Object, Object>();
				map.put("label", "Camera");
				map.put("y", camera_count);
				list.add(map);

				dataPoints = gsonObj.toJson(list);
			%>

			<div class="row" style="margin-top: 10px;">
				<div>
					<div id="chartContainer" style="height: 300px; width: 100%;"></div>

				</div>
			</div>
			<br> <br>
			<div>
				<table style="margin: 30px;">

					<tr>
						<td>Number of count for Price/Cost</td>
						<td><%=price_count%></td>
					</tr>

					<tr>
						<td>Number of count for RAM:</td>
						<td><%=ram_count%></td>
					</tr>
					<tr>
						<td>Number of count for Storage Space:</td>
						<td><%=storage_count%></td>
					</tr>
					<tr>
						<td>Number of count for Battery:</td>
						<td><%=battery_count%></td>
					</tr>
					<tr>
						<td>Number of count for Camera:</td>
						<td><%=camera_count%></td>
					</tr>

				</table>


			</div>
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
		window.onload = function() {

			var chart = new CanvasJS.Chart("chartContainer", {
				theme : "light2",
				animationEnabled : true,
				exportFileName : "View Result",
				exportEnabled : true,
				title : {
					text : "View Result"
				},
				data : [ {
					type : "column",
					showInLegend : true,
					legendText : "{label}",
					toolTipContent : "{label}: <strong>{y}</strong>",

					options : {
						title : {
							display : true,
							position : "top",
							fontSize : 16,
							fontColor : 'red',
							

						}
					},

					dataPoints :
	<%out.print(dataPoints);%>
		} ]
			});
			chart.render();

		}
	</script>
</body>
</html>