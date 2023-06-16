package com.multi.mvc02.test;

import java.util.Arrays;

public class MyCafe2 {
	public static void main(String[] args) {
		Cal2 cal = new Cal2();
		int x = 5;
		int y = 3;
		int result1 = cal.add(x, y);
		System.out.println(result1);
		
		double result2 = cal.add(9.9, y);
		System.out.println(result2);
		
		String result3 = cal.add("아", "피곤해요");
		System.out.println(result3);
		
		String result4 = cal.add(x, "시간");
		System.out.println(result4);
		
		int[] result5 = cal.add();
		System.out.println(Arrays.toString(result5));
		
		
	}
}
