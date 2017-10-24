<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Product Details"/>
<%@ include file = "common/header.jspf" %>

<section>

	<div class="container">
	
			<div class="display-image">
				<c:url var="imgRef" value="webapp/img/${product.productId}.png" />
					<img src="img/product${product.productId}.png" class="photos" />
			</div>
		
		<div class="top-two">
			<div class="display-name">
				<p class="product-name"><strong>${product.product}</strong></p>
			</div>
		
			<div class="display-category">
				<p class="product-category">${product.category}</p>
			</div>
		
			<div class="display-price">
				$<p class="product-price"><strong>Product Price </strong>${product.price}</p>
			</div>
		
			<div class="display-description">
				<h4>Description</h4>
					<p class="description">${product.description}</p>
			</div>
		
		</div>
	</div>

</section>
<%@include file="common/footer.jspf" %>