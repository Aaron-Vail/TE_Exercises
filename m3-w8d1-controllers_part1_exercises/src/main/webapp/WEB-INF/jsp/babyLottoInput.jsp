<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jspf">
	<c:param name="pageTitle" value="Baby Lotto"/>
</c:import>

<h3>Baby Lotto</h3>

<c:url var="formInput" value="/babyLottoOutput" />
<form method="GET" action="${formInput}">

	<c:forEach begin="1" end="5" var="num">
		<label for="ticket">Ticket ${num}: </label>
		<input type="text" name="ticket" />
		<br />
	</c:forEach>
	
	<input type="submit" value="Submit" />

</form>

<c:import url="/WEB-INF/jsp/common/footer.jspf"/>