package com.techelevator;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class WordSearch {
	
	public static void main(String[] args) {
		File fileFromUser = new File("alices_adventures_in_wonderland.txt");
		
		Scanner input = new Scanner(System.in);
		System.out.println("What word would you like to search for?");
		String wordHolder = input.nextLine();
		
		System.out.println("Is word case sensitive? (y) / (n)");
		String yesOrNo = input.nextLine();
		
		boolean caseSensitive = false;
		
		if(yesOrNo.toLowerCase().equals("y") ) {
			caseSensitive = true;
		}
		
		System.out.println(caseSensitive);
		
		int lineCounter = 0;
		String lineToLowerCase = "";
		
		if (caseSensitive == true) {
			try(Scanner fileScan = new Scanner(fileFromUser)) {
				while(fileScan.hasNextLine()) {
					lineCounter++;
					String line = fileScan.nextLine(); 
					if(line.contains(wordHolder)) {
						System.out.println(lineCounter + ") " + line);
					}
				}
			} catch (FileNotFoundException e) {
				System.out.println("Your file does not exist.");
				}
			} else {
				try(Scanner fileScan = new Scanner(fileFromUser)) {
					while(fileScan.hasNextLine()) {
					lineCounter++;
					String line = fileScan.nextLine();
					lineToLowerCase = line.toLowerCase();
					if(lineToLowerCase.contains(wordHolder.toLowerCase())) {
						System.out.println(lineCounter + ") " + line);
					}
				}
		} catch (FileNotFoundException e) {
			System.out.println("Your file does not exist.");
		}
			}
	}
}