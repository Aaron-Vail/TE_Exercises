<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Product Table"/>
<%@ include file = "common/header.jspf" %>

    <section id="productTable">
    	<tr>
				<th>&nbsp;</th>
				<c:forEach items="${products}" var="product">
					<c:url var="imgRef" value="/productDetails?productId=${product.productId}" />
					<td><a href=${imgRef}><img src="img/product${product.productId}.jpg" class="productImage"/></a></td>
				</c:forEach>
			</tr>
			<tr class="greyed">
				<th>Name</th>
				<c:forEach items="${products}" var="product">
					<td class="productFont"><a href=${imgRef}><c:out value="${product.name}"/></a></td>
				</c:forEach>
			</tr>
			<tr>
				<th>Rating</th>
				<c:forEach items="${products}" var="product">
					<td>
						<fmt:formatNumber maxFractionDigits="0" value="${recipe.averageRating}" var="formattedRating"/>
						<img src="img/${formattedRating}-star.png" class="stars"/>
					</td>
				</c:forEach>
			</tr>
			<tr class="greyed">
				<th>Manufacturer</th>
				<c:forEach items="${products}" var="product">
					<td><c:out value="${product.manufacturer}"/></td>
				</c:forEach>
			</tr>
			<tr>
				<th>Price</th>
				<c:forEach items="${products}" var="product">
					<td><c:out value="${product.price}"/> min</td>
				</c:forEach>
			</tr>
			<tr class="greyed">
				<th>Weight</th>
				<c:forEach items="${products}" var="product">
					<td><c:out value="${product.weightInPounds}"/> lbs</td>
				</c:forEach>
			</tr>
			

    </section>
</body>
</html>