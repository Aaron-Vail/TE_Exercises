package com.techelevator;

public class Airplane {
	//instance variables
	public String planeNumber;
	public int bookedFirstClassSeats;
	public int totalFirstClassSeats;
	public int bookedCoachSeats;
	public int totalCoachSeats;
	
	
	//Constructor
	public Airplane(String planeNumber, int totalFirstClassSeats, int totalCoachSeats) {
		this.planeNumber = planeNumber;
		this.totalFirstClassSeats = totalFirstClassSeats;
		this.totalCoachSeats = totalCoachSeats;
	}
	//Methods
	public boolean reserveSeats(boolean forFirstClass, int totalNumberOfSeats) {
		if (forFirstClass && totalFirstClassSeats - bookedFirstClassSeats >= totalNumberOfSeats) {
			bookedFirstClassSeats += totalNumberOfSeats;
			return true;
		}
		else if (!forFirstClass && totalCoachSeats - bookedCoachSeats >= totalNumberOfSeats) {
			bookedCoachSeats += totalNumberOfSeats;
			return true;
		} else {
			return false;
		}
	}
	//Getters and Setters
	public int getAvailableFirstClassSeats() {
		return totalFirstClassSeats - bookedFirstClassSeats;
	}
	
	public int getAvailableCoachSeats() {
		return totalCoachSeats - bookedCoachSeats;
	}
	
	public String getPlaneNumber() {
		return planeNumber;
	
	}
	
	public int getBookedFirstClassSeats() {
		return bookedFirstClassSeats;
	}


	public int getTotalFirstClassSeats() {
		return totalFirstClassSeats;
	}


	public int getBookedCoachSeats() {
		return bookedCoachSeats;
	}


	public int getTotalCoachSeats() {
		return totalCoachSeats;
	}
	
	

}