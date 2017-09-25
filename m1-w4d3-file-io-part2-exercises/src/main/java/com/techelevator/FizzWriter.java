package com.techelevator;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;

public class FizzWriter {

	public static void main(String[] args) {
		
		File fizzWrite = new File("fizzBuzz.txt");
		
		try(PrintWriter writeFizz = new PrintWriter(fizzWrite)) {
			
		for (int i = 1; i <= 300; i++) {
			if (i % 15 == 0) {
				writeFizz.println("FizzBuzz");
			 }    
			 else if (i % 3 == 0 || Integer.toString(i).contains("3")) {
				 writeFizz.println("Fizz");
			 }     
			 else if (i % 5 == 0 || Integer.toString(i).contains("5")) {
				 writeFizz.println("Buzz");       
			 }else {
				writeFizz.println(Integer.toString(i));
			 }
			}	
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			System.out.println("Cannot complete Fizz Buzz Writer!");
		}
	}
}