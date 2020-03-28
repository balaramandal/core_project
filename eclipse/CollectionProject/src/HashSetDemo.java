import java.util.ArrayList;
import java.util.HashSet;


public class HashSetDemo {

	
	public static void main(String[] args) {
		ArrayList al = new ArrayList();
		al.add(1);
		al.add("raghab");
		al.add("balaram");
		al.add("sameer");
		al.add("muni");
		al.add("sini");
		al.add("runa");
		al.add("kanhu");
		al.add("chiku");
		
		for(int i=1;i<=8;i++)
		{
			al.add(new Integer(i));
		}
		HashSet h = new HashSet(al);
		h.add("Balaram");
		System.out.println(al);
		System.out.println(h);
	

	}

}
