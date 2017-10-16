<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Product List"/>
<%@ include file = "common/header.jspf" %>


 <section id="main-content">

	<h1>Toy Department</h1>

	<c:forEach var="product" items="${products}">
		<div id="fullProduct">
			<div id="productImage">
				<c:url var="imgRef" value="/productDetails?productId=${product.productId}" />
				<a href=${imgRef}><img src="img/${product.imageName}" /></a>
			</div>

			<div id="productDetails">
				<strong><c:out value="${product.name}" /></strong>
				</strong></br> by
				<c:out value="${product.manufacturer}" />
				</br> <strong><span id="redText">$<c:out
							value="${product.price}" /></span></br></strong> <strong>Weight</strong></strong>
				<c:out value="${product.weightInLbs}" />
				lbs</br>
			</div>

			<div class="starRating">
				<fmt:formatNumber maxFractionDigits="0"
					value="${product.averageRating}" var="formattedRating" />
				<img src="img/${formattedRating}-star.png" class="stars" />
			</div>
		</div>
		</div>
		</div>
		<hr>
	</c:forEach>


 </section>
</body>
</html>