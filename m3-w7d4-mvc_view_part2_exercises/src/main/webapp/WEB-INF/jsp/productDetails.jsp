<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Product Table"/>
<%@ include file = "common/header.jspf" %>

<section>

	<div class="container">
	
			<div class="display-image">
				<c:url var="imgRef" value="webapp/img/${product.productId}.jpg" />
					<img src="img/product${product.productId}.jpg" class="photos" />
			</div>
		
		<div class="top-two">
			<div class="display-name">
				<p class="product-name"><strong>${product.name}</strong></p>
			</div>
		
			<div class="display-product">
				<p class="product-type">${product.productType}</p>
			</div>
		
			<div class="display-weight">
				<p class="product-weight"><strong>Product Weight </strong>${product.weightInPounds}
					lbs</p>
			</div>
		
			<div class="display-description">
				<h4>Description</h4>
					<p class="description">${product.description}</p>
			</div>
		
		</div>
	</div>

</section>
</body>
</html>