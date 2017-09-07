package com.techelevator;

import java.util.Scanner;

/*
 The Fahrenheit to Celsius conversion formula is:
 	Tc = (Tf - 32) / 1.8
 	where 'Tc' is the temperature in Celsius, and 'Tf' is the temperature in Fahrenheit
 	
 The Celsius to Fahrenheit conversion formula is:
 	Tf = Tc * 1.8 + 32
 	
 Write a command line program which prompts a user to enter a temperature, and whether its in degrees (C)elsius or (F)arenheit.
 Convert the temperature to the opposite degrees, and display the old and new temperatures to the console.
  
 $ java TempConvert
 Please enter the temperature: 58
 Is the temperature in (C)elcius, or (F)arenheit? F
 58F is 14C.
 
 Note why Tf - 32 above is enclosed in parentheses with a comment inside your code. You'll feel better for it, 
 and will start building some good programming habits while you're at it.
 */
public class TempConvert {

	public static void main(String[] args) {
		double temperatureInput; 
		double tempConversion = 0;
		
		
		
//*****-----USER INPUT SECTION-----******
		
		Scanner input = new Scanner(System.in);
		
		System.out.print("Please enter a temperature to convert");
		
		temperatureInput = input.nextDouble();
//*****-----(c) and (f) are enclosed in parentheses to remind user to use "c" or "f" to designate temperature scale-----******	
		System.out.print("Is temperature in (c)elsius or (f)arenheit ?");
		
//*****-----STRING CONVERSION SECTION-----******		
		String typeOfTemperature = input.nextLine();
		
		System.out.print(temperatureInput + typeOfTemperature + " is " + tempConversion +
			(typeOfTemperature.toLowerCase().startsWith("f") ? "c" : "f"));
	}
	
//*****-----TEMP CONVERSION SECTION-----******	
	public static double tempConversion(double temperatureInput, String typeOfTemperature) {
		
		if(typeOfTemperature.equals("c")) {
			double tempConversion = (temperatureInput - 32) / 1.8;
			System.out.println(temperatureInput + "c is " + tempConversion + " F");
		} else {
			double tempConversion = (temperatureInput * 1.8) + 32;
			System.out.println(temperatureInput + "c is " + tempConversion + " C");
		}
	}
}


