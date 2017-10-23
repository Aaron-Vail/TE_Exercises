package com.techelevator.mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SquirrelCigarController {
	
	@RequestMapping("/squirrelCigarInput")
	public String handleInput() {
		return "squirrelCigarInput";
	}
	
	@RequestMapping("/squirrelCigarOutput")
	public String handleOutput(HttpServletRequest request) {
		int number = Integer.parseInt(request.getParameter("number"));
		boolean weekend, success;
		try {
			weekend = request.getParameter("weekend").equals("on");
		} catch (NullPointerException e) {
			weekend = false;
		}
		
		if (weekend && 40 <= number) {
			success = true;
		} else if (40 <= number && number <= 60) {
			success = true;
		} else {
			success = false;
		}
		
		request.setAttribute("success", success);
		
		return "squirrelCigarOutput";
	}
}