package com.multi.mvc02.test;

public class MyCafe5 {
	public static void main(String[] args) {
		
		int[] num = {1, 99, 3, 4, 5, 18, 33, 7, 18, 2, 2, 33, 4, 5, 6, 9};
		Cal5 cal = new Cal5();
		cal.getEven(num);
		cal.getOdd(num);
		cal.getUnique(num);
	}
}
