package com.homepractice.homepractice;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class MapEntryDemo {
	public static void main(String args[]){
		Map<Integer, String> map = new HashMap<Integer, String>();
		map.put(1, "Balaram");
		map.put(3, "Kalia");
		map.put(2, "Sameer");
		map.put(4, "Diku");
		map.put(5, "Badal");
		
		System.out.println(map);
		Set<Map.Entry<Integer,String>> s =  map.entrySet();
		System.out.println(s);
		
		List<Map.Entry<Integer, String>> l = new ArrayList<Map.Entry<Integer,String>>(map.entrySet());
		/*Collections.sort(l, new Comparator<Map.Entry<Integer, String>>() {
			public int compare(Entry<Integer, String> o1, Entry<Integer, String> o2) {
				return o1.getValue().compareTo(o2.getValue());
			}
		});*/
		Collections.sort(l,(o1,o2) -> o2.getValue().compareTo(o1.getValue()));
		
		System.out.println(l);	
	}
}
