import java.util.*;
interface Abc
{
	public void show();
}
class Xyz implements Abc
{
	int x=10;
	int y=20;
	int z=30;
	public void show()
	{
		System.out.println(".........Xyz Instance.........");
		System.out.println(x);
		System.out.println(y);
		System.out.println(z);
	}
}
class Pqr implements Abc
{
	int x=100;
	int y=200;
	int z=300;
	public void show()
	{
		System.out.println(".........Abc Instance.........");
		System.out.println(x);
		System.out.println(y);
		System.out.println(z);
	}
}
class Main
{
	public static void main(String args[])
	{
		Xyz obj1 = new Xyz();
			
		Pqr obj2 = new Pqr();
			
		List <Abc>l = new ArrayList<Abc>();
		l.add(obj1);
		l.add(obj2);
		
		for(Abc o : l)
		{
			o.show();
		}
		
	}
}