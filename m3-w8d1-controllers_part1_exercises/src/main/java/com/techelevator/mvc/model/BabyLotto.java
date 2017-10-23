package com.techelevator.mvc.model;

public class BabyLotto {
	private String numbers;
	private String color;
	
	public BabyLotto(String numbers, int score) {
		this.numbers = numbers;
		if (score == 20) {
			color = "green";
		} else if (score == 10) {
			color = "silver";
		} else {
			color = "black";
		}
	}
	
	public String getNumbers() {
		return numbers;
	}
	public String getColor() {
		return color;
	}
	
	
}