<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Product List View</title>
    <link rel="stylesheet" href="css/site.css" />
</head>
<body>
    <header>
        <h1>MVC Exercises - Views Part 2: Models</h1>        
    </header>
    <nav>
        <ul>
            <li><a href="#">Link 1</a></li>
            <li><a href="#">Link 2</a></li>
        </ul>
        
    </nav>
    <section id="main-content">

		<h1>Toy Department</h1>
		
			<c:forEach var="product" items="${products}">
				<div id="fullProduct">
					<div id="productImage">
						<img src="img/${product.imageName}"/>
						</div>
					
						<div id="productDetails">
							<strong></strong><c:out value="${product.name}"/></strong></br>
							by <c:out value="${product.manufacturer}"/></br>
						
							<strong><span id="redText">$<c:out value="${product.price}"/></span></br></strong>	
							<strong>Weight</strong></strong><c:out value="${product.weightInLbs}"/>lbs</br>
							</div>

							<div class="starRating">
								<fmt:formatNumber maxFractionDigits="0" value="${product.averageRating}" var="formattedRating"/>
								<img src="img/${formattedRating}-star.png" class="stars"/>
							</div>
						</div>
					</div>
				</div>
				<hr>
			</c:forEach>
  

    </section>
</body>
</html>