package com.techelevator;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class HomeworkAssignmentTest {

	HomeworkAssignment sut;
	
	@Before
	public void setUp() throws Exception {
		//Arrange 
		sut = new HomeworkAssignment(100);
	} 
	@Test
	public void testLetterGradeAHigh() {
		//Arrange
		sut.setTotalMarks(100);
		
		//Action
		String grade = sut.getLetterGrade();
		
		//Assert
		assertEquals("A", grade);
	}
	@Test
	public void testLetterGradeALow() {
		//Arrange
		sut.setTotalMarks(90);
		
		//Action
		String grade = sut.getLetterGrade();
		
		//Assert
		assertEquals("A", grade);
	}
	@Test
	public void testLetterGradeBHigh() {
		//Arrange
		sut.setTotalMarks(89);
		
		//Action
		String grade = sut.getLetterGrade();
		
		//Assert
		assertEquals("B", grade);
	}
	@Test
	public void testLetterGradeBLow() {
		//Arrange
		sut.setTotalMarks(80);
		
		//Action
		String grade = sut.getLetterGrade();
		
		//Assert
		assertEquals("B", grade);
	}

	@Test
	public void testLetterGradeCHigh() {
		//Arrange
		sut.setTotalMarks(79);
		
		//Action
		String grade = sut.getLetterGrade();
		
		//Assert
		assertEquals("C", grade);
	}
	@Test
	public void testLetterGradeCLow() {
		//Arrange
		sut.setTotalMarks(70);
		
		//Action
		String grade = sut.getLetterGrade();
		
		//Assert
		assertEquals("C", grade);
	}
	@Test
	public void testLetterGradeDHigh() {
		//Arrange
		sut.setTotalMarks(69);
		
		//Action
		String grade = sut.getLetterGrade();
		
		//Assert
		assertEquals("D", grade);
	}
	@Test
	public void testLetterGradeDLow() {
		//Arrange
		sut.setTotalMarks(60);
		
		//Action
		String grade = sut.getLetterGrade();
		
		//Assert
		assertEquals("D", grade);
	}
	@Test
	public void testLetterGradeFHigh() {
		//Arrange
		sut.setTotalMarks(59);
		
		//Action
		String grade = sut.getLetterGrade();
		
		//Assert
		assertEquals("F", grade);
	}
	@Test
	public void testLetterGradeFLow() {
		//Arrange
		sut.setTotalMarks(0);
		
		//Action
		String grade = sut.getLetterGrade();
		
		//Assert
		assertEquals("F", grade);
	}


}
