<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jspf">
	<c:param name="pageTitle" value="Ordered Name"/>
</c:import>

<h3>Ordered Name</h3>

<p>
	First name:
	<c:out value="${param.firstname}" />
	<br /> Middle initial:
	<c:out value="${param.middleinitial}" />
	<br /> Last name:
	<c:out value="${param.lastname}" />
	<br />
</p>

<p>
	Result:
	<c:out value="${orderedName}" />
</p>

<c:import url="/WEB-INF/jsp/common/footer.jspf"/>