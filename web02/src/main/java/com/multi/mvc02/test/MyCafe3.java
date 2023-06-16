package com.multi.mvc02.test;


public class MyCafe3 {
	public static void main(String[] args) {
		Cal3 cal = new Cal3();
		String result = cal.add("햄", 5, 17, '여');
		System.out.println(result);
		
		Bag bag = new Bag();
		bag.setName("가을이");
		bag.setAge(3);
		bag.setWeight(21);
		bag.setGender('여');
		
		String result2 = cal.add(bag);
		System.out.println(result2);
	}
	
	
}
