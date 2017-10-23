package com.techelevator.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LastTwoController {

	@RequestMapping("/lastTwoInput")
	public String handleInput() {
		return "lastTwoInput";
	}
	
	@RequestMapping("/lastTwoOutput")
	public String handleOutput(HttpServletRequest request) {
		String[] words = request.getParameterValues("word");
		List<String> results = new ArrayList<String>();
		for (String word : words) {
			if (word.length() == 1) {
				results.add(word + " : " + word);
			} else if (word.length() == 2) {
				results.add(word + " : " + word.substring(1) + word.substring(0, 1));
			} else if (word.length() >= 3) {
				String first = word.substring(0, word.length() - 2);
				String second = word.substring(word.length() - 1);
				String third = word.substring(word.length() - 2, word.length() - 1);
				results.add(word + " : " + first+second+third);
			}
		}
		
		request.setAttribute("resultList", results);
		
		return "lastTwoOutput";
	}
	
}