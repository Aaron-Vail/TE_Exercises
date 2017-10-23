<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jspf">
	<c:param name="pageTitle" value="Colorized Name"/>
</c:import>


<h3>Colorized Name</h3>

<p>
	First name:
	<c:out value="${param.firstname}" />
	<br /> Last name:
	<c:out value="${param.lastname}" />
	<br />
</p>

<c:if test="${param.red}">
	<p style="color:red"><c:out value="${param.firstname}"/> <c:out value="${param.lastname}"/></p>
</c:if>
<c:if test="${param.blue}">
	<p style="color:blue"><c:out value="${param.firstname}"/> <c:out value="${param.lastname}"/></p>
</c:if>
<c:if test="${param.green}">
	<p style="color:green"><c:out value="${param.firstname}"/> <c:out value="${param.lastname}"/></p>
</c:if>

<c:import url="/WEB-INF/jsp/common/footer.jspf"/>