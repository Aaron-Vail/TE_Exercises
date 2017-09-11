package com.techelevator;

import java.util.Arrays;

public class HomeworkAssignment {
	//instance variables
	private String submitterName;
	private int totalMarks;
	private int possibleMarks;
	
	//constructor
	public HomeworkAssignment(int possibleMarks) {
		this.possibleMarks = possibleMarks;
	}
	
	
	//getters and setters
	public String getLetterGrade() {
		if((totalMarks * 100) / possibleMarks >= 90) {
			return "A";
		} else if ((totalMarks * 100) / possibleMarks >= 80) {
			return "B";
		} else if ((totalMarks * 100) / possibleMarks >= 70) {
			return "C";
		} else if ((totalMarks * 100) / possibleMarks >= 60) {
			return "D";
		} else {
			return "F";
		}
	}
	
	public String getSubmitterName() {
		return submitterName;
	}

	public void setSubmitterName(String submitterName) {
		this.submitterName = submitterName;
	}

	public int getTotalMarks() {
		return totalMarks;
	}

	public void setTotalMarks(int totalMarks) {
		this.totalMarks = totalMarks;
	}

	public int getPossibleMarks() {
		return possibleMarks;
	}


}
