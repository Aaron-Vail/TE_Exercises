<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jspf">
	<c:param name="pageTitle" value="Baby Lotto"/>
</c:import>

<h3>Baby Lotto</h3>

<c:forEach var="result" items="${resultList}">
	<p style="color: ${result.color}"><c:out value="${result.numbers}"/></p>
</c:forEach>

<c:import url="/WEB-INF/jsp/common/footer.jspf"/>