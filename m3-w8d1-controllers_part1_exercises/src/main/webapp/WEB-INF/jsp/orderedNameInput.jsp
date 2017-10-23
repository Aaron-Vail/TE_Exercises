<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jspf">
	<c:param name="pageTitle" value="Ordered Name"/>
</c:import>
<h3>xOrdered Name</h3>

<c:url var="formInput" value="/orderedNameOutput" />
<form method="GET" action="${formInput}">

	<h4>Enter Name</h4>
	<label for="firstname">First name: </label>
	<br />
	<input type="text" name="firstname" />
	<br />
	<label for="middleinitial">Middle initial: </label>
	<br />
	<input type="text" name="middleinitial" />
	<br />
	<label for="lastname">Last name: </label>
	<br />
	<input type="text" name="lastname" />

	<h4>Choose Order</h4>
	<input type="radio" name="order" value="fml" /> First MI Last
	<br />
	<input type="radio" name="order" value="fl" /> First Last
	<br />
	<input type="radio" name="order" value="lfm"> Last, First MI
	<br />
	<input type="radio" name="order" value="lf"> Last, First
	<br /> <br />
	<input type="submit" value="Submit" />

</form>

<c:import url="/WEB-INF/jsp/common/footer.jspf"/>