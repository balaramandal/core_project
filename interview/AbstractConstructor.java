abstract class Abs
{
	public Abs()
	{
		System.out.println("inside constructor...");
	}
	public abstract void test();
}
class Child extends Abs
{
	public void test()
	{
		System.out.println("overriding method");
	}
	public static void main(String args[])
	{
		Child ch = new Child();
		ch.test();
	}
}