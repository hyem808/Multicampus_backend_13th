package com.multi.mvc02.test;

public class Bag2 {
	private String beverage;
	private int count;
	private int price;

	String getBeverage() {
		return beverage;
	}
	public void setBeverage(String beverage) {
		this.beverage = beverage;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

	
	@Override
	public String toString() {
		return "Bag2 [beverage=" + beverage + ", count=" + count + ", price=" + price + "]";
	}
	
}
