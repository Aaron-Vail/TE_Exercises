package com.techelevator;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class ElevatorTest {
	Elevator sut;
	
	@Before
	public void setUp() throws Exception {
		sut = new Elevator(5, 36);
		
	}
	@Test
	public void testConstructor() {
		assertEquals(5, sut.getShaftNumber());
		assertEquals(36, sut.getNumberOfLevels());
	}
	@Test
	public void testDoorIsOpen() {
		//Action
		sut.isDoorOpen();
		//Assert
		assertEquals(true, sut.isDoorOpen());
	}
	@Test
	public void testDoorIsClosed() {
		sut.CloseDoor();
		//Action
		sut.isDoorOpen();
		//Assert
		assertEquals(false, sut.isDoorOpen());
	}
	@Test
	public void testIsMoving() {
	
		//Action
		sut.isMoving();
		//Assert
		assertEquals(false, sut.isMoving());
	}
	@Test
	public void testCurrentFloor() {
		//Assert
		assertEquals(1, sut.getCurrentLevel());
	}
	@Test
	public void testDesiredFloorUp() {
		//Action
		sut.GoUp(10);
		//Assert
		assertEquals(10,sut.getCurrentLevel());
	}
	@Test
	public void testDesiredFloorDown() {
		//Action
		sut.GoDown(5);
		//Assert
		assertEquals(5, sut.getCurrentLevel());
	}
	@Test
	public void testOpenDoor() {
		//Action
		sut.OpenDoor();
		//Assert
		assertEquals(true, sut.isDoorOpen());
	}
	@Test
	public void testIsDoorMoving() {
		//Action
		sut.OpenDoor();
		//Assert
		assertEquals(false, sut.isMoving());
	}
}
