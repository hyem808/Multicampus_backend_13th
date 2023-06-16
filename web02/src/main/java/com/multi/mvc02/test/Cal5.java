package com.multi.mvc02.test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.SortedSet;

public class Cal5 {
	
	public void getEven(int[] num) {
		System.out.println("받은 배열은 >> " + Arrays.toString(num));
		ArrayList<Integer> list = new ArrayList<Integer>();
		for (int x : num) {
			if (x % 2 == 0) {
				list.add(x);
			}
		}
		System.out.println("짝수 배열 : " + list);
	}
	
	public void getOdd(int[] num) {
		ArrayList<Integer> list = new ArrayList<Integer>();
		for (int x : num) {
			if (x % 2 != 0) {
				list.add(x);
			}
		}
		System.out.println("홀수 배열 : " + list);
	}
	
	public void getUnique(int[] num) {
		HashSet<Integer> list = new HashSet<>();
		for (int x : num) {
			list.add(x);
		}
		System.out.println("중복 제거 : " + list);
	}
}