import java.util.*;
class StringTest2
{
	public static void main(String args[])
	{
		String arr[]={"my","name","is","Balaram"};
		List<String> l = Arrays.asList(arr);  //to convert string to list
		System.out.println(l);
		
		//convert list to string 
		String arr1[] = new String[l.size()];
		int i=0;
		for(String temp:l)
		{
			arr1[i]=temp;
			i++;
		}
		
		//show data of arr1
		for(String s:arr1)
		{
			System.out.println(s);
		}
	}
}