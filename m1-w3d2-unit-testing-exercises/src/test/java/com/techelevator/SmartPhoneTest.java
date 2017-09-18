package com.techelevator;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class SmartPhoneTest {
	SmartPhone sut;
	
	@Before
	public void setUp() throws Exception {
		sut = new SmartPhone("0123456789", "Sprint");
	}

	@Test
	public void testConstructor() {
		assertEquals("0123456789", sut.getPhoneNumber());
		assertEquals("Sprint", sut.getCarrier());
	}
	@Test
	public void test() {
		assertEquals("0123456789", sut.getPhoneNumber());
		assertEquals("Sprint", sut.getCarrier());
	}
	@Test
	public void testSetOperatingSystem() {
		//Arrange
		
		//Action
		sut.setOperatingSystem("iOS");
		//Assert
		assertEquals("iOS",sut.getOperatingSystem());
	}
	@Test
	public void testGetOperatingSystem() {
		//Arrange
		sut.setOperatingSystem("iOS");
		//Action
		sut.getOperatingSystem();
		//Assert
		assertEquals("iOS", sut.getOperatingSystem());
	}
	@Test
	public void testGetBatteryCharge() {
		//Arrange

		//Action
		
		//Assert
		assertEquals(100, sut.getBatteryCharge());
	}
	@Test
	public void testIsOnCall() {
		//Arrange
		
		//Action
		
		//Assert
		assertEquals(true, sut.isOnCall());
	}
	@Test
	public void testCall() {
		//Arrange
		
		//Action
		sut.Call("0123456789", "99");
		//Assert
		assertEquals(true, );
	}
	@Test
	public void testAnswer() {
		//Arrange
		
		//Action
		
		//Assert
		assertEquals(,);
	}
	@Test
	public void testHangUp() {
		//Arrange
		
		//Action
		
		//Assert
		assertEquals(,);
	}
	@Test
	public void testRechargeBattery() {
		//Arrange
		
		//Action
		
		//Assert
		assertEquals(,);
	}
}
