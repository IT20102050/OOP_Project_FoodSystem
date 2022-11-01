<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    
<!DOCTYPE html>
<html>
<head>

 <meta charset="ISO-8859-1">
 
 <meta charset="UTF-8">
 
   
<title>Home Page</title>

 <!-- custom css file link  -->
    <link rel="stylesheet" type = "text/css" href="Styles.css">
    
     <link rel="stylesheet" type = "text/css" href="Header_Footer.css">
    
	<script type = "text/javascript" src = "js/Static.js"></script>
   
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
            <a href="#gallery">menu</a>
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

<!-- search form  -->

<form action="" id="search-form">
    <input type="search" placeholder="search here..." name="" id="search-box">
    <label for="search-box" class="fas fa-search"></label>
    <i class="fas fa-times" id="close"></i>
</form>



<!-- home section starts  -->

<section class="home" id="home">

    <div class="content">
        <h3>Taste the Best that Surprise you</h3>
        <p>Enjoy mouth-watering dishes from our handcrafted food delivery menus at (Name of the restaurent)</p><br><br>
        <p>From our Hearts, to your Home !!!</p>
        <a href="#" class="btn">order now</a>
       
    </div>

    <div class="image">
        <img src="images/home-img.png" alt="">
    </div>

</section>

<!-- home section ends -->


<!-- about section starts  -->

<section class="about" id="about">

    <div class="image" data-aos="fade-right"></div>

    <div class="content" data-aos="fade-left">
        <h3>a word about us</h3>
        <p>Launched in 2015, RESTO has paved itself as a destination for dining for entertaining corporate clients or hosting memorable family occasions, the restaurant can offer seating in the main area or provide secluded areas in the three private dining rooms, one of which serves as a Chefs Table. RESTO is located in five different areas in Colombo.
        </p>
        <a href="#"><button class="btn">Explore</button></a>
    </div>

</section>

<!-- about section ends -->


<!-- menu section starts  -->

<section class="gallery" id="gallery">

<h1 class="heading"> our Delicious <span>menu</span> </h1>

<div class="box-container">

    <div class="box" data-aos="fade-up">
        <img src="images/breakfast.jpg" alt="">
        <p><a href="http://localhost:8090/FoodSystem/Menu.jsp#">Breakfast</a></p>
    </div>

    <div class="box" data-aos="fade-up">
        <img src="images/lunch.jpg" alt="">
        <p>Lunch</p>
    </div>

    <div class="box" data-aos="fade-up">
        <img src="images/dinner.jpg" alt="">
        <p>Dinner</p>
    </div>

    <div class="box" data-aos="fade-up">
        <img src="images/desserts.jpg" alt="">
        <p>Dessert</p>
    </div>

    <div class="box" data-aos="fade-up">
        <img src="images/soft_drinks.jpg" alt="">
        <p>Soft Drinks</p>
    </div>

    <div class="box" data-aos="fade-up">
        <img src="images/soup.jpg" alt="">
        <p>soup</p>
    </div>

</div>

</section>

<!-- menu section ends -->








<!-- popular section starts  -->

<section class="popular" id="popular">

<h1 class="heading"> most <span>popular</span> foods </h1>

<div class="box-container">

    <div class="box" data-aos="fade-right">
        <img src="images/pop1.png" alt="">
        <h3>Chicken Nuggets</h3>
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
        </div>
        <div class="price">LKR 645.00</div>
        <a href="#"><button class="btn">add to cart</button></a>
    </div>

    <div class="box" data-aos="fade-left">
        <img src="images/pop2.png" alt="">
        <h3>Spaghetti</h3>
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
        </div>
        <div class="price">LKR 770.00</div>
        <a href="#"><button class="btn">add to cart</button></a>
    </div>

    <div class="box" data-aos="fade-right">
        <img src="images/pop3.png" alt="">
        <h3>Roast Chicken</h3>
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
        </div>
        <div class="price">LKR 990.00</div>
        <a href="#"><button class="btn">add to cart</button></a>
    </div>

    <div class="box" data-aos="fade-left">
        <img src="images/pop4.png" alt="">
        <h3>Snickers Rolls</h3>
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
        </div>
        <div class="price">LKR 120.00</div>
        <a href="#"><button class="btn">add to cart</button></a>
    </div>

</div>

</section>

<!-- popular section ends -->



<!-- review section starts  -->

<section class="review" id="review">

    <h1 class="heading"> our customers <span>reviews</span> </h1>

    <div class="box-container">

        <div class="box">
            <img src="images/r1.jpg" alt="">
            <h3>Judy Annamary</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="far fa-star"></i>
            </div>
            <p>One of my favourite restaurant and I love the taste of their food. It's just...Delicious!!! Ohh I love it!!!</p>
        </div>
        <div class="box">
            <img src="images/r2.jpeg" alt="">
            <h3>George Steven</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="far fa-star"></i>
            </div>
            <p>Superb service!!! It's just upto my taste. I never gonna miss their menus. </p>
        </div>
       

    </div>

</section>

<!-- review section ends -->


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

<script src= "Static.js"></script>

<!-- initializing aos  -->

<script>

    AOS.init({
        delay:400,
        duration:1000
    })

</script>



</body>
</html>