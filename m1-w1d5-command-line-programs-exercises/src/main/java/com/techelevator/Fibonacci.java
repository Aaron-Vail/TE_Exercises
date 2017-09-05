package com.techelevator;

import java.util.Scanner;

/*
 The Fibonacci numbers are the integers in the following sequence:  
	0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...
 By definition, the first two numbers in the Fibonacci sequence are 0 and 1, and each subsequent number is the sum of the previous two.
 
Write a command line program which prompts the user for an integer value and display the Fibonacci sequence leading up to that number.

  
 $ java Fiboncci
 
Please enter the Fibonacci number: 25
 
 0, 1, 1, 2, 3, 5, 8, 13, 21
 */
public class Fibonacci {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int k, a = 1, b = 1;
		k = 0;
		System.out.println("Enter number:");
		int n = sc.nextInt();
		System.out.print("Fibonacci sequence :" + "0 1 1 "); 
		while (k <= n) 
		{
			k = a + b;
			if (k >= n)
					break;
			System.out.print(k + " ");
			a = b;
			b = k;
		}
	}
}
		
		
		/*int integerValue;
		System.out.print("Enter an integer value:");
		integerValue = input.nextInt();
		
		int fibonacciNumbers;
		System.out.println("Fibonacci Numbers: ");
		
		
		int count = 15;
		int[] feb = new int[count];
		feb[0] = 0;
		feb[1] = 1;
			      
		for(int i = 2; i < count; i++) {
		feb[i] = feb[i-1] + feb[i-2];
			      } 
		for(int i = 0; i< count; i++) {
			System.out.print(feb[i] + " ");
		}
	}
} */


