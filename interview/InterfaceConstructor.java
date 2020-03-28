interface Inter
{
	public Inter()
	{
		System.out.println("constructor ");
	}
	public void hello();
}
public class Main implements Inter
{
	public void hello()
	{
		System.out.println("overriding method");
	}
	public static void main(String args[])
	{
		Main m = new Main();
		m.hello();
	}
}