package com.techelevator;

import static org.junit.Assert.*;

import java.util.Arrays;

import org.junit.Before;
import org.junit.Test;

public class KataPrimeFactorsTest extends KataPrimeFactors {
	KataPrimeFactors sut;
	
	@Before
	public void setup() {
		sut = new KataPrimeFactors();
	}
	@Test
	public void testTwo() {
		int[] result = sut.primeFinder(2);
		
		assertArrayEquals(new int[] {2}, result);
	}
	@Test
	public void testSix() {
		int[] result = sut.primeFinder(6);
		Arrays.sort(result);
		
		assertArrayEquals(new int[] {2,3}, result);
	}
	@Test
	public void testLargeNumber() {
		int[] result = sut.primeFinder(1475143);
		Arrays.sort(result);
		
		assertArrayEquals(new int[] {29, 50867}, result);
	}
	@Test 
	public void test96() {
		int[] result = sut.primeFinder(96);
		Arrays.sort(result);
		
		assertArrayEquals(new int [] {2, 2, 2, 2, 2, 3}, result);
	}
}
