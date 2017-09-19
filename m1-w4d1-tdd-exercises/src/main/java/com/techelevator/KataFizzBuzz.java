package com.techelevator;

public class KataFizzBuzz {
	
	public static Object fizzBuzz(int n) {
		
		if (n == 0)
			return "0";
		
		String element = "";
		
		if (n > 100 || n < 0)
			element += "null";
		if (n % 3 == 0)
			element += "Fizz";
		if (n % 5 == 0)
			element += "Buzz";
		
		return element.isEmpty() ? String.valueOf(n) : element;
	}
}