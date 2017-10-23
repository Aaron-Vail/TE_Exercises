package com.techelevator.ssg.controller;


import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techelevator.ssg.model.SquirrelReview;
import com.techelevator.ssg.model.ReviewDao;

@Controller 
public class HomeController {

	@Autowired
	private ReviewDao dao;
	
	@RequestMapping("/")
	public String handleHome(HttpServletRequest request) {
		request.setAttribute("reviewList", dao.getAllReviews());
		return "index";
	}
	
	@RequestMapping(path="/reviewForm", method=RequestMethod.GET)
	public String showReviewForm() {
		return "reviewForm";
	}
	
	@RequestMapping(path="/reviewForm", method=RequestMethod.POST)
	public String submitReview(SquirrelReview review) {
		review.setDateSubmitted(LocalDateTime.now());
		dao.save(review);
		return "redirect:/";
	}
}
