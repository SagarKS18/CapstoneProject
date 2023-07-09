<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          >
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          >
                
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Medicines</title>
</head>
	<jsp:include page="header.jsp" />
<body>
    <div class="container" style="margin-top: 30px">
     <div class="row">
        <div class="col-sm-3">
        
           
          <div class="col-sm-10 sidenav">
            <h6 class="font-weight-bold">Category</h6>
            <div class="list-group list-group-flush list-group-no-border list-group-sm">
              <a href="/shop" class="list-group-item list-group-item-action">All Medicines</a>
              <a href="/shop/Gender/Adults" class="list-group-item list-group-item-action">Adults</a>
              <a href="/shop/Kids/Kids" class="list-group-item list-group-item-action">Kids(above 6 years)</a>
              <a href="/shop/Kids/Babies" class="list-group-item list-group-item-action">Babies</a>
              <!--  <a href="/shop/Kids/Girls" class="list-group-item list-group-item-action">Kids-Girls</a>-->
              <a href="" class="list-group-item list-group-item-action"></a>
            </div>
          </div> 
          
          <div class="col-sm-10 sidenav">
            <h6 class="font-weight-bold">Brand</h6>
            <div class="list-group list-group-flush list-group-no-border list-group-sm">
              <a href="/shop/brand/Cipla" class="list-group-item list-group-item-action">Cipla</a>
              <a href="/shop/brand/Lupin" class="list-group-item list-group-item-action">Lupin</a>
              <a href="/shop/brand/Mankind" class="list-group-item list-group-item-action">Mankind</a>
            </div>
          </div> 
           
           <div class="col-sm-10 sidenav">
            <h6 class="font-weight-bold">Type</h6>
            <div class="list-group list-group-flush list-group-no-border list-group-sm">
              <a href="/shop/style/Fever" class="list-group-item list-group-item-action">Fever</a>
              <a href="/shop/style/Cough" class="list-group-item list-group-item-action">Cough</a>
              <a href="/shop/style/Headache" class="list-group-item list-group-item-action">Headache</a>
              <a href="/shop/style/Backpain" class="list-group-item list-group-item-action">Backpain</a>
               <!--  <a href="/shop/style/Gym" class="list-group-item list-group-item-action">Gym</a>
              <a href="/shop/style/BaseBall" class="list-group-item list-group-item-action">BaseBall</a>-->
            </div>
          </div> 
        </div>
        <div class="col-sm-9">
                <div class="card" style="margin-top: 20px">
                    <input class="form-control" id="myInput" type="text" placeholder="Search..">
                    <br>
                    <c:forEach var="product" items="${products}">
                        <div class="row no-gutters product-row" style="margin-top: 20px">
                            <div class="col-sm-5 d-flex justify-content-center">
                                <img class="" height="150px" width="150px" src='/productImages/${product.image_Url}' alt="${product.productName}">
                            </div>
                            <div class="col-sm-7 d-flex justify-content-center">
                                <div class="card-body">
                                    <h4 class="card-title">${product.productName}</h4>
                                    <h5>Price: <span>${product.price}</span></h5>
                                    <h5>mg: <span>${product.size}</span></h5>
                                    <a href="/shop/viewProduct/${product.productCode}" class="btn btn-primary">View Medicine</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
            $("#myInput").on("keyup", function() {
                var value = $(this).val().toLowerCase();
                $(".product-row").filter(function() {
                    return $(this).find('.card-title').text().toLowerCase().indexOf(value) > -1;
                }).toggle(true);
                $(".product-row").filter(function() {
                    return $(this).find('.card-title').text().toLowerCase().indexOf(value) === -1;
                }).toggle(false);
            });
        });
    </script>
</body>
</html>