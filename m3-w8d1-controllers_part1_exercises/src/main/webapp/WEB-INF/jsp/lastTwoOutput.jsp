<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jspf">
	<c:param name="pageTitle" value="Last Two"/>
</c:import>

<h3>Last Two</h3>

<p>
	<c:forEach var="result" items="${resultList}">
		<c:out value="${result}"/>
		<br/>
	</c:forEach>
</p>

<c:import url="/WEB-INF/jsp/common/footer.jspf"/>