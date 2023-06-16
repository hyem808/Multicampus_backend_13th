package com.multi.mvc02.test;

public class MyCafe4 {
	public static void main(String[] args) {
		Cal4 cal = new Cal4();
		Bag2 bag = new Bag2();
		
		bag.setBeverage("커피");
		bag.setCount(5);
		bag.setPrice(2000);

		int coffeePrice = cal.sum(bag);
		int coffeeDutch = cal.div(bag, coffeePrice, 7);
		
		bag.setBeverage("밀크티");
		bag.setCount(2);
		bag.setPrice(3000);
		
		int milkTeaPrice = cal.sum(bag);
		double milkTeaDutch = cal.div(bag, milkTeaPrice, 7);
		
		System.out.println("인당 총 금액은 " + (milkTeaDutch + coffeeDutch) + "원입니다.");
		
	}
	
	
}
