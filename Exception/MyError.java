import java.util.*;
class MyError
{
	void check()throws Exception
	{     
		
		Scanner sc=new Scanner(System.in);
		int a=sc.nextInt();
		int b=sc.nextInt();
		int c=a/b;
		System.out.println(c);
		
	}
	public static void main(String args[])
	{
		
		MyError my=new MyError();
		try
		{
		     my.check();
		}
		catch(ArithmeticException e)
		{
			System.out.println("devided by zero ");
		}
		System.out.println("hello");
	}
}