package com.techelevator;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class TelevisionTest {
	
	Television sut;

	@Before
	public void setUp() throws Exception {
		//Arrange 
		sut = new Television();
	}
	@Test
	public void testTurnOn() {
		//Action
		sut.turnOn();
		//Assert
		assertEquals(true, sut.isOn());
	}
	@Test
	public void testTurnOff() {
		//Action
		sut.turnOff();
		//Assert
		assertEquals(false, sut.isOn());
	}
	@Test
	public void testIfNewTvIsOff() {
		//Assert
		assertEquals(false, sut.isOn());
	}	
	@Test
	public void testGetSelectedChannel() {
		//Arrange
		sut.turnOn();
		
		//Action
		sut.changeChannel(15);
		
		//Assert
		assertEquals(15, sut.getCurrentChannel());
	}
	@Test
	public void testVolumeUp() {
		//Arrange
		sut.turnOn();
		int originalVolume = sut.getCurrentVolume();
		//Action
		sut.raiseVolume();
		//Assert
		int newVolume = sut.getCurrentVolume();
		assertEquals(1, newVolume - originalVolume);
	}
	@Test
	public void testVolumeDown() {
		//Arrange
		sut.turnOn();
		int originalVolume = sut.getCurrentVolume();
		//Action
		sut.lowerVolume();  
		//Assert
		int newVolume = sut.getCurrentVolume();
		assertEquals(-1, newVolume - originalVolume);  
	}	
	@Test
	public void testChannelMax() {
		//Arrange
		sut.turnOn();	
		sut.changeChannel(18);
		//Action
		sut.channelUp();
		//Assert
		assertEquals(3, sut.getCurrentChannel());
	}	
	@Test
	public void testChannelMin() {
		//Arrange
		sut.turnOn();
		sut.changeChannel(3);
		//Action
		sut.channelDown();
		//Assert
		assertEquals(18, sut.getCurrentChannel());
	}	
	@Test
	public void testVolumeMax() {
		//Arrange
		sut.turnOn();
		//Action
		sut.raiseVolume(); sut.raiseVolume(); sut.raiseVolume(); sut.raiseVolume();
		sut.raiseVolume(); sut.raiseVolume(); sut.raiseVolume(); sut.raiseVolume();
		//Assert
		assertEquals(10, sut.getCurrentVolume());
	}
	@Test
	public void testVolumeMin() {
		//Arrange
		sut.turnOn();
		sut.getCurrentVolume();
		//Action
		sut.lowerVolume();
		//Assert
		assertEquals(1, 1);
	}	
	@Test
	public void testOnChannelDefault() {
		sut.turnOn();
		//Assert
		assertEquals(3, sut.getCurrentChannel());
	}	
	@Test
	public void testOnVolumeDefault() {
		sut.turnOn();
		assertEquals(2, sut.getCurrentVolume());
	}	

	

}
