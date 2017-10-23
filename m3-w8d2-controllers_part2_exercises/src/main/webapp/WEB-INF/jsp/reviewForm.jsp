<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jspf">
	<c:param name="pageTitle" value="Write A Review"/>
</c:import>

<hr>

<h2 class="text-center">Write a Review</h2>

<c:url var="submitReviewUrl" value="/reviewForm"/>

<form action="${submitReviewUrl}" method="POST">
	
	<div class="form-group">
		<label for="username">Name</label>
		<input type="text" class="form-control" name="username" placeholder="username">
	</div>
	
	<fieldset class="form-group">
		<label for="rating">Rating:</label>
		<c:forEach begin="0" end="4" var="stars">
			<div class="form-check">
				<input type="radio" class="form-check-input" name="rating" value="${5 - stars}" <c:if test="${stars == 0}">checked</c:if>>
				<c:forEach begin="1" end="${5 - stars}">
					<img class="star-small" src="img/star.png" />
				</c:forEach>
			</div>
		</c:forEach>
	</fieldset>
	
	<div class="form-group">
		<label for="title">Review Title:</label>
		<input type="text" class="form-control" name="title" placeholder="Review Title">
	</div>
	
	<div class="form-group">
		<label for="rext">Review Text:</label>
		<textarea class="form-control" name="text" placeholder="Enter Text Here" rows="5"></textarea>
	</div>
	
	<button type="submit" class="btn">Submit</button>
	
</form>

<c:import url="/WEB-INF/jsp/common/footer.jspf"/>