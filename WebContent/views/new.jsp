<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Iterator"%>
<%@page import="com.opensymphony.xwork2.util.Key"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="org.apache.commons.math3.linear.Array2DRowRealMatrix" %>
<%@ page import="org.apache.commons.math3.linear.EigenDecomposition" %>
 <%@ page import="org.apache.commons.math3.linear.RealVector" %>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ page import="javax.servlet.http.*" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="javax.servlet.http.*" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%@ page import="bean.Quez_rd" %>
<%@page import="action.AHPaction" %>
 <%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="js/canvasjs.min.js"></script>
<script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      href="https://fonts.googleapis.com/css2?family=Piedra&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="public/custom-css/style.css" />
    <link rel="stylesheet" href="public/boostrap@4.5.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="node_modules/animate.css/animate.min.css">
    <link rel="stylesheet" href="public/fontawesome-free-5.13.0-web/css/all.css">
</head>
<body style="font-size: 1.3rem;">

<!--navbar-->
    <div>
      <nav class="navbar navbar-expand-lg navbar-light ">
        <a class="navbar-brand animate__animated animate__swing " href="#"><span style="font-size: 2rem;">Project-A</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end mr-5" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item active mr-5">
              <a class="nav-link " href="index.html"><i class="fas fa-home  pr-1"></i>Home</a>
            </li>
            <li class="nav-item mr-5" >
              <a class="nav-link " href="ContactUs.html"><i class="fas fa-address-card  pr-1"></i>Contact</a>
            </li>
            <li class="nav-item mr-5" >
              <a class="nav-link"  href="index.html#aboutUs"><i class="fas fa-file-signature  pr-1"></i>About Us</a>
            </li>
          </ul>
        </div>
      </nav>
      <hr>
    </div>
    
    <!--content-->
   
      <div class="row  my-5 ">
		<%	
		String dataPoints=null;
		String dataPoints1=null;
		Gson gsonObj = new Gson();
		Map<Object,Object> map = null;
		Map<Object,Object> map1 = null;
		List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
		List<Map<Object,Object>> list1 = new ArrayList<Map<Object,Object>>();
		
		Quez_rd quez= new Quez_rd();
		
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
		
		
		
		int nrVx = 5;
	    String labels[] = {"Price/Cost ", "RAM  ", "Storage Space   ", "Battery        ","Camera	   "};

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
	        System.out.print("Importance of " + labels[ahp.getIndicesForPairwiseComparison(i)[0]] + " compared to ");
	        System.out.print(labels[ahp.getIndicesForPairwiseComparison(i)[1]] + "= ");
	        System.out.println(ahp.getPairwiseComparisonArray()[i]);
	    }
	    
	    System.out.println("\n" + ahp + "\n");

	    System.out.println("Consistency Index: " + ahp.getConsistencyIndex());
	    System.out.println("Consistency Ratio: " + ahp.getConsistencyRatio() + "%");
	    System.out.println();
	    System.out.println("Weights: ");
	    for (int k=0; k<ahp.getWeights().length; k++) {
	        System.out.println(labels[k] + ": " + ahp.getWeights()[k] * 100);
	        double value =ahp.getWeights()[k] * 100;
	        int data = (int)value;
	        map = new HashMap<Object,Object>(); map.put("label", labels[k]); map.put("y", value);map.put("exploded", true); list.add(map);
	        //dataPoints = gsonObj.toJson(list);
	        %>
	        
	        <p> <%=labels[k] %> :<%=data %>% </p>
	        <% 
	    }
	    
	   
		
	    
	    dataPoints = gsonObj.toJson(list);
		
		
        %>
  
        
        <p>Consistency Index: <%=ahp.getConsistencyIndex() %></p>
        <p>Consistency Ratio:  <%=ahp.getConsistencyRatio() %></p>
        
        
        <div class="row" style="margin-top:10px;">
      <div class="col-md-6">
          <div id="chartContainer" style="height: 250px; width: 50%;"></div>
		
		</div>
          </div>
          <br><br>
          
           </div>
     


    
      <div style="background-color: #091625; border: none;" id="aboutUs">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#fff" fill-opacity="1" d="M0,160L21.8,160C43.6,160,87,160,131,176C174.5,192,218,224,262,234.7C305.5,245,349,235,393,202.7C436.4,171,480,117,524,117.3C567.3,117,611,171,655,192C698.2,213,742,203,785,181.3C829.1,160,873,128,916,144C960,160,1004,224,1047,245.3C1090.9,267,1135,245,1178,234.7C1221.8,224,1265,224,1309,218.7C1352.7,213,1396,203,1418,197.3L1440,192L1440,0L1418.2,0C1396.4,0,1353,0,1309,0C1265.5,0,1222,0,1178,0C1134.5,0,1091,0,1047,0C1003.6,0,960,0,916,0C872.7,0,829,0,785,0C741.8,0,698,0,655,0C610.9,0,567,0,524,0C480,0,436,0,393,0C349.1,0,305,0,262,0C218.2,0,175,0,131,0C87.3,0,44,0,22,0L0,0Z"></path></svg>
        <h1 class="text-center text-white">About Us</h1>
        <p class="text-white p-2">
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque facere, odit voluptate expedita repellat, vel natus nostrum quia quibusdam cum quis, aut blanditiis vitae iusto neque nesciunt possimus ipsa. Eum!
        </p>
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#fff" fill-opacity="1" d="M0,160L21.8,160C43.6,160,87,160,131,176C174.5,192,218,224,262,234.7C305.5,245,349,235,393,202.7C436.4,171,480,117,524,117.3C567.3,117,611,171,655,192C698.2,213,742,203,785,181.3C829.1,160,873,128,916,144C960,160,1004,224,1047,245.3C1090.9,267,1135,245,1178,234.7C1221.8,224,1265,224,1309,218.7C1352.7,213,1396,203,1418,197.3L1440,192L1440,320L1418.2,320C1396.4,320,1353,320,1309,320C1265.5,320,1222,320,1178,320C1134.5,320,1091,320,1047,320C1003.6,320,960,320,916,320C872.7,320,829,320,785,320C741.8,320,698,320,655,320C610.9,320,567,320,524,320C480,320,436,320,393,320C349.1,320,305,320,262,320C218.2,320,175,320,131,320C87.3,320,44,320,22,320L0,320Z"></path></svg>
      </div>
    
        

<!--footer-->
    <div class="footer">
      <div class="continer-fluid row justify-content-center p-4">
        <div class="col-4  ">
          <legend style="font-size: 1.5rem;">Social Network</legend>
          <i class="fab fa-facebook" style="font-size: 50px;"></i>
          <i class="fab fa-twitter" style="font-size: 50px;"></i>
          <i class="fab fa-linkedin-in" style="font-size: 50px;"></i>
        </div>
        <div class="col-4">
          <address>
            <address>
              Written by <a href="mailto:webmaster@example.com">Jon Doe</a>.<br> 
              Visit us at:<br>
              Example.com<br>
              Box 564, Disneyland<br>
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
     <script type="text/javascript">
window.onload = function() { 
	
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2",
	animationEnabled: true,
	exportFileName: "Ciretira Weight",
	exportEnabled: true,
	title:{
		text:"Ciretira Weight"
	},
	data: [{
		type: "pie",
		showInLegend: true,
		legendText: "{label}",
		toolTipContent: "{label}: <strong>{y}%</strong>",
		indexLabel: "{label} {y}%",
		dataPoints : <%out.print(dataPoints);%>
	}]
});
chart.render();


}

</script>  
     
  </body>
</html>