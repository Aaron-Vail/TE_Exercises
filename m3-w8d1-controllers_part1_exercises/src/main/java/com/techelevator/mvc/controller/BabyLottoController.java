package com.techelevator.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.techelevator.mvc.model.BabyLotto;

@Controller
public class BabyLottoController {

	@RequestMapping("/babyLottoInput")
	public String handleInput() {
		return "babyLottoInput";
	}
	
	@RequestMapping("/babyLottoOutput")
	public String handleOutput(HttpServletRequest request) {	
		String[] tickets = request.getParameterValues("ticket");
		List<BabyLotto> results = new ArrayList<BabyLotto>();
		for (String ticket : tickets) {
			String[] numStrings = ticket.split(",");
			int[] nums = new int[numStrings.length];
			for (int i = 0; i < nums.length; i++) {
				nums[i] = Integer.parseInt(numStrings[i].trim());
			}
			
			int score;
			if (nums[0] == nums[1] && nums[1] == nums[2]) {
				score = 20;
			} else if (nums[0] == nums[1] ^ nums[1] == nums[2] ^ nums[0] == nums[2]) {
				score = 10;
			} else {
				score = 0;
			}
			
			results.add(new BabyLotto(ticket, score));
		}
		
		request.setAttribute("resultList", results);
		return "babyLottoOutput";
	}
	
}