package com.multi.mvc02.test;

public class MyCafe {

	public static void main(String[] args) {
		int coffee = 5;
		int price = 4500;
		
		Cal cal = new Cal();
		int result1 = cal.mul(coffee, price);
		
		if(result1 >= 20000) {
			System.out.println("원래 금액은 " + result1 + "입니다.");
			result1 = result1 - 5000;
		}
		System.out.println("지불할 금액은 " + result1 + "원입니다.");
	}

}
