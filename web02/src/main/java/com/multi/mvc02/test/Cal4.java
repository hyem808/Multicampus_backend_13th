package com.multi.mvc02.test;

public class Cal4 {
	
	public int sum(Bag2 bag) {
		int sum = bag.getCount() * bag.getPrice();
		System.out.println("주문한 " + bag.getBeverage() + "의 총 금액은 " + sum + "원입니다.");
		return sum;
	}
	public int div(Bag2 bag, int sum, int person) {
		int dutch = sum/person;
		System.out.println(bag.getBeverage() + "의 더치페이 금액은 " + dutch + "원입니다.");
		return dutch;
	}
	public String total(double sum, double sum2) {
		System.out.println("인당 총 금액은 " + (sum + sum2) + "원입니다.");
		return null;
	}
}