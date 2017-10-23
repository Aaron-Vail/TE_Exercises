<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jspf">

	<c:param name="pageTitle" value="home"/>
</c:import>

<h3 class="text-center">Squirrel Cigar Parties For Dummies by Craig Castelaz</h3>

<hr>

<div class="row justify-content-md-center">
	<div class="col-md-4">
		<img class="book" src="img/forDummies.png" />
	</div>
	<div class="col-md-6">
		<p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
		Quisque sagittis maximus commodo. Donec vestibulum ac elit sed dignissim. 
		Cras eleifend molestie odio, vel malesuada dolor suscipit vitae. 
		Phasellus non tortor quis nibh consequat condimentum. 
		Mauris interdum, quam eu sodales porttitor, elit quam molestie ipsum, dictum rutrum orci neque eget sapien. 
		Sed ac scelerisque nulla. Cras blandit erat nec dolor iaculis, id accumsan dui viverra. Sed sit amet augue ex. 
		Nullam et blandit erat. Aliquam in dui vel nisl bibendum mollis in vel ipsum. 
		Nunc scelerisque ex non nulla rhoncus porta. 
		Suspendisse est elit, eleifend et facilisis at, porttitor sed nisl. 
		Sed ante libero, accumsan quis lobortis ac, consectetur id eros.</p>
		<p class="lead">Buy this book and it will change your squirrel parties forever.</p>
		<a href="#" role="button" class="btn bn-lg">Buy Now!</a>
	</div>
</div>

<hr>

<h2 class="text-center">Reviews</h2>

<c:url var="reviewForm" value="/reviewForm"/>
<a href="${reviewForm}" role="button" class="btn bn-lg">Submit Review</a>

<c:forEach var="review" items="${reviewList}">
	<div class="review-row">
		<p class="review-title"><strong><c:out value="${review.title}"/></strong> (<c:out value="${review.username}"/>)</p>
		<p class="date"><c:out value="${review.getDateSubmittedAsString()}"/></p>
		<div class="star-block">
			<c:forEach begin="1" end="${5 - stars}">
				<img class="star" src="img/star.png" />
			</c:forEach>
		</div>
		<p><c:out value="${review.text}"/></p>
		<hr>
	</div>
</c:forEach>

<c:import url="/WEB-INF/jsp/common/footer.jspf"/>