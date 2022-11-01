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
		    <a class="active" href="#home">home</a>
            <a href="#about">about</a>
            <a href="http://localhost:8090/FoodSystem/Home.jsp#gallery">menu</a>
            <a href="#popular">popular</a>
            <a href="#review">review</a>
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

<h1>Add A New Menu</h1>

</section>

<section class="MenuTable" id="MenuTable">

<a href="http://localhost:8090/FoodSystem/MenuInsert.jsp" class="bttn">Insert Menu</a>

</section>

<br>



<section class="MenuTable" id="MenuTable">


<%! String driver = "com.mysql.jdbc.Driver";%>
<%! String url = "jdbc:mysql://localhost/restaurant"; %>
<%! String uid = "root"; %>
<%! String psw = "HiWisidagama123"; %>
<%! String sql ="SELECT * from menu"; %>
<%
Connection con;
PreparedStatement ps;
ResultSet rs;


try
{
Class.forName(driver);
con = DriverManager.getConnection(url,uid,psw);
ps = con.prepareStatement(sql);
rs = ps.executeQuery(sql);


if(!rs.next()) {
out.println("Sorry, No list found");
} 
else
{ 
%>


<div class="tb">

<table style="width:120%" id="tbl">
<tr>
<th style="color:black">ID</th>
<th style="color:black">Item Name</th>
<th style="color:black">Price per person (LKR)</th>
<th style="color:black">Update Menu</th>
<th style="color:black">Delete Menu</th>
</tr>
<tr>
<%
while(rs.next())
{
%>

<td> <%= rs.getString("ID") %> </td>
<td> <%= rs.getString("ItemName") %> </td>
<td> <%= rs.getString("Price") %> </td>
<td><a href="http://localhost:8090/FoodSystem/update?id=<%= rs.getString("ID") %>" class="bttn">Update</a></td>
<td><a href="http://localhost:8090/FoodSystem/delete?id=<%= rs.getString("ID") %>" class="bttn">Delete</a></td>
</tr> 
<%
}
%>
</table>
</div>



<br>
<%
}
}
catch(SQLException sqle)
{
out.println(sqle);
}
%>


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

