package com.home.DowneloadFile;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class LinkedListDemo {

	public static void main(String[] args) {
		LinkedList<Integer> impl = new LinkedList<Integer>();
		impl.add(5);
		impl.add(1);
		impl.add(2);
		impl.add(3);
		impl.add(7);
		impl.add(6);
		impl.add(1);
		System.out.println(impl);
		
		List<Integer> al = new ArrayList<Integer>();
		al.add(5);
		al.add(1);
		al.add(2);
		al.add(3);
		al.add(7);
		al.add(6);
		al.add(1);
		
		//al.removeIf(number -> number.equals(1));
		al.sort(new Comparator<Integer>() {
			@Override
			public int compare(Integer o1, Integer o2) {
				return o2.compareTo(o1);
			}
		});
		System.out.println(al);
	}

}
