<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Product Table"/>
<%@ include file = "common/header.jspf" %>

    <section id="main-content">

		<h1>Recipes</h1>
			<c:forEach var="product" items="${products}">
				<div class="block">
					<c:url var="imgRef" value="/productDetails?productId=${product.productId}" />
					<a href=${imgRef}><img src="img/product${product.productId}.jpg"
						class="photos" /></a> <a href=${imgRef}><p class="product-name">${product.name}</p></a>
					<p class="manufacturer">${product.manufacturer}manufacturer</p>
					<p class="rating">
						<fmt:formatNumber maxFractionDigits="0"
							value="${product.averageRating}" var="formattedRating" />
						<img src="img/${formattedRating}-star.png" class="rating" />
					</p>
				</div>
			</c:forEach>
       
    </section>
</body>
</html>