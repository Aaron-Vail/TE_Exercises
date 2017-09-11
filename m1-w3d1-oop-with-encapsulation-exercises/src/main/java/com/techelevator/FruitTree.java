package com.techelevator;
//pickFruit should return true if fruit was picked and false if no fruit was picked
public class FruitTree {
	//instance variables
	private String typeOfFruit;
	private int piecesOfFruitLeft;
	
	
	//constructor
	public FruitTree(String typeOfFruit, int startingPiecesOfFruit) {
		this.typeOfFruit = typeOfFruit;
		this.piecesOfFruitLeft = startingPiecesOfFruit;
	}
	//methods
	public boolean pickFruit(int numberOfPiecesToRemove) {
		if (numberOfPiecesToRemove <= piecesOfFruitLeft) {
			piecesOfFruitLeft -= numberOfPiecesToRemove;
			return true;
		} else {
			return false;
		}
			
	}
	//getters and setters
	
	
	public String getTypeOfFruit() {
		return typeOfFruit;
	}
	public int getPiecesOfFruitLeft() {
		return piecesOfFruitLeft;
	}
	
}
