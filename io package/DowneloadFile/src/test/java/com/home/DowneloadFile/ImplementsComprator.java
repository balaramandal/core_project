package com.home.DowneloadFile;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class ImplementsComprator extends ArrayList<Integer> implements Comparator<Integer>{

	public static void main(String[] args) {
		ImplementsComprator impl = new ImplementsComprator();
		impl.add(5);
		impl.add(1);
		impl.add(2);
		impl.add(3);
		impl.add(7);
		impl.add(6);
		impl.add(1);
		System.out.println(impl);
		Collections.sort(impl, impl);
		System.out.println(impl);
	}

	public int compare(Integer o1, Integer o2) {
		return o2.compareTo(o1);
	}

}
