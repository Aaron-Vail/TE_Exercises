<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jspf">
	<c:param name="pageTitle" value="Squirrel Cigar Party"/>
</c:import>

<h3>Squirrel Cigar Party</h3>

<img src="img/smoking-squirrel.png"/>

<c:url var="formInput" value="/squirrelCigarOutput"/>
<form method="GET" action="${formInput}">
	<label for="number">Number of Squirrels:</label>
	<br/>
	<input type="text" name="number"/>
	<br/>
	<br/>
	<input type="checkbox" name="weekend"/> Is this the weekend?
	<br/>
	<br/>
	<input type="submit" value="Submit"/>
	
</form>

<c:import url="/WEB-INF/jsp/common/footer.jspf"/>