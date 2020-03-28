import java.util.Iterator;
import java.util.Vector;


public class VectorDemo {

	public static void main(String[] args) {
		Vector v = new Vector();
		v.add("Balaram");
		v.add("Sameer");
		v.add(1);
		v.add(3);
		Iterator i = v.iterator();
		while(i.hasNext())
		{
			System.out.println(i.next());
			
		}
		
			}

}
