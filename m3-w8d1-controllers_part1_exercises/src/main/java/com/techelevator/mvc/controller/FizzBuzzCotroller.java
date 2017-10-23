package com.techelevator.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FizzBuzzCotroller {

	@RequestMapping("/fizzBuzzInput")
	public String handleInput() {
		return "fizzBuzzInput";
	}
	
	@RequestMapping("/fizzBuzzOutput")
	public String handleOutput(HttpServletRequest request) {
		int divisor1 = Integer.parseInt(request.getParameter("divisor1"));
		int divisor2 = Integer.parseInt(request.getParameter("divisor2"));
		String altFizz = request.getParameter("altfizz");
		String altBuzz = request.getParameter("altbuzz");
		
		List<Integer> numbers = new ArrayList<Integer>();
		numbers.add(Integer.parseInt(request.getParameter("num1")));
		numbers.add(Integer.parseInt(request.getParameter("num2")));
		numbers.add(Integer.parseInt(request.getParameter("num3")));
		numbers.add(Integer.parseInt(request.getParameter("num4")));
		numbers.add(Integer.parseInt(request.getParameter("num5")));
		
		List<String> results = new ArrayList<String>();
		for (Integer num : numbers) {
			if (num % divisor1 == 0 && num % divisor2 == 0) {
				results.add(num + " " + altFizz + altBuzz);
			} else if (num % divisor1 == 0) {
				results.add(num + " " + altFizz);
			} else if (num % divisor2 == 0) {
				results.add(num + " " + altBuzz);
			} else {
				results.add(num + "");
			}
		}
		
		request.setAttribute("resultList", results);
		
		return "fizzBuzzOutput";
	}
	
}