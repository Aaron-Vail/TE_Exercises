package com.techelevator.mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderedController {
	
	@RequestMapping("/orderedNameInput")
	public String handleInput() {
		return "orderedNameInput";
	}
	
	@RequestMapping("/orderedNameOutput")
	public String handleOutput(HttpServletRequest request) {
		String first = request.getParameter("firstname");
		String middle = request.getParameter("middleinitial");
		String last = request.getParameter("lastname");
		String order = request.getParameter("order");
		String result;
		
		if(order.equals("fml")) {
			if (middle.length() > 0) {
				result = first.trim() + " " + middle.trim() + ". " + last.trim(); 
			} else {
				result = first.trim() + " " + last.trim();
			}
		} else if (order.equals("fl")) {
			result = first.trim() + " " + last.trim();
		} else if (order.equals("lfm")) {
			if (middle.length() > 0) {
				result = last.trim() + ", " + first.trim() + " " + middle.trim() + ".";
			} else {
				result = last.trim() + ", " + first.trim();
			}
		} else {
			result = last.trim() + ", " + first.trim();
		}
		
		request.setAttribute("orderedName", result);
		return "orderedNameOutput";
	}
}