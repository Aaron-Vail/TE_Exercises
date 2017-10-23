package com.techelevator.ssg.model;

import java.util.List;

public interface ReviewDao {

	public List<SquirrelReview> getAllReviews();
	public void save(SquirrelReview post);
}