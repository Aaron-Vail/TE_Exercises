<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="pageTitle" value="New User"/>
<%@include file="common/header.jspf" %>

<body>
	
		<c:url var="validationRegistrationSubmitUrl" value="/registration"/>
		<form:form method="POST" action="${validationRegistrationSubmitUrl}" modelAttribute="newUser">
			<div>
				<label for="firstName">First Name:</label>
				<form:input path="firstName"/>
				<form:errors path="firstName" cssClass="error"/>
			</div>
			<div>
				<label for="lastName">Last Name:</label>
				<form:input path="lastName"/>
				<form:errors path="lastName" cssClass="error"/>
			</div>
			<div>
				<label for="email">email Address:</label>
				<form:input path="email"/>
				<form:errors path="email" cssClass="error"/>
			</div>
			<div>
				<label for="password">Password:</label>
				<form:input path="password" placeholder="must be 8 characters long"/>
				<form:errors path="password" cssClass="error"/>
			</div>
			<div>
				<label for="passwordRepeat">Repeat Password:</label>
				<form:input path="passwordRepeat" placeholder="must be 8 characters long"/>
				<form:errors path="passwordRepeat" cssClass="error"/>
			</div>
			<div>
				<label for="birthdate">Birthday:</label>
				<form:input path="birthdate"/>
				<form:errors path="birthdate" cssClass="error"/>
			</div>
			<div>
				<label for="tickets">Tickets:</label>
				<form:input path="tickets" placeholder="number of tickets"/>
				<form:errors path="tickets" cssClass="error"/>
			</div>
			<div>
				<input type="submit" value="Submit"/>
			</div>
		</form:form>
	</body>



<%@include file="common/footer.jspf" %>
