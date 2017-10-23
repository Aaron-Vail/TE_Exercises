<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jspf">
	<c:param name="pageTitle" value="Colorized Name"/>
</c:import>
<h3>Colorized Name</h3>

<c:url var="formInput" value="/colorizedNameOutput" />
<form method="GET" action="${formInput}">

	<h4>Enter Name</h4>
	<label for="firstname">First name: </label>
	<br />
	<input type="text" name="firstname" />
	<br />
	<label for="lastname">Last name: </label>
	<br />
	<input type="text" name="lastname" />

	<h4>Choose Color</h4>
	<input type="checkbox" name="red" value="true" /> Red
	<br />
	<input type="checkbox" name="blue" value="true" /> Blue
	<br />
	<input type="checkbox" name="green" value="true"> Green
	<br />
	
	<input type="submit" value="Submit" />

</form>

<c:import url="/WEB-INF/jsp/common/footer.jspf"/>