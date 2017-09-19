package com.techelevator;

import org.junit.*;
import static org.junit.Assert.*;

public class KataFizzBuzzTest {
	
	@Test
    public void testZero() {
        assertEquals(KataFizzBuzz.fizzBuzz(0), "0");
	}
	@Test
    public void testOne() {
        assertEquals(KataFizzBuzz.fizzBuzz(1), "1");
	}
	@Test
	public void testMultipleOfThreeFizz() {
		assertEquals(KataFizzBuzz.fizzBuzz(3), "Fizz");
	}
	@Test
	public void testMultipleOfFiveBuzz() {
		assertEquals(KataFizzBuzz.fizzBuzz(5), "Buzz");
	}
	@Test
	public void testSix() {
		assertEquals(KataFizzBuzz.fizzBuzz(6), "Fizz");
	}
	@Test
	public void testTen() {
		assertEquals(KataFizzBuzz.fizzBuzz(10), "Buzz");
	}
	@Test
    public void testMultipleOfThreeAndFiveFizzBuzz() {
        assertEquals(KataFizzBuzz.fizzBuzz(15), "FizzBuzz");
	}
	
	@Test
	public void testUpperLimit() {
		assertEquals(KataFizzBuzz.fizzBuzz(101), "null");
	}
	@Test
	public void testLowerLimit() {
		assertEquals(KataFizzBuzz.fizzBuzz(-1), "null");
	}
}
