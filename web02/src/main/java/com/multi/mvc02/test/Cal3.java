package com.multi.mvc02.test;

public class Cal3 {
	
	public String add(String name, int age, double weight, char gender) {
		return "이름은 " + name + 
				"이고, 나이는 " + age + 
				"이고, 몸무게는 " + weight + 
				"이며, 성별은 " + gender + "입니다.";
	}
	
	public String add(Bag bag) {
		return  "이름은 " + bag.getName() + 
				"이고, 나이는 " + bag.getAge() + 
				"이고, 몸무게는 " + bag.getWeight() + 
				"이며, 성별은 " + bag.getGender() + "입니다.";
	}
}