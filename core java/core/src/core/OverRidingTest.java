package core;
class Test
{
	public void divided()throws Exception
	{
		
	}
}
public class OverRidingTest extends Test
{
	static int a;
	static int b;
	int c;
	public void divided()
	{
		c=a/b;
		System.out.println(c);
	}
	public static void main(String args[])
	{
		a=Integer.parseInt(args[0]);
		b=Integer.parseInt(args[1]);
		OverRidingTest ob = new OverRidingTest();
		ob.divided();
	}
}
