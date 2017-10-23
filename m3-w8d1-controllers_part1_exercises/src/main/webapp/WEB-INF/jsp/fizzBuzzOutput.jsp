<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jspf">
	<c:param name="pageTitle" value="FizzBuzz Revisited"/>
</c:import>

<h3>FizzBuzz Revisited</h3>

<p>
	Divisible by: <c:out value="${param.divisor1}"/>
	<br/>
	Divisible by: <c:out value="${param.divisor2}"/>
	<br/>
	Divisible by both: <c:out value="${param.divisor1}"/> and <c:out value="${param.divisor2}"/>
	<br/>
</p>

<p>
	Alternative Fizz: <c:out value="${param.altfizz}"/>
	<br/>
	Alternative Buzz: <c:out value="${param.altbuzz}"/>
	<br/>
</p>

<p>
	<c:forEach var="result" items="${resultList}">
		${result}
		<br/>
	</c:forEach>
</p>

<c:import url="/WEB-INF/jsp/common/footer.jspf"/>