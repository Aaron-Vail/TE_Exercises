package com.techelevator;

public class Elevator {
	//Instance Variables
	public int currentFloor = 1;
	public int numberOfFloors;
	public boolean doorOpen;
	
	
	//Constructor
	public Elevator(int totalNumberOfFloors) {
		this.numberOfFloors = totalNumberOfFloors;
	}
	
	//Methods
	public void openDoor() {
		doorOpen = true;
	}
	public void closeDoor() {
		doorOpen = false;
	}
	public void goUp(int desiredFloor) {
		if (!doorOpen && desiredFloor <= numberOfFloors && desiredFloor > currentFloor) {
			currentFloor = desiredFloor;
		}
	}
	public void goDown(int desiredFloor) {
		if (!doorOpen && desiredFloor < currentFloor && desiredFloor >= 1) {
			currentFloor = desiredFloor;
		}
	}
	//Getters and Setters

	public int getCurrentFloor() {
		return currentFloor;
	}

	public int getNumberOfFloors() {
		return numberOfFloors;
	}

	public boolean isDoorOpen() {
		return doorOpen;
	}
	
}
