package com.home.DowneloadFile;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;

public class HashSetDemo {

	public static void main(String[] args) {
		HashSet<Character> hset = new HashSet<Character>();
		hset.add('b');
		hset.add('a');
		hset.add('l');
		hset.add('r');
		hset.add(null);
		hset.add('m');
		System.out.println(hset);
		List<Character> list = new ArrayList<Character>(hset);
		System.out.println(list);
		Collections.sort(list,new Compr());
		System.out.println("After sort : "+list);
		
		
	}

}
class Compr implements Comparator<Character> {

	public int compare(Character o1, Character o2) {
		return o2.compareTo(o1);
	}
	
}
