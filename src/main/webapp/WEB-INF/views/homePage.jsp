<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <title>Medicare Landing Page</title>

<style type="text/css">

 label, a {
	font-size: x-large;
	color: black;
}

.banner-heading {
    letter-spacing: 1rem;
    text-shadow: .1rem .1rem .8rem rgba(0, 0, 0, .4);
   font-size:  xxx-large;
   color : white;
}

.container {

	position: relative;
	z-index: 2;

}

#bg {
	position: fixed;
	top: -50%;
	left: -50%;
	width: 200%;
	height: 200%;
}

#bg img {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	margin: auto;
	min-width: 50%;
	min-height: 50%;
}

</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	
	<div class="container">

		<div class="col text-center">
			<h3
				class="text-uppercase font-weight-bold display-4  banner-heading">welcome
				to Medicare</h3>
			
		
		</div>
	</div>
	
<section class="py-5">
<div id="bg">
		<img src="/images/AdobeStock_289609649.jpeg" alt="">
	</div>
 
    <div class="container">
     <h2 style="text-align: center; color:red;">Top Medicines</h2>
      <div class="row">
        <div class="col-md-4">
          <div class="card mb-4">
            <img src="images/istockphoto-1300036753-612x612.jpg" class="card-img-top" alt="Feature 1" height="250px">
            <div class="card-body">
              <h5 class="card-title">Antibiotics</h5>
              <p class="card-text">Antibiotics are medicines that fight infections caused by bacteria in humans by making it difficult for the bacteria to grow.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card mb-4">
            <img src="/images/istockphoto-943878650-612x612.jpg" class="card-img-top" alt="Feature 2" height="250px">
            <div class="card-body">
              <h5 class="card-title">Losartan</h5>
              <p class="card-text">A drug used to treat high blood pressure. Losartan potassium blocks the action of chemicals that blood vessels constrict.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card mb-4">
            <img src="/images/istockphoto-1035004756-612x612.jpg" class="card-img-top" alt="Feature 3" height="250px">
            <div class="card-body">
              <h5 class="card-title">Antihistamine</h5>
              <p class="card-text">A type of drug that blocks the action of histamines, which can cause fever, itching, sneezing, a runny nose, and watery eyes.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  <!-- Footer -->
  <footer class="bg-dark text-light py-4">
  <jsp:include page="footer.jsp" />
    <div class="container text-center">
      <p>&copy; 2023 Medicare. All rights reserved.</p>
    </div>
  </footer>

	<div id="bg">
		<img src="/images/AdobeStock_289609649.jpeg" alt="">
	</div>
	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>