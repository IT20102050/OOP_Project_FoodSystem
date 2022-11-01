<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	

	<link rel="stylesheet" type = "text/css" href="Header_Footer.css">
 
 	<link rel="stylesheet" type = "text/css" href="Styles.css">
	
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
            <a href="#menu">menu</a>
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

<div class="tb">
<table style="width:120%" id="tbl">
	<c:forEach var="menu" items="${menuDetails}">
	
	<c:set var="id" value="${menu.id}"/>
	<c:set var="name" value="${menu.name}"/>
	<c:set var="price" value="${menu.price}"/>

	
	<tr>
		<td>Menu ID</td>
		<td>${menu.id}</td>
	</tr>
	<tr>
		<td>Item Name</td>
		<td>${menu.name}</td>
	</tr>
	<tr>
		<td>Price per person(LKR)</td>
		<td>${menu.price}</td>
	</tr>

	</c:forEach>
	
	</table>
	</div>
	
	<c:url value="updateMenu.jsp" var="menuupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="price" value="${price}"/>
	</c:url>
	
	<a href="${menuupdate}">
	<input type="button" name="update" value="Update My Data">
	</a>
	
	<br><br>
	<c:url value="deleteMenu.jsp" var="menudelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="price" value="${price}" />
	</c:url>
	<a href="${menudelete}">
	<input type="button" name="delete" value="Delete">
	</a>
	
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



