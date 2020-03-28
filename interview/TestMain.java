interface Test{
	public void show();
}
class Test1 implements Test
{
	public void show()
	{
		System.out.println("Test 1");
	}
}
class Test2 implements Test
{
	public void show()
	{
		System.out.println("Test 2");
	}
}
class TestMain
{
	public static void main(String args[])
	{
		Test2 t2 = new Test2();
		t2.show();
	}
}