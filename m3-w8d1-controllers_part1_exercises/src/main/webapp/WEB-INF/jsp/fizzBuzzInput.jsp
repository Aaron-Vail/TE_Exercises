<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jspf">
	<c:param name="pageTitle" value="FizzBuzz Revisited"/>
</c:import>

<h3>FizzBuzz Revisited</h3>

<c:url var="formInput" value="/fizzBuzzOutput" />
<form method="GET" action="${formInput}">

	<label for="divisor1">Divisible By: </label>
	<br />
	<input type="text" name="divisor1" />
	<br />
	<label for="divisor2">Divisible By: </label>
	<br />
	<input type="text" name="divisor2" />
	<br/>
	<label for="altfizz">Alternative Fizz: </label>
	<br />
	<input type="text" name="altfizz" />
	<br />
	<label for="altbuzz">Alternative Buzz: </label>
	<br />
	<input type="text" name="altbuzz" />
	<br/>
	<br/>
	<label for="num1">Number 1: </label>
	<input type="text" name="num1" />
	<br />
	<label for="num2">Number 2: </label>
	<input type="text" name="num2" />
	<br />
	<label for="num3">Number 3: </label>
	<input type="text" name="num3" />
	<br />
	<label for="num4">Number 4: </label>
	<input type="text" name="num4" />
	<br />
	<label for="num5">Number 5: </label>
	<input type="text" name="num5" />
	<br />
	<input type="submit" value="Submit" />

</form>

<c:import url="/WEB-INF/jsp/common/footer.jspf"/>