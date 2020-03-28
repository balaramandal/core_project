package core;
import java.util.Scanner;

public class Factorial {

	public static void main(String[] args) 
	{	
		int no,fact=1;
//		Scanner sc = new Scanner(System.in);
//		no=sc.nextInt();
		
		for(no=5;no>=1;no--)
		{
			fact=fact*no;
		}
		System.out.println(fact);
	}

}
