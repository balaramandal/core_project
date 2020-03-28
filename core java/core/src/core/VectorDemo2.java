import java.util.*;
class VectorDemo2
{
	public static void main(String args[])
	{
		Vector v=new Vector();
		System.out.println(v.capacity());
		for(int i=1;i<=10;i++)
		{
			v.addElement(i);
		}
		System.out.println(v);

		v.addElement(12);
		System.out.println("The new capacity is.."+v.capacity());
		System.out.println("now The elements are  "+v);

		v.removeElement(5);
		System.out.println("now The elements are  "+v);

		v.removeElementAt(5);
		System.out.println("now The elements are  "+v);

		System.out.println("elementAt.."+v.elementAt(5));
		System.out.println("first Element.."+v.firstElement());
		System.out.println("last Element.."+v.lastElement());
		
		v.removeAllElements();
		System.out.println("now The elements are  "+v);
		System.out.println("The capacity is.."+v.capacity());
		
		
		
	}
}