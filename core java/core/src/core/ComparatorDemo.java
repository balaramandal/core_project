package core;
import java.util.*;
public class ComparatorDemo 
{
	int id;
	String name;
	public ComparatorDemo(int id,String name) 
	{
		this.id=id;
		this.name=name;
	}
	public static void main(String args[])
	{
		Set<ComparatorDemo> al = new TreeSet<ComparatorDemo>(new Comparator<ComparatorDemo>() {

			@Override
			public int compare(ComparatorDemo o1, ComparatorDemo o2) {
				return o2.id-o1.id;
			}
		});
		al.add(new ComparatorDemo(10,"Balaram"));
		al.add(new ComparatorDemo(3,"Kalikrushna"));
		al.add(new ComparatorDemo(2,"Sameer"));
		al.add(new ComparatorDemo(4,"Badal"));
		al.add(new ComparatorDemo(13,"Diku"));
		System.out.println(al);
		for(ComparatorDemo cd : al) 
		{
			System.out.println(cd.id+"   "+cd.name);
		}
	}
}
