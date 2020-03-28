package core;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.TreeSet;

public class ListToSet {

	public static void main(String[] args) {
		ArrayList<Integer> al = new ArrayList(); // null,duplicate and insertion order preserved .
		//al.add(null);
		al.add(1);
		al.add(4);
		al.add(3);      
		al.add(6);
		al.add(3);
		
		System.out.println("Inside ArrayList Object : "+al);
		
		HashSet<Integer> hs = new HashSet();  //null allowed duplicate and insertiion order is not preserverd 
		hs.addAll(al);
		System.out.println("Inside HashSet Object : "+hs);
		
		LinkedList<Integer> ls = new LinkedList();  // null,duplicate and insertion order preserved .
		ls.addAll(al);
		System.out.println("inside LinkedList Object : "+ls);
		
		TreeSet<Integer> ts = new TreeSet();
		ts.addAll(al);
		System.out.println("Inside TressSet Object : "+ts);
		
	
	
	}

}
