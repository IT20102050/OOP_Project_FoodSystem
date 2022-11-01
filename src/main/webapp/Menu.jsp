<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>


<%@ page import="java.sql.*" %>

<html>
<head>

<meta charset="ISO-8859-1">
 <meta charset="UTF-8">
 
<title>Our Breakfast Menu</title>


 <link rel="stylesheet" type = "text/css" href="Header_Footer.css">
 
 <link rel="stylesheet" type = "text/css" href="backgroundPic.css">
 
 	<script type = "text/javascript" src = "Static.js"></script>
   
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
	  
   <!-- aos css cdn link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">
   
    <!-- google fonts cdn link  -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;400;500&family=Roboto:wght@100;300;400;500&display=swap" rel="stylesheet">

</head>
<body>

<!-- header section starts      -->

<header>

    <a href="#" class="logo"><i class="fas fa-utensils"></i>resto.</a>
    
    <nav class="navbar">
		    <a class="active" href="http://localhost:8090/FoodSystem/Home.jsp">home</a>
            <a href="http://localhost:8090/FoodSystem/Home.jsp#about">about</a>
            <a href="http://localhost:8090/FoodSystem/Home.jsp#gallery">menu</a>
            <a href="http://localhost:8090/FoodSystem/Home.jsp#popular">popular</a>
            <a href="http://localhost:8090/FoodSystem/Home.jsp#review">review</a>
            <a href="#checkout">checkout</a>
          
        </nav>

    <div class="icons">
        <a href="#" class="fas fa-user"></a>
        <i class="fas fa-search" id="search-icon"></i>
        <a href="#" class="fas fa-shopping-cart"></a>
    </div>

</header>

<!-- header section ends-->

<section class="MenuTable" id="MenuTable">

<h1>Add, Update and Delete Menu</h1>

</section>

<section class="MenuTable" id="MenuTable">

<a href="http://localhost:8090/FoodSystem/MenuInsert.jsp" class="bttn">Insert Menu</a>

</section>

<br>



<section class="MenuTable" id="MenuTable">

<%
String id = request.getParameter("ID");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "restaurant";
String userId = "root";
String password = "HiWisidagama123";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>


<div class="tb">
<table style="width:120%" id="tbl">
<tr>

</tr>
<tr >
<td style="color:black">ID</td>
<td style="color:black">Item Name</td>
<td style="color:black">Price per person (LKR)</td>
<td style="color:black">Update Menu</td>
<td style="color:black">Delete Menu</td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM menu";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr >

<td><%=resultSet.getString("ID") %></td>
<td><%=resultSet.getString("ItemName") %></td>
<td><%=resultSet.getString("Price") %></td>
<td><a href="http://localhost:8090/FoodSystem/update?id=<%= resultSet.getString("ID") %>" class="bttn">Update</a></td>
<td><a href="http://localhost:8090/FoodSystem/delete?id=<%= resultSet.getString("ID") %>" class="bttn">Delete</a></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>



</section>


















<!-- FOOTER START -->
<div class="footer">
  <div class="contain">
  <div class="col">
    <h1>Contact Us</h1>
    <ul>
      <li>Tel.No: +94-0711123123</li>
      <li>Tel.No: +94-0112555255</li>
      <li>E-mail: Resto123@gmail.com</li>
    </ul>
  </div>
  <div class="col">
    <h1>Branch Location</h1>
    <ul>
      <li>Moratuwa</li>
      <li>Mount Lavinia</li>
      <li>Kaluthara</li>
      <li>Negombo</li>
      <li>Kandy</li>
    </ul>
  </div>
 
  <div class="col social">
    <h1>Follow Us</h1>
    <ul>
      <li><img src="images/fb.png" width="32" style="width: 32px;"></li>
      <li><img src="images/insta.png" width="32" style="width: 32px;"></li>
      <li><img src="images/twit.png" width="32" style="width: 32px;"></li>
    </ul>
  </div>
<div class="clearfix"></div>
</div>
</div>
<!-- END OF FOOTER -->











<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>



<!-- aos js cdn link  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>

<!-- jquery cdn link  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>



<!-- initializing aos  -->

<script>

    AOS.init({
        delay:400,
        duration:1000
    })

</script>



</body>
</html>

