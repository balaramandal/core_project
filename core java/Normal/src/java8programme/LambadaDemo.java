package java8programme;

@FunctionalInterface
interface Lamba
{
	 void show();
	
}

public class LambadaDemo 
{
	public static void main(String args[])
	{
		Lamba l = () -> {
			System.out.println("hiiii");
			System.out.println("hello");
			System.out.println("Balaram welcome to lambada expresession");
		};
		l.show();
	}
	
}
