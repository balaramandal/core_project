import java.util.*;
class StringTest
{
	public static void main(String args[])
	{
		String name="my name is balaram";
		String arr[]=name.split(" ");
		List<String> l = new ArrayList<String>();
		for(String temp:arr)
		{
			l.add("\""+temp+"\"");
		}
		System.out.println(l);
	}
}