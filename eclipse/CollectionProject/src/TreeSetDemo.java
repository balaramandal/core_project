import java.util.Iterator;
import java.util.TreeSet;


public class TreeSetDemo {

	/**
	 * @param args
	 */
	public static void main(String[] args)
	{
		String n=null;
		TreeSet<String> ts = new TreeSet<String>();
				
		ts.add("balaram");
		ts.add("tapas");
		ts.add("kailash");
		ts.add("Ram");
		System.out.println(ts);
		  
		
		Iterator<String> itr = ts.iterator();
		while(itr.hasNext())
		{
			n=itr.next();
			System.out.println(n);
		}
			
	}

}
