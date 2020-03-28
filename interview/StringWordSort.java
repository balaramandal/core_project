import java.util.*;

public class StringWordSort
{
	public static void main(String args[])
	{
		String str="hello balram welcome to my programming world";
		String arr[]=str.split(" ");
		
		Set<String> s= new TreeSet<String>(new Cmpr());
		for(String word:arr)
		{
			s.add(word);
		}
		System.out.println(s);
	}
}
class Cmpr implements Comparator<String>
{
	public int compare(String s1,String s2)
	{
		return s1.compareTo(s2);
	}
}