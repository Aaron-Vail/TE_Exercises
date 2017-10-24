<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="pageTitle" value="Product Details"/>
<%@ include file = "common/header.jspf" %>

	<section  class="productDetail">
		<c:url value="img/products/${product.productImageName}.png" var="productImgURL"/>
		<img src="${productImgURL}" alt="${product.productName}"/>
		<div>
			<h1><c:out value="${product.productName}"/></h1>
			<c:out value="${product.productDescription}"/>
		</div>
		<ul>
			<li><c:out value="${product.name}"/></li>
			<li><c:out value="${product.price}"/></li>
			<li><c:out value="${product.description}"/></li>
		</ul>
	</section>
	
<%@include file="common/footer.jspf" %>