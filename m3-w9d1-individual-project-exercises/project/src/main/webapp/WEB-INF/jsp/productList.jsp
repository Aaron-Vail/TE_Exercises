<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="pageTitle" value="Product List"/>
<%@include file="common/header.jspf" %>

	<section id="main-content">
		<div>
			<c:forEach var="product" items="${products}">
			<div id="productSection" class="productImage">
				<c:url value="img/products/${product.productImageName}.png" var="productImgURL"/>
				<c:url value="/productDetail" var="productDetailURL">
					<c:param name="productcode" value="${product.productCode}"/>
				</c:url>
				<div><a href="${productDetailURL}"><img alt="${product.productName} picture" src="${productImgURL}"/></a></div>
				<h3><c:out value="${product.productName}"/></h3>
				<h5>Category: <c:out value="${product.state}"/></h5>
				<p><c:out value="${product.productDescription}"/></p>
		
			</div>
			</c:forEach>
		</div>
	</section>

<%@include file="common/footer.jspf" %>