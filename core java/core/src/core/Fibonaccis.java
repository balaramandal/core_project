package core;
import java.util.Scanner;

public class Fibonaccis {
	public static void main(String args[])
	{
		int num,a=0,b=1,fib;
		num=new Scanner(System.in).nextInt();
		System.out.print(a+" "+b);
		for(int i=0;i<=num;i++)
		{
			fib=a+b;
			a=b;
			b=fib;
			
			System.out.print(" "+fib);
		}
	}
}
