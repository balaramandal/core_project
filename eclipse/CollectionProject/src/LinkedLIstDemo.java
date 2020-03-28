import java.util.LinkedList;


public class LinkedLIstDemo {

	
	public static void main(String[] args) {
		LinkedList l= new LinkedList();
		l.add("Balaram");
		l.add("kiran");
		l.add("ram");
		l.add(null);
		
		l.addFirst(null);
		
		l.addLast("sameer");
		
		System.out.println("Last Element  "+l.getLast());
		System.out.println("First Element  "+l.getFirst());
		
		System.out.println(l);
		l.remove();
		System.out.println(l);
		l.clear();
		System.out.println("all is clear.."+ l);
		
	}

}
