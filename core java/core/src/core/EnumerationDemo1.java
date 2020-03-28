import java.util.*;
class EnumerationDemo1
{
	public static void main(String args[])
	{
		Vector v= new Vector();
		for(int i=0;i<=10;i++)
		{
			v.addElement(i);
		}
		System.out.println(v);
		
		Enumeration e= v.elements();
		System.out.println(e.hasMoreElements());
		System.out.println(e.nextElement());
	}
}