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

	<!--content-->

	<div class="row  my-5 ">
		<div class="col-lg-6 col-md-11 mx-auto">
			<table cellspacing="0" cellpadding="0">

				<%
					int price_count = 0, ram_count = 0, storage_count = 0, camera_count = 0, battery_count = 0;
					String dataPoints = null;
					String dataPoints1 = null;
					Gson gsonObj = new Gson();
					Map<Object, Object> map = null;
					Map<Object, Object> map1 = null;
					List<Map<Object, Object>> list = new ArrayList<Map<Object, Object>>();
					List<Map<Object, Object>> list1 = new ArrayList<Map<Object, Object>>();

					Quez_rd quez = new Quez_rd();

					quez.quez_rd_one = request.getParameter("text");
					quez.quez_rd_two = request.getParameter("text1");
					quez.quez_rd_three = request.getParameter("text2");
					quez.quez_rd_four = request.getParameter("text3");
					quez.quez_rd_five = request.getParameter("text4");
					quez.quez_rd_six = request.getParameter("text5");
					quez.quez_rd_seven = request.getParameter("text6");
					quez.quez_rd_eight = request.getParameter("text7");
					quez.quez_rd_nine = request.getParameter("text8");
					quez.quez_rd_ten = request.getParameter("text9");

					String i_name = "";
					double max_value = 0.0;
					String max_string = "";
					int max = 0;
					int nrVx = 5;
					String labels[] = {"Price/Cost ", "RAM  ", "Storage Space   ", "Battery        ", "Camera	   "};

					AHPaction ahp = new AHPaction(nrVx);
					//System.out.println(ahp);

					int d = ahp.getNrOfPairwiseComparisons();

					double compArray[] = ahp.getPairwiseComparisonArray();

					// Set the pairwise comparison values
					compArray[0] = Double.valueOf(quez.quez_rd_one);
					compArray[1] = Double.valueOf(quez.quez_rd_two);
					compArray[2] = Double.valueOf(quez.quez_rd_three);
					compArray[3] = Double.valueOf(quez.quez_rd_four);
					compArray[4] = Double.valueOf(quez.quez_rd_five);
					compArray[5] = Double.valueOf(quez.quez_rd_six);
					compArray[6] = Double.valueOf(quez.quez_rd_seven);
					compArray[7] = Double.valueOf(quez.quez_rd_eight);
					compArray[8] = Double.valueOf(quez.quez_rd_nine);
					compArray[9] = Double.valueOf(quez.quez_rd_ten);

					ahp.setPairwiseComparisonArray(compArray);

					for (int i = 0; i < ahp.getNrOfPairwiseComparisons(); i++) {
						System.out
								.print("Importance of " + labels[ahp.getIndicesForPairwiseComparison(i)[0]] + " compared to ");
						System.out.print(labels[ahp.getIndicesForPairwiseComparison(i)[1]] + "= ");
						System.out.println(ahp.getPairwiseComparisonArray()[i]);
					}

					System.out.println("\n" + ahp + "\n");

					System.out.println("Consistency Index: " + ahp.getConsistencyIndex());
					System.out.println("Consistency Ratio: " + ahp.getConsistencyRatio() + "%");
					System.out.println();
					System.out.println("Weights: ");
					for (int k = 0; k < ahp.getWeights().length; k++) {
						System.out.println(labels[k] + ": " + ahp.getWeights()[k] * 100);
						double value = ahp.getWeights()[k] * 100;

						int data = (int) value;
						map = new HashMap<Object, Object>();
						map.put("label", labels[k]);
						map.put("y", data);
						map.put("exploded", true);
						list.add(map);
						//dataPoints = gsonObj.toJson(list);
				%>

				<%
					}
					int max_label = 0;

					max_value = ahp.getWeights()[0];
					for (int j = 1; j < ahp.getWeights().length; j++)
						if (ahp.getWeights()[j] > max_value) {
							max_value = ahp.getWeights()[j];
							max_label = j;
						}

					dataPoints = gsonObj.toJson(list);
				%>

			</table>

			<h4>
				<%=labels[max_label]%>
				is the highest in the range.
			</h4>
			<p>
				Consistency Index:
				<%=ahp.getConsistencyIndex()%></p>
			<p>
				Consistency Ratio:
				<%=ahp.getConsistencyRatio()%></p>



			<div class="row" style="margin-top: 10px;">
				<div>
					<div id="chartContainer" style="height: 300px; width: 100%;"></div>

				</div>
			</div>
			<br> <br>

		</div>
		<table id="phone_table" class="table table-striped table-bordered"
			style="width: 90%; margin: 40px;">

			<thead>

				<tr>
					<th>Name</th>
					<th>Price/Cost</th>
					<th>RAM</th>
					<th>Storage Space</th>
					<th>Battery</th>
					<th>Camera</th>
					<th>Photo</th>


				</tr>
			</thead>
			<tbody>
				<%
					Connection con;
					ResultSet rs;

					int price = 0;
					Class.forName("com.mysql.jdbc.Driver");
					String url = "jdbc:mysql://localhost:3306/db";
					String uname = "root";
					String pass = "password";
					con = DriverManager.getConnection(url, uname, pass);
					String sql = "";
					String count_sql = "";
					String add_sql = "";
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
					try {

						if (max_label == 0) {

							sql = "select * from phone order by price desc limit 5";

							price_count = price_count + 1;
							add_sql = "UPDATE db.range SET price = '" + price_count + "' WHERE idrange = '" + 1 + "'";

						} else if (max_label == 1) {
							sql = "select * from phone order by ram desc limit 5";

							ram_count = ram_count + 1;
							add_sql = "UPDATE db.range SET ram = '" + ram_count + "' WHERE idrange = '" + 1 + "'";

						} else if (max_label == 2) {
							sql = "select * from phone order by storage desc limit 5";

							storage_count = storage_count + 1;
							add_sql = "UPDATE db.range SET storage = '" + storage_count + "' WHERE idrange = '" + 1 + "'";

						} else if (max_label == 3) {
							sql = "select * from phone order by battery desc limit 5";

							battery_count = battery_count + 1;
							add_sql = "UPDATE db.range SET battery = '" + battery_count + "' WHERE idrange = '" + 1 + "'";

						} else {
							sql = "select * from phone order by camera desc limit 5";

							camera_count = camera_count + 1;
							add_sql = "UPDATE db.range SET camera = '" + camera_count + "' WHERE idrange = '" + 1 + "'";

						}
						PreparedStatement preparedStmt = con.prepareStatement(add_sql);
						preparedStmt.executeUpdate();

						Statement stt = con.createStatement();
						rs = stt.executeQuery(sql);
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
						e.printStackTrace();
					} catch (IOException io) {
						io.printStackTrace();
					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
			</tbody>
		</table>
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
				$('#phone_table').dataTable({
					"bPaginate" : false,
					"bLengthChange" : false,
					"bFilter" : true,
					"bInfo" : false,
					"searching" : false,
					"order" : [ [ all, "desc" ] ],
					"bAutoWidth" : false
				});
			});
			window.onload = function() {

				var chart = new CanvasJS.Chart("chartContainer", {
					theme : "light2",
					animationEnabled : true,
					exportFileName : "Ciretira Weight",
					exportEnabled : true,
					title : {
						text : "Ciretira Weight"
					},
					data : [ {
						type : "pie",
						showInLegend : true,
						legendText : "{label}",
						toolTipContent : "{label}: <strong>{y}%</strong>",

						options : {
							title : {
								display : true,
								position : "top",
								text : "Pie Chart",
								fontSize : 16,
								fontColor : 'red',
								fontWeight : 600
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