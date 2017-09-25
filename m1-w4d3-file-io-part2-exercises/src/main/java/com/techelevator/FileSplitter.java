//package com.techelevator;
//
//import java.io.File;
//import java.io.FileNotFoundException;
//import java.io.PrintWriter;
//import java.util.Scanner;
//
//public class FileSplitter {
//
//	public static void main(String[] args) {
//		
//		String fileName = null;
//		int maxLines = 0;
//		
//		File newDoc = new File(""); 
//		File originalDoc = new File("");	
//		
//		
//		try(Scanner userInput = new Scanner(System.in)) {
//			
//			System.out.println("What is the name of the text file to be split?");
//			fileName = userInput.nextLine();
//		
//			System.out.println("What is the maximum number of lines in each output file?");
//			maxLines = userInput.nextInt();
//		}
//		
//		
//		try(
//				
//			Scanner readDoc = new Scanner(originalDoc); 
//			PrintWriter writeDoc = new PrintWriter(newDoc)  
////					
////		) {
////			public boolean split(int size) {
////				if (size < 0);
////				return false;
////		try(
////			int parts = ((int) newDoc.length() / maxLines);	
////			int fileLength = 0;
////			if (newDoc.length() % size > 0)
////				parts++;
////			
////			)
////			}
//			while(readDoc.hasNextLine()) {
//				String i = null;
//				String line = readDoc.nextLine(); 
//				if(line.contains("")) {  
//					line = line.concat(i); 
//				}
//				writeDoc.println(line);  
//			}  
//		} catch (FileNotFoundException e) {
//			System.out.println("The pom.xml doesn't exist");
//			System.exit(1);
//		}
//		
//	}
//
//}