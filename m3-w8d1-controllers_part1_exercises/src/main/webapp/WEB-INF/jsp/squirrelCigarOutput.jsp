<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jspf">
	<c:param name="pageTitle" value="Squirrel Cigar Party"/>
</c:import>

<h3>Squirrel Cigar Party</h3>

<c:choose>
	<c:when test="${success}">
		<h4>Great Party!!!</h4>
		<img src="img/happy-squirrel.png"/>
	</c:when>
	<c:otherwise>
		<h4>Ugh!!!</h4>
		<img src="img/sad-squirrel.png"/>
	</c:otherwise>
</c:choose>

<c:import url="/WEB-INF/jsp/common/footer.jspf"/>